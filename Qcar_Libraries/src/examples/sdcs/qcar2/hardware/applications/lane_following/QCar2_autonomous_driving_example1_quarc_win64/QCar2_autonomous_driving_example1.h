/*
 * QCar2_autonomous_driving_example1.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "QCar2_autonomous_driving_example1".
 *
 * Model version              : 12.1
 * Simulink Coder version : 24.2 (R2024b) 21-Jun-2024
 * C source code generated on : Fri Apr  3 09:53:20 2026
 *
 * Target selection: quarc_win64.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef QCar2_autonomous_driving_example1_h_
#define QCar2_autonomous_driving_example1_h_
#ifndef QCar2_autonomous_driving_example1_COMMON_INCLUDES_
#define QCar2_autonomous_driving_example1_COMMON_INCLUDES_
#include <math.h>
#include "rtwtypes.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "rt_nonfinite.h"
#include "math.h"
#include "hil.h"
#include "quanser_messages.h"
#include "quanser_types.h"
#include "quanser_time.h"
#include "quanser_extern.h"
#include "quanser_video3d.h"
#include "quanser_memory.h"
#include "quanser_string.h"
#include "quanser_image_processing.h"
#include "quanser_video.h"
#include "quanser_clamp.h"
#endif                  /* QCar2_autonomous_driving_example1_COMMON_INCLUDES_ */

#include "QCar2_autonomous_driving_example1_types.h"
#include "rtGetInf.h"
#include "rtGetNaN.h"
#include "rt_defines.h"
#include <string.h>
#include "zero_crossing_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetBlockIO
#define rtmGetBlockIO(rtm)             ((rtm)->blockIO)
#endif

#ifndef rtmSetBlockIO
#define rtmSetBlockIO(rtm, val)        ((rtm)->blockIO = (val))
#endif

#ifndef rtmGetChecksums
#define rtmGetChecksums(rtm)           ((rtm)->Sizes.checksums)
#endif

#ifndef rtmSetChecksums
#define rtmSetChecksums(rtm, val)      ((rtm)->Sizes.checksums = (val))
#endif

#ifndef rtmGetConstBlockIO
#define rtmGetConstBlockIO(rtm)        ((rtm)->constBlockIO)
#endif

#ifndef rtmSetConstBlockIO
#define rtmSetConstBlockIO(rtm, val)   ((rtm)->constBlockIO = (val))
#endif

#ifndef rtmGetContStateDisabled
#define rtmGetContStateDisabled(rtm)   ((rtm)->contStateDisabled)
#endif

#ifndef rtmSetContStateDisabled
#define rtmSetContStateDisabled(rtm, val) ((rtm)->contStateDisabled = (val))
#endif

#ifndef rtmGetContStates
#define rtmGetContStates(rtm)          ((rtm)->contStates)
#endif

#ifndef rtmSetContStates
#define rtmSetContStates(rtm, val)     ((rtm)->contStates = (val))
#endif

#ifndef rtmGetContTimeOutputInconsistentWithStateAtMajorStepFlag
#define rtmGetContTimeOutputInconsistentWithStateAtMajorStepFlag(rtm) ((rtm)->CTOutputIncnstWithState)
#endif

#ifndef rtmSetContTimeOutputInconsistentWithStateAtMajorStepFlag
#define rtmSetContTimeOutputInconsistentWithStateAtMajorStepFlag(rtm, val) ((rtm)->CTOutputIncnstWithState = (val))
#endif

#ifndef rtmGetCtrlRateMdlRefTiming
#define rtmGetCtrlRateMdlRefTiming(rtm) ()
#endif

#ifndef rtmSetCtrlRateMdlRefTiming
#define rtmSetCtrlRateMdlRefTiming(rtm, val) ()
#endif

#ifndef rtmGetCtrlRateMdlRefTimingPtr
#define rtmGetCtrlRateMdlRefTimingPtr(rtm) ()
#endif

#ifndef rtmSetCtrlRateMdlRefTimingPtr
#define rtmSetCtrlRateMdlRefTimingPtr(rtm, val) ()
#endif

#ifndef rtmGetCtrlRateNumTicksToNextHit
#define rtmGetCtrlRateNumTicksToNextHit(rtm) ()
#endif

#ifndef rtmSetCtrlRateNumTicksToNextHit
#define rtmSetCtrlRateNumTicksToNextHit(rtm, val) ()
#endif

#ifndef rtmGetDataMapInfo
#define rtmGetDataMapInfo(rtm)         ()
#endif

#ifndef rtmSetDataMapInfo
#define rtmSetDataMapInfo(rtm, val)    ()
#endif

#ifndef rtmGetDefaultParam
#define rtmGetDefaultParam(rtm)        ((rtm)->defaultParam)
#endif

#ifndef rtmSetDefaultParam
#define rtmSetDefaultParam(rtm, val)   ((rtm)->defaultParam = (val))
#endif

#ifndef rtmGetDerivCacheNeedsReset
#define rtmGetDerivCacheNeedsReset(rtm) ((rtm)->derivCacheNeedsReset)
#endif

#ifndef rtmSetDerivCacheNeedsReset
#define rtmSetDerivCacheNeedsReset(rtm, val) ((rtm)->derivCacheNeedsReset = (val))
#endif

#ifndef rtmGetDirectFeedThrough
#define rtmGetDirectFeedThrough(rtm)   ((rtm)->Sizes.sysDirFeedThru)
#endif

#ifndef rtmSetDirectFeedThrough
#define rtmSetDirectFeedThrough(rtm, val) ((rtm)->Sizes.sysDirFeedThru = (val))
#endif

#ifndef rtmGetErrorStatusFlag
#define rtmGetErrorStatusFlag(rtm)     ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatusFlag
#define rtmSetErrorStatusFlag(rtm, val) ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetFinalTime
#define rtmGetFinalTime(rtm)           ((rtm)->Timing.tFinal)
#endif

#ifndef rtmSetFinalTime
#define rtmSetFinalTime(rtm, val)      ((rtm)->Timing.tFinal = (val))
#endif

#ifndef rtmGetFirstInitCondFlag
#define rtmGetFirstInitCondFlag(rtm)   ((rtm)->Timing.firstInitCondFlag)
#endif

#ifndef rtmSetFirstInitCondFlag
#define rtmSetFirstInitCondFlag(rtm, val) ((rtm)->Timing.firstInitCondFlag = (val))
#endif

#ifndef rtmGetIntgData
#define rtmGetIntgData(rtm)            ((rtm)->intgData)
#endif

#ifndef rtmSetIntgData
#define rtmSetIntgData(rtm, val)       ((rtm)->intgData = (val))
#endif

#ifndef rtmGetMdlRefGlobalRuntimeEventIndices
#define rtmGetMdlRefGlobalRuntimeEventIndices(rtm) ()
#endif

#ifndef rtmSetMdlRefGlobalRuntimeEventIndices
#define rtmSetMdlRefGlobalRuntimeEventIndices(rtm, val) ()
#endif

#ifndef rtmGetMdlRefGlobalTID
#define rtmGetMdlRefGlobalTID(rtm)     ()
#endif

#ifndef rtmSetMdlRefGlobalTID
#define rtmSetMdlRefGlobalTID(rtm, val) ()
#endif

#ifndef rtmGetMdlRefGlobalTimerIndices
#define rtmGetMdlRefGlobalTimerIndices(rtm) ()
#endif

#ifndef rtmSetMdlRefGlobalTimerIndices
#define rtmSetMdlRefGlobalTimerIndices(rtm, val) ()
#endif

#ifndef rtmGetMdlRefTriggerTID
#define rtmGetMdlRefTriggerTID(rtm)    ()
#endif

#ifndef rtmSetMdlRefTriggerTID
#define rtmSetMdlRefTriggerTID(rtm, val) ()
#endif

#ifndef rtmGetModelMappingInfo
#define rtmGetModelMappingInfo(rtm)    ((rtm)->SpecialInfo.mappingInfo)
#endif

#ifndef rtmSetModelMappingInfo
#define rtmSetModelMappingInfo(rtm, val) ((rtm)->SpecialInfo.mappingInfo = (val))
#endif

#ifndef rtmGetModelName
#define rtmGetModelName(rtm)           ((rtm)->modelName)
#endif

#ifndef rtmSetModelName
#define rtmSetModelName(rtm, val)      ((rtm)->modelName = (val))
#endif

#ifndef rtmGetNonInlinedSFcns
#define rtmGetNonInlinedSFcns(rtm)     ()
#endif

#ifndef rtmSetNonInlinedSFcns
#define rtmSetNonInlinedSFcns(rtm, val) ()
#endif

#ifndef rtmGetNumBlockIO
#define rtmGetNumBlockIO(rtm)          ((rtm)->Sizes.numBlockIO)
#endif

#ifndef rtmSetNumBlockIO
#define rtmSetNumBlockIO(rtm, val)     ((rtm)->Sizes.numBlockIO = (val))
#endif

#ifndef rtmGetNumBlockParams
#define rtmGetNumBlockParams(rtm)      ((rtm)->Sizes.numBlockPrms)
#endif

#ifndef rtmSetNumBlockParams
#define rtmSetNumBlockParams(rtm, val) ((rtm)->Sizes.numBlockPrms = (val))
#endif

#ifndef rtmGetNumBlocks
#define rtmGetNumBlocks(rtm)           ((rtm)->Sizes.numBlocks)
#endif

#ifndef rtmSetNumBlocks
#define rtmSetNumBlocks(rtm, val)      ((rtm)->Sizes.numBlocks = (val))
#endif

#ifndef rtmGetNumContStates
#define rtmGetNumContStates(rtm)       ((rtm)->Sizes.numContStates)
#endif

#ifndef rtmSetNumContStates
#define rtmSetNumContStates(rtm, val)  ((rtm)->Sizes.numContStates = (val))
#endif

#ifndef rtmGetNumDWork
#define rtmGetNumDWork(rtm)            ((rtm)->Sizes.numDwork)
#endif

#ifndef rtmSetNumDWork
#define rtmSetNumDWork(rtm, val)       ((rtm)->Sizes.numDwork = (val))
#endif

#ifndef rtmGetNumInputPorts
#define rtmGetNumInputPorts(rtm)       ((rtm)->Sizes.numIports)
#endif

#ifndef rtmSetNumInputPorts
#define rtmSetNumInputPorts(rtm, val)  ((rtm)->Sizes.numIports = (val))
#endif

#ifndef rtmGetNumNonSampledZCs
#define rtmGetNumNonSampledZCs(rtm)    ((rtm)->Sizes.numNonSampZCs)
#endif

#ifndef rtmSetNumNonSampledZCs
#define rtmSetNumNonSampledZCs(rtm, val) ((rtm)->Sizes.numNonSampZCs = (val))
#endif

#ifndef rtmGetNumOutputPorts
#define rtmGetNumOutputPorts(rtm)      ((rtm)->Sizes.numOports)
#endif

#ifndef rtmSetNumOutputPorts
#define rtmSetNumOutputPorts(rtm, val) ((rtm)->Sizes.numOports = (val))
#endif

#ifndef rtmGetNumPeriodicContStates
#define rtmGetNumPeriodicContStates(rtm) ((rtm)->Sizes.numPeriodicContStates)
#endif

#ifndef rtmSetNumPeriodicContStates
#define rtmSetNumPeriodicContStates(rtm, val) ((rtm)->Sizes.numPeriodicContStates = (val))
#endif

#ifndef rtmGetNumSFcnParams
#define rtmGetNumSFcnParams(rtm)       ((rtm)->Sizes.numSFcnPrms)
#endif

#ifndef rtmSetNumSFcnParams
#define rtmSetNumSFcnParams(rtm, val)  ((rtm)->Sizes.numSFcnPrms = (val))
#endif

#ifndef rtmGetNumSFunctions
#define rtmGetNumSFunctions(rtm)       ((rtm)->Sizes.numSFcns)
#endif

#ifndef rtmSetNumSFunctions
#define rtmSetNumSFunctions(rtm, val)  ((rtm)->Sizes.numSFcns = (val))
#endif

#ifndef rtmGetNumSampleTimes
#define rtmGetNumSampleTimes(rtm)      ((rtm)->Sizes.numSampTimes)
#endif

#ifndef rtmSetNumSampleTimes
#define rtmSetNumSampleTimes(rtm, val) ((rtm)->Sizes.numSampTimes = (val))
#endif

