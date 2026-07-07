/*
 * QCar2_hardware_test_intel_realsense_data.c
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

#include "QCar2_hardware_test_intel_realsense.h"

/* Block parameters (default storage) */
P_QCar2_hardware_test_intel_r_T QCar2_hardware_test_intel_rea_P = {
  /* Mask Parameter: ImageTransform_max_pixel
   * Referenced by: '<Root>/Image Transform'
   */
  50.0F,

  /* Mask Parameter: ImageTransform_min_pixel
   * Referenced by: '<Root>/Image Transform'
   */
  0.0F,

  /* Mask Parameter: Depth_stream_index
   * Referenced by: '<Root>/Depth'
   */
  0U,

  /* Mask Parameter: RGB_stream_index
   * Referenced by: '<Root>/RGB'
   */
  0U,

  /* Mask Parameter: Video3DInitialize_active
   * Referenced by: '<Root>/Video3D Initialize'
   */
  true,

  /* Expression: d_brightness
   * Referenced by: '<Root>/Depth'
   */
  50.0,

  /* Expression: d_contrast
   * Referenced by: '<Root>/Depth'
   */
  50.0,

  /* Expression: d_hue
   * Referenced by: '<Root>/Depth'
   */
  50.0,

  /* Expression: d_saturation
   * Referenced by: '<Root>/Depth'
   */
  50.0,

  /* Expression: d_sharpness
   * Referenced by: '<Root>/Depth'
   */
  50.0,

  /* Expression: d_gamma
   * Referenced by: '<Root>/Depth'
   */
  50.0,

  /* Expression: d_whitebalance
   * Referenced by: '<Root>/Depth'
   */
  50.0,

  /* Expression: d_backlightcompensation
   * Referenced by: '<Root>/Depth'
   */
  50.0,

  /* Expression: d_gain
   * Referenced by: '<Root>/Depth'
   */
  50.0,

  /* Expression: d_exposure
   * Referenced by: '<Root>/Depth'
   */
  30.0,

  /* Expression: emitter
   * Referenced by: '<Root>/Depth'
   */
  1.0,

  /* Expression: contour_depth
   * Referenced by: '<Root>/Image Transform'
   */
  1.0,

  /* Expression: focal_length
   * Referenced by: '<Root>/Image Transform'
   */
  308.0,

  /* Expression: extrapolated
   * Referenced by: '<Root>/Image Transform'
   */
  0.0,

  /* Expression: angle
   * Referenced by: '<Root>/Image Transform'
   */
  0.0,

  /* Expression: radial_coeffs
   * Referenced by: '<Root>/Image Transform'
   */
  { -0.3129, 0.0907 },

  /* Expression: d_brightness
   * Referenced by: '<Root>/RGB'
   */
  50.0,

  /* Expression: d_contrast
   * Referenced by: '<Root>/RGB'
   */
  50.0,

  /* Expression: d_hue
   * Referenced by: '<Root>/RGB'
   */
  50.0,

  /* Expression: d_saturation
   * Referenced by: '<Root>/RGB'
   */
  50.0,

  /* Expression: d_sharpness
   * Referenced by: '<Root>/RGB'
   */
  50.0,

  /* Expression: d_gamma
   * Referenced by: '<Root>/RGB'
   */
  50.0,

  /* Expression: d_whitebalance
   * Referenced by: '<Root>/RGB'
   */
  50.0,

  /* Expression: d_backlightcompensation
   * Referenced by: '<Root>/RGB'
   */
  50.0,

  /* Expression: d_gain
   * Referenced by: '<Root>/RGB'
   */
  50.0,

  /* Expression: d_exposure
   * Referenced by: '<Root>/RGB'
   */
  30.0,

  /* Expression: emitter
   * Referenced by: '<Root>/RGB'
   */
  1.0,

  /* Computed Parameter: ImageTransform_PrPoint
   * Referenced by: '<Root>/Image Transform'
   */
  { 334, 262 },

  /* Computed Parameter: ImageTransform_Interpolation
   * Referenced by: '<Root>/Image Transform'
   */
  1,

  /* Computed Parameter: ImageTransform_Origin
   * Referenced by: '<Root>/Image Transform'
   */
  { 320, 240 },

  /* Computed Parameter: ImageTransform_OOrigin
   * Referenced by: '<Root>/Image Transform'
   */
  { 320, 240 },

  /* Computed Parameter: Depth_Preset
   * Referenced by: '<Root>/Depth'
   */
  21U,

  /* Computed Parameter: ImageTransform_ColorTheme
   * Referenced by: '<Root>/Image Transform'
   */
  1U,

  /* Computed Parameter: ImageCompress_Quality
   * Referenced by: '<S1>/Image Compress'
   */
  50U,

  /* Computed Parameter: RGB_Preset
   * Referenced by: '<Root>/RGB'
   */
  21U,

  /* Computed Parameter: ImageCompress_Quality_n
   * Referenced by: '<S4>/Image Compress'
   */
  50U,

  /* Computed Parameter: VideoDisplay_UseHardware
   * Referenced by: '<S1>/Video Display'
   */
  true,

  /* Computed Parameter: VideoDisplay_UseHardware_k
   * Referenced by: '<S4>/Video Display'
   */
  true
};
