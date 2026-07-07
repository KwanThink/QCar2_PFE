"""
scope.py: A module providing classes for real-time plotting and visualization.

This module contains a collection of classes designed to simplify the process
of visualizing real-time data such as signals, images, and video streams.
"""

import sys
import numpy as np
from array import array
from collections import deque
from time import time
import pyqtgraph as pg

from PyQt5 import QtWidgets, QtCore, QtGui
from PyQt5.QtCore import Qt

#region : Descriptor Classes
class _ScopeInfo():
    def __init__(self, **kwargs):
        self.title = kwargs.pop('title', None)
        self.rows = kwargs.pop('rows', 1)
        self.cols = kwargs.pop('cols', 1)
        self.maxSampleRate = kwargs.pop('maxSampleRate', 1024)
        self.fps = kwargs.pop('fps', 30)
        self.axes = []

class _AxisInfo():
    def __init__(self, **kwargs):
        self._title = kwargs.pop('title', None)
        if self._title is None:
            self._title = kwargs.pop('_title', None)

        self._xLabel = kwargs.pop('xLabel', None)
        if self._xLabel is None:
            self._xLabel = kwargs.pop('_xLabel', None)

        self._yLabel = kwargs.pop('yLabel', None)
        if self._yLabel is None:
            self._yLabel = kwargs.pop('_yLabel', None)

        self._yLim = kwargs.pop('yLim', None)
        if self._yLim is None:
            self._yLim = kwargs.pop('_yLim', None)

        self.row = kwargs.pop('row', 0)
        self.col = kwargs.pop('col', 0)
        self.rowSpan = kwargs.pop('rowSpan', 1)
        self.colSpan = kwargs.pop('colSpan', 1)

        self.signals = []

class _XYAxisInfo(_AxisInfo):
    def __init__(self, **kwargs):
        self._xLim = kwargs.pop('xLim', None)
        if self._xLim is None:
            self._xLim = kwargs.pop('_xLim', None)
        super().__init__(**kwargs)
        self.images = []

class _TYAxisInfo(_AxisInfo):
    def __init__(self, **kwargs):
        self.timeWindow = kwargs.pop('timeWindow', 10)
        self.displayMode = kwargs.pop('displayMode', 0)
        super().__init__(**kwargs)

class _SignalInfo():
    def __init__(self, **kwargs):
        self.name = kwargs.pop('name', None)
        self.color = kwargs.pop('color', None)
        self.lineStyle = kwargs.pop('lineStyle', None)
        self.width = kwargs.pop('width', None)
        self.scale = kwargs.pop('scale', 1)
        self.offset = kwargs.pop('offset', 0)

class _ImageInfo():
    def __init__(self, **kwargs):
        self._scale = kwargs.pop('scale', (1,1))
        self._offset = kwargs.pop('offset', (0,0))
        self._rotation = kwargs.pop('rotation', 0)
        self._levels = kwargs.pop('levels', (0, 1))
#endregion

#region : Primary Scope Classes
class MultiScope(_ScopeInfo):
    activeScopes = []
    spf = None
    tpf = 0

    def __init__(self, *args, **kwargs):
        graphicsLayoutWidget = kwargs.pop('graphicsLayoutWidget', None)
        if args and isinstance(args[0], _ScopeInfo):
            super().__init__(**vars(args[0]))
            axes = args[0].axes
        else:
            super().__init__(**kwargs)
            axes = []

        MultiScope.activeScopes.append(self)
        if MultiScope.spf is None:
            MultiScope.spf = 1 / self.fps
        else:
            MultiScope.spf = np.minimum(MultiScope.spf, 1 / self.fps)

        self._bufferSize = int(np.ceil(2*self.maxSampleRate/self.fps))

        if graphicsLayoutWidget is None:
            self.graphicsLayoutWidget = pg.GraphicsLayoutWidget(
                show=True,
                title=self.title
            )
        else:
            self.graphicsLayoutWidget = graphicsLayoutWidget

        self.cells = []
        for i in range(self.rows):
            self.cells.append([None]*self.cols)

        for axis in axes:
            self._addAxis(axis)

    def _cells_available(self,row, col, rowSpan, colSpan):
        if (row < 0 or col < 0 or row+rowSpan > self.rows or col+colSpan > self.cols):
            return False
        for i in range(rowSpan):
            for j in range(colSpan):
                if self.cells[row+i][col+j] is not None:
                    return False
        return True

    def _populate_cells(self, axis):
        for i in range(axis.rowSpan):
            for j in range(axis.colSpan):
                self.cells[axis.row+i][axis.col+j] = axis

    def _addAxis(self, axisInfo):
        if isinstance(axisInfo, _TYAxisInfo):
            AxisType = TYAxis
        elif isinstance(axisInfo, _XYAxisInfo):
            AxisType = XYAxis
        else:
            raise TypeError('Invalid Axis type provided')

        if not self._cells_available(axisInfo.row, axisInfo.col, axisInfo.rowSpan, axisInfo.colSpan):
            raise Exception("Scope cell range invalid or already occupied ")

        axis = AxisType(graphicsLayoutWidget=self.graphicsLayoutWidget, bufferSize=self._bufferSize, **vars(axisInfo))

        for sig in axisInfo.signals:
            axis.attachSignal(sig)

        if isinstance(axisInfo, _XYAxisInfo):
            for img in axisInfo.images:
                axis.attachImage(img)

        self.axes.append(axis)

    def addAxis(self, *args, **kwargs):
        if args:
            if isinstance(args[0], _TYAxisInfo):
                self._addAxis(args[0])
            else:
                raise TypeError('Must use keyword arguments, unless providing a _TYAxisInfo object.')
        else:
            self._addAxis(_TYAxisInfo(**kwargs))

    def addXYAxis(self, *args, **kwargs):
        if args:
            if isinstance(args[0], _XYAxisInfo):
                self._addAxis(args[0])
            else:
                raise TypeError('Must use keyword arguments, unless providing a _XYAxisInfo object.')
        else:
            self._addAxis(_XYAxisInfo(**kwargs))

    def refresh(self):
        MultiScope.refreshAll()

    @staticmethod
    def refreshAll():
        if time()-MultiScope.tpf >= MultiScope.spf:
            MultiScope.tpf = time()
            flush = True
        else:
            flush = False

        for scope in MultiScope.activeScopes:
            for axis in scope.axes:
                axis.refresh(flush)

        if flush:
            QtWidgets.QApplication.processEvents()