#ifndef rtmGetNumU
#define rtmGetNumU(rtm)                ((rtm)->Sizes.numU)
#endif

#ifndef rtmSetNumU
#define rtmSetNumU(rtm, val)           ((rtm)->Sizes.numU = (val))
#endif

#ifndef rtmGetNumY
#define rtmGetNumY(rtm)                ((rtm)->Sizes.numY)
#endif

#ifndef rtmSetNumY
#define rtmSetNumY(rtm, val)           ((rtm)->Sizes.numY = (val))
#endif

#ifndef rtmGetOdeF
#define rtmGetOdeF(rtm)                ((rtm)->odeF)
#endif

#ifndef rtmSetOdeF
#define rtmSetOdeF(rtm, val)           ((rtm)->odeF = (val))
#endif

#ifndef rtmGetOdeY
#define rtmGetOdeY(rtm)                ((rtm)->odeY)
#endif

#ifndef rtmSetOdeY
#define rtmSetOdeY(rtm, val)           ((rtm)->odeY = (val))
#endif

#ifndef rtmGetOffsetTimeArray
#define rtmGetOffsetTimeArray(rtm)     ((rtm)->Timing.offsetTimesArray)
#endif

#ifndef rtmSetOffsetTimeArray
#define rtmSetOffsetTimeArray(rtm, val) ((rtm)->Timing.offsetTimesArray = (val))
#endif

#ifndef rtmGetOffsetTimePtr
#define rtmGetOffsetTimePtr(rtm)       ((rtm)->Timing.offsetTimes)
#endif

#ifndef rtmSetOffsetTimePtr
#define rtmSetOffsetTimePtr(rtm, val)  ((rtm)->Timing.offsetTimes = (val))
#endif

#ifndef rtmGetOptions
#define rtmGetOptions(rtm)             ((rtm)->Sizes.options)
#endif

#ifndef rtmSetOptions
#define rtmSetOptions(rtm, val)        ((rtm)->Sizes.options = (val))
#endif

#ifndef rtmGetParamIsMalloced
#define rtmGetParamIsMalloced(rtm)     ()
#endif

#ifndef rtmSetParamIsMalloced
#define rtmSetParamIsMalloced(rtm, val) ()
#endif

#ifndef rtmGetPath
#define rtmGetPath(rtm)                ((rtm)->path)
#endif

#ifndef rtmSetPath
#define rtmSetPath(rtm, val)           ((rtm)->path = (val))
#endif

#ifndef rtmGetPerTaskSampleHits
#define rtmGetPerTaskSampleHits(rtm)   ((rtm)->Timing.RateInteraction)
#endif

#ifndef rtmSetPerTaskSampleHits
#define rtmSetPerTaskSampleHits(rtm, val) ((rtm)->Timing.RateInteraction = (val))
#endif

#ifndef rtmGetPerTaskSampleHitsArray
#define rtmGetPerTaskSampleHitsArray(rtm) ((rtm)->Timing.perTaskSampleHitsArray)
#endif

#ifndef rtmSetPerTaskSampleHitsArray
#define rtmSetPerTaskSampleHitsArray(rtm, val) ((rtm)->Timing.perTaskSampleHitsArray = (val))
#endif

#ifndef rtmGetPerTaskSampleHitsPtr
#define rtmGetPerTaskSampleHitsPtr(rtm) ((rtm)->Timing.perTaskSampleHits)
#endif

#ifndef rtmSetPerTaskSampleHitsPtr
#define rtmSetPerTaskSampleHitsPtr(rtm, val) ((rtm)->Timing.perTaskSampleHits = (val))
#endif

#ifndef rtmGetPeriodicContStateIndices
#define rtmGetPeriodicContStateIndices(rtm) ((rtm)->periodicContStateIndices)
#endif

#ifndef rtmSetPeriodicContStateIndices
#define rtmSetPeriodicContStateIndices(rtm, val) ((rtm)->periodicContStateIndices = (val))
#endif

#ifndef rtmGetPeriodicContStateRanges
#define rtmGetPeriodicContStateRanges(rtm) ((rtm)->periodicContStateRanges)
#endif

#ifndef rtmSetPeriodicContStateRanges
#define rtmSetPeriodicContStateRanges(rtm, val) ((rtm)->periodicContStateRanges = (val))
#endif

#ifndef rtmGetPrevZCSigState
#define rtmGetPrevZCSigState(rtm)      ((rtm)->prevZCSigState)
#endif

#ifndef rtmSetPrevZCSigState
#define rtmSetPrevZCSigState(rtm, val) ((rtm)->prevZCSigState = (val))
#endif

#ifndef rtmGetProxyFunctions
#define rtmGetProxyFunctions(rtm)      ()
#endif

#ifndef rtmSetProxyFunctions
#define rtmSetProxyFunctions(rtm, val) ()
#endif

#ifndef rtmGetRTWExtModeInfo
#define rtmGetRTWExtModeInfo(rtm)      ((rtm)->extModeInfo)
#endif

#ifndef rtmSetRTWExtModeInfo
#define rtmSetRTWExtModeInfo(rtm, val) ((rtm)->extModeInfo = (val))
#endif

#ifndef rtmGetRTWGeneratedSFcn
#define rtmGetRTWGeneratedSFcn(rtm)    ((rtm)->Sizes.rtwGenSfcn)
#endif

#ifndef rtmSetRTWGeneratedSFcn
#define rtmSetRTWGeneratedSFcn(rtm, val) ((rtm)->Sizes.rtwGenSfcn = (val))
#endif

#ifndef rtmGetRTWLogInfo
#define rtmGetRTWLogInfo(rtm)          ()
#endif

#ifndef rtmSetRTWLogInfo
#define rtmSetRTWLogInfo(rtm, val)     ()
#endif

#ifndef rtmGetRTWRTModelMethodsInfo
#define rtmGetRTWRTModelMethodsInfo(rtm) ()
#endif

#ifndef rtmSetRTWRTModelMethodsInfo
#define rtmSetRTWRTModelMethodsInfo(rtm, val) ()
#endif

#ifndef rtmGetRTWSfcnInfo
#define rtmGetRTWSfcnInfo(rtm)         ((rtm)->sfcnInfo)
#endif

#ifndef rtmSetRTWSfcnInfo
#define rtmSetRTWSfcnInfo(rtm, val)    ((rtm)->sfcnInfo = (val))
#endif

#ifndef rtmGetRTWSolverInfo
#define rtmGetRTWSolverInfo(rtm)       ((rtm)->solverInfo)
#endif

#ifndef rtmSetRTWSolverInfo
#define rtmSetRTWSolverInfo(rtm, val)  ((rtm)->solverInfo = (val))
#endif

#ifndef rtmGetRTWSolverInfoPtr
#define rtmGetRTWSolverInfoPtr(rtm)    ((rtm)->solverInfoPtr)
#endif

#ifndef rtmSetRTWSolverInfoPtr
#define rtmSetRTWSolverInfoPtr(rtm, val) ((rtm)->solverInfoPtr = (val))
#endif

#ifndef rtmGetReservedForXPC
#define rtmGetReservedForXPC(rtm)      ((rtm)->SpecialInfo.xpcData)
#endif

#ifndef rtmSetReservedForXPC
#define rtmSetReservedForXPC(rtm, val) ((rtm)->SpecialInfo.xpcData = (val))
#endif

#ifndef rtmGetRootDWork
#define rtmGetRootDWork(rtm)           ((rtm)->dwork)
#endif

#ifndef rtmSetRootDWork
#define rtmSetRootDWork(rtm, val)      ((rtm)->dwork = (val))
#endif

#ifndef rtmGetSFunctions
#define rtmGetSFunctions(rtm)          ((rtm)->childSfunctions)
#endif

#ifndef rtmSetSFunctions
#define rtmSetSFunctions(rtm, val)     ((rtm)->childSfunctions = (val))
#endif

#ifndef rtmGetSampleHitArray
#define rtmGetSampleHitArray(rtm)      ((rtm)->Timing.sampleHitArray)
#endif

#ifndef rtmSetSampleHitArray
#define rtmSetSampleHitArray(rtm, val) ((rtm)->Timing.sampleHitArray = (val))
#endif

#ifndef rtmGetSampleHitPtr
#define rtmGetSampleHitPtr(rtm)        ((rtm)->Timing.sampleHits)
#endif

#ifndef rtmSetSampleHitPtr
#define rtmSetSampleHitPtr(rtm, val)   ((rtm)->Timing.sampleHits = (val))
#endif

#ifndef rtmGetSampleTimeArray
#define rtmGetSampleTimeArray(rtm)     ((rtm)->Timing.sampleTimesArray)
#endif

#ifndef rtmSetSampleTimeArray
#define rtmSetSampleTimeArray(rtm, val) ((rtm)->Timing.sampleTimesArray = (val))
#endif

#ifndef rtmGetSampleTimePtr
#define rtmGetSampleTimePtr(rtm)       ((rtm)->Timing.sampleTimes)
#endif

#ifndef rtmSetSampleTimePtr
#define rtmSetSampleTimePtr(rtm, val)  ((rtm)->Timing.sampleTimes = (val))
#endif

#ifndef rtmGetSampleTimeTaskIDArray
#define rtmGetSampleTimeTaskIDArray(rtm) ((rtm)->Timing.sampleTimeTaskIDArray)
#endif

#ifndef rtmSetSampleTimeTaskIDArray
#define rtmSetSampleTimeTaskIDArray(rtm, val) ((rtm)->Timing.sampleTimeTaskIDArray = (val))
#endif

#ifndef rtmGetSampleTimeTaskIDPtr
#define rtmGetSampleTimeTaskIDPtr(rtm) ((rtm)->Timing.sampleTimeTaskIDPtr)
#endif

#ifndef rtmSetSampleTimeTaskIDPtr
#define rtmSetSampleTimeTaskIDPtr(rtm, val) ((rtm)->Timing.sampleTimeTaskIDPtr = (val))
#endif

#ifndef rtmGetSelf
#define rtmGetSelf(rtm)                ()
#endif

#ifndef rtmSetSelf
#define rtmSetSelf(rtm, val)           ()
#endif

#ifndef rtmGetSimMode
#define rtmGetSimMode(rtm)             ((rtm)->simMode)
#endif

#ifndef rtmSetSimMode
#define rtmSetSimMode(rtm, val)        ((rtm)->simMode = (val))
#endif

#ifndef rtmGetSimTimeStep
#define rtmGetSimTimeStep(rtm)         ((rtm)->Timing.simTimeStep)
#endif

#ifndef rtmSetSimTimeStep
#define rtmSetSimTimeStep(rtm, val)    ((rtm)->Timing.simTimeStep = (val))
#endif

#ifndef rtmGetStartTime
#define rtmGetStartTime(rtm)           ((rtm)->Timing.tStart)
#endif

#ifndef rtmSetStartTime
#define rtmSetStartTime(rtm, val)      ((rtm)->Timing.tStart = (val))
#endif

#ifndef rtmGetStepSize
#define rtmGetStepSize(rtm)            ((rtm)->Timing.stepSize)
#endif

#ifndef rtmSetStepSize
#define rtmSetStepSize(rtm, val)       ((rtm)->Timing.stepSize = (val))
#endif

#ifndef rtmGetStopRequestedFlag
#define rtmGetStopRequestedFlag(rtm)   ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequestedFlag
#define rtmSetStopRequestedFlag(rtm, val) ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStubFunctions
#define rtmGetStubFunctions(rtm)       ()
#endif

#ifndef rtmSetStubFunctions
#define rtmSetStubFunctions(rtm, val)  ()
#endif

#ifndef rtmGetTaskCounters
#define rtmGetTaskCounters(rtm)        ((rtm)->Timing.TaskCounters)
#endif

#ifndef rtmSetTaskCounters
#define rtmSetTaskCounters(rtm, val)   ((rtm)->Timing.TaskCounters = (val))
#endif

#ifndef rtmGetTaskTimeArray
#define rtmGetTaskTimeArray(rtm)       ((rtm)->Timing.tArray)
#endif

#ifndef rtmSetTaskTimeArray
#define rtmSetTaskTimeArray(rtm, val)  ((rtm)->Timing.tArray = (val))
#endif

