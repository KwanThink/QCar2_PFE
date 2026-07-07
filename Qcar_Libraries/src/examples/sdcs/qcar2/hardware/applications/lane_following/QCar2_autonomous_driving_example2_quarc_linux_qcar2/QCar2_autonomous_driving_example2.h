/*
 * QCar2_autonomous_driving_example2.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "QCar2_autonomous_driving_example2".
 *
 * Model version              : 12.0
 * Simulink Coder version : 24.2 (R2024b) 21-Jun-2024
 * C source code generated on : Fri Apr  3 10:40:53 2026
 *
 * Target selection: quarc_linux_qcar2.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: ARM Compatible->ARM 64-bit (LP64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef QCar2_autonomous_driving_example2_h_
#define QCar2_autonomous_driving_example2_h_
#ifndef QCar2_autonomous_driving_example2_COMMON_INCLUDES_
#define QCar2_autonomous_driving_example2_COMMON_INCLUDES_
#include <math.h>
#include "rtwtypes.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "rt_nonfinite.h"
#include "math.h"
#include "dt_info.h"
#include "ext_work.h"
#include "hil.h"
#include "quanser_messages.h"
#include "quanser_types.h"
#include "quanser_time.h"
#include "quanser_extern.h"
#include "quanser_video.h"
#include "quanser_string.h"
#include "quanser_clamp.h"
#include "quanser_image_processing.h"
#include "quanser_memory.h"
#include "quanser_channel.h"
#include "extmode_support.h"
#include "quanser_video3d.h"
#endif                  /* QCar2_autonomous_driving_example2_COMMON_INCLUDES_ */

#include "QCar2_autonomous_driving_example2_types.h"
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
#define QCar2_autonomous_driving_example2_rtModel RT_MODEL_QCar2_autonomous_dri_T

