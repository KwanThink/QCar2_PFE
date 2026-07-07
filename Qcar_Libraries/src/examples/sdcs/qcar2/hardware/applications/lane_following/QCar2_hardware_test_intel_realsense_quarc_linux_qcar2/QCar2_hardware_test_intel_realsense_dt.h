/*
 * QCar2_hardware_test_intel_realsense_dt.h
 *
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * Code generation for model "QCar2_hardware_test_intel_realsense".
 *
 * Model version              : 9.8
 * Simulink Coder version : 24.2 (R2024b) 21-Jun-2024
 * C source code generated on : Fri Apr  3 10:06:05 2026
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
  sizeof(t_video3d),
  sizeof(t_video3d_stream),
  sizeof(t_int64),
  sizeof(t_uint64),
  sizeof(t_colorization),
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
  "t_video3d",
  "t_video3d_stream",
  "t_int64",
  "t_uint64",
  "t_colorization",
  "uint64_T",
  "int64_T",
  "uint_T",
  "char_T",
  "uchar_T",
  "time_T"
};

/* data type transitions for block I/O structure */
static DataTypeTransition rtBTransitions[] = {
  { (char_T *)(&QCar2_hardware_test_intel_rea_B.Depth_o2), 22, 0, 2 },

  { (char_T *)(&QCar2_hardware_test_intel_rea_B.Depth_o3), 0, 0, 2 },

  { (char_T *)(&QCar2_hardware_test_intel_rea_B.Channel), 17, 0, 2 },

  { (char_T *)(&QCar2_hardware_test_intel_rea_B.Depth_o1[0]), 1, 0, 921600 },

  { (char_T *)(&QCar2_hardware_test_intel_rea_B.RGB_o1[0]), 3, 0, 8294400 }
  ,

  { (char_T *)(&QCar2_hardware_test_intel_re_DW.ImageCompress_Compress), 18, 0,
    2 },

  { (char_T *)(&QCar2_hardware_test_intel_re_DW.Video3DInitialize_Video3D), 19,
    0, 3 },

  { (char_T *)(&QCar2_hardware_test_intel_re_DW.Depth_Stream), 20, 0, 2 },

  { (char_T *)(&QCar2_hardware_test_intel_re_DW.ImageTransform_AlgHandle), 23, 0,
    1 },

  { (char_T *)(&QCar2_hardware_test_intel_re_DW.Channel_PWORK.Fifo), 11, 0, 2 },

  { (char_T *)(&QCar2_hardware_test_intel_re_DW.ImageCompress_DIMS1), 6, 0, 2 },

  { (char_T *)(&QCar2_hardware_test_intel_re_DW.ImageCompress_ScanLine[0]), 3, 0,
    61440 }
};

/* data type transition table for block I/O structure */
static DataTypeTransitionTable rtBTransTable = {
  12U,
  rtBTransitions
};

/* data type transitions for Parameters structure */
static DataTypeTransition rtPTransitions[] = {
  { (char_T *)(&QCar2_hardware_test_intel_rea_P.ImageTransform_max_pixel), 1, 0,
    2 },

  { (char_T *)(&QCar2_hardware_test_intel_rea_P.Depth_stream_index), 7, 0, 2 },

  { (char_T *)(&QCar2_hardware_test_intel_rea_P.Video3DInitialize_active), 8, 0,
    1 },

  { (char_T *)(&QCar2_hardware_test_intel_rea_P.Depth_Brightness), 0, 0, 28 },

  { (char_T *)(&QCar2_hardware_test_intel_rea_P.ImageTransform_PrPoint[0]), 6, 0,
    7 },

  { (char_T *)(&QCar2_hardware_test_intel_rea_P.Depth_Preset), 7, 0, 5 },

  { (char_T *)(&QCar2_hardware_test_intel_rea_P.VideoDisplay_UseHardware), 8, 0,
    2 }
};

/* data type transition table for Parameters structure */
static DataTypeTransitionTable rtPTransTable = {
  7U,
  rtPTransitions
};

/* [EOF] QCar2_hardware_test_intel_realsense_dt.h */