#ifndef rtmGetTimePtr
#define rtmGetTimePtr(rtm)             ((rtm)->Timing.t)
#endif

#ifndef rtmSetTimePtr
#define rtmSetTimePtr(rtm, val)        ((rtm)->Timing.t = (val))
#endif

#ifndef rtmGetTimingData
#define rtmGetTimingData(rtm)          ((rtm)->Timing.timingData)
#endif

#ifndef rtmSetTimingData
#define rtmSetTimingData(rtm, val)     ((rtm)->Timing.timingData = (val))
#endif

#ifndef rtmGetU
#define rtmGetU(rtm)                   ((rtm)->inputs)
#endif

#ifndef rtmSetU
#define rtmSetU(rtm, val)              ((rtm)->inputs = (val))
#endif

#ifndef rtmGetVarNextHitTimesListPtr
#define rtmGetVarNextHitTimesListPtr(rtm) ((rtm)->Timing.varNextHitTimesList)
#endif

#ifndef rtmSetVarNextHitTimesListPtr
#define rtmSetVarNextHitTimesListPtr(rtm, val) ((rtm)->Timing.varNextHitTimesList = (val))
#endif

#ifndef rtmGetY
#define rtmGetY(rtm)                   ((rtm)->outputs)
#endif

#ifndef rtmSetY
#define rtmSetY(rtm, val)              ((rtm)->outputs = (val))
#endif

#ifndef rtmGetZCCacheNeedsReset
#define rtmGetZCCacheNeedsReset(rtm)   ((rtm)->zCCacheNeedsReset)
#endif

#ifndef rtmSetZCCacheNeedsReset
#define rtmSetZCCacheNeedsReset(rtm, val) ((rtm)->zCCacheNeedsReset = (val))
#endif

#ifndef rtmGetZCSignalValues
#define rtmGetZCSignalValues(rtm)      ((rtm)->zcSignalValues)
#endif

#ifndef rtmSetZCSignalValues
#define rtmSetZCSignalValues(rtm, val) ((rtm)->zcSignalValues = (val))
#endif

#ifndef rtmGet_TimeOfLastOutput
#define rtmGet_TimeOfLastOutput(rtm)   ((rtm)->Timing.timeOfLastOutput)
#endif

#ifndef rtmSet_TimeOfLastOutput
#define rtmSet_TimeOfLastOutput(rtm, val) ((rtm)->Timing.timeOfLastOutput = (val))
#endif

#ifndef rtmGetdX
#define rtmGetdX(rtm)                  ((rtm)->derivs)
#endif

#ifndef rtmSetdX
#define rtmSetdX(rtm, val)             ((rtm)->derivs = (val))
#endif

#ifndef rtmGettimingBridge
#define rtmGettimingBridge(rtm)        ()
#endif

#ifndef rtmSettimingBridge
#define rtmSettimingBridge(rtm, val)   ()
#endif

#ifndef rtmGetChecksumVal
#define rtmGetChecksumVal(rtm, idx)    ((rtm)->Sizes.checksums[idx])
#endif

#ifndef rtmSetChecksumVal
#define rtmSetChecksumVal(rtm, idx, val) ((rtm)->Sizes.checksums[idx] = (val))
#endif

#ifndef rtmGetDWork
#define rtmGetDWork(rtm, idx)          ((rtm)->dwork[idx])
#endif

#ifndef rtmSetDWork
#define rtmSetDWork(rtm, idx, val)     ((rtm)->dwork[idx] = (val))
#endif

#ifndef rtmGetOffsetTime
#define rtmGetOffsetTime(rtm, idx)     ((rtm)->Timing.offsetTimes[idx])
#endif

#ifndef rtmSetOffsetTime
#define rtmSetOffsetTime(rtm, idx, val) ((rtm)->Timing.offsetTimes[idx] = (val))
#endif

#ifndef rtmGetSFunction
#define rtmGetSFunction(rtm, idx)      ((rtm)->childSfunctions[idx])
#endif

#ifndef rtmSetSFunction
#define rtmSetSFunction(rtm, idx, val) ((rtm)->childSfunctions[idx] = (val))
#endif

#ifndef rtmGetSampleTime
#define rtmGetSampleTime(rtm, idx)     ((rtm)->Timing.sampleTimes[idx])
#endif

#ifndef rtmSetSampleTime
#define rtmSetSampleTime(rtm, idx, val) ((rtm)->Timing.sampleTimes[idx] = (val))
#endif

#ifndef rtmGetSampleTimeTaskID
#define rtmGetSampleTimeTaskID(rtm, idx) ((rtm)->Timing.sampleTimeTaskIDPtr[idx])
#endif

#ifndef rtmSetSampleTimeTaskID
#define rtmSetSampleTimeTaskID(rtm, idx, val) ((rtm)->Timing.sampleTimeTaskIDPtr[idx] = (val))
#endif

#ifndef rtmGetVarNextHitTimeList
#define rtmGetVarNextHitTimeList(rtm, idx) ((rtm)->Timing.varNextHitTimesList[idx])
#endif

#ifndef rtmSetVarNextHitTimeList
#define rtmSetVarNextHitTimeList(rtm, idx, val) ((rtm)->Timing.varNextHitTimesList[idx] = (val))
#endif

#ifndef rtmIsContinuousTask
#define rtmIsContinuousTask(rtm, tid)  ((tid) <= 1)
#endif

#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#ifndef rtmSetFirstInitCond
#define rtmSetFirstInitCond(rtm, val)  ((rtm)->Timing.firstInitCondFlag = (val))
#endif

#ifndef rtmIsFirstInitCond
#define rtmIsFirstInitCond(rtm)        ((rtm)->Timing.firstInitCondFlag)
#endif

#ifndef rtmIsMajorTimeStep
#define rtmIsMajorTimeStep(rtm)        (((rtm)->Timing.simTimeStep) == MAJOR_TIME_STEP)
#endif

#ifndef rtmIsMinorTimeStep
#define rtmIsMinorTimeStep(rtm)        (((rtm)->Timing.simTimeStep) == MINOR_TIME_STEP)
#endif

#ifndef rtmIsSampleHit
#define rtmIsSampleHit(rtm, sti, tid)  (((rtm)->Timing.sampleTimeTaskIDPtr[sti] == (tid)))
#endif

#ifndef rtmStepTask
#define rtmStepTask(rtm, idx)          ((rtm)->Timing.TaskCounters.TID[(idx)] == 0)
#endif

#ifndef rtmGetStopRequested
#define rtmGetStopRequested(rtm)       ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
#define rtmSetStopRequested(rtm, val)  ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
#define rtmGetStopRequestedPtr(rtm)    (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
#define rtmGetT(rtm)                   (rtmGetTPtr((rtm))[0])
#endif

#ifndef rtmSetT
#define rtmSetT(rtm, val)                                        /* Do Nothing */
#endif

#ifndef rtmGetTFinal
#define rtmGetTFinal(rtm)              ((rtm)->Timing.tFinal)
#endif

#ifndef rtmSetTFinal
#define rtmSetTFinal(rtm, val)         ((rtm)->Timing.tFinal = (val))
#endif

#ifndef rtmGetTPtr
#define rtmGetTPtr(rtm)                ((rtm)->Timing.t)
#endif

#ifndef rtmSetTPtr
#define rtmSetTPtr(rtm, val)           ((rtm)->Timing.t = (val))
#endif

#ifndef rtmGetTStart
#define rtmGetTStart(rtm)              ((rtm)->Timing.tStart)
#endif

#ifndef rtmSetTStart
#define rtmSetTStart(rtm, val)         ((rtm)->Timing.tStart = (val))
#endif

#ifndef rtmTaskCounter
#define rtmTaskCounter(rtm, idx)       ((rtm)->Timing.TaskCounters.TID[(idx)])
#endif

#ifndef rtmGetTaskTime
#define rtmGetTaskTime(rtm, sti)       (rtmGetTPtr((rtm))[(rtm)->Timing.sampleTimeTaskIDPtr[sti]])
#endif

#ifndef rtmSetTaskTime
#define rtmSetTaskTime(rtm, sti, val)  (rtmGetTPtr((rtm))[sti] = (val))
#endif

#ifndef rtmGetTimeOfLastOutput
#define rtmGetTimeOfLastOutput(rtm)    ((rtm)->Timing.timeOfLastOutput)
#endif

#ifdef rtmGetRTWSolverInfo
#undef rtmGetRTWSolverInfo
#endif

#define rtmGetRTWSolverInfo(rtm)       &((rtm)->solverInfo)

/* Definition for use in the target main file */
#define QCar2_autonomous_driving_example1_rtModel RT_MODEL_QCar2_autonomous_dri_T