class Axis(_AxisInfo):
    def __init__(self, graphicsLayoutWidget, bufferSize, **kwargs):
        super().__init__(**kwargs)
        self.plot = graphicsLayoutWidget.addPlot(
            self.row, self.col, self.rowSpan, self.colSpan,
            labels={'bottom': (self._xLabel,), 'left': (self._yLabel,)}
        )
        self.plot.showGrid(x=True, y=True)
        self.plot.addLegend()
        self.yLim = self._yLim

        self._bufferSize = bufferSize
        self._tBuffer = array('f', range(bufferSize))
        self._dataBuffer = []
        self._iBuffer = -1
        self._sampleQueue = deque()

        self.refresh = self._initial_refresh

    def attachSignal(self, *args, **kwargs):
        di = len(self.signals)
        s = Signal(self.plot, di=di, *args, **kwargs)
        self.signals.append(s)

    def sample(self, t, data):
        data = [data] if np.isscalar(data) else data
        self._sampleQueue.appendleft([t, data])

    def clean(self):
        self._sampleQueue.clear()

    def clear(self):
        for s in self.signals:
            s.clear()

    def _initial_refresh(self, flush):
        if len(self._sampleQueue) < 2:
            return
        self.refresh = self._post_initial_refresh
        self.refresh(flush)

    def _post_initial_refresh(self, flush):
        pass

class XYAxis(Axis, _XYAxisInfo):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.xLim = self._xLim
        self.images = []

    def attachSignal(self, *args, **kwargs):
        self._dataBuffer.append(array('f', range(2*self._bufferSize)))
        super().attachSignal(*args, **kwargs)

    def attachImage(self, *args, **kwargs):
        self.plot.showGrid(x=False, y=False)
        img = Image(self.plot, *args, **kwargs)
        self.images.append(img)

    def _post_initial_refresh(self, flush):
        while True:
            try:
                if self._iBuffer >= self._bufferSize-1:
                    flush = True
                    break
                sample = self._sampleQueue.pop()
                self._iBuffer += 1
                self._tBuffer[self._iBuffer] = sample[0]
                for i in range(len(self.signals)):
                    self._dataBuffer[i][self._iBuffer] = sample[1][i][0]
                    self._dataBuffer[i][self._iBuffer+self._bufferSize] = sample[1][i][1]
            except IndexError:
                break

        if flush and self._iBuffer > 0:
            for i, signal in enumerate(self.signals):
                signal.add_chunk(
                    self._dataBuffer[i][0:self._iBuffer+1],
                    self._dataBuffer[i][self._bufferSize:self._bufferSize+self._iBuffer+1]
                )
                self._dataBuffer[i][0] = self._dataBuffer[i][self._iBuffer]
                self._dataBuffer[i][self._bufferSize] = self._dataBuffer[i][self._bufferSize+self._iBuffer]
            self._tBuffer[0] = self._tBuffer[self._iBuffer]
            self._iBuffer = 0