/* Block signals (default storage) */
typedef struct {
  uint8_T ImageTransform[167895];      /* '<S12>/Image Transform' */
  real_T region[14400];
  t_uint64 Depth_o2;                   /* '<S11>/Depth' */
  real_T batteryvoltage;               /* '<S8>/HIL Read' */
  real_T motorcurrent;                 /* '<S8>/HIL Read' */
  real_T encodercounts;                /* '<S8>/HIL Read' */
  real_T HILRead_o4;                   /* '<S8>/HIL Read' */
  real_T HILRead_o5;                   /* '<S8>/HIL Read' */
  real_T HILRead_o6;                   /* '<S8>/HIL Read' */
  real_T HILRead_o7;                   /* '<S8>/HIL Read' */
  real_T HILRead_o8;                   /* '<S8>/HIL Read' */
  real_T HILRead_o9;                   /* '<S8>/HIL Read' */
  real_T Unwrap224;                    /* '<S8>/Unwrap 2^24' */
  real_T Product;                      /* '<S26>/Product' */
  real_T Product1;                     /* '<S26>/Product1' */
  real_T Product_a;                    /* '<S27>/Product' */
  real_T Product1_c;                   /* '<S27>/Product1' */
  real_T Product_c;                    /* '<S28>/Product' */
  real_T Product1_o;                   /* '<S28>/Product1' */
  real_T RateTransition;               /* '<Root>/Rate Transition' */
  real_T RateTransition1;              /* '<Root>/Rate Transition1' */
  real_T uArm0Disarm1;                 /* '<S21>/1 - Arm, 0 - Disarm1' */
  real_T DesiredSpeedms;               /* '<S20>/Switch' */
  real_T desired;                      /* '<S18>/Multiply1' */
  real_T Kffms;                        /* '<S18>/Kff  (% // m//s)' */
  real_T measured;                     /* '<S18>/Multiply' */
  real_T pwmdutycycle;                 /* '<S18>/Multiply2' */
  real_T Abs;                          /* '<S13>/Abs' */
  real_T one_shot_block;               /* '<S34>/one_shot_block' */
  real_T commandsaturation;            /* '<S8>/command saturation' */
  real_T Kim;                          /* '<S18>/Ki (% // m)  ' */
  real_T SampleTime;                   /* '<S14>/Sample Time' */
  real_T Constant;                     /* '<S14>/Constant' */
  real_T ComputationTime;              /* '<S14>/Computation Time' */
  real_T RateTransition4[3];           /* '<Root>/Rate Transition4' */
  real_T RateTransition3[3];           /* '<Root>/Rate Transition3' */
  real_T ColorSelectingMean0;          /* '<S21>/Color Selecting Mean (0)' */
  real_T ColorSelectingWindow1;        /* '<S21>/Color Selecting Window (1)' */
  real_T Subtract1;                    /* '<S29>/Subtract1' */
  real_T ColorMixingMean0;             /* '<S21>/Color Mixing Mean (0)' */
  real_T ColorMixingWindow1;           /* '<S21>/Color Mixing Window (1)' */
  real_T Subtract3;                    /* '<S29>/Subtract3' */
  real_T BrightnessMean0;              /* '<S21>/Brightness Mean (0)' */
  real_T BrightnessWindow1;            /* '<S21>/Brightness Window (1)' */
  real_T Subtract5;                    /* '<S29>/Subtract5' */
  real_T Saturation[3];                /* '<S29>/Saturation' */
  real_T Add2;                         /* '<S29>/Add2' */
  real_T Add5;                         /* '<S29>/Add5' */
  real_T Add8;                         /* '<S29>/Add8' */
  real_T Saturation1[3];               /* '<S29>/Saturation1' */
  real_T DistaneToLane0;               /* '<S21>/Distane To Lane (0)' */
  real_T SteeringSaturation1;          /* '<S19>/Steering Saturation1' */
  real_T Depth_o3;                     /* '<S11>/Depth' */
  real_T Multiply;                     /* '<S17>/Multiply' */
  real_T y;                            /* '<S17>/MATLAB Function' */
  real_T speed_cmd;                    /* '<S7>/MATLAB Function' */
  t_channel Channel;                   /* '<S23>/Channel' */
  t_channel Channel_b;                 /* '<S24>/Channel' */
  t_channel Channel_g;                 /* '<S22>/Channel' */
  real32_T Depth_o1[230400];           /* '<S11>/Depth' */
  uint8_T VideoCapture_o1[1008600];    /* '<S10>/Video Capture' */
  uint8_T y_d[112614];                 /* '<S19>/Combine images' */
  uint8_T img_out[77040];              /* '<S17>/Draw Lines Module' */
  uint8_T imageToThreshold[167895];    /* '<Root>/MATLAB Function' */
  uint8_T ImageCompress[112614];       /* '<S23>/Image Compress' */
  uint8_T ImageCompress_h[167895];     /* '<S24>/Image Compress' */
  uint8_T y_m[112614];
  uint8_T ImageCompress_o[77040];      /* '<S22>/Image Compress' */
  boolean_T tmp_data[55965];
  uint8_T HSVColorThresholding[55965]; /* '<S12>/HSV Color Thresholding' */
  uint8_T section_data[37401];
  int16_T tmp_data_m[14400];
  int16_T tmp_data_c[14400];
  uint8_T Selector[25680];             /* '<S17>/Selector' */
  uint8_T varargin_1_tmp_data[6279];
  uint8_T y_b[6279];
  boolean_T AND3;                      /* '<S13>/AND3' */
  boolean_T AND1;                      /* '<S13>/AND1' */
  boolean_T Compare;                   /* '<S39>/Compare' */
  boolean_T Compare_d;                 /* '<S32>/Compare' */
  boolean_T DataTypeConversion1[8];    /* '<S13>/Data Type Conversion1' */
  boolean_T VideoCapture_o2;           /* '<S10>/Video Capture' */
  boolean_T Depth_o4;                  /* '<S11>/Depth' */
} B_QCar2_autonomous_driving_ex_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  t_timeout SampleTime_PreviousTime;   /* '<S14>/Sample Time' */
  t_timeout ComputationTime_BeginTime; /* '<S14>/Computation Time' */
  t_timeout ComputationTime_ComputationTime;/* '<S14>/Computation Time' */
  t_timeout SampleTime_PreviousTime_g; /* '<S15>/Sample Time' */
  t_timeout ComputationTime_BeginTime_b;/* '<S15>/Computation Time' */
  t_timeout ComputationTime_ComputationTi_o;/* '<S15>/Computation Time' */
  t_timeout SampleTime_PreviousTime_e; /* '<S16>/Sample Time' */
  t_timeout ComputationTime_BeginTime_p;/* '<S16>/Computation Time' */
  t_timeout ComputationTime_ComputationT_om;/* '<S16>/Computation Time' */
  real_T one_shot_block_DSTATE[3];     /* '<S34>/one_shot_block' */
  real_T HILInitialize_AIMinimums[5];  /* '<S8>/HIL Initialize' */
  real_T HILInitialize_AIMaximums[5];  /* '<S8>/HIL Initialize' */
  real_T HILInitialize_FilterFrequency[3];/* '<S8>/HIL Initialize' */
  real_T HILInitialize_POSortedFreqs[2];/* '<S8>/HIL Initialize' */
  real_T HILInitialize_POValues[2];    /* '<S8>/HIL Initialize' */
  real_T HILInitialize_OOValues[2];    /* '<S8>/HIL Initialize' */
  real_T HILRead_AnalogBuffer[2];      /* '<S8>/HIL Read' */
  real_T HILRead_OtherBuffer[6];       /* '<S8>/HIL Read' */
  real_T Unwrap224_PreviousInput;      /* '<S8>/Unwrap 2^24' */
  real_T Unwrap224_Revolutions;        /* '<S8>/Unwrap 2^24' */
  real_T RateTransition_Buffer0;       /* '<Root>/Rate Transition' */
  real_T RateTransition1_Buffer0;      /* '<Root>/Rate Transition1' */
  real_T PrevY;                        /* '<S21>/Rate Limiter' */
  real_T Memory_PreviousInput;         /* '<S13>/Memory' */
  real_T RateTransition5_Buffer;       /* '<Root>/Rate Transition5' */
  real_T RateTransition4_Buffer0[3];   /* '<Root>/Rate Transition4' */
  real_T RateTransition3_Buffer0[3];   /* '<Root>/Rate Transition3' */
  t_jpeg_compress ImageCompress_Compress;/* '<S23>/Image Compress' */
  t_jpeg_compress ImageCompress_Compress_c;/* '<S24>/Image Compress' */
  t_jpeg_compress ImageCompress_Compress_cq;/* '<S22>/Image Compress' */
  t_video_capture VideoCapture_VideoCapture;/* '<S10>/Video Capture' */
  t_video3d Video3DInitialize_Video3D; /* '<S11>/Video3D Initialize' */
  t_video3d Depth_Video3D;             /* '<S11>/Depth' */
  t_video3d_stream Depth_Stream;       /* '<S11>/Depth' */
  t_image_rgb_to_hsv ImageTransform_AlgHandle;/* '<S12>/Image Transform' */
  t_card HILInitialize_Card;           /* '<S8>/HIL Initialize' */
  void *HILRead_PWORK;                 /* '<S8>/HIL Read' */
  struct {
    void *LoggedData;
  } Scope_PWORK;                       /* '<S8>/Scope' */

  void *HILWrite_PWORK;                /* '<S8>/HIL Write' */
  struct {
    void *LoggedData[2];
  } Scope_PWORK_j;                     /* '<S7>/Scope' */

  struct {
    void *LoggedData;
  } Scope2_PWORK;                      /* '<S7>/Scope2' */

  struct {
    void *LoggedData[2];
  } Scope_PWORK_d;                     /* '<S18>/Scope' */

  struct {
    void *LoggedData[2];
  } Scope_PWORK_a;                     /* '<S20>/Scope' */

  struct {
    void *LoggedData[3];
  } Scope_PWORK_f;                     /* '<Root>/Scope' */

  struct {
    void *Fifo;
  } Channel_PWORK;                     /* '<S23>/Channel' */

  struct {
    void *Fifo;
  } Channel_PWORK_b;                   /* '<S24>/Channel' */

  struct {
    void *LoggedData;
  } Scope_PWORK_b;                     /* '<S10>/Scope' */

  struct {
    void *Fifo;
  } Channel_PWORK_m;                   /* '<S22>/Channel' */

  int32_T HILInitialize_DOStates[16];  /* '<S8>/HIL Initialize' */
  int32_T HILInitialize_QuadratureModes[3];/* '<S8>/HIL Initialize' */
  int32_T HILInitialize_InitialEICounts[3];/* '<S8>/HIL Initialize' */
  int32_T HILInitialize_POModeValues[2];/* '<S8>/HIL Initialize' */
  int32_T HILInitialize_POAlignValues[2];/* '<S8>/HIL Initialize' */
  int32_T HILInitialize_POPolarityVals[2];/* '<S8>/HIL Initialize' */
  int32_T HILRead_EncoderBuffer;       /* '<S8>/HIL Read' */
  int32_T clockTickCounter;            /* '<S13>/Pulsing Light' */
  int32_T ImageCompress_DIMS1;         /* '<S23>/Image Compress' */
  int32_T ImageCompress_DIMS1_m;       /* '<S24>/Image Compress' */
  int32_T ImageCompress_DIMS1_g;       /* '<S22>/Image Compress' */
  int32_T sfEvent;                     /* '<S19>/Quick Resize1' */
  int32_T sfEvent_n;                   /* '<S19>/Quick Resize' */
  int32_T sfEvent_j;                   /* '<S19>/MATLAB Function' */
  int32_T sfEvent_o;                   /* '<S19>/Find slope and intercept' */
  int32_T sfEvent_o3;                  /* '<S19>/Combine images' */
  int32_T sfEvent_p;             /* '<S17>/Steering based  image subselector' */
  int32_T sfEvent_g;                   /* '<S17>/MATLAB Function' */
  int32_T sfEvent_gp;                  /* '<S17>/Draw Lines Module' */
  int32_T sfEvent_nr;                  /* '<S7>/MATLAB Function' */
  int32_T sfEvent_k;                   /* '<Root>/MATLAB Function' */
  uint32_T HILInitialize_POSortedChans[2];/* '<S8>/HIL Initialize' */
  int8_T obstacleDetection_SubsysRanBC;/* '<Root>/obstacleDetection' */
  uint8_T ImageCompress_ScanLine[6576];/* '<S23>/Image Compress' */
  uint8_T ImageCompress_ScanLine_d[6552];/* '<S24>/Image Compress' */
  uint8_T ImageCompress_ScanLine_m[5136];/* '<S22>/Image Compress' */
  boolean_T HILInitialize_DOBits[16];  /* '<S8>/HIL Initialize' */
  boolean_T Unwrap224_FirstSample;     /* '<S8>/Unwrap 2^24' */
  boolean_T Integrator1_DWORK1;        /* '<S26>/Integrator1' */
  boolean_T Integrator1_DWORK1_j;      /* '<S27>/Integrator1' */
  boolean_T Integrator1_DWORK1_m;      /* '<S28>/Integrator1' */
  boolean_T doneDoubleBufferReInit;    /* '<S19>/Quick Resize1' */
  boolean_T doneDoubleBufferReInit_i;  /* '<S19>/Quick Resize' */
  boolean_T doneDoubleBufferReInit_d;  /* '<S19>/MATLAB Function' */
  boolean_T doneDoubleBufferReInit_j;  /* '<S19>/Find slope and intercept' */
  boolean_T doneDoubleBufferReInit_g;  /* '<S19>/Combine images' */
  boolean_T doneDoubleBufferReInit_k;
                                 /* '<S17>/Steering based  image subselector' */
  boolean_T doneDoubleBufferReInit_e;  /* '<S17>/MATLAB Function' */
  boolean_T doneDoubleBufferReInit_eh; /* '<S17>/Draw Lines Module' */
  boolean_T doneDoubleBufferReInit_o;  /* '<S7>/MATLAB Function' */
  boolean_T doneDoubleBufferReInit_jq; /* '<Root>/MATLAB Function' */
} DW_QCar2_autonomous_driving_e_T;