/* Block signals (default storage) */
typedef struct {
  uint8_T ImageTransform1[492000];     /* '<S17>/Image Transform1' */
  uint8_T y_f[492000];                 /* '<Root>/MATLAB Function' */
  uint8_T img_out_e[492000];           /* '<S4>/Draw Lines Module2' */
  uint8_T ImageLogic2[164000];         /* '<S11>/Image Logic2' */
  uint8_T ImageFilter1[164000];        /* '<S17>/Image Filter1' */
  uint8_T HSVColorThresholding1_o1[164000];/* '<S17>/HSV Color Thresholding1' */
  uint8_T HSVColorThresholding1_o2[164000];/* '<S17>/HSV Color Thresholding1' */
  uint8_T HSVColorThresholding1_o3[164000];/* '<S17>/HSV Color Thresholding1' */
  uint8_T ImageLogic1[164000];         /* '<S17>/Image Logic1' */
  uint8_T y_j[164000];                 /* '<S11>/Mask' */
  real_T region[14400];          /* '<S19>/Steering based  image subselector' */
  int16_T tmp_data[14400];
  int16_T tmp_data_m[14400];
  uint8_T Selector[25680];             /* '<S19>/Selector' */
  t_uint64 Depth_o2;                   /* '<S16>/Depth' */
  real_T batteryvoltage;               /* '<S13>/HIL Read' */
  real_T motorcurrent;                 /* '<S13>/HIL Read' */
  real_T encodercounts;                /* '<S13>/HIL Read' */
  real_T Unwrap224;                    /* '<S13>/Unwrap 2^24' */
  real_T Product;                      /* '<S32>/Product' */
  real_T Product1;                     /* '<S32>/Product1' */
  real_T Product_a;                    /* '<S33>/Product' */
  real_T Product1_e;                   /* '<S33>/Product1' */
  real_T Product_d;                    /* '<S34>/Product' */
  real_T Product1_i;                   /* '<S34>/Product1' */
  real_T RateTransition;               /* '<Root>/Rate Transition' */
  real_T RateTransition1;              /* '<Root>/Rate Transition1' */
  real_T uArm0Disarm1;                 /* '<Root>/1 - Arm, 0 - Disarm1' */
  real_T desired;                      /* '<S20>/Multiply1' */
  real_T Kffms;                        /* '<S20>/Kff  (% // m//s)' */
  real_T pwmdutycycle;                 /* '<S20>/Multiply2' */
  real_T Abs;                          /* '<S18>/Abs' */
  real_T one_shot_block;               /* '<S41>/one_shot_block' */
  real_T commandsaturation;            /* '<S13>/command saturation' */
  real_T Kim;                          /* '<S20>/Ki (% // m)  ' */
  real_T Depth_o3;                     /* '<S16>/Depth' */
  real_T Width;                        /* '<S7>/Width' */
  real_T Multiply;                     /* '<S19>/Multiply' */
  t_channel Channel;                   /* '<S5>/Channel' */
  t_channel Channel_f;                 /* '<S35>/Channel' */
  t_channel Channel_m;                 /* '<S36>/Channel' */
  t_channel Channel_i;                 /* '<S17>/Channel' */
  t_channel Channel_a;                 /* '<S6>/Channel' */
  real32_T Depth_o1[230400];           /* '<S16>/Depth' */
  uint8_T VideoCapture_o1[1008600];    /* '<S15>/Video Capture' */
  uint8_T img_out[77040];              /* '<S19>/Draw Lines Module' */
  uint8_T ImageCompress[77040];        /* '<S5>/Image Compress' */
  uint8_T ImageCompress_m[164000];     /* '<S35>/Image Compress' */
  uint8_T ImageCompress_a[164000];     /* '<S36>/Image Compress' */
  uint8_T ImageCompress_l[492000];     /* '<S6>/Image Compress' */
  boolean_T AND3;                      /* '<S18>/AND3' */
  boolean_T AND1;                      /* '<S18>/AND1' */
  boolean_T Compare;                   /* '<S46>/Compare' */
  boolean_T Compare_d;                 /* '<S39>/Compare' */
  boolean_T DataTypeConversion1[8];    /* '<S18>/Data Type Conversion1' */
  boolean_T Depth_o4;                  /* '<S16>/Depth' */
} B_QCar2_autonomous_driving_ex_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  t_timeout SampleTime_PreviousTime;   /* '<S3>/Sample Time' */
  t_timeout ComputationTime_BeginTime; /* '<S3>/Computation Time' */
  t_timeout ComputationTime_ComputationTime;/* '<S3>/Computation Time' */
  t_timeout SampleTime_PreviousTime_e; /* '<S2>/Sample Time' */
  t_timeout ComputationTime_BeginTime_p;/* '<S2>/Computation Time' */
  t_timeout ComputationTime_ComputationTi_o;/* '<S2>/Computation Time' */
  t_timeout SampleTime_PreviousTime_g; /* '<S1>/Sample Time' */
  t_timeout ComputationTime_BeginTime_b;/* '<S1>/Computation Time' */
  t_timeout ComputationTime_ComputationT_of;/* '<S1>/Computation Time' */
  real_T one_shot_block_DSTATE[3];     /* '<S41>/one_shot_block' */
  real_T HILInitialize_AIMinimums[5];  /* '<S13>/HIL Initialize' */
  real_T HILInitialize_AIMaximums[5];  /* '<S13>/HIL Initialize' */
  real_T HILInitialize_FilterFrequency[3];/* '<S13>/HIL Initialize' */
  real_T HILInitialize_POSortedFreqs[2];/* '<S13>/HIL Initialize' */
  real_T HILInitialize_POValues[2];    /* '<S13>/HIL Initialize' */
  real_T HILInitialize_OOValues[2];    /* '<S13>/HIL Initialize' */
  real_T HILRead_AnalogBuffer[2];      /* '<S13>/HIL Read' */
  real_T HILRead_OtherBuffer[6];       /* '<S13>/HIL Read' */
  real_T Unwrap224_PreviousInput;      /* '<S13>/Unwrap 2^24' */
  real_T Unwrap224_Revolutions;        /* '<S13>/Unwrap 2^24' */
  real_T RateTransition_Buffer0;       /* '<Root>/Rate Transition' */
  real_T RateTransition1_Buffer0;      /* '<Root>/Rate Transition1' */
  real_T PrevY;                        /* '<Root>/Rate Limiter' */
  real_T Memory_PreviousInput;         /* '<S18>/Memory' */
  volatile real_T RateTransition2_Buffer[2];/* '<Root>/Rate Transition2' */
  real_T RateTransition7_Buffer[4];    /* '<Root>/Rate Transition7' */
  real_T RateTransition9_Buffer;       /* '<Root>/Rate Transition9' */
  t_jpeg_compress ImageCompress_Compress;/* '<S5>/Image Compress' */
  t_jpeg_compress ImageCompress_Compress_l;/* '<S35>/Image Compress' */
  t_jpeg_compress ImageCompress_Compress_j;/* '<S36>/Image Compress' */
  t_jpeg_compress ImageCompress_Compress_lh;/* '<S6>/Image Compress' */
  t_find_blobs ImageFindObjects_FindHandle;/* '<S7>/Image Find Objects' */
  t_video_capture VideoCapture_VideoCapture;/* '<S15>/Video Capture' */
  t_video3d Video3DInitialize_Video3D; /* '<S16>/Video3D Initialize' */
  t_video3d Depth_Video3D;             /* '<S16>/Depth' */
  t_video3d_stream Depth_Stream;       /* '<S16>/Depth' */
  t_image_filter ImageFilter_Filter;   /* '<S17>/Image Filter' */
  t_image_filter ImageFilter1_Filter;  /* '<S17>/Image Filter1' */
  t_image_rgb_to_hsv ImageTransform1_AlgHandle;/* '<S17>/Image Transform1' */
  t_card HILInitialize_Card;           /* '<S13>/HIL Initialize' */
  void *HILRead_PWORK;                 /* '<S13>/HIL Read' */
  void *HILWrite_PWORK;                /* '<S13>/HIL Write' */
  struct {
    void *Fifo;
  } Channel_PWORK;                     /* '<S5>/Channel' */

  struct {
    void *Fifo;
  } Channel_PWORK_a;                   /* '<S35>/Channel' */

  struct {
    void *Fifo;
  } Channel_PWORK_f;                   /* '<S36>/Channel' */

  struct {
    void *Fifo;
  } Channel_PWORK_m;                   /* '<S17>/Channel' */

  struct {
    void *Fifo;
  } Channel_PWORK_o;                   /* '<S6>/Channel' */

  real32_T RateTransition10_Buffer[2]; /* '<Root>/Rate Transition10' */
  real32_T last_location[2];           /* '<S7>/MATLAB Function' */
  int32_T HILInitialize_DOStates[16];  /* '<S13>/HIL Initialize' */
  int32_T HILInitialize_QuadratureModes[3];/* '<S13>/HIL Initialize' */
  int32_T HILInitialize_InitialEICounts[3];/* '<S13>/HIL Initialize' */
  int32_T HILInitialize_POModeValues[2];/* '<S13>/HIL Initialize' */
  int32_T HILInitialize_POAlignValues[2];/* '<S13>/HIL Initialize' */
  int32_T HILInitialize_POPolarityVals[2];/* '<S13>/HIL Initialize' */
  int32_T HILRead_EncoderBuffer;       /* '<S13>/HIL Read' */
  int32_T clockTickCounter;            /* '<S18>/Pulsing Light' */
  int32_T ImageCompress_DIMS1;         /* '<S5>/Image Compress' */
  int32_T ImageFindObjects_DIMS2;      /* '<S7>/Image Find Objects' */
  int32_T ImageFindObjects_DIMS3[2];   /* '<S7>/Image Find Objects' */
  int32_T ImageFindObjects_DIMS4[2];   /* '<S7>/Image Find Objects' */
  int32_T ImageFindObjects_DIMS5;      /* '<S7>/Image Find Objects' */
  int32_T Reshape_DIMS1;               /* '<S7>/Reshape' */
  int32_T ImageCompress_DIMS1_f;       /* '<S35>/Image Compress' */
  int32_T ImageCompress_DIMS1_b;       /* '<S36>/Image Compress' */
  int32_T ImageCompress_DIMS1_e;       /* '<S6>/Image Compress' */
  uint32_T HILInitialize_POSortedChans[2];/* '<S13>/HIL Initialize' */
  volatile int8_T RateTransition2_ActiveBufIdx;/* '<Root>/Rate Transition2' */
  uint8_T ImageCompress_ScanLine[5136];/* '<S5>/Image Compress' */
  uint8_T RateTransition6_Buffer[492000];/* '<Root>/Rate Transition6' */
  uint8_T RateTransition8_Buffer[164000];/* '<Root>/Rate Transition8' */
  uint8_T ImageCompress_ScanLine_c[6560];/* '<S35>/Image Compress' */
  uint8_T ImageCompress_ScanLine_i[6560];/* '<S36>/Image Compress' */
  uint8_T ImageCompress_ScanLine_ix[19680];/* '<S6>/Image Compress' */
  boolean_T HILInitialize_DOBits[16];  /* '<S13>/HIL Initialize' */
  boolean_T Unwrap224_FirstSample;     /* '<S13>/Unwrap 2^24' */
  boolean_T Integrator1_DWORK1;        /* '<S32>/Integrator1' */
  boolean_T Integrator1_DWORK1_c;      /* '<S33>/Integrator1' */
  boolean_T Integrator1_DWORK1_o;      /* '<S34>/Integrator1' */
  boolean_T last_location_not_empty;   /* '<S7>/MATLAB Function' */
} DW_QCar2_autonomous_driving_e_T;

/* Continuous states (default storage) */
typedef struct {
  real_T Integrator1_CSTATE;           /* '<S32>/Integrator1' */
  real_T Integrator2_CSTATE;           /* '<S32>/Integrator2' */
  real_T Integrator1_CSTATE_a;         /* '<S33>/Integrator1' */
  real_T Integrator2_CSTATE_e;         /* '<S33>/Integrator2' */
  real_T Integrator1_CSTATE_k;         /* '<S34>/Integrator1' */
  real_T Integrator2_CSTATE_h;         /* '<S34>/Integrator2' */
  real_T Integrator1_CSTATE_b;         /* '<S20>/Integrator1' */
} X_QCar2_autonomous_driving_ex_T;

/* State derivatives (default storage) */
typedef struct {
  real_T Integrator1_CSTATE;           /* '<S32>/Integrator1' */
  real_T Integrator2_CSTATE;           /* '<S32>/Integrator2' */
  real_T Integrator1_CSTATE_a;         /* '<S33>/Integrator1' */
  real_T Integrator2_CSTATE_e;         /* '<S33>/Integrator2' */
  real_T Integrator1_CSTATE_k;         /* '<S34>/Integrator1' */
  real_T Integrator2_CSTATE_h;         /* '<S34>/Integrator2' */
  real_T Integrator1_CSTATE_b;         /* '<S20>/Integrator1' */
} XDot_QCar2_autonomous_driving_T;

/* State disabled  */
typedef struct {
  boolean_T Integrator1_CSTATE;        /* '<S32>/Integrator1' */
  boolean_T Integrator2_CSTATE;        /* '<S32>/Integrator2' */
  boolean_T Integrator1_CSTATE_a;      /* '<S33>/Integrator1' */
  boolean_T Integrator2_CSTATE_e;      /* '<S33>/Integrator2' */
  boolean_T Integrator1_CSTATE_k;      /* '<S34>/Integrator1' */
  boolean_T Integrator2_CSTATE_h;      /* '<S34>/Integrator2' */
  boolean_T Integrator1_CSTATE_b;      /* '<S20>/Integrator1' */
} XDis_QCar2_autonomous_driving_T;

/* Zero-crossing (trigger) state */
typedef struct {
  ZCSigState Integrator1_Reset_ZCE;    /* '<S20>/Integrator1' */
} PrevZCX_QCar2_autonomous_driv_T;

#ifndef ODE2_INTG
#define ODE2_INTG

/* ODE2 Integration Data */
typedef struct {
  real_T *y;                           /* output */
  real_T *f[2];                        /* derivatives */
} ODE2_IntgData;

#endif

/* Backward compatible GRT Identifiers */
#define rtB                            QCar2_autonomous_driving_exam_B
#define BlockIO                        B_QCar2_autonomous_driving_ex_T
#define rtX                            QCar2_autonomous_driving_exam_X
#define ContinuousStates               X_QCar2_autonomous_driving_ex_T
#define rtXdot                         QCar2_autonomous_driving_e_XDot
#define StateDerivatives               XDot_QCar2_autonomous_driving_T
#define tXdis                          QCar2_autonomous_driving_e_XDis
#define StateDisabled                  XDis_QCar2_autonomous_driving_T
#define rtP                            QCar2_autonomous_driving_exam_P
#define Parameters                     P_QCar2_autonomous_driving_ex_T
#define rtDWork                        QCar2_autonomous_driving_exa_DW
#define D_Work                         DW_QCar2_autonomous_driving_e_T
#define rtPrevZCSigState               QCar2_autonomous_drivin_PrevZCX
#define PrevZCSigStates                PrevZCX_QCar2_autonomous_driv_T