class TYAxis(Axis, _TYAxisInfo):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)

    def attachSignal(self, *args, **kwargs):
        self._dataBuffer.append(array('f', range(self._bufferSize)))
        super().attachSignal(*args, **kwargs)

    def _post_initial_refresh(self, flush):
        while True:
            try:
                if self._iBuffer >= self._bufferSize-1:
                    flush = True
                    break
                sample = self._sampleQueue.pop()
                self._iBuffer += 1
                self._tBuffer[self._iBuffer] = sample[0]
                for i in range(len(self.signals)):
                    self._dataBuffer[i][self._iBuffer] = sample[1][i]
            except IndexError:
                break

        if flush and self._iBuffer > 0:
            self.plot.setXRange(
                max(0, self._tBuffer[self._iBuffer]-self.timeWindow),
                max(self._tBuffer[self._iBuffer], self.timeWindow),
                padding=0
            )
            for i, signal in enumerate(self.signals):
                signal.add_chunk(
                    self._tBuffer[0:self._iBuffer+1],
                    self._dataBuffer[i][0:self._iBuffer+1]
                )
                self._dataBuffer[i][0] = self._dataBuffer[i][self._iBuffer]
            self._tBuffer[0] = self._tBuffer[self._iBuffer]
            self._iBuffer = 0

class Signal(_SignalInfo):
    maxChunks = 1024
    defaultStyles = [
        _SignalInfo(color=[196,78,82], width=1.5, lineStyle='-'),
        _SignalInfo(color=[85,85,85], width=1.5, lineStyle='-.'),
        _SignalInfo(color=[85,168,104], width=1.5, lineStyle=':'),
        _SignalInfo(color=[76,114,176], width=1.5, lineStyle='--'),
        _SignalInfo(color=[248,217,86], width=1.5, lineStyle='-.'),
        _SignalInfo(color=[129,114,179], width=1.5, lineStyle='-..'),
        _SignalInfo(color=[221,132,82], width=1.5, lineStyle='-'),
    ]

    def __init__(self, plot, *args, **kwargs):
        di = kwargs.pop('di', 0)
        if args and isinstance(args[0], _SignalInfo):
            super().__init__(**vars(args[0]))
        else:
            super().__init__(**kwargs)
        self.plot = plot
        self._pDIs = deque()

        # = Configure Cosmetic Properties
        if self.color is None:
            self.color = Signal.defaultStyles[di].color
        if self.width is None:
            self.width = Signal.defaultStyles[di].width
        if self.lineStyle is None:
            self.lineStyle = Signal.defaultStyles[di].lineStyle

        # = Correct Qt PenStyle mapping
        if self.lineStyle == ':':
            lineStyle = Qt.DotLine
        elif self.lineStyle == '--':
            lineStyle = Qt.DashLine
        elif self.lineStyle == '-.':
            lineStyle = Qt.DashDotLine
        elif self.lineStyle == '-..':
            lineStyle = Qt.DashDotDotLine
        else:
            lineStyle = Qt.SolidLine

        self.pen = pg.mkPen(color=pg.mkColor(self.color), width=self.width, style=lineStyle)

        self._pDI4Legend = pg.PlotDataItem(name=self.name, pen=self.pen)
        self.plot.addItem(self._pDI4Legend)

    def add_chunk(self, x, y):
        pdi = pg.PlotDataItem(x, y, skipFiniteCheck=True, connect='all', pen=self.pen)
        self.plot.addItem(pdi)
        self._pDIs.append(pdi)
        while len(self._pDIs) > Signal.maxChunks:
            pdi = self._pDIs.popleft()
            self.plot.removeItem(pdi)

    def clear(self):
        while len(self._pDIs) > 0:
            pdi = self._pDIs.popleft()
            self.plot.removeItem(pdi)

class Image(_ImageInfo):
    def __init__(self, plot, *args, **kwargs):
        if args and isinstance(args[0], _ImageInfo):
            super().__init__(**vars(args[0]))
        else:
            super().__init__(**kwargs)

        self.imageItem = pg.ImageItem(levels=self._levels, axisOrder='row-major')
        plot.addItem(self.imageItem)
        self._tr = pg.QtGui.QTransform()
        self.scale = self._scale
        self.offset = self._offset
        self.rotation = self._rotation

    def setImage(self, image):
        self.imageItem.setImage(image=image, levels=self._levels)

    @property
    def scale(self):
        return self._scale
    @scale.setter
    def scale(self, newScale):
        self._scale = newScale
        self._tr.scale(*self._scale)
        self.imageItem.setTransform(self._tr)

    @property
    def offset(self):
        return self._offset
    @offset.setter
    def offset(self, newOffset):
        self._offset = newOffset
        self._tr.translate(*self._offset)
        self.imageItem.setTransform(self._tr)

    @property
    def rotation(self):
        return self._rotation
    @rotation.setter
    def rotation(self, newRotation):
        self._rotation = newRotation
        self._tr.rotate(self._rotation)
        self.imageItem.setTransform(self._tr)

    @property
    def levels(self):
        return self._levels
    @levels.setter
    def levels(self, newLevels):
        self._levels = newLevels
        self.imageItem.setLevels(self._levels)