/* Continuous states (default storage) */
typedef struct {
  real_T Integrator1_CSTATE;           /* '<S26>/Integrator1' */
  real_T Integrator2_CSTATE;           /* '<S26>/Integrator2' */
  real_T Integrator1_CSTATE_a;         /* '<S27>/Integrator1' */
  real_T Integrator2_CSTATE_k;         /* '<S27>/Integrator2' */
  real_T Integrator1_CSTATE_aa;        /* '<S28>/Integrator1' */
  real_T Integrator2_CSTATE_k5;        /* '<S28>/Integrator2' */
  real_T Integrator1_CSTATE_b;         /* '<S18>/Integrator1' */
} X_QCar2_autonomous_driving_ex_T;

/* State derivatives (default storage) */
typedef struct {
  real_T Integrator1_CSTATE;           /* '<S26>/Integrator1' */
  real_T Integrator2_CSTATE;           /* '<S26>/Integrator2' */
  real_T Integrator1_CSTATE_a;         /* '<S27>/Integrator1' */
  real_T Integrator2_CSTATE_k;         /* '<S27>/Integrator2' */
  real_T Integrator1_CSTATE_aa;        /* '<S28>/Integrator1' */
  real_T Integrator2_CSTATE_k5;        /* '<S28>/Integrator2' */
  real_T Integrator1_CSTATE_b;         /* '<S18>/Integrator1' */
} XDot_QCar2_autonomous_driving_T;

/* State disabled  */
typedef struct {
  boolean_T Integrator1_CSTATE;        /* '<S26>/Integrator1' */
  boolean_T Integrator2_CSTATE;        /* '<S26>/Integrator2' */
  boolean_T Integrator1_CSTATE_a;      /* '<S27>/Integrator1' */
  boolean_T Integrator2_CSTATE_k;      /* '<S27>/Integrator2' */
  boolean_T Integrator1_CSTATE_aa;     /* '<S28>/Integrator1' */
  boolean_T Integrator2_CSTATE_k5;     /* '<S28>/Integrator2' */
  boolean_T Integrator1_CSTATE_b;      /* '<S18>/Integrator1' */
} XDis_QCar2_autonomous_driving_T;