/* Parameters (default storage) */
struct P_QCar2_autonomous_driving_ex_T_ {
  real_T LeftSteeringLimit_const;     /* Mask Parameter: LeftSteeringLimit_const
                                       * Referenced by: '<S40>/Constant'
                                       */
  real_T RightSteeringLimit_const;   /* Mask Parameter: RightSteeringLimit_const
                                      * Referenced by: '<S42>/Constant'
                                      */
  real_T CompareToConstant3_const;   /* Mask Parameter: CompareToConstant3_const
                                      * Referenced by: '<S39>/Constant'
                                      */
  real_T CompareToConstant1_const;   /* Mask Parameter: CompareToConstant1_const
                                      * Referenced by: '<S37>/Constant'
                                      */
  real_T CompareToConstant2_const;   /* Mask Parameter: CompareToConstant2_const
                                      * Referenced by: '<S38>/Constant'
                                      */
  int32_T HSVColorThresholding1_b_compari;
                              /* Mask Parameter: HSVColorThresholding1_b_compari
                               * Referenced by: '<S17>/HSV Color Thresholding1'
                               */
  int32_T ImageLogic_column;           /* Mask Parameter: ImageLogic_column
                                        * Referenced by: '<S17>/Image Logic'
                                        */
  int32_T ImageLogic1_column;          /* Mask Parameter: ImageLogic1_column
                                        * Referenced by: '<S17>/Image Logic1'
                                        */
  int32_T ImageLogic2_column;          /* Mask Parameter: ImageLogic2_column
                                        * Referenced by: '<S11>/Image Logic2'
                                        */
  int32_T ImageFindObjects_connectivity;
                                /* Mask Parameter: ImageFindObjects_connectivity
                                 * Referenced by: '<S7>/Image Find Objects'
                                 */
  int32_T HSVColorThresholding1_g_compari;
                              /* Mask Parameter: HSVColorThresholding1_g_compari
                               * Referenced by: '<S17>/HSV Color Thresholding1'
                               */
  int32_T HSVColorThresholding1_r_compari;
                              /* Mask Parameter: HSVColorThresholding1_r_compari
                               * Referenced by: '<S17>/HSV Color Thresholding1'
                               */
  int32_T ImageLogic_row;              /* Mask Parameter: ImageLogic_row
                                        * Referenced by: '<S17>/Image Logic'
                                        */
  int32_T ImageLogic1_row;             /* Mask Parameter: ImageLogic1_row
                                        * Referenced by: '<S17>/Image Logic1'
                                        */
  int32_T ImageLogic2_row;             /* Mask Parameter: ImageLogic2_row
                                        * Referenced by: '<S11>/Image Logic2'
                                        */
  int32_T ImageFindObjects_sort_order;
                                  /* Mask Parameter: ImageFindObjects_sort_order
                                   * Referenced by: '<S7>/Image Find Objects'
                                   */
  uint32_T HILRead_analog_channels[2];/* Mask Parameter: HILRead_analog_channels
                                       * Referenced by: '<S13>/HIL Read'
                                       */
  uint32_T HILWrite_digital_channels[16];
                                    /* Mask Parameter: HILWrite_digital_channels
                                     * Referenced by: '<S13>/HIL Write'
                                     */
  uint32_T HILRead_encoder_channels; /* Mask Parameter: HILRead_encoder_channels
                                      * Referenced by: '<S13>/HIL Read'
                                      */
  uint32_T ImageFindObjects_max_pixels;
                                  /* Mask Parameter: ImageFindObjects_max_pixels
                                   * Referenced by: '<S7>/Image Find Objects'
                                   */
  uint32_T ImageFindObjects_min_pixels;
                                  /* Mask Parameter: ImageFindObjects_min_pixels
                                   * Referenced by: '<S7>/Image Find Objects'
                                   */
  uint32_T HILRead_other_channels[6];  /* Mask Parameter: HILRead_other_channels
                                        * Referenced by: '<S13>/HIL Read'
                                        */
  uint32_T HILWrite_other_channels[2];/* Mask Parameter: HILWrite_other_channels
                                       * Referenced by: '<S13>/HIL Write'
                                       */
  uint32_T Depth_stream_index;         /* Mask Parameter: Depth_stream_index
                                        * Referenced by: '<S16>/Depth'
                                        */
  boolean_T Video3DInitialize_active;/* Mask Parameter: Video3DInitialize_active
                                      * Referenced by: '<S16>/Video3D Initialize'
                                      */
  boolean_T ImageFindObjects_exclude_at_edg;
                              /* Mask Parameter: ImageFindObjects_exclude_at_edg
                               * Referenced by: '<S7>/Image Find Objects'
                               */
  boolean_T ImageFindObjects_largest;/* Mask Parameter: ImageFindObjects_largest
                                      * Referenced by: '<S7>/Image Find Objects'
                                      */
  real_T Constant10_Value;             /* Expression: 1
                                        * Referenced by: '<Root>/Constant10'
                                        */
  real_T Constant8_Value;              /* Expression: 0
                                        * Referenced by: '<Root>/Constant8'
                                        */
  real_T SpeedMaxms_Value;             /* Expression: 0.1
                                        * Referenced by: '<Root>/Speed Max (m//s)'
                                        */
  real_T Saturation1_UpperSat;         /* Expression: 1
                                        * Referenced by: '<Root>/Saturation1'
                                        */
  real_T Saturation1_LowerSat;         /* Expression: 0
                                        * Referenced by: '<Root>/Saturation1'
                                        */
  real_T Constant9_Value;              /* Expression: 0
                                        * Referenced by: '<Root>/Constant9'
                                        */
  real_T distancem_Y0;                 /* Computed Parameter: distancem_Y0
                                        * Referenced by: '<S19>/distance (m)'
                                        */
  real_T Constant_Value;               /* Expression: 0.05
                                        * Referenced by: '<S19>/Constant'
                                        */
  real_T Constant1_Value;              /* Expression: 2
                                        * Referenced by: '<S19>/Constant1'
                                        */
  real_T Constant2_Value;              /* Expression: Inf
                                        * Referenced by: '<S19>/Constant2'
                                        */
  real_T Constant3_Value[3];           /* Expression: [255 0 0]
                                        * Referenced by: '<S19>/Constant3'
                                        */
  real_T scale_Value;                  /* Expression: 3
                                        * Referenced by: '<S19>/scale'
                                        */
  real_T Constant_Value_j;             /* Expression: 8
                                        * Referenced by: '<S21>/Constant'
                                        */
  real_T Saturation_UpperSat;          /* Expression: 1
                                        * Referenced by: '<S21>/Saturation'
                                        */
  real_T Saturation_LowerSat;          /* Expression: 0.5
                                        * Referenced by: '<S21>/Saturation'
                                        */
  real_T Constant_Value_i;             /* Expression: 0
                                        * Referenced by: '<S46>/Constant'
                                        */
  real_T HILInitialize_OOTerminate;/* Expression: set_other_outputs_at_terminate
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  real_T HILInitialize_OOExit;    /* Expression: set_other_outputs_at_switch_out
                                   * Referenced by: '<S13>/HIL Initialize'
                                   */
  real_T HILInitialize_OOStart;        /* Expression: set_other_outputs_at_start
                                        * Referenced by: '<S13>/HIL Initialize'
                                        */
  real_T HILInitialize_OOEnter;    /* Expression: set_other_outputs_at_switch_in
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  real_T HILInitialize_POFinal;        /* Expression: final_pwm_outputs
                                        * Referenced by: '<S13>/HIL Initialize'
                                        */
  real_T HILInitialize_OOFinal;        /* Expression: final_other_outputs
                                        * Referenced by: '<S13>/HIL Initialize'
                                        */
  real_T HILInitialize_AIHigh;         /* Expression: analog_input_maximums
                                        * Referenced by: '<S13>/HIL Initialize'
                                        */
  real_T HILInitialize_AILow;          /* Expression: analog_input_minimums
                                        * Referenced by: '<S13>/HIL Initialize'
                                        */
  real_T HILInitialize_EIFrequency;    /* Expression: encoder_filter_frequency
                                        * Referenced by: '<S13>/HIL Initialize'
                                        */
  real_T HILInitialize_POFrequency;    /* Expression: pwm_frequency
                                        * Referenced by: '<S13>/HIL Initialize'
                                        */
  real_T HILInitialize_POInitial;      /* Expression: initial_pwm_outputs
                                        * Referenced by: '<S13>/HIL Initialize'
                                        */
  real_T HILInitialize_POWatchdog;     /* Expression: watchdog_pwm_outputs
                                        * Referenced by: '<S13>/HIL Initialize'
                                        */
  real_T HILInitialize_OOInitial;      /* Expression: initial_other_outputs
                                        * Referenced by: '<S13>/HIL Initialize'
                                        */
  real_T HILInitialize_OOWatchdog;     /* Expression: watchdog_other_outputs
                                        * Referenced by: '<S13>/HIL Initialize'
                                        */
  real_T Constant1_Value_i;            /* Expression: 1
                                        * Referenced by: '<S13>/Constant1'
                                        */
  real_T Constant2_Value_d;            /* Expression: 25
                                        * Referenced by: '<S13>/Constant2'
                                        */
  real_T Constant3_Value_d;            /* Expression: 1
                                        * Referenced by: '<S13>/Constant3'
                                        */
  real_T Constant4_Value;              /* Expression: 100
                                        * Referenced by: '<S13>/Constant4'
                                        */
  real_T Constant5_Value;              /* Expression: 1
                                        * Referenced by: '<S13>/Constant5'
                                        */
  real_T Constant6_Value;              /* Expression: 100
                                        * Referenced by: '<S13>/Constant6'
                                        */
  real_T Constant_Value_d;             /* Expression: 2
                                        * Referenced by: '<S32>/Constant'
                                        */
  real_T Unwrap224_Modulus;            /* Expression: modulus
                                        * Referenced by: '<S13>/Unwrap 2^24'
                                        */
  real_T Integrator2_IC;               /* Expression: 0
                                        * Referenced by: '<S32>/Integrator2'
                                        */
  real_T Constant_Value_h;             /* Expression: 2
                                        * Referenced by: '<S33>/Constant'
                                        */
  real_T Integrator2_IC_g;             /* Expression: 0
                                        * Referenced by: '<S33>/Integrator2'
                                        */
  real_T Constant_Value_g;             /* Expression: 2
                                        * Referenced by: '<S34>/Constant'
                                        */
  real_T Integrator2_IC_e;             /* Expression: 0
                                        * Referenced by: '<S34>/Integrator2'
                                        */
  real_T RateTransition_InitialCondition;/* Expression: 0
                                          * Referenced by: '<Root>/Rate Transition'
                                          */
  real_T PulsingLight_Amp;             /* Expression: 1
                                        * Referenced by: '<S18>/Pulsing Light'
                                        */
  real_T PulsingLight_Period;          /* Expression: 0.5/qc_get_step_size
                                        * Referenced by: '<S18>/Pulsing Light'
                                        */
  real_T PulsingLight_Duty;            /* Expression: 0.5/2/qc_get_step_size
                                        * Referenced by: '<S18>/Pulsing Light'
                                        */
  real_T PulsingLight_PhaseDelay;      /* Expression: 0
                                        * Referenced by: '<S18>/Pulsing Light'
                                        */
  real_T Constant1_Value_f;            /* Expression: 1
                                        * Referenced by: '<S18>/Constant1'
                                        */
  real_T RateTransition1_InitialConditio;/* Expression: 0
                                          * Referenced by: '<Root>/Rate Transition1'
                                          */
  real_T Constant_Value_p;             /* Expression: 0.2
                                        * Referenced by: '<S12>/Constant'
                                        */
  real_T Constant2_Value_f;            /* Expression: 1
                                        * Referenced by: '<S12>/Constant2'
                                        */
  real_T Switch_Threshold;             /* Expression: 0
                                        * Referenced by: '<Root>/Switch'
                                        */
  real_T RateLimiter_RisingLim;        /* Expression: 1
                                        * Referenced by: '<Root>/Rate Limiter'
                                        */
  real_T RateLimiter_FallingLim;       /* Expression: -Inf
                                        * Referenced by: '<Root>/Rate Limiter'
                                        */
  real_T RateLimiter_IC;               /* Expression: 0
                                        * Referenced by: '<Root>/Rate Limiter'
                                        */
  real_T Constant1_Value_f1;           /* Expression: 1
                                        * Referenced by: '<Root>/Constant1'
                                        */
  real_T Switch_Threshold_h;           /* Expression: 0.5
                                        * Referenced by: '<S21>/Switch'
                                        */
  real_T commandsaturation_UpperSat;   /* Expression: 5
                                        * Referenced by: '<S20>/command saturation'
                                        */
  real_T commandsaturation_LowerSat;   /* Expression: -5
                                        * Referenced by: '<S20>/command saturation'
                                        */
  real_T Kffms_Gain;                   /* Expression: 0.1
                                        * Referenced by: '<S20>/Kff  (% // m//s)'
                                        */
  real_T countstorotations_Gain;       /* Expression: 1/720/4
                                        * Referenced by: '<S14>/counts to rotations'
                                        */
  real_T gearratios_Gain;              /* Expression: (13*19)/(70*37)
                                        * Referenced by: '<S14>/gear ratios'
                                        */
  real_T rotstorads_Gain;              /* Expression: 2*pi
                                        * Referenced by: '<S14>/rot//s to rad//s'
                                        */
  real_T wheelradius_Gain;             /* Expression: 0.0342
                                        * Referenced by: '<S14>/wheel radius'
                                        */
  real_T Kpms_Gain;                    /* Expression: 0.3
                                        * Referenced by: '<S20>/Kp (% // m//s)'
                                        */
  real_T Integrator1_IC;               /* Expression: 0
                                        * Referenced by: '<S20>/Integrator1'
                                        */
  real_T Integrator1_UpperSat;         /* Expression: 0.4
                                        * Referenced by: '<S20>/Integrator1'
                                        */
  real_T Integrator1_LowerSat;         /* Expression: -0.4
                                        * Referenced by: '<S20>/Integrator1'
                                        */
  real_T Memory_InitialCondition;      /* Expression: 0
                                        * Referenced by: '<S18>/Memory'
                                        */
  real_T Constant2_Value_b;            /* Expression: 5
                                        * Referenced by: '<S18>/Constant2'
                                        */
  real_T one_shot_block_trigger_type;  /* Expression: i_trigger_type
                                        * Referenced by: '<S41>/one_shot_block'
                                        */
  real_T one_shot_block_redun_pulse;   /* Expression: i_redun_pulse
                                        * Referenced by: '<S41>/one_shot_block'
                                        */
  real_T Constant_Value_di;            /* Expression: 0
                                        * Referenced by: '<S18>/Constant'
                                        */
  real_T Switch_Threshold_e;           /* Expression: 0.5
                                        * Referenced by: '<S41>/Switch'
                                        */
  real_T Gain_Gain;                    /* Expression: 1
                                        * Referenced by: '<S13>/Gain'
                                        */
  real_T SteeringBias_Bias;            /* Expression: 0.0
                                        * Referenced by: '<S13>/Steering Bias'
                                        */
  real_T directionconvention_Gain;     /* Expression: 1
                                        * Referenced by: '<S13>/direction convention'
                                        */
  real_T commandsaturation_UpperSat_n; /* Expression: 0.20
                                        * Referenced by: '<S13>/command saturation'
                                        */
  real_T commandsaturation_LowerSat_d; /* Expression: -0.20
                                        * Referenced by: '<S13>/command saturation'
                                        */
  real_T Kim_Gain;                     /* Expression: 1
                                        * Referenced by: '<S20>/Ki (% // m)  '
                                        */
  real_T Depth_Brightness;             /* Expression: d_brightness
                                        * Referenced by: '<S16>/Depth'
                                        */
  real_T Depth_Contrast;               /* Expression: d_contrast
                                        * Referenced by: '<S16>/Depth'
                                        */
  real_T Depth_Hue;                    /* Expression: d_hue
                                        * Referenced by: '<S16>/Depth'
                                        */
  real_T Depth_Saturation;             /* Expression: d_saturation
                                        * Referenced by: '<S16>/Depth'
                                        */
  real_T Depth_Sharpness;              /* Expression: d_sharpness
                                        * Referenced by: '<S16>/Depth'
                                        */
  real_T Depth_Gamma;                  /* Expression: d_gamma
                                        * Referenced by: '<S16>/Depth'
                                        */
  real_T Depth_WhiteBalance;           /* Expression: d_whitebalance
                                        * Referenced by: '<S16>/Depth'
                                        */
  real_T Depth_BacklightCompensation;  /* Expression: d_backlightcompensation
                                        * Referenced by: '<S16>/Depth'
                                        */
  real_T Depth_Gain;                   /* Expression: d_gain
                                        * Referenced by: '<S16>/Depth'
                                        */
  real_T Depth_Exposure;               /* Expression: d_exposure
                                        * Referenced by: '<S16>/Depth'
                                        */
  real_T Depth_Emitter;                /* Expression: emitter
                                        * Referenced by: '<S16>/Depth'
                                        */
  real_T RateTransition2_InitialConditio;/* Expression: 0
                                          * Referenced by: '<Root>/Rate Transition2'
                                          */
  real_T StoppingDistancem_Value;      /* Expression: 0.2
                                        * Referenced by: '<Root>/Stopping Distance (m)'
                                        */
  real_T VideoCapture_Brightness;      /* Expression: d_brightness
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Contrast;        /* Expression: d_contrast
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Hue;             /* Expression: d_hue
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Saturation;      /* Expression: d_saturation
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Sharpness;       /* Expression: d_sharpness
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Gamma;           /* Expression: d_gamma
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_ColorEnable;     /* Expression: d_coloreffect
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_WhiteBalance;    /* Expression: d_whitebalance
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_BacklightCompensat;/* Expression: d_backlightcompensation
                                          * Referenced by: '<S15>/Video Capture'
                                          */
  real_T VideoCapture_Gain;            /* Expression: d_gain
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Pan;             /* Expression: d_pan
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Tilt;            /* Expression: d_tilt
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Roll;            /* Expression: d_roll
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Zoom;            /* Expression: d_zoom
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Exposure;        /* Expression: d_exposure
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Iris;            /* Expression: d_iris
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Focus;           /* Expression: d_focus
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T VideoCapture_Mirror;          /* Expression: d_mirror
                                        * Referenced by: '<S15>/Video Capture'
                                        */
  real_T ImageTransform1_MinPixel;     /* Expression: min_pixel
                                        * Referenced by: '<S17>/Image Transform1'
                                        */
  real_T ImageTransform1_MaxPixel;     /* Expression: max_pixel
                                        * Referenced by: '<S17>/Image Transform1'
                                        */
  real_T ImageTransform1_ContourDepth; /* Expression: contour_depth
                                        * Referenced by: '<S17>/Image Transform1'
                                        */
  real_T ImageTransform1_FocalLen;     /* Expression: focal_length
                                        * Referenced by: '<S17>/Image Transform1'
                                        */
  real_T ImageTransform1_Extrapolated; /* Expression: extrapolated
                                        * Referenced by: '<S17>/Image Transform1'
                                        */
  real_T ImageTransform1_Angle;        /* Expression: angle
                                        * Referenced by: '<S17>/Image Transform1'
                                        */
  real_T ImageTransform1_RCoeff[2];    /* Expression: radial_coeffs
                                        * Referenced by: '<S17>/Image Transform1'
                                        */
  real_T minhue_Value;                 /* Expression: 100
                                        * Referenced by: '<S17>/min hue'
                                        */
  real_T minsat_Value;                 /* Expression: 63
                                        * Referenced by: '<S17>/min sat'
                                        */
  real_T minval_Value;                 /* Expression: 90
                                        * Referenced by: '<S17>/min val'
                                        */
  real_T maxhue_Value;                 /* Expression: 160
                                        * Referenced by: '<S17>/max hue'
                                        */
  real_T maxsat_Value;                 /* Expression: 165
                                        * Referenced by: '<S17>/max sat'
                                        */
  real_T maxval_Value;                 /* Expression: 211
                                        * Referenced by: '<S17>/max val'
                                        */
  real_T HSVColorThresholding1_Channel0M;/* Expression: r_min
                                          * Referenced by: '<S17>/HSV Color Thresholding1'
                                          */
  real_T HSVColorThresholding1_Channel_i;/* Expression: r_max
                                          * Referenced by: '<S17>/HSV Color Thresholding1'
                                          */
  real_T HSVColorThresholding1_Channel1M;/* Expression: g_min
                                          * Referenced by: '<S17>/HSV Color Thresholding1'
                                          */
  real_T HSVColorThresholding1_Channel_m;/* Expression: g_max
                                          * Referenced by: '<S17>/HSV Color Thresholding1'
                                          */
  real_T HSVColorThresholding1_Channel2M;/* Expression: b_min
                                          * Referenced by: '<S17>/HSV Color Thresholding1'
                                          */
  real_T HSVColorThresholding1_Channel_o;/* Expression: b_max
                                          * Referenced by: '<S17>/HSV Color Thresholding1'
                                          */
  real_T ROIxminxmaxyminymax_Value[4]; /* Expression: [1 820 100 180]
                                        * Referenced by: '<Root>/ROI [xmin xmax ymin ymax]'
                                        */
  real_T NomimalLanePositionPixelColumn_;/* Expression: 410
                                          * Referenced by: '<Root>/Nomimal Lane Position (Pixel Column)'
                                          */
  real_T Gain1_Gain;                   /* Expression: 0.005
                                        * Referenced by: '<Root>/Gain1'
                                        */
  real_T SteeringSaturation1_UpperSat; /* Expression: 0.5
                                        * Referenced by: '<Root>/Steering Saturation1'
                                        */
  real_T SteeringSaturation1_LowerSat; /* Expression: -0.5
                                        * Referenced by: '<Root>/Steering Saturation1'
                                        */
  real_T Constant2_Value_k[3];         /* Expression: [255 0 0]
                                        * Referenced by: '<S4>/Constant2'
                                        */
  real_T Constant3_Value_a[3];         /* Expression: [0 255 0]
                                        * Referenced by: '<S4>/Constant3'
                                        */
  real_T Constant4_Value_m[3];         /* Expression: [255 255 0]
                                        * Referenced by: '<S4>/Constant4'
                                        */
  int32_T HILInitialize_DOWatchdog;
                                 /* Computed Parameter: HILInitialize_DOWatchdog
                                  * Referenced by: '<S13>/HIL Initialize'
                                  */
  int32_T HILInitialize_EIInitial;/* Computed Parameter: HILInitialize_EIInitial
                                   * Referenced by: '<S13>/HIL Initialize'
                                   */
  int32_T HILInitialize_POModes;    /* Computed Parameter: HILInitialize_POModes
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  int32_T HILInitialize_POConfiguration;
                            /* Computed Parameter: HILInitialize_POConfiguration
                             * Referenced by: '<S13>/HIL Initialize'
                             */
  int32_T HILInitialize_POAlignment;
                                /* Computed Parameter: HILInitialize_POAlignment
                                 * Referenced by: '<S13>/HIL Initialize'
                                 */
  int32_T HILInitialize_POPolarity;
                                 /* Computed Parameter: HILInitialize_POPolarity
                                  * Referenced by: '<S13>/HIL Initialize'
                                  */
  int32_T ImageTransform1_PrPoint[2];
                                  /* Computed Parameter: ImageTransform1_PrPoint
                                   * Referenced by: '<S17>/Image Transform1'
                                   */
  int32_T ImageTransform1_Interpolation;
                            /* Computed Parameter: ImageTransform1_Interpolation
                             * Referenced by: '<S17>/Image Transform1'
                             */
  int32_T ImageTransform1_Origin[2];
                                   /* Computed Parameter: ImageTransform1_Origin
                                    * Referenced by: '<S17>/Image Transform1'
                                    */
  int32_T ImageTransform1_OOrigin[2];
                                  /* Computed Parameter: ImageTransform1_OOrigin
                                   * Referenced by: '<S17>/Image Transform1'
                                   */
  int32_T ImageFilter_Divisor;        /* Computed Parameter: ImageFilter_Divisor
                                       * Referenced by: '<S17>/Image Filter'
                                       */
  int32_T ImageFilter_Offset;          /* Computed Parameter: ImageFilter_Offset
                                        * Referenced by: '<S17>/Image Filter'
                                        */
  int32_T ImageFilter1_Divisor;      /* Computed Parameter: ImageFilter1_Divisor
                                      * Referenced by: '<S17>/Image Filter1'
                                      */
  int32_T ImageFilter1_Offset;        /* Computed Parameter: ImageFilter1_Offset
                                       * Referenced by: '<S17>/Image Filter1'
                                       */
  real32_T Gain_Gain_g;                /* Computed Parameter: Gain_Gain_g
                                        * Referenced by: '<S19>/Gain'
                                        */
  real32_T ImageFilter_Sigma;          /* Computed Parameter: ImageFilter_Sigma
                                        * Referenced by: '<S17>/Image Filter'
                                        */
  real32_T ImageFilter_Alpha;          /* Computed Parameter: ImageFilter_Alpha
                                        * Referenced by: '<S17>/Image Filter'
                                        */
  real32_T ImageFilter1_Sigma;         /* Computed Parameter: ImageFilter1_Sigma
                                        * Referenced by: '<S17>/Image Filter1'
                                        */
  real32_T ImageFilter1_Alpha;         /* Computed Parameter: ImageFilter1_Alpha
                                        * Referenced by: '<S17>/Image Filter1'
                                        */
  uint32_T HILInitialize_AIChannels[5];
                                 /* Computed Parameter: HILInitialize_AIChannels
                                  * Referenced by: '<S13>/HIL Initialize'
                                  */
  uint32_T HILInitialize_DIChannels[15];
                                 /* Computed Parameter: HILInitialize_DIChannels
                                  * Referenced by: '<S13>/HIL Initialize'
                                  */
  uint32_T HILInitialize_DOChannels[16];
                                 /* Computed Parameter: HILInitialize_DOChannels
                                  * Referenced by: '<S13>/HIL Initialize'
                                  */
  uint32_T HILInitialize_EIChannels[3];
                                 /* Computed Parameter: HILInitialize_EIChannels
                                  * Referenced by: '<S13>/HIL Initialize'
                                  */
  uint32_T HILInitialize_EIQuadrature;
                               /* Computed Parameter: HILInitialize_EIQuadrature
                                * Referenced by: '<S13>/HIL Initialize'
                                */
  uint32_T HILInitialize_POChannels[2];
                                 /* Computed Parameter: HILInitialize_POChannels
                                  * Referenced by: '<S13>/HIL Initialize'
                                  */
  uint32_T HILInitialize_OOChannels[2];
                                 /* Computed Parameter: HILInitialize_OOChannels
                                  * Referenced by: '<S13>/HIL Initialize'
                                  */
  uint32_T Depth_Preset;               /* Computed Parameter: Depth_Preset
                                        * Referenced by: '<S16>/Depth'
                                        */
  uint32_T ImageCompress_Quality;   /* Computed Parameter: ImageCompress_Quality
                                     * Referenced by: '<S5>/Image Compress'
                                     */
  uint32_T ImageTransform1_ColorTheme;
                               /* Computed Parameter: ImageTransform1_ColorTheme
                                * Referenced by: '<S17>/Image Transform1'
                                */
  uint32_T ImageFilter_KernelSize; /* Computed Parameter: ImageFilter_KernelSize
                                    * Referenced by: '<S17>/Image Filter'
                                    */
  uint32_T ImageFilter_MaskSize[2];  /* Computed Parameter: ImageFilter_MaskSize
                                      * Referenced by: '<S17>/Image Filter'
                                      */
  uint32_T ImageFilter_GapThreshold;
                                 /* Computed Parameter: ImageFilter_GapThreshold
                                  * Referenced by: '<S17>/Image Filter'
                                  */
  uint32_T ImageFilter_Iterations; /* Computed Parameter: ImageFilter_Iterations
                                    * Referenced by: '<S17>/Image Filter'
                                    */
  uint32_T ImageFilter_Norm;           /* Computed Parameter: ImageFilter_Norm
                                        * Referenced by: '<S17>/Image Filter'
                                        */
  uint32_T ImageFilter1_KernelSize;
                                  /* Computed Parameter: ImageFilter1_KernelSize
                                   * Referenced by: '<S17>/Image Filter1'
                                   */
  uint32_T ImageFilter1_MaskSize[2];/* Computed Parameter: ImageFilter1_MaskSize
                                     * Referenced by: '<S17>/Image Filter1'
                                     */
  uint32_T ImageFilter1_GapThreshold;
                                /* Computed Parameter: ImageFilter1_GapThreshold
                                 * Referenced by: '<S17>/Image Filter1'
                                 */
  uint32_T ImageFilter1_Iterations;
                                  /* Computed Parameter: ImageFilter1_Iterations
                                   * Referenced by: '<S17>/Image Filter1'
                                   */
  uint32_T ImageFilter1_Norm;          /* Computed Parameter: ImageFilter1_Norm
                                        * Referenced by: '<S17>/Image Filter1'
                                        */
  uint32_T ImageCompress_Quality_n;
                                  /* Computed Parameter: ImageCompress_Quality_n
                                   * Referenced by: '<S35>/Image Compress'
                                   */
  uint32_T ImageCompress_Quality_a;
                                  /* Computed Parameter: ImageCompress_Quality_a
                                   * Referenced by: '<S36>/Image Compress'
                                   */
  uint32_T ImageCompress_Quality_h;
                                  /* Computed Parameter: ImageCompress_Quality_h
                                   * Referenced by: '<S6>/Image Compress'
                                   */
  int16_T ImageFilter_Kernel[9];       /* Expression: kernel
                                        * Referenced by: '<S17>/Image Filter'
                                        */
  int16_T ImageFilter1_Kernel[9];      /* Expression: kernel
                                        * Referenced by: '<S17>/Image Filter1'
                                        */
  boolean_T HILInitialize_Active;    /* Computed Parameter: HILInitialize_Active
                                      * Referenced by: '<S13>/HIL Initialize'
                                      */
  boolean_T HILInitialize_AOTerminate;
                                /* Computed Parameter: HILInitialize_AOTerminate
                                 * Referenced by: '<S13>/HIL Initialize'
                                 */
  boolean_T HILInitialize_AOExit;    /* Computed Parameter: HILInitialize_AOExit
                                      * Referenced by: '<S13>/HIL Initialize'
                                      */
  boolean_T HILInitialize_DOTerminate;
                                /* Computed Parameter: HILInitialize_DOTerminate
                                 * Referenced by: '<S13>/HIL Initialize'
                                 */
  boolean_T HILInitialize_DOExit;    /* Computed Parameter: HILInitialize_DOExit
                                      * Referenced by: '<S13>/HIL Initialize'
                                      */
  boolean_T HILInitialize_POTerminate;
                                /* Computed Parameter: HILInitialize_POTerminate
                                 * Referenced by: '<S13>/HIL Initialize'
                                 */
  boolean_T HILInitialize_POExit;    /* Computed Parameter: HILInitialize_POExit
                                      * Referenced by: '<S13>/HIL Initialize'
                                      */
  boolean_T HILInitialize_CKPStart;/* Computed Parameter: HILInitialize_CKPStart
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  boolean_T HILInitialize_CKPEnter;/* Computed Parameter: HILInitialize_CKPEnter
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  boolean_T HILInitialize_CKStart;  /* Computed Parameter: HILInitialize_CKStart
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_CKEnter;  /* Computed Parameter: HILInitialize_CKEnter
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_AIPStart;/* Computed Parameter: HILInitialize_AIPStart
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  boolean_T HILInitialize_AIPEnter;/* Computed Parameter: HILInitialize_AIPEnter
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  boolean_T HILInitialize_AOPStart;/* Computed Parameter: HILInitialize_AOPStart
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  boolean_T HILInitialize_AOPEnter;/* Computed Parameter: HILInitialize_AOPEnter
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  boolean_T HILInitialize_AOStart;  /* Computed Parameter: HILInitialize_AOStart
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_AOEnter;  /* Computed Parameter: HILInitialize_AOEnter
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_AOReset;  /* Computed Parameter: HILInitialize_AOReset
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_DOPStart;/* Computed Parameter: HILInitialize_DOPStart
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  boolean_T HILInitialize_DOPEnter;/* Computed Parameter: HILInitialize_DOPEnter
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  boolean_T HILInitialize_DOStart;  /* Computed Parameter: HILInitialize_DOStart
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_DOEnter;  /* Computed Parameter: HILInitialize_DOEnter
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_DOReset;  /* Computed Parameter: HILInitialize_DOReset
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_EIPStart;/* Computed Parameter: HILInitialize_EIPStart
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  boolean_T HILInitialize_EIPEnter;/* Computed Parameter: HILInitialize_EIPEnter
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  boolean_T HILInitialize_EIStart;  /* Computed Parameter: HILInitialize_EIStart
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_EIEnter;  /* Computed Parameter: HILInitialize_EIEnter
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_POPStart;/* Computed Parameter: HILInitialize_POPStart
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  boolean_T HILInitialize_POPEnter;/* Computed Parameter: HILInitialize_POPEnter
                                    * Referenced by: '<S13>/HIL Initialize'
                                    */
  boolean_T HILInitialize_POStart;  /* Computed Parameter: HILInitialize_POStart
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_POEnter;  /* Computed Parameter: HILInitialize_POEnter
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_POReset;  /* Computed Parameter: HILInitialize_POReset
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_OOReset;  /* Computed Parameter: HILInitialize_OOReset
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_DOFinal;  /* Computed Parameter: HILInitialize_DOFinal
                                     * Referenced by: '<S13>/HIL Initialize'
                                     */
  boolean_T HILInitialize_DOInitial;
                                  /* Computed Parameter: HILInitialize_DOInitial
                                   * Referenced by: '<S13>/HIL Initialize'
                                   */
  boolean_T HILRead_Active;            /* Computed Parameter: HILRead_Active
                                        * Referenced by: '<S13>/HIL Read'
                                        */
  boolean_T SteadyLight_Value;         /* Computed Parameter: SteadyLight_Value
                                        * Referenced by: '<S18>/Steady Light'
                                        */
  boolean_T LightOff_Value;            /* Computed Parameter: LightOff_Value
                                        * Referenced by: '<S18>/Light Off'
                                        */
  boolean_T HILWrite_Active;           /* Computed Parameter: HILWrite_Active
                                        * Referenced by: '<S13>/HIL Write'
                                        */
  boolean_T VideoDisplay_UseHardware;
                                 /* Computed Parameter: VideoDisplay_UseHardware
                                  * Referenced by: '<S5>/Video Display'
                                  */
  boolean_T VideoDisplay_UseHardware_o;
                               /* Computed Parameter: VideoDisplay_UseHardware_o
                                * Referenced by: '<S35>/Video Display'
                                */
  boolean_T VideoDisplay_UseHardware_i;
                               /* Computed Parameter: VideoDisplay_UseHardware_i
                                * Referenced by: '<S36>/Video Display'
                                */
  boolean_T VideoDisplay_UseHardware_it;
                              /* Computed Parameter: VideoDisplay_UseHardware_it
                               * Referenced by: '<S17>/Video Display'
                               */
  boolean_T VideoDisplay_UseHardware_b;
                               /* Computed Parameter: VideoDisplay_UseHardware_b
                                * Referenced by: '<S6>/Video Display'
                                */
  uint8_T imageDepthForDisplay_Y0;/* Computed Parameter: imageDepthForDisplay_Y0
                                   * Referenced by: '<S19>/imageDepthForDisplay'
                                   */
  uint8_T uArm0Disarm1_CurrentSetting;
                              /* Computed Parameter: uArm0Disarm1_CurrentSetting
                               * Referenced by: '<Root>/1 - Arm, 0 - Disarm1'
                               */
  uint8_T ImageFilter_Zone;            /* Computed Parameter: ImageFilter_Zone
                                        * Referenced by: '<S17>/Image Filter'
                                        */
  uint8_T ImageFilter_BdrType;        /* Computed Parameter: ImageFilter_BdrType
                                       * Referenced by: '<S17>/Image Filter'
                                       */
  uint8_T ImageFilter_BdrValue[3];   /* Computed Parameter: ImageFilter_BdrValue
                                      * Referenced by: '<S17>/Image Filter'
                                      */
  uint8_T ImageFilter_RoundingMode;
                                 /* Computed Parameter: ImageFilter_RoundingMode
                                  * Referenced by: '<S17>/Image Filter'
                                  */
  uint8_T ImageFilter_AlgorithmHint;
                                /* Computed Parameter: ImageFilter_AlgorithmHint
                                 * Referenced by: '<S17>/Image Filter'
                                 */
  uint8_T ImageFilter_Threshold;    /* Computed Parameter: ImageFilter_Threshold
                                     * Referenced by: '<S17>/Image Filter'
                                     */
  uint8_T ImageFilter_PrsFrames;    /* Computed Parameter: ImageFilter_PrsFrames
                                     * Referenced by: '<S17>/Image Filter'
                                     */
  uint8_T ImageFilter_PrsValid;      /* Computed Parameter: ImageFilter_PrsValid
                                      * Referenced by: '<S17>/Image Filter'
                                      */
  uint8_T ImageFilter_DepthThreshold;
                               /* Computed Parameter: ImageFilter_DepthThreshold
                                * Referenced by: '<S17>/Image Filter'
                                */
  uint8_T ImageFilter1_Zone;           /* Computed Parameter: ImageFilter1_Zone
                                        * Referenced by: '<S17>/Image Filter1'
                                        */
  uint8_T ImageFilter1_BdrType;      /* Computed Parameter: ImageFilter1_BdrType
                                      * Referenced by: '<S17>/Image Filter1'
                                      */
  uint8_T ImageFilter1_BdrValue[3]; /* Computed Parameter: ImageFilter1_BdrValue
                                     * Referenced by: '<S17>/Image Filter1'
                                     */
  uint8_T ImageFilter1_RoundingMode;
                                /* Computed Parameter: ImageFilter1_RoundingMode
                                 * Referenced by: '<S17>/Image Filter1'
                                 */
  uint8_T ImageFilter1_AlgorithmHint;
                               /* Computed Parameter: ImageFilter1_AlgorithmHint
                                * Referenced by: '<S17>/Image Filter1'
                                */
  uint8_T ImageFilter1_Threshold;  /* Computed Parameter: ImageFilter1_Threshold
                                    * Referenced by: '<S17>/Image Filter1'
                                    */
  uint8_T ImageFilter1_PrsFrames;  /* Computed Parameter: ImageFilter1_PrsFrames
                                    * Referenced by: '<S17>/Image Filter1'
                                    */
  uint8_T ImageFilter1_PrsValid;    /* Computed Parameter: ImageFilter1_PrsValid
                                     * Referenced by: '<S17>/Image Filter1'
                                     */
  uint8_T ImageFilter1_DepthThreshold;
                              /* Computed Parameter: ImageFilter1_DepthThreshold
                               * Referenced by: '<S17>/Image Filter1'
                               */
};

