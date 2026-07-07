/*
 * QCar2_autonomous_driving_example2_dt.h
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

#include "ext_types.h"

/* data type size table */
static uint_T rtDataTypeSizes[] = {
  sizeof(real_T),
  sizeof(real32_T),
  sizeof(int8_T),
  sizeof(uint8_T),
  sizeof(int16_T),
  sizeof(uint16_T),
  sizeof(int32_T),
  sizeof(uint32_T),
  sizeof(boolean_T),
  sizeof(fcn_call_T),
  sizeof(int_T),
  sizeof(pointer_T),
  sizeof(action_T),
  2*sizeof(uint32_T),
  sizeof(int32_T),
  sizeof(int64_T),
  sizeof(uint64_T),
  sizeof(t_channel),
  sizeof(t_jpeg_compress),
  sizeof(t_video_capture),
  sizeof(t_video3d),
  sizeof(t_video3d_stream),
  sizeof(t_int64),
  sizeof(t_uint64),
  sizeof(t_image_rgb_to_hsv),
  sizeof(t_timeout),
  sizeof(t_card),
  sizeof(uint64_T),
  sizeof(int64_T),
  sizeof(uint_T),
  sizeof(char_T),
  sizeof(uchar_T),
  sizeof(time_T)
};

/* data type name table */
static const char_T * rtDataTypeNames[] = {
  "real_T",
  "real32_T",
  "int8_T",
  "uint8_T",
  "int16_T",
  "uint16_T",
  "int32_T",
  "uint32_T",
  "boolean_T",
  "fcn_call_T",
  "int_T",
  "pointer_T",
  "action_T",
  "timer_uint32_pair_T",
  "physical_connection",
  "int64_T",
  "uint64_T",
  "t_channel",
  "t_jpeg_compress",
  "t_video_capture",
  "t_video3d",
  "t_video3d_stream",
  "t_int64",
  "t_uint64",
  "t_image_rgb_to_hsv",
  "t_timeout",
  "t_card",
  "uint64_T",
  "int64_T",
  "uint_T",
  "char_T",
  "uchar_T",
  "time_T"
};

/* data type transitions for block I/O structure */
static DataTypeTransition rtBTransitions[] = {
  { (char_T *)(&QCar2_autonomous_driving_exam_B.Depth_o2), 23, 0, 1 },

  { (char_T *)(&QCar2_autonomous_driving_exam_B.batteryvoltage), 0, 0, 61 },

  { (char_T *)(&QCar2_autonomous_driving_exam_B.Channel), 17, 0, 3 },

  { (char_T *)(&QCar2_autonomous_driving_exam_B.Depth_o1[0]), 1, 0, 230400 },

  { (char_T *)(&QCar2_autonomous_driving_exam_B.VideoCapture_o1[0]), 3, 0,
    1646658 },

  { (char_T *)(&QCar2_autonomous_driving_exam_B.ImageCompress_o[0]), 3, 0, 77040
  },

  { (char_T *)(&QCar2_autonomous_driving_exam_B.AND3), 8, 0, 14 }
  ,

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime), 25, 0,
    9 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0]), 0, 0,
    43 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.ImageCompress_Compress), 18, 0,
    3 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.VideoCapture_VideoCapture), 19,
    0, 1 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.Video3DInitialize_Video3D), 20,
    0, 2 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.Depth_Stream), 21, 0, 1 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.ImageTransform_AlgHandle), 24, 0,
    1 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.HILInitialize_Card), 26, 0, 1 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.HILRead_PWORK), 11, 0, 17 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.HILInitialize_DOStates[0]), 6, 0,
    43 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedChans[0]),
    7, 0, 2 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.obstacleDetection_SubsysRanBC),
    2, 0, 1 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.ImageCompress_ScanLine[0]), 3, 0,
    18264 },

  { (char_T *)(&QCar2_autonomous_driving_exa_DW.HILInitialize_DOBits[0]), 8, 0,
    30 }
};

/* data type transition table for block I/O structure */
static DataTypeTransitionTable rtBTransTable = {
  21U,
  rtBTransitions
};

/* data type transitions for Parameters structure */
static DataTypeTransition rtPTransitions[] = {
  { (char_T *)(&QCar2_autonomous_driving_exam_P.camera_rate), 0, 0, 7 },

  { (char_T *)(&QCar2_autonomous_driving_exam_P.HSVColorThresholding_b_comparis),
    6, 0, 3 },

  { (char_T *)(&QCar2_autonomous_driving_exam_P.HILRead_analog_channels[0]), 7,
    0, 28 },

  { (char_T *)(&QCar2_autonomous_driving_exam_P.Video3DInitialize_active), 8, 0,
    1 },

  { (char_T *)(&QCar2_autonomous_driving_exam_P.distancem_Y0), 0, 0, 182 },

  { (char_T *)(&QCar2_autonomous_driving_exam_P.HILInitialize_DOWatchdog), 6, 0,
    13 },

  { (char_T *)(&QCar2_autonomous_driving_exam_P.Gain_Gain_g), 1, 0, 1 },

  { (char_T *)(&QCar2_autonomous_driving_exam_P.HILInitialize_AIChannels[0]), 7,
    0, 49 },

  { (char_T *)(&QCar2_autonomous_driving_exam_P.HILInitialize_Active), 8, 0, 42
  },

  { (char_T *)(&QCar2_autonomous_driving_exam_P.imageDepthForDisplay_Y0), 3, 0,
    4 }
};

/* data type transition table for Parameters structure */
static DataTypeTransitionTable rtPTransTable = {
  10U,
  rtPTransitions
};

/* [EOF] QCar2_autonomous_driving_example2_dt.h */