/* Zero-crossing (trigger) state */
typedef struct {
  ZCSigState Integrator1_Reset_ZCE;    /* '<S18>/Integrator1' */
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
  real_T camera_rate;                  /* Variable: camera_rate
                                        * Referenced by: '<S15>/Constant'
                                        */
  real_T depth_rate;                   /* Variable: depth_rate
                                        * Referenced by: '<S16>/Constant'
                                        */
  real_T LeftSteeringLimit_const;     /* Mask Parameter: LeftSteeringLimit_const
                                       * Referenced by: '<S33>/Constant'
                                       */
  real_T RightSteeringLimit_const;   /* Mask Parameter: RightSteeringLimit_const
                                      * Referenced by: '<S35>/Constant'
                                      */
  real_T CompareToConstant3_const;   /* Mask Parameter: CompareToConstant3_const
                                      * Referenced by: '<S32>/Constant'
                                      */
  real_T CompareToConstant1_const;   /* Mask Parameter: CompareToConstant1_const
                                      * Referenced by: '<S30>/Constant'
                                      */
  real_T CompareToConstant2_const;   /* Mask Parameter: CompareToConstant2_const
                                      * Referenced by: '<S31>/Constant'
                                      */
  int32_T HSVColorThresholding_b_comparis;
                              /* Mask Parameter: HSVColorThresholding_b_comparis
                               * Referenced by: '<S12>/HSV Color Thresholding'
                               */
  int32_T HSVColorThresholding_g_comparis;
                              /* Mask Parameter: HSVColorThresholding_g_comparis
                               * Referenced by: '<S12>/HSV Color Thresholding'
                               */
  int32_T HSVColorThresholding_r_comparis;
                              /* Mask Parameter: HSVColorThresholding_r_comparis
                               * Referenced by: '<S12>/HSV Color Thresholding'
                               */
  uint32_T HILRead_analog_channels[2];/* Mask Parameter: HILRead_analog_channels
                                       * Referenced by: '<S8>/HIL Read'
                                       */
  uint32_T HILWrite_digital_channels[16];
                                    /* Mask Parameter: HILWrite_digital_channels
                                     * Referenced by: '<S8>/HIL Write'
                                     */
  uint32_T HILRead_encoder_channels; /* Mask Parameter: HILRead_encoder_channels
                                      * Referenced by: '<S8>/HIL Read'
                                      */
  uint32_T HILRead_other_channels[6];  /* Mask Parameter: HILRead_other_channels
                                        * Referenced by: '<S8>/HIL Read'
                                        */
  uint32_T HILWrite_other_channels[2];/* Mask Parameter: HILWrite_other_channels
                                       * Referenced by: '<S8>/HIL Write'
                                       */
  uint32_T Depth_stream_index;         /* Mask Parameter: Depth_stream_index
                                        * Referenced by: '<S11>/Depth'
                                        */
  boolean_T Video3DInitialize_active;/* Mask Parameter: Video3DInitialize_active
                                      * Referenced by: '<S11>/Video3D Initialize'
                                      */
  real_T distancem_Y0;                 /* Computed Parameter: distancem_Y0
                                        * Referenced by: '<S17>/distance (m)'
                                        */
  real_T Constant_Value;               /* Expression: 0.05
                                        * Referenced by: '<S17>/Constant'
                                        */
  real_T Constant1_Value;              /* Expression: 2
                                        * Referenced by: '<S17>/Constant1'
                                        */
  real_T Constant2_Value;              /* Expression: Inf
                                        * Referenced by: '<S17>/Constant2'
                                        */
  real_T Constant3_Value[3];           /* Expression: [255 0 0]
                                        * Referenced by: '<S17>/Constant3'
                                        */
  real_T scale_Value;                  /* Expression: 3
                                        * Referenced by: '<S17>/scale'
                                        */
  real_T b_n_Value;                    /* Expression: 50
                                        * Referenced by: '<S19>/b_n'
                                        */
  real_T Constant_Value_j;             /* Expression: 8
                                        * Referenced by: '<S20>/Constant'
                                        */
  real_T Saturation_UpperSat;          /* Expression: 1
                                        * Referenced by: '<S20>/Saturation'
                                        */
  real_T Saturation_LowerSat;          /* Expression: 0.5
                                        * Referenced by: '<S20>/Saturation'
                                        */
  real_T Constant10_Value;             /* Expression: 1
                                        * Referenced by: '<S21>/Constant10'
                                        */
  real_T Constant8_Value;              /* Expression: 0
                                        * Referenced by: '<S21>/Constant8'
                                        */
  real_T Constant4_Value;              /* Expression: 1
                                        * Referenced by: '<S21>/Constant4'
                                        */
  real_T Constant3_Value_b;            /* Expression: 0
                                        * Referenced by: '<S21>/Constant3'
                                        */
  real_T SpeedMaxms_Value;             /* Expression: 1.5
                                        * Referenced by: '<S21>/Speed Max (m//s)'
                                        */
  real_T SpeedSelector1_Gain;          /* Expression: 1
                                        * Referenced by: '<S21>/Speed Selector (1)'
                                        */
  real_T Saturation1_UpperSat;         /* Expression: 1
                                        * Referenced by: '<S21>/Saturation1'
                                        */
  real_T Saturation1_LowerSat;         /* Expression: 0
                                        * Referenced by: '<S21>/Saturation1'
                                        */
  real_T Constant9_Value;              /* Expression: 0
                                        * Referenced by: '<S21>/Constant9'
                                        */
  real_T Constant_Value_i;             /* Expression: 0
                                        * Referenced by: '<S39>/Constant'
                                        */
  real_T HILInitialize_OOTerminate;/* Expression: set_other_outputs_at_terminate
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  real_T HILInitialize_OOExit;    /* Expression: set_other_outputs_at_switch_out
                                   * Referenced by: '<S8>/HIL Initialize'
                                   */
  real_T HILInitialize_OOStart;        /* Expression: set_other_outputs_at_start
                                        * Referenced by: '<S8>/HIL Initialize'
                                        */
  real_T HILInitialize_OOEnter;    /* Expression: set_other_outputs_at_switch_in
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  real_T HILInitialize_POFinal;        /* Expression: final_pwm_outputs
                                        * Referenced by: '<S8>/HIL Initialize'
                                        */
  real_T HILInitialize_OOFinal;        /* Expression: final_other_outputs
                                        * Referenced by: '<S8>/HIL Initialize'
                                        */
  real_T HILInitialize_AIHigh;         /* Expression: analog_input_maximums
                                        * Referenced by: '<S8>/HIL Initialize'
                                        */
  real_T HILInitialize_AILow;          /* Expression: analog_input_minimums
                                        * Referenced by: '<S8>/HIL Initialize'
                                        */
  real_T HILInitialize_EIFrequency;    /* Expression: encoder_filter_frequency
                                        * Referenced by: '<S8>/HIL Initialize'
                                        */
  real_T HILInitialize_POFrequency;    /* Expression: pwm_frequency
                                        * Referenced by: '<S8>/HIL Initialize'
                                        */
  real_T HILInitialize_POInitial;      /* Expression: initial_pwm_outputs
                                        * Referenced by: '<S8>/HIL Initialize'
                                        */
  real_T HILInitialize_POWatchdog;     /* Expression: watchdog_pwm_outputs
                                        * Referenced by: '<S8>/HIL Initialize'
                                        */
  real_T HILInitialize_OOInitial;      /* Expression: initial_other_outputs
                                        * Referenced by: '<S8>/HIL Initialize'
                                        */
  real_T HILInitialize_OOWatchdog;     /* Expression: watchdog_other_outputs
                                        * Referenced by: '<S8>/HIL Initialize'
                                        */
  real_T Constant1_Value_h;            /* Expression: 1
                                        * Referenced by: '<S8>/Constant1'
                                        */
  real_T Constant2_Value_n;            /* Expression: 25
                                        * Referenced by: '<S8>/Constant2'
                                        */
  real_T Constant3_Value_d;            /* Expression: 1
                                        * Referenced by: '<S8>/Constant3'
                                        */
  real_T Constant4_Value_h;            /* Expression: 100
                                        * Referenced by: '<S8>/Constant4'
                                        */
  real_T Constant5_Value;              /* Expression: 1
                                        * Referenced by: '<S8>/Constant5'
                                        */
  real_T Constant6_Value;              /* Expression: 100
                                        * Referenced by: '<S8>/Constant6'
                                        */
  real_T Constant_Value_l;             /* Expression: 2
                                        * Referenced by: '<S26>/Constant'
                                        */
  real_T Unwrap224_Modulus;            /* Expression: modulus
                                        * Referenced by: '<S8>/Unwrap 2^24'
                                        */
  real_T Integrator2_IC;               /* Expression: 0
                                        * Referenced by: '<S26>/Integrator2'
                                        */
  real_T Constant_Value_h;             /* Expression: 2
                                        * Referenced by: '<S27>/Constant'
                                        */
  real_T Integrator2_IC_l;             /* Expression: 0
                                        * Referenced by: '<S27>/Integrator2'
                                        */
  real_T Constant_Value_p;             /* Expression: 2
                                        * Referenced by: '<S28>/Constant'
                                        */
  real_T Integrator2_IC_d;             /* Expression: 0
                                        * Referenced by: '<S28>/Integrator2'
                                        */
  real_T RateTransition_InitialCondition;/* Expression: 0
                                          * Referenced by: '<Root>/Rate Transition'
                                          */
  real_T PulsingLight_Amp;             /* Expression: 1
                                        * Referenced by: '<S13>/Pulsing Light'
                                        */
  real_T PulsingLight_Period;          /* Expression: 0.5/qc_get_step_size
                                        * Referenced by: '<S13>/Pulsing Light'
                                        */
  real_T PulsingLight_Duty;            /* Expression: 0.5/2/qc_get_step_size
                                        * Referenced by: '<S13>/Pulsing Light'
                                        */
  real_T PulsingLight_PhaseDelay;      /* Expression: 0
                                        * Referenced by: '<S13>/Pulsing Light'
                                        */
  real_T Constant1_Value_f;            /* Expression: 1
                                        * Referenced by: '<S13>/Constant1'
                                        */
  real_T RateTransition1_InitialConditio;/* Expression: 0
                                          * Referenced by: '<Root>/Rate Transition1'
                                          */
  real_T Constant_Value_po;            /* Expression: 0.4
                                        * Referenced by: '<S7>/Constant'
                                        */
  real_T Constant2_Value_f;            /* Expression: 1
                                        * Referenced by: '<S7>/Constant2'
                                        */
  real_T Switch_Threshold;             /* Expression: 0
                                        * Referenced by: '<S21>/Switch'
                                        */
  real_T RateLimiter_RisingLim;        /* Expression: 1
                                        * Referenced by: '<S21>/Rate Limiter'
                                        */
  real_T RateLimiter_FallingLim;       /* Expression: -Inf
                                        * Referenced by: '<S21>/Rate Limiter'
                                        */
  real_T RateLimiter_IC;               /* Expression: 0
                                        * Referenced by: '<S21>/Rate Limiter'
                                        */
  real_T Constant1_Value_f1;           /* Expression: 1
                                        * Referenced by: '<Root>/Constant1'
                                        */
  real_T Switch_Threshold_h;           /* Expression: 0.5
                                        * Referenced by: '<S20>/Switch'
                                        */
  real_T commandsaturation_UpperSat;   /* Expression: 5
                                        * Referenced by: '<S18>/command saturation'
                                        */
  real_T commandsaturation_LowerSat;   /* Expression: -5
                                        * Referenced by: '<S18>/command saturation'
                                        */
  real_T Kffms_Gain;                   /* Expression: 0.1
                                        * Referenced by: '<S18>/Kff  (% // m//s)'
                                        */
  real_T countstorotations_Gain;       /* Expression: 1/720/4
                                        * Referenced by: '<S9>/counts to rotations'
                                        */
  real_T gearratios_Gain;              /* Expression: (13*19)/(70*37)
                                        * Referenced by: '<S9>/gear ratios'
                                        */
  real_T rotstorads_Gain;              /* Expression: 2*pi
                                        * Referenced by: '<S9>/rot//s to rad//s'
                                        */
  real_T wheelradius_Gain;             /* Expression: 0.0342
                                        * Referenced by: '<S9>/wheel radius'
                                        */
  real_T Kpms_Gain;                    /* Expression: 0.3
                                        * Referenced by: '<S18>/Kp (% // m//s)'
                                        */
  real_T Integrator1_IC;               /* Expression: 0
                                        * Referenced by: '<S18>/Integrator1'
                                        */
  real_T Integrator1_UpperSat;         /* Expression: 0.4
                                        * Referenced by: '<S18>/Integrator1'
                                        */
  real_T Integrator1_LowerSat;         /* Expression: -0.4
                                        * Referenced by: '<S18>/Integrator1'
                                        */
  real_T Memory_InitialCondition;      /* Expression: 0
                                        * Referenced by: '<S13>/Memory'
                                        */
  real_T Constant2_Value_b;            /* Expression: 5
                                        * Referenced by: '<S13>/Constant2'
                                        */
  real_T one_shot_block_trigger_type;  /* Expression: i_trigger_type
                                        * Referenced by: '<S34>/one_shot_block'
                                        */
  real_T one_shot_block_redun_pulse;   /* Expression: i_redun_pulse
                                        * Referenced by: '<S34>/one_shot_block'
                                        */
  real_T Constant_Value_d;             /* Expression: 0
                                        * Referenced by: '<S13>/Constant'
                                        */
  real_T Switch_Threshold_e;           /* Expression: 0.5
                                        * Referenced by: '<S34>/Switch'
                                        */
  real_T Gain_Gain;                    /* Expression: 1
                                        * Referenced by: '<S8>/Gain'
                                        */
  real_T SteeringBias_Bias;            /* Expression: 0.0
                                        * Referenced by: '<S8>/Steering Bias'
                                        */
  real_T directionconvention_Gain;     /* Expression: 1
                                        * Referenced by: '<S8>/direction convention'
                                        */
  real_T commandsaturation_UpperSat_e; /* Expression: 0.20
                                        * Referenced by: '<S8>/command saturation'
                                        */
  real_T commandsaturation_LowerSat_j; /* Expression: -0.20
                                        * Referenced by: '<S8>/command saturation'
                                        */
  real_T Gain_Gain_p;                  /* Expression: 80
                                        * Referenced by: '<Root>/Gain'
                                        */
  real_T Bias1_Bias;                   /* Expression: 220
                                        * Referenced by: '<Root>/Bias1'
                                        */
  real_T Saturation_UpperSat_p;        /* Expression: 300
                                        * Referenced by: '<Root>/Saturation'
                                        */
  real_T Saturation_LowerSat_p;        /* Expression: 220
                                        * Referenced by: '<Root>/Saturation'
                                        */
  real_T Kim_Gain;                     /* Expression: 1
                                        * Referenced by: '<S18>/Ki (% // m)  '
                                        */
  real_T Constant_Value_c;             /* Expression: qc_get_step_size
                                        * Referenced by: '<S14>/Constant'
                                        */
  real_T RateTransition4_InitialConditio;/* Expression: 0
                                          * Referenced by: '<Root>/Rate Transition4'
                                          */
  real_T RateTransition3_InitialConditio;/* Expression: 0
                                          * Referenced by: '<Root>/Rate Transition3'
                                          */
  real_T VideoCapture_Brightness;      /* Expression: d_brightness
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Contrast;        /* Expression: d_contrast
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Hue;             /* Expression: d_hue
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Saturation;      /* Expression: d_saturation
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Sharpness;       /* Expression: d_sharpness
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Gamma;           /* Expression: d_gamma
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_ColorEnable;     /* Expression: d_coloreffect
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_WhiteBalance;    /* Expression: d_whitebalance
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_BacklightCompensat;/* Expression: d_backlightcompensation
                                          * Referenced by: '<S10>/Video Capture'
                                          */
  real_T VideoCapture_Gain;            /* Expression: d_gain
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Pan;             /* Expression: d_pan
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Tilt;            /* Expression: d_tilt
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Roll;            /* Expression: d_roll
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Zoom;            /* Expression: d_zoom
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Exposure;        /* Expression: d_exposure
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Iris;            /* Expression: d_iris
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Focus;           /* Expression: d_focus
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T VideoCapture_Mirror;          /* Expression: d_mirror
                                        * Referenced by: '<S10>/Video Capture'
                                        */
  real_T ImageTransform_MinPixel;      /* Expression: min_pixel
                                        * Referenced by: '<S12>/Image Transform'
                                        */
  real_T ImageTransform_MaxPixel;      /* Expression: max_pixel
                                        * Referenced by: '<S12>/Image Transform'
                                        */
  real_T ImageTransform_ContourDepth;  /* Expression: contour_depth
                                        * Referenced by: '<S12>/Image Transform'
                                        */
  real_T ImageTransform_FocalLen;      /* Expression: focal_length
                                        * Referenced by: '<S12>/Image Transform'
                                        */
  real_T ImageTransform_Extrapolated;  /* Expression: extrapolated
                                        * Referenced by: '<S12>/Image Transform'
                                        */
  real_T ImageTransform_Angle;         /* Expression: angle
                                        * Referenced by: '<S12>/Image Transform'
                                        */
  real_T ImageTransform_RCoeff[2];     /* Expression: radial_coeffs
                                        * Referenced by: '<S12>/Image Transform'
                                        */
  real_T HueMin_Value;                 /* Expression: 5
                                        * Referenced by: '<S21>/Hue Min'
                                        */
  real_T HueMax_Value;                 /* Expression: 90
                                        * Referenced by: '<S21>/Hue Max'
                                        */
  real_T Gain_Gain_d;                  /* Expression: 0.5
                                        * Referenced by: '<S29>/Gain'
                                        */
  real_T u0_Gain;                      /* Expression: 0.4
                                        * Referenced by: '<S29>/20%'
                                        */
  real_T ColorSelectingMean0_Value;    /* Expression: 0
                                        * Referenced by: '<S21>/Color Selecting Mean (0)'
                                        */
  real_T Gain1_Gain;                   /* Expression: 0.5
                                        * Referenced by: '<S29>/Gain1'
                                        */
  real_T ColorSelectingWindow1_Value;  /* Expression: 1
                                        * Referenced by: '<S21>/Color Selecting Window (1)'
                                        */
  real_T Gain6_Gain;                   /* Expression: 255/360
                                        * Referenced by: '<S29>/Gain6'
                                        */
  real_T SatMin_Value;                 /* Expression: 65
                                        * Referenced by: '<S21>/Sat Min'
                                        */
  real_T SatMax_Value;                 /* Expression: 200
                                        * Referenced by: '<S21>/Sat Max'
                                        */
  real_T Gain2_Gain;                   /* Expression: 0.5
                                        * Referenced by: '<S29>/Gain2'
                                        */
  real_T u01_Gain;                     /* Expression: 0.4
                                        * Referenced by: '<S29>/20%1'
                                        */
  real_T ColorMixingMean0_Value;       /* Expression: 0
                                        * Referenced by: '<S21>/Color Mixing Mean (0)'
                                        */
  real_T Gain3_Gain;                   /* Expression: 0.5
                                        * Referenced by: '<S29>/Gain3'
                                        */
  real_T ColorMixingWindow1_Value;     /* Expression: 1
                                        * Referenced by: '<S21>/Color Mixing Window (1)'
                                        */
  real_T ValMin_Value;                 /* Expression: 180
                                        * Referenced by: '<S21>/Val Min'
                                        */
  real_T ValMax_Value;                 /* Expression: 255
                                        * Referenced by: '<S21>/Val Max'
                                        */
  real_T Gain4_Gain;                   /* Expression: 0.5
                                        * Referenced by: '<S29>/Gain4'
                                        */
  real_T u02_Gain;                     /* Expression: 0.4
                                        * Referenced by: '<S29>/20%2'
                                        */
  real_T BrightnessMean0_Value;        /* Expression: 0
                                        * Referenced by: '<S21>/Brightness Mean (0)'
                                        */
  real_T Gain5_Gain;                   /* Expression: 0.5
                                        * Referenced by: '<S29>/Gain5'
                                        */
  real_T BrightnessWindow1_Value;      /* Expression: 1
                                        * Referenced by: '<S21>/Brightness Window (1)'
                                        */
  real_T Saturation_UpperSat_i[3];     /* Expression: [255 255 255]
                                        * Referenced by: '<S29>/Saturation'
                                        */
  real_T Saturation_LowerSat_g[3];     /* Expression: [0 0 0]
                                        * Referenced by: '<S29>/Saturation'
                                        */
  real_T Gain7_Gain;                   /* Expression: 255/360
                                        * Referenced by: '<S29>/Gain7'
                                        */
  real_T Saturation1_UpperSat_d[3];    /* Expression: [255 255 255]
                                        * Referenced by: '<S29>/Saturation1'
                                        */
  real_T Saturation1_LowerSat_o[3];    /* Expression: [0 0 0]
                                        * Referenced by: '<S29>/Saturation1'
                                        */
  real_T HSVColorThresholding_Channel0Mi;/* Expression: r_min
                                          * Referenced by: '<S12>/HSV Color Thresholding'
                                          */
  real_T HSVColorThresholding_Channel0Ma;/* Expression: r_max
                                          * Referenced by: '<S12>/HSV Color Thresholding'
                                          */
  real_T HSVColorThresholding_Channel1Mi;/* Expression: g_min
                                          * Referenced by: '<S12>/HSV Color Thresholding'
                                          */
  real_T HSVColorThresholding_Channel1Ma;/* Expression: g_max
                                          * Referenced by: '<S12>/HSV Color Thresholding'
                                          */
  real_T HSVColorThresholding_Channel2Mi;/* Expression: b_min
                                          * Referenced by: '<S12>/HSV Color Thresholding'
                                          */
  real_T HSVColorThresholding_Channel2Ma;/* Expression: b_max
                                          * Referenced by: '<S12>/HSV Color Thresholding'
                                          */
  real_T Constant4_Value_a;            /* Expression: 1
                                        * Referenced by: '<S19>/Constant4'
                                        */
  real_T Gain_Gain_a;                  /* Expression: 0.33
                                        * Referenced by: '<S19>/Gain'
                                        */
  real_T Bias_Bias;                    /* Expression: 1
                                        * Referenced by: '<S19>/Bias'
                                        */
  real_T Constant3_Value_br;           /* Expression: 0.75
                                        * Referenced by: '<S19>/Constant3'
                                        */
  real_T m_n_Value;                    /* Expression: 0.5
                                        * Referenced by: '<S19>/m_n'
                                        */
  real_T DistaneToLane0_Value;         /* Expression: 32.42836929607358
                                        * Referenced by: '<S21>/Distane To Lane (0)'
                                        */
  real_T SteeringSaturation1_UpperSat; /* Expression: 0.5
                                        * Referenced by: '<S19>/Steering Saturation1'
                                        */
  real_T SteeringSaturation1_LowerSat; /* Expression: -0.5
                                        * Referenced by: '<S19>/Steering Saturation1'
                                        */
  real_T Depth_Brightness;             /* Expression: d_brightness
                                        * Referenced by: '<S11>/Depth'
                                        */
  real_T Depth_Contrast;               /* Expression: d_contrast
                                        * Referenced by: '<S11>/Depth'
                                        */
  real_T Depth_Hue;                    /* Expression: d_hue
                                        * Referenced by: '<S11>/Depth'
                                        */
  real_T Depth_Saturation;             /* Expression: d_saturation
                                        * Referenced by: '<S11>/Depth'
                                        */
  real_T Depth_Sharpness;              /* Expression: d_sharpness
                                        * Referenced by: '<S11>/Depth'
                                        */
  real_T Depth_Gamma;                  /* Expression: d_gamma
                                        * Referenced by: '<S11>/Depth'
                                        */
  real_T Depth_WhiteBalance;           /* Expression: d_whitebalance
                                        * Referenced by: '<S11>/Depth'
                                        */
  real_T Depth_BacklightCompensation;  /* Expression: d_backlightcompensation
                                        * Referenced by: '<S11>/Depth'
                                        */
  real_T Depth_Gain;                   /* Expression: d_gain
                                        * Referenced by: '<S11>/Depth'
                                        */
  real_T Depth_Exposure;               /* Expression: d_exposure
                                        * Referenced by: '<S11>/Depth'
                                        */
  real_T Depth_Emitter;                /* Expression: emitter
                                        * Referenced by: '<S11>/Depth'
                                        */
  real_T StoppingDistancem_Value;      /* Expression: 0.6
                                        * Referenced by: '<S21>/Stopping Distance (m)'
                                        */
  real_T StoppingDistanceOffset0_Gain; /* Expression: 0
                                        * Referenced by: '<S21>/Stopping Distance Offset (0)'
                                        */
  int32_T HILInitialize_DOWatchdog;
                                 /* Computed Parameter: HILInitialize_DOWatchdog
                                  * Referenced by: '<S8>/HIL Initialize'
                                  */
  int32_T HILInitialize_EIInitial;/* Computed Parameter: HILInitialize_EIInitial
                                   * Referenced by: '<S8>/HIL Initialize'
                                   */
  int32_T HILInitialize_POModes;    /* Computed Parameter: HILInitialize_POModes
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  int32_T HILInitialize_POConfiguration;
                            /* Computed Parameter: HILInitialize_POConfiguration
                             * Referenced by: '<S8>/HIL Initialize'
                             */
  int32_T HILInitialize_POAlignment;
                                /* Computed Parameter: HILInitialize_POAlignment
                                 * Referenced by: '<S8>/HIL Initialize'
                                 */
  int32_T HILInitialize_POPolarity;
                                 /* Computed Parameter: HILInitialize_POPolarity
                                  * Referenced by: '<S8>/HIL Initialize'
                                  */
  int32_T ImageTransform_PrPoint[2];
                                   /* Computed Parameter: ImageTransform_PrPoint
                                    * Referenced by: '<S12>/Image Transform'
                                    */
  int32_T ImageTransform_Interpolation;
                             /* Computed Parameter: ImageTransform_Interpolation
                              * Referenced by: '<S12>/Image Transform'
                              */
  int32_T ImageTransform_Origin[2]; /* Computed Parameter: ImageTransform_Origin
                                     * Referenced by: '<S12>/Image Transform'
                                     */
  int32_T ImageTransform_OOrigin[2];
                                   /* Computed Parameter: ImageTransform_OOrigin
                                    * Referenced by: '<S12>/Image Transform'
                                    */
  real32_T Gain_Gain_g;                /* Computed Parameter: Gain_Gain_g
                                        * Referenced by: '<S17>/Gain'
                                        */
  uint32_T HILInitialize_AIChannels[5];
                                 /* Computed Parameter: HILInitialize_AIChannels
                                  * Referenced by: '<S8>/HIL Initialize'
                                  */
  uint32_T HILInitialize_DIChannels[15];
                                 /* Computed Parameter: HILInitialize_DIChannels
                                  * Referenced by: '<S8>/HIL Initialize'
                                  */
  uint32_T HILInitialize_DOChannels[16];
                                 /* Computed Parameter: HILInitialize_DOChannels
                                  * Referenced by: '<S8>/HIL Initialize'
                                  */
  uint32_T HILInitialize_EIChannels[3];
                                 /* Computed Parameter: HILInitialize_EIChannels
                                  * Referenced by: '<S8>/HIL Initialize'
                                  */
  uint32_T HILInitialize_EIQuadrature;
                               /* Computed Parameter: HILInitialize_EIQuadrature
                                * Referenced by: '<S8>/HIL Initialize'
                                */
  uint32_T HILInitialize_POChannels[2];
                                 /* Computed Parameter: HILInitialize_POChannels
                                  * Referenced by: '<S8>/HIL Initialize'
                                  */
  uint32_T HILInitialize_OOChannels[2];
                                 /* Computed Parameter: HILInitialize_OOChannels
                                  * Referenced by: '<S8>/HIL Initialize'
                                  */
  uint32_T ImageTransform_ColorTheme;
                                /* Computed Parameter: ImageTransform_ColorTheme
                                 * Referenced by: '<S12>/Image Transform'
                                 */
  uint32_T ImageCompress_Quality;   /* Computed Parameter: ImageCompress_Quality
                                     * Referenced by: '<S23>/Image Compress'
                                     */
  uint32_T ImageCompress_Quality_p;
                                  /* Computed Parameter: ImageCompress_Quality_p
                                   * Referenced by: '<S24>/Image Compress'
                                   */
  uint32_T Depth_Preset;               /* Computed Parameter: Depth_Preset
                                        * Referenced by: '<S11>/Depth'
                                        */
  uint32_T ImageCompress_Quality_k;
                                  /* Computed Parameter: ImageCompress_Quality_k
                                   * Referenced by: '<S22>/Image Compress'
                                   */
  boolean_T HILInitialize_Active;    /* Computed Parameter: HILInitialize_Active
                                      * Referenced by: '<S8>/HIL Initialize'
                                      */
  boolean_T HILInitialize_AOTerminate;
                                /* Computed Parameter: HILInitialize_AOTerminate
                                 * Referenced by: '<S8>/HIL Initialize'
                                 */
  boolean_T HILInitialize_AOExit;    /* Computed Parameter: HILInitialize_AOExit
                                      * Referenced by: '<S8>/HIL Initialize'
                                      */
  boolean_T HILInitialize_DOTerminate;
                                /* Computed Parameter: HILInitialize_DOTerminate
                                 * Referenced by: '<S8>/HIL Initialize'
                                 */
  boolean_T HILInitialize_DOExit;    /* Computed Parameter: HILInitialize_DOExit
                                      * Referenced by: '<S8>/HIL Initialize'
                                      */
  boolean_T HILInitialize_POTerminate;
                                /* Computed Parameter: HILInitialize_POTerminate
                                 * Referenced by: '<S8>/HIL Initialize'
                                 */
  boolean_T HILInitialize_POExit;    /* Computed Parameter: HILInitialize_POExit
                                      * Referenced by: '<S8>/HIL Initialize'
                                      */
  boolean_T HILInitialize_CKPStart;/* Computed Parameter: HILInitialize_CKPStart
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  boolean_T HILInitialize_CKPEnter;/* Computed Parameter: HILInitialize_CKPEnter
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  boolean_T HILInitialize_CKStart;  /* Computed Parameter: HILInitialize_CKStart
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_CKEnter;  /* Computed Parameter: HILInitialize_CKEnter
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_AIPStart;/* Computed Parameter: HILInitialize_AIPStart
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  boolean_T HILInitialize_AIPEnter;/* Computed Parameter: HILInitialize_AIPEnter
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  boolean_T HILInitialize_AOPStart;/* Computed Parameter: HILInitialize_AOPStart
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  boolean_T HILInitialize_AOPEnter;/* Computed Parameter: HILInitialize_AOPEnter
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  boolean_T HILInitialize_AOStart;  /* Computed Parameter: HILInitialize_AOStart
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_AOEnter;  /* Computed Parameter: HILInitialize_AOEnter
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_AOReset;  /* Computed Parameter: HILInitialize_AOReset
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_DOPStart;/* Computed Parameter: HILInitialize_DOPStart
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  boolean_T HILInitialize_DOPEnter;/* Computed Parameter: HILInitialize_DOPEnter
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  boolean_T HILInitialize_DOStart;  /* Computed Parameter: HILInitialize_DOStart
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_DOEnter;  /* Computed Parameter: HILInitialize_DOEnter
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_DOReset;  /* Computed Parameter: HILInitialize_DOReset
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_EIPStart;/* Computed Parameter: HILInitialize_EIPStart
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  boolean_T HILInitialize_EIPEnter;/* Computed Parameter: HILInitialize_EIPEnter
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  boolean_T HILInitialize_EIStart;  /* Computed Parameter: HILInitialize_EIStart
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_EIEnter;  /* Computed Parameter: HILInitialize_EIEnter
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_POPStart;/* Computed Parameter: HILInitialize_POPStart
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  boolean_T HILInitialize_POPEnter;/* Computed Parameter: HILInitialize_POPEnter
                                    * Referenced by: '<S8>/HIL Initialize'
                                    */
  boolean_T HILInitialize_POStart;  /* Computed Parameter: HILInitialize_POStart
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_POEnter;  /* Computed Parameter: HILInitialize_POEnter
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_POReset;  /* Computed Parameter: HILInitialize_POReset
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_OOReset;  /* Computed Parameter: HILInitialize_OOReset
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_DOFinal;  /* Computed Parameter: HILInitialize_DOFinal
                                     * Referenced by: '<S8>/HIL Initialize'
                                     */
  boolean_T HILInitialize_DOInitial;
                                  /* Computed Parameter: HILInitialize_DOInitial
                                   * Referenced by: '<S8>/HIL Initialize'
                                   */
  boolean_T HILRead_Active;            /* Computed Parameter: HILRead_Active
                                        * Referenced by: '<S8>/HIL Read'
                                        */
  boolean_T SteadyLight_Value;         /* Computed Parameter: SteadyLight_Value
                                        * Referenced by: '<S13>/Steady Light'
                                        */
  boolean_T LightOff_Value;            /* Computed Parameter: LightOff_Value
                                        * Referenced by: '<S13>/Light Off'
                                        */
  boolean_T HILWrite_Active;           /* Computed Parameter: HILWrite_Active
                                        * Referenced by: '<S8>/HIL Write'
                                        */
  boolean_T VideoDisplay_UseHardware;
                                 /* Computed Parameter: VideoDisplay_UseHardware
                                  * Referenced by: '<S23>/Video Display'
                                  */
  boolean_T VideoDisplay_UseHardware_b;
                               /* Computed Parameter: VideoDisplay_UseHardware_b
                                * Referenced by: '<S24>/Video Display'
                                */
  boolean_T VideoDisplay_UseHardware_c;
                               /* Computed Parameter: VideoDisplay_UseHardware_c
                                * Referenced by: '<S22>/Video Display'
                                */
  uint8_T imageDepthForDisplay_Y0;/* Computed Parameter: imageDepthForDisplay_Y0
                                   * Referenced by: '<S17>/imageDepthForDisplay'
                                   */
  uint8_T uArm0Disarm1_CurrentSetting;
                              /* Computed Parameter: uArm0Disarm1_CurrentSetting
                               * Referenced by: '<S21>/1 - Arm, 0 - Disarm1'
                               */
  uint8_T uRight0Left_CurrentSetting;
                               /* Computed Parameter: uRight0Left_CurrentSetting
                                * Referenced by: '<S21>/1 - Right, 0 - Left'
                                */
  uint8_T ManualSwitch_CurrentSetting;
                              /* Computed Parameter: ManualSwitch_CurrentSetting
                               * Referenced by: '<S19>/Manual Switch'
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
    boolean_T firstInitCondFlag;
    struct {
      uint8_T TID[4];
    } TaskCounters;

    struct {
      boolean_T TID1_2;
      boolean_T TID1_3;
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
    time_T sampleTimesArray[4];
    time_T offsetTimesArray[4];
    int_T sampleTimeTaskIDArray[4];
    int_T sampleHitArray[4];
    int_T perTaskSampleHitsArray[16];
    time_T tArray[4];
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
extern void QCar2_autonomous_driving_example2_initialize(void);
extern void QCar2_autonomous_driving_example2_output0(void);
extern void QCar2_autonomous_driving_example2_update0(void);
extern void QCar2_autonomous_driving_example2_output2(void);
extern void QCar2_autonomous_driving_example2_update2(void);
extern void QCar2_autonomous_driving_example2_output3(void);
extern void QCar2_autonomous_driving_example2_update3(void);
extern void QCar2_autonomous_driving_example2_terminate(void);

/*====================*
 * External functions *
 *====================*/
extern QCar2_autonomous_driving_example2_rtModel
  *QCar2_autonomous_driving_example2(void);
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
 * '<Root>' : 'QCar2_autonomous_driving_example2'
 * '<S1>'   : 'QCar2_autonomous_driving_example2/Display Depth'
 * '<S2>'   : 'QCar2_autonomous_driving_example2/Display RGB'
 * '<S3>'   : 'QCar2_autonomous_driving_example2/MATLAB Function'
 * '<S4>'   : 'QCar2_autonomous_driving_example2/Powered by QUARC'
 * '<S5>'   : 'QCar2_autonomous_driving_example2/Quanser'
 * '<S6>'   : 'QCar2_autonomous_driving_example2/RGB Image  Pre-Proccessing'
 * '<S7>'   : 'QCar2_autonomous_driving_example2/automatedDriving'
 * '<S8>'   : 'QCar2_autonomous_driving_example2/basicQCarIO'
 * '<S9>'   : 'QCar2_autonomous_driving_example2/basicSpeedEstimation'
 * '<S10>'  : 'QCar2_autonomous_driving_example2/captureCSI'
 * '<S11>'  : 'QCar2_autonomous_driving_example2/captureDepth'
 * '<S12>'  : 'QCar2_autonomous_driving_example2/colorThresholdingHSV'
 * '<S13>'  : 'QCar2_autonomous_driving_example2/indicatorAndLamps'
 * '<S14>'  : 'QCar2_autonomous_driving_example2/monitorTiming '
 * '<S15>'  : 'QCar2_autonomous_driving_example2/monitorTiming 1'
 * '<S16>'  : 'QCar2_autonomous_driving_example2/monitorTiming 2'
 * '<S17>'  : 'QCar2_autonomous_driving_example2/obstacleDetection'
 * '<S18>'  : 'QCar2_autonomous_driving_example2/speedController'
 * '<S19>'  : 'QCar2_autonomous_driving_example2/steeringCalculation'
 * '<S20>'  : 'QCar2_autonomous_driving_example2/turnSpeedHandling'
 * '<S21>'  : 'QCar2_autonomous_driving_example2/userInput'
 * '<S22>'  : 'QCar2_autonomous_driving_example2/Display Depth/Depth Camera Information'
 * '<S23>'  : 'QCar2_autonomous_driving_example2/Display RGB/RGB Image Processed'
 * '<S24>'  : 'QCar2_autonomous_driving_example2/RGB Image  Pre-Proccessing/RGB Image No Threshold'
 * '<S25>'  : 'QCar2_autonomous_driving_example2/automatedDriving/MATLAB Function'
 * '<S26>'  : 'QCar2_autonomous_driving_example2/basicQCarIO/Second-Order Low-Pass Filter'
 * '<S27>'  : 'QCar2_autonomous_driving_example2/basicQCarIO/Second-Order Low-Pass Filter1'
 * '<S28>'  : 'QCar2_autonomous_driving_example2/basicQCarIO/Second-Order Low-Pass Filter2'
 * '<S29>'  : 'QCar2_autonomous_driving_example2/colorThresholdingHSV/Subsystem'
 * '<S30>'  : 'QCar2_autonomous_driving_example2/indicatorAndLamps/Compare To Constant1'
 * '<S31>'  : 'QCar2_autonomous_driving_example2/indicatorAndLamps/Compare To Constant2'
 * '<S32>'  : 'QCar2_autonomous_driving_example2/indicatorAndLamps/Compare To Constant3'
 * '<S33>'  : 'QCar2_autonomous_driving_example2/indicatorAndLamps/Left Steering Limit'
 * '<S34>'  : 'QCar2_autonomous_driving_example2/indicatorAndLamps/One Shot'
 * '<S35>'  : 'QCar2_autonomous_driving_example2/indicatorAndLamps/Right Steering Limit'
 * '<S36>'  : 'QCar2_autonomous_driving_example2/obstacleDetection/Draw Lines Module'
 * '<S37>'  : 'QCar2_autonomous_driving_example2/obstacleDetection/MATLAB Function'
 * '<S38>'  : 'QCar2_autonomous_driving_example2/obstacleDetection/Steering based  image subselector'
 * '<S39>'  : 'QCar2_autonomous_driving_example2/speedController/Compare To Zero'
 * '<S40>'  : 'QCar2_autonomous_driving_example2/steeringCalculation/Combine images'
 * '<S41>'  : 'QCar2_autonomous_driving_example2/steeringCalculation/Find slope and intercept'
 * '<S42>'  : 'QCar2_autonomous_driving_example2/steeringCalculation/MATLAB Function'
 * '<S43>'  : 'QCar2_autonomous_driving_example2/steeringCalculation/Quick Resize'
 * '<S44>'  : 'QCar2_autonomous_driving_example2/steeringCalculation/Quick Resize1'
 */
#endif                                /* QCar2_autonomous_driving_example2_h_ */