/* Real-time Model Data Structure */
struct tag_RTM_QCar2_autonomous_driv_T {
  const char_T *path;
  const char_T *modelName;
  struct SimStruct_tag * *childSfunctions;
  const char_T *errorStatus;
  SS_SimMode simMode;
  RTWExtModeInfo *extModeInfo;
  RTWSolverInfo solverInfo;
  RTWSolverInfo *solverInfoPtr;
  void *sfcnInfo;
  void *blockIO;
  const void *constBlockIO;
  void *defaultParam;
  ZCSigState *prevZCSigState;
  real_T *contStates;
  int_T *periodicContStateIndices;
  real_T *periodicContStateRanges;
  real_T *derivs;
  void *zcSignalValues;
  void *inputs;
  void *outputs;
  boolean_T *contStateDisabled;
  boolean_T zCCacheNeedsReset;
  boolean_T derivCacheNeedsReset;
  boolean_T CTOutputIncnstWithState;
  real_T odeY[7];
  real_T odeF[2][7];
  ODE2_IntgData intgData;
  void *dwork;

  /*
   * Sizes:
   * The following substructure contains sizes information
   * for many of the model attributes such as inputs, outputs,
   * dwork, sample times, etc.
   */
  struct {
    uint32_T checksums[4];
    uint32_T options;
    int_T numContStates;
    int_T numPeriodicContStates;
    int_T numU;
    int_T numY;
    int_T numSampTimes;
    int_T numBlocks;
    int_T numBlockIO;
    int_T numBlockPrms;
    int_T numDwork;
    int_T numSFcnPrms;
    int_T numSFcns;
    int_T numIports;
    int_T numOports;
    int_T numNonSampZCs;
    int_T sysDirFeedThru;
    int_T rtwGenSfcn;
  } Sizes;

  /*
   * SpecialInfo:
   * The following substructure contains special information
   * related to other components that are dependent on RTW.
   */
  struct {
    const void *mappingInfo;
    void *xpcData;
  } SpecialInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    time_T stepSize;
    uint32_T clockTick0;
    uint32_T clockTickH0;
    time_T stepSize0;
    uint32_T clockTick1;
    uint32_T clockTickH1;
    time_T stepSize1;
    uint32_T clockTick2;
    uint32_T clockTickH2;
    time_T stepSize2;
    uint32_T clockTick3;
    uint32_T clockTickH3;
    time_T stepSize3;
    uint32_T clockTick4;
    uint32_T clockTickH4;
    time_T stepSize4;
    boolean_T firstInitCondFlag;
    struct {
      uint8_T TID[5];
    } TaskCounters;

    struct {
      boolean_T TID1_2;
      boolean_T TID1_3;
      boolean_T TID3_4;
    } RateInteraction;

    time_T tStart;
    time_T tFinal;
    time_T timeOfLastOutput;
    void *timingData;
    real_T *varNextHitTimesList;
    SimTimeStep simTimeStep;
    boolean_T stopRequestedFlag;
    time_T *sampleTimes;
    time_T *offsetTimes;
    int_T *sampleTimeTaskIDPtr;
    int_T *sampleHits;
    int_T *perTaskSampleHits;
    time_T *t;
    time_T sampleTimesArray[5];
    time_T offsetTimesArray[5];
    int_T sampleTimeTaskIDArray[5];
    int_T sampleHitArray[5];
    int_T perTaskSampleHitsArray[25];
    time_T tArray[5];
  } Timing;
};

/* Block parameters (default storage) */
extern P_QCar2_autonomous_driving_ex_T QCar2_autonomous_driving_exam_P;

/* Block signals (default storage) */
extern B_QCar2_autonomous_driving_ex_T QCar2_autonomous_driving_exam_B;

/* Continuous states (default storage) */
extern X_QCar2_autonomous_driving_ex_T QCar2_autonomous_driving_exam_X;

/* Disabled states (default storage) */
extern XDis_QCar2_autonomous_driving_T QCar2_autonomous_driving_e_XDis;

/* Block states (default storage) */
extern DW_QCar2_autonomous_driving_e_T QCar2_autonomous_driving_exa_DW;

/* Zero-crossing (trigger) state */
extern PrevZCX_QCar2_autonomous_driv_T QCar2_autonomous_drivin_PrevZCX;

/* External function called from main */
extern time_T rt_SimUpdateDiscreteEvents(
  int_T rtmNumSampTimes, void *rtmTimingData, int_T *rtmSampleHitPtr, int_T
  *rtmPerTaskSampleHits )
  ;

/* Model entry point functions */
extern void QCar2_autonomous_driving_example1_initialize(void);
extern void QCar2_autonomous_driving_example1_output0(void);
extern void QCar2_autonomous_driving_example1_update0(void);
extern void QCar2_autonomous_driving_example1_output2(void);
extern void QCar2_autonomous_driving_example1_update2(void);
extern void QCar2_autonomous_driving_example1_output3(void);
extern void QCar2_autonomous_driving_example1_update3(void);
extern void QCar2_autonomous_driving_example1_output4(void);
extern void QCar2_autonomous_driving_example1_update4(void);
extern void QCar2_autonomous_driving_example1_terminate(void);

/*====================*
 * External functions *
 *====================*/
extern QCar2_autonomous_driving_example1_rtModel
  *QCar2_autonomous_driving_example1(void);
extern void MdlInitializeSizes(void);
extern void MdlInitializeSampleTimes(void);
extern void MdlInitialize(void);
extern void MdlStart(void);
extern void MdlOutputs(int_T tid);
extern void MdlUpdate(int_T tid);
extern void MdlTerminate(void);

/* Real-time Model object */
extern RT_MODEL_QCar2_autonomous_dri_T *const QCar2_autonomous_driving_exa_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'QCar2_autonomous_driving_example1'
 * '<S1>'   : 'QCar2_autonomous_driving_example1/ CSI Timing'
 * '<S2>'   : 'QCar2_autonomous_driving_example1/ Depth Timing'
 * '<S3>'   : 'QCar2_autonomous_driving_example1/Control Loop Timing '
 * '<S4>'   : 'QCar2_autonomous_driving_example1/Diagnostics'
 * '<S5>'   : 'QCar2_autonomous_driving_example1/Display Depth'
 * '<S6>'   : 'QCar2_autonomous_driving_example1/Display Tracking Diagnostics'
 * '<S7>'   : 'QCar2_autonomous_driving_example1/Lane Location'
 * '<S8>'   : 'QCar2_autonomous_driving_example1/MATLAB Function'
 * '<S9>'   : 'QCar2_autonomous_driving_example1/Powered by QUARC'
 * '<S10>'  : 'QCar2_autonomous_driving_example1/Quanser'
 * '<S11>'  : 'QCar2_autonomous_driving_example1/ROI Mask'
 * '<S12>'  : 'QCar2_autonomous_driving_example1/automatedDriving'
 * '<S13>'  : 'QCar2_autonomous_driving_example1/basicQCarIO'
 * '<S14>'  : 'QCar2_autonomous_driving_example1/basicSpeedEstimation'
 * '<S15>'  : 'QCar2_autonomous_driving_example1/captureCSI'
 * '<S16>'  : 'QCar2_autonomous_driving_example1/captureDepth'
 * '<S17>'  : 'QCar2_autonomous_driving_example1/colorThresholdingHSV'
 * '<S18>'  : 'QCar2_autonomous_driving_example1/indicatorAndLamps'
 * '<S19>'  : 'QCar2_autonomous_driving_example1/obstacleDetection'
 * '<S20>'  : 'QCar2_autonomous_driving_example1/speedController'
 * '<S21>'  : 'QCar2_autonomous_driving_example1/turnSpeedHandling'
 * '<S22>'  : 'QCar2_autonomous_driving_example1/Diagnostics/Draw Lines Module1'
 * '<S23>'  : 'QCar2_autonomous_driving_example1/Diagnostics/Draw Lines Module2'
 * '<S24>'  : 'QCar2_autonomous_driving_example1/Diagnostics/Draw Lines Module3'
 * '<S25>'  : 'QCar2_autonomous_driving_example1/Diagnostics/MATLAB Function'
 * '<S26>'  : 'QCar2_autonomous_driving_example1/Diagnostics/MATLAB Function1'
 * '<S27>'  : 'QCar2_autonomous_driving_example1/Diagnostics/MATLAB Function2'
 * '<S28>'  : 'QCar2_autonomous_driving_example1/Diagnostics/MATLAB Function3'
 * '<S29>'  : 'QCar2_autonomous_driving_example1/Lane Location/MATLAB Function'
 * '<S30>'  : 'QCar2_autonomous_driving_example1/ROI Mask/Mask'
 * '<S31>'  : 'QCar2_autonomous_driving_example1/automatedDriving/MATLAB Function'
 * '<S32>'  : 'QCar2_autonomous_driving_example1/basicQCarIO/Second-Order Low-Pass Filter'
 * '<S33>'  : 'QCar2_autonomous_driving_example1/basicQCarIO/Second-Order Low-Pass Filter1'
 * '<S34>'  : 'QCar2_autonomous_driving_example1/basicQCarIO/Second-Order Low-Pass Filter2'
 * '<S35>'  : 'QCar2_autonomous_driving_example1/colorThresholdingHSV/Combined  Displays'
 * '<S36>'  : 'QCar2_autonomous_driving_example1/colorThresholdingHSV/Filtered Image'
 * '<S37>'  : 'QCar2_autonomous_driving_example1/indicatorAndLamps/Compare To Constant1'
 * '<S38>'  : 'QCar2_autonomous_driving_example1/indicatorAndLamps/Compare To Constant2'
 * '<S39>'  : 'QCar2_autonomous_driving_example1/indicatorAndLamps/Compare To Constant3'
 * '<S40>'  : 'QCar2_autonomous_driving_example1/indicatorAndLamps/Left Steering Limit'
 * '<S41>'  : 'QCar2_autonomous_driving_example1/indicatorAndLamps/One Shot'
 * '<S42>'  : 'QCar2_autonomous_driving_example1/indicatorAndLamps/Right Steering Limit'
 * '<S43>'  : 'QCar2_autonomous_driving_example1/obstacleDetection/Draw Lines Module'
 * '<S44>'  : 'QCar2_autonomous_driving_example1/obstacleDetection/MATLAB Function'
 * '<S45>'  : 'QCar2_autonomous_driving_example1/obstacleDetection/Steering based  image subselector'
 * '<S46>'  : 'QCar2_autonomous_driving_example1/speedController/Compare To Zero'
 */
#endif                                /* QCar2_autonomous_driving_example1_h_ */
