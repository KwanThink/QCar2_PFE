/*
 * QCar2_autonomous_driving_example1_data.c
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

#include "QCar2_autonomous_driving_example1.h"

/* Block parameters (default storage) */
P_QCar2_autonomous_driving_ex_T QCar2_autonomous_driving_exam_P = {
  /* Mask Parameter: LeftSteeringLimit_const
   * Referenced by: '<S40>/Constant'
   */
  0.3,

  /* Mask Parameter: RightSteeringLimit_const
   * Referenced by: '<S42>/Constant'
   */
  -0.3,

  /* Mask Parameter: CompareToConstant3_const
   * Referenced by: '<S39>/Constant'
   */
  -0.002,

  /* Mask Parameter: CompareToConstant1_const
   * Referenced by: '<S37>/Constant'
   */
  0.0,

  /* Mask Parameter: CompareToConstant2_const
   * Referenced by: '<S38>/Constant'
   */
  0.0,

  /* Mask Parameter: HSVColorThresholding1_b_compari
   * Referenced by: '<S17>/HSV Color Thresholding1'
   */
  1,

  /* Mask Parameter: ImageLogic_column
   * Referenced by: '<S17>/Image Logic'
   */
  0,

  /* Mask Parameter: ImageLogic1_column
   * Referenced by: '<S17>/Image Logic1'
   */
  0,

  /* Mask Parameter: ImageLogic2_column
   * Referenced by: '<S11>/Image Logic2'
   */
  0,

  /* Mask Parameter: ImageFindObjects_connectivity
   * Referenced by: '<S7>/Image Find Objects'
   */
  1,

  /* Mask Parameter: HSVColorThresholding1_g_compari
   * Referenced by: '<S17>/HSV Color Thresholding1'
   */
  1,

  /* Mask Parameter: HSVColorThresholding1_r_compari
   * Referenced by: '<S17>/HSV Color Thresholding1'
   */
  9,

  /* Mask Parameter: ImageLogic_row
   * Referenced by: '<S17>/Image Logic'
   */
  0,

  /* Mask Parameter: ImageLogic1_row
   * Referenced by: '<S17>/Image Logic1'
   */
  0,

  /* Mask Parameter: ImageLogic2_row
   * Referenced by: '<S11>/Image Logic2'
   */
  0,

  /* Mask Parameter: ImageFindObjects_sort_order
   * Referenced by: '<S7>/Image Find Objects'
   */
  2,

  /* Mask Parameter: HILRead_analog_channels
   * Referenced by: '<S13>/HIL Read'
   */
  { 2U, 4U },

  /* Mask Parameter: HILWrite_digital_channels
   * Referenced by: '<S13>/HIL Write'
   */
  { 17U, 18U, 25U, 26U, 11U, 12U, 13U, 14U, 15U, 16U, 19U, 20U, 21U, 22U, 23U,
    24U },

  /* Mask Parameter: HILRead_encoder_channels
   * Referenced by: '<S13>/HIL Read'
   */
  0U,

  /* Mask Parameter: ImageFindObjects_max_pixels
   * Referenced by: '<S7>/Image Find Objects'
   */
  4294967295U,

  /* Mask Parameter: ImageFindObjects_min_pixels
   * Referenced by: '<S7>/Image Find Objects'
   */
  50U,

  /* Mask Parameter: HILRead_other_channels
   * Referenced by: '<S13>/HIL Read'
   */
  { 3000U, 3001U, 3002U, 4000U, 4001U, 4002U },

  /* Mask Parameter: HILWrite_other_channels
   * Referenced by: '<S13>/HIL Write'
   */
  { 1000U, 11000U },

  /* Mask Parameter: Depth_stream_index
   * Referenced by: '<S16>/Depth'
   */
  0U,

  /* Mask Parameter: Video3DInitialize_active
   * Referenced by: '<S16>/Video3D Initialize'
   */
  true,

  /* Mask Parameter: ImageFindObjects_exclude_at_edg
   * Referenced by: '<S7>/Image Find Objects'
   */
  false,

  /* Mask Parameter: ImageFindObjects_largest
   * Referenced by: '<S7>/Image Find Objects'
   */
  true,

  /* Expression: 1
   * Referenced by: '<Root>/Constant10'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<Root>/Constant8'
   */
  0.0,

  /* Expression: 0.1
   * Referenced by: '<Root>/Speed Max (m//s)'
   */
  0.1,

  /* Expression: 1
   * Referenced by: '<Root>/Saturation1'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<Root>/Saturation1'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<Root>/Constant9'
   */
  0.0,

  /* Computed Parameter: distancem_Y0
   * Referenced by: '<S19>/distance (m)'
   */
  0.0,

  /* Expression: 0.05
   * Referenced by: '<S19>/Constant'
   */
  0.05,

  /* Expression: 2
   * Referenced by: '<S19>/Constant1'
   */
  2.0,

  /* Expression: Inf
   * Referenced by: '<S19>/Constant2'
   */
  INFINITY,

  /* Expression: [255 0 0]
   * Referenced by: '<S19>/Constant3'
   */
  { 255.0, 0.0, 0.0 },

  /* Expression: 3
   * Referenced by: '<S19>/scale'
   */
  3.0,

  /* Expression: 8
   * Referenced by: '<S21>/Constant'
   */
  8.0,

  /* Expression: 1
   * Referenced by: '<S21>/Saturation'
   */
  1.0,

  /* Expression: 0.5
   * Referenced by: '<S21>/Saturation'
   */
  0.5,

  /* Expression: 0
   * Referenced by: '<S46>/Constant'
   */
  0.0,

  /* Expression: set_other_outputs_at_terminate
   * Referenced by: '<S13>/HIL Initialize'
   */
  1.0,

  /* Expression: set_other_outputs_at_switch_out
   * Referenced by: '<S13>/HIL Initialize'
   */
  0.0,

  /* Expression: set_other_outputs_at_start
   * Referenced by: '<S13>/HIL Initialize'
   */
  1.0,

  /* Expression: set_other_outputs_at_switch_in
   * Referenced by: '<S13>/HIL Initialize'
   */
  0.0,

  /* Expression: final_pwm_outputs
   * Referenced by: '<S13>/HIL Initialize'
   */
  0.0,

  /* Expression: final_other_outputs
   * Referenced by: '<S13>/HIL Initialize'
   */
  0.0,

  /* Expression: analog_input_maximums
   * Referenced by: '<S13>/HIL Initialize'
   */
  3.3,

  /* Expression: analog_input_minimums
   * Referenced by: '<S13>/HIL Initialize'
   */
  0.0,

  /* Expression: encoder_filter_frequency
   * Referenced by: '<S13>/HIL Initialize'
   */
  1.0E+8,

  /* Expression: pwm_frequency
   * Referenced by: '<S13>/HIL Initialize'
   */
  43945.3125,

  /* Expression: initial_pwm_outputs
   * Referenced by: '<S13>/HIL Initialize'
   */
  0.0,

  /* Expression: watchdog_pwm_outputs
   * Referenced by: '<S13>/HIL Initialize'
   */
  0.0,

  /* Expression: initial_other_outputs
   * Referenced by: '<S13>/HIL Initialize'
   */
  0.0,

  /* Expression: watchdog_other_outputs
   * Referenced by: '<S13>/HIL Initialize'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<S13>/Constant1'
   */
  1.0,

  /* Expression: 25
   * Referenced by: '<S13>/Constant2'
   */
  25.0,

  /* Expression: 1
   * Referenced by: '<S13>/Constant3'
   */
  1.0,

  /* Expression: 100
   * Referenced by: '<S13>/Constant4'
   */
  100.0,

  /* Expression: 1
   * Referenced by: '<S13>/Constant5'
   */
  1.0,

  /* Expression: 100
   * Referenced by: '<S13>/Constant6'
   */
  100.0,

  /* Expression: 2
   * Referenced by: '<S32>/Constant'
   */
  2.0,

  /* Expression: modulus
   * Referenced by: '<S13>/Unwrap 2^24'
   */
  1.6777215E+7,

  /* Expression: 0
   * Referenced by: '<S32>/Integrator2'
   */
  0.0,

  /* Expression: 2
   * Referenced by: '<S33>/Constant'
   */
  2.0,

  /* Expression: 0
   * Referenced by: '<S33>/Integrator2'
   */
  0.0,

  /* Expression: 2
   * Referenced by: '<S34>/Constant'
   */
  2.0,

  /* Expression: 0
   * Referenced by: '<S34>/Integrator2'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<Root>/Rate Transition'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<S18>/Pulsing Light'
   */
  1.0,

  /* Expression: 0.5/qc_get_step_size
   * Referenced by: '<S18>/Pulsing Light'
   */
  300.0,

  /* Expression: 0.5/2/qc_get_step_size
   * Referenced by: '<S18>/Pulsing Light'
   */
  150.0,

  /* Expression: 0
   * Referenced by: '<S18>/Pulsing Light'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<S18>/Constant1'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<Root>/Rate Transition1'
   */
  0.0,

  /* Expression: 0.2
   * Referenced by: '<S12>/Constant'
   */
  0.2,

  /* Expression: 1
   * Referenced by: '<S12>/Constant2'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<Root>/Switch'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<Root>/Rate Limiter'
   */
  1.0,

  /* Expression: -Inf
   * Referenced by: '<Root>/Rate Limiter'
   */
  -INFINITY,

  /* Expression: 0
   * Referenced by: '<Root>/Rate Limiter'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<Root>/Constant1'
   */
  1.0,

  /* Expression: 0.5
   * Referenced by: '<S21>/Switch'
   */
  0.5,

  /* Expression: 5
   * Referenced by: '<S20>/command saturation'
   */
  5.0,

  /* Expression: -5
   * Referenced by: '<S20>/command saturation'
   */
  -5.0,

  /* Expression: 0.1
   * Referenced by: '<S20>/Kff  (% // m//s)'
   */
  0.1,

  /* Expression: 1/720/4
   * Referenced by: '<S14>/counts to rotations'
   */
  0.00034722222222222224,

  /* Expression: (13*19)/(70*37)
   * Referenced by: '<S14>/gear ratios'
   */
  0.095366795366795362,

  /* Expression: 2*pi
   * Referenced by: '<S14>/rot//s to rad//s'
   */
  6.2831853071795862,

  /* Expression: 0.0342
   * Referenced by: '<S14>/wheel radius'
   */
  0.0342,

  /* Expression: 0.3
   * Referenced by: '<S20>/Kp (% // m//s)'
   */
  0.3,

  /* Expression: 0
   * Referenced by: '<S20>/Integrator1'
   */
  0.0,

  /* Expression: 0.4
   * Referenced by: '<S20>/Integrator1'
   */
  0.4,

  /* Expression: -0.4
   * Referenced by: '<S20>/Integrator1'
   */
  -0.4,

  /* Expression: 0
   * Referenced by: '<S18>/Memory'
   */
  0.0,

  /* Expression: 5
   * Referenced by: '<S18>/Constant2'
   */
  5.0,

  /* Expression: i_trigger_type
   * Referenced by: '<S41>/one_shot_block'
   */
  2.0,

  /* Expression: i_redun_pulse
   * Referenced by: '<S41>/one_shot_block'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<S18>/Constant'
   */
  0.0,

  /* Expression: 0.5
   * Referenced by: '<S41>/Switch'
   */
  0.5,

  /* Expression: 1
   * Referenced by: '<S13>/Gain'
   */
  1.0,

  /* Expression: 0.0
   * Referenced by: '<S13>/Steering Bias'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<S13>/direction convention'
   */
  1.0,

  /* Expression: 0.20
   * Referenced by: '<S13>/command saturation'
   */
  0.2,

  /* Expression: -0.20
   * Referenced by: '<S13>/command saturation'
   */
  -0.2,

  /* Expression: 1
   * Referenced by: '<S20>/Ki (% // m)  '
   */
  1.0,

  /* Expression: d_brightness
   * Referenced by: '<S16>/Depth'
   */
  50.0,

  /* Expression: d_contrast
   * Referenced by: '<S16>/Depth'
   */
  50.0,

  /* Expression: d_hue
   * Referenced by: '<S16>/Depth'
   */
  50.0,

  /* Expression: d_saturation
   * Referenced by: '<S16>/Depth'
   */
  50.0,

  /* Expression: d_sharpness
   * Referenced by: '<S16>/Depth'
   */
  50.0,

  /* Expression: d_gamma
   * Referenced by: '<S16>/Depth'
   */
  50.0,

  /* Expression: d_whitebalance
   * Referenced by: '<S16>/Depth'
   */
  50.0,

  /* Expression: d_backlightcompensation
   * Referenced by: '<S16>/Depth'
   */
  50.0,

  /* Expression: d_gain
   * Referenced by: '<S16>/Depth'
   */
  50.0,

  /* Expression: d_exposure
   * Referenced by: '<S16>/Depth'
   */
  30.0,

  /* Expression: emitter
   * Referenced by: '<S16>/Depth'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<Root>/Rate Transition2'
   */
  0.0,

  /* Expression: 0.2
   * Referenced by: '<Root>/Stopping Distance (m)'
   */
  0.2,

  /* Expression: d_brightness
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_contrast
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_hue
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_saturation
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_sharpness
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_gamma
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_coloreffect
   * Referenced by: '<S15>/Video Capture'
   */
  0.0,

  /* Expression: d_whitebalance
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_backlightcompensation
   * Referenced by: '<S15>/Video Capture'
   */
  0.0,

  /* Expression: d_gain
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_pan
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_tilt
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_roll
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_zoom
   * Referenced by: '<S15>/Video Capture'
   */
  0.0,

  /* Expression: d_exposure
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_iris
   * Referenced by: '<S15>/Video Capture'
   */
  50.0,

  /* Expression: d_focus
   * Referenced by: '<S15>/Video Capture'
   */
  0.0,

  /* Expression: d_mirror
   * Referenced by: '<S15>/Video Capture'
   */
  0.0,

  /* Expression: min_pixel
   * Referenced by: '<S17>/Image Transform1'
   */
  0.0,

  /* Expression: max_pixel
   * Referenced by: '<S17>/Image Transform1'
   */
  4000.0,

  /* Expression: contour_depth
   * Referenced by: '<S17>/Image Transform1'
   */
  1.0,

  /* Expression: focal_length
   * Referenced by: '<S17>/Image Transform1'
   */
  308.0,

  /* Expression: extrapolated
   * Referenced by: '<S17>/Image Transform1'
   */
  0.0,

  /* Expression: angle
   * Referenced by: '<S17>/Image Transform1'
   */
  0.0,

  /* Expression: radial_coeffs
   * Referenced by: '<S17>/Image Transform1'
   */
  { -0.3129, 0.0907 },

  /* Expression: 100
   * Referenced by: '<S17>/min hue'
   */
  100.0,

  /* Expression: 63
   * Referenced by: '<S17>/min sat'
   */
  63.0,

  /* Expression: 90
   * Referenced by: '<S17>/min val'
   */
  90.0,

  /* Expression: 160
   * Referenced by: '<S17>/max hue'
   */
  160.0,

  /* Expression: 165
   * Referenced by: '<S17>/max sat'
   */
  165.0,

  /* Expression: 211
   * Referenced by: '<S17>/max val'
   */
  211.0,

  /* Expression: r_min
   * Referenced by: '<S17>/HSV Color Thresholding1'
   */
  30.0,

  /* Expression: r_max
   * Referenced by: '<S17>/HSV Color Thresholding1'
   */
  70.0,

  /* Expression: g_min
   * Referenced by: '<S17>/HSV Color Thresholding1'
   */
  60.0,

  /* Expression: g_max
   * Referenced by: '<S17>/HSV Color Thresholding1'
   */
  100.0,

  /* Expression: b_min
   * Referenced by: '<S17>/HSV Color Thresholding1'
   */
  40.0,

  /* Expression: b_max
   * Referenced by: '<S17>/HSV Color Thresholding1'
   */
  80.0,

  /* Expression: [1 820 100 180]
   * Referenced by: '<Root>/ROI [xmin xmax ymin ymax]'
   */
  { 1.0, 820.0, 100.0, 180.0 },

  /* Expression: 410
   * Referenced by: '<Root>/Nomimal Lane Position (Pixel Column)'
   */
  410.0,

  /* Expression: 0.005
   * Referenced by: '<Root>/Gain1'
   */
  0.005,

  /* Expression: 0.5
   * Referenced by: '<Root>/Steering Saturation1'
   */
  0.5,

  /* Expression: -0.5
   * Referenced by: '<Root>/Steering Saturation1'
   */
  -0.5,

  /* Expression: [255 0 0]
   * Referenced by: '<S4>/Constant2'
   */
  { 255.0, 0.0, 0.0 },

  /* Expression: [0 255 0]
   * Referenced by: '<S4>/Constant3'
   */
  { 0.0, 255.0, 0.0 },

  /* Expression: [255 255 0]
   * Referenced by: '<S4>/Constant4'
   */
  { 255.0, 255.0, 0.0 },

  /* Computed Parameter: HILInitialize_DOWatchdog
   * Referenced by: '<S13>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_EIInitial
   * Referenced by: '<S13>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POModes
   * Referenced by: '<S13>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POConfiguration
   * Referenced by: '<S13>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POAlignment
   * Referenced by: '<S13>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POPolarity
   * Referenced by: '<S13>/HIL Initialize'
   */
  1,

  /* Computed Parameter: ImageTransform1_PrPoint
   * Referenced by: '<S17>/Image Transform1'
   */
  { 262, 334 },

  /* Computed Parameter: ImageTransform1_Interpolation
   * Referenced by: '<S17>/Image Transform1'
   */
  1,

  /* Computed Parameter: ImageTransform1_Origin
   * Referenced by: '<S17>/Image Transform1'
   */
  { 240, 320 },

  /* Computed Parameter: ImageTransform1_OOrigin
   * Referenced by: '<S17>/Image Transform1'
   */
  { 240, 320 },

  /* Computed Parameter: ImageFilter_Divisor
   * Referenced by: '<S17>/Image Filter'
   */
  1,

  /* Computed Parameter: ImageFilter_Offset
   * Referenced by: '<S17>/Image Filter'
   */
  0,

  /* Computed Parameter: ImageFilter1_Divisor
   * Referenced by: '<S17>/Image Filter1'
   */
  1,

  /* Computed Parameter: ImageFilter1_Offset
   * Referenced by: '<S17>/Image Filter1'
   */
  0,

  /* Computed Parameter: Gain_Gain_g
   * Referenced by: '<S19>/Gain'
   */
  63.75F,

  /* Computed Parameter: ImageFilter_Sigma
   * Referenced by: '<S17>/Image Filter'
   */
  10.0F,

  /* Computed Parameter: ImageFilter_Alpha
   * Referenced by: '<S17>/Image Filter'
   */
  0.9F,

  /* Computed Parameter: ImageFilter1_Sigma
   * Referenced by: '<S17>/Image Filter1'
   */
  10.0F,

  /* Computed Parameter: ImageFilter1_Alpha
   * Referenced by: '<S17>/Image Filter1'
   */
  0.9F,

  /* Computed Parameter: HILInitialize_AIChannels
   * Referenced by: '<S13>/HIL Initialize'
   */
  { 0U, 1U, 2U, 3U, 4U },

  /* Computed Parameter: HILInitialize_DIChannels
   * Referenced by: '<S13>/HIL Initialize'
   */
  { 0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U, 8U, 9U, 10U, 11U, 12U, 13U, 14U },

  /* Computed Parameter: HILInitialize_DOChannels
   * Referenced by: '<S13>/HIL Initialize'
   */
  { 11U, 12U, 13U, 14U, 15U, 16U, 17U, 18U, 19U, 20U, 21U, 22U, 23U, 24U, 25U,
    26U },

  /* Computed Parameter: HILInitialize_EIChannels
   * Referenced by: '<S13>/HIL Initialize'
   */
  { 0U, 1U, 2U },

  /* Computed Parameter: HILInitialize_EIQuadrature
   * Referenced by: '<S13>/HIL Initialize'
   */
  4U,

  /* Computed Parameter: HILInitialize_POChannels
   * Referenced by: '<S13>/HIL Initialize'
   */
  { 0U, 1U },

  /* Computed Parameter: HILInitialize_OOChannels
   * Referenced by: '<S13>/HIL Initialize'
   */
  { 1000U, 11000U },

  /* Computed Parameter: Depth_Preset
   * Referenced by: '<S16>/Depth'
   */
  21U,

  /* Computed Parameter: ImageCompress_Quality
   * Referenced by: '<S5>/Image Compress'
   */
  50U,

  /* Computed Parameter: ImageTransform1_ColorTheme
   * Referenced by: '<S17>/Image Transform1'
   */
  1U,

  /* Computed Parameter: ImageFilter_KernelSize
   * Referenced by: '<S17>/Image Filter'
   */
  5U,

  /* Computed Parameter: ImageFilter_MaskSize
   * Referenced by: '<S17>/Image Filter'
   */
  { 3U, 3U },

  /* Computed Parameter: ImageFilter_GapThreshold
   * Referenced by: '<S17>/Image Filter'
   */
  10U,

  /* Computed Parameter: ImageFilter_Iterations
   * Referenced by: '<S17>/Image Filter'
   */
  2U,

  /* Computed Parameter: ImageFilter_Norm
   * Referenced by: '<S17>/Image Filter'
   */
  1U,

  /* Computed Parameter: ImageFilter1_KernelSize
   * Referenced by: '<S17>/Image Filter1'
   */
  5U,

  /* Computed Parameter: ImageFilter1_MaskSize
   * Referenced by: '<S17>/Image Filter1'
   */
  { 7U, 7U },

  /* Computed Parameter: ImageFilter1_GapThreshold
   * Referenced by: '<S17>/Image Filter1'
   */
  10U,

  /* Computed Parameter: ImageFilter1_Iterations
   * Referenced by: '<S17>/Image Filter1'
   */
  2U,

  /* Computed Parameter: ImageFilter1_Norm
   * Referenced by: '<S17>/Image Filter1'
   */
  1U,

  /* Computed Parameter: ImageCompress_Quality_n
   * Referenced by: '<S35>/Image Compress'
   */
  50U,

  /* Computed Parameter: ImageCompress_Quality_a
   * Referenced by: '<S36>/Image Compress'
   */
  50U,

  /* Computed Parameter: ImageCompress_Quality_h
   * Referenced by: '<S6>/Image Compress'
   */
  80U,

  /* Expression: kernel
   * Referenced by: '<S17>/Image Filter'
   */
  { -2, -1, 0, -1, 1, 1, 0, 1, 2 },

  /* Expression: kernel
   * Referenced by: '<S17>/Image Filter1'
   */
  { -2, -1, 0, -1, 1, 1, 0, 1, 2 },

  /* Computed Parameter: HILInitialize_Active
   * Referenced by: '<S13>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_AOTerminate
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AOExit
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOTerminate
   * Referenced by: '<S13>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_DOExit
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_POTerminate
   * Referenced by: '<S13>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_POExit
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_CKPStart
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_CKPEnter
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_CKStart
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_CKEnter
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AIPStart
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AIPEnter
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AOPStart
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AOPEnter
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AOStart
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AOEnter
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AOReset
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOPStart
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOPEnter
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOStart
   * Referenced by: '<S13>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_DOEnter
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOReset
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_EIPStart
   * Referenced by: '<S13>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_EIPEnter
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_EIStart
   * Referenced by: '<S13>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_EIEnter
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_POPStart
   * Referenced by: '<S13>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_POPEnter
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_POStart
   * Referenced by: '<S13>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_POEnter
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_POReset
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_OOReset
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOFinal
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOInitial
   * Referenced by: '<S13>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILRead_Active
   * Referenced by: '<S13>/HIL Read'
   */
  true,

  /* Computed Parameter: SteadyLight_Value
   * Referenced by: '<S18>/Steady Light'
   */
  true,

  /* Computed Parameter: LightOff_Value
   * Referenced by: '<S18>/Light Off'
   */
  false,

  /* Computed Parameter: HILWrite_Active
   * Referenced by: '<S13>/HIL Write'
   */
  false,

  /* Computed Parameter: VideoDisplay_UseHardware
   * Referenced by: '<S5>/Video Display'
   */
  true,

  /* Computed Parameter: VideoDisplay_UseHardware_o
   * Referenced by: '<S35>/Video Display'
   */
  true,

  /* Computed Parameter: VideoDisplay_UseHardware_i
   * Referenced by: '<S36>/Video Display'
   */
  true,

  /* Computed Parameter: VideoDisplay_UseHardware_it
   * Referenced by: '<S17>/Video Display'
   */
  true,

  /* Computed Parameter: VideoDisplay_UseHardware_b
   * Referenced by: '<S6>/Video Display'
   */
  true,

  /* Computed Parameter: imageDepthForDisplay_Y0
   * Referenced by: '<S19>/imageDepthForDisplay'
   */
  0U,

  /* Computed Parameter: uArm0Disarm1_CurrentSetting
   * Referenced by: '<Root>/1 - Arm, 0 - Disarm1'
   */
  0U,

  /* Computed Parameter: ImageFilter_Zone
   * Referenced by: '<S17>/Image Filter'
   */
  1U,

  /* Computed Parameter: ImageFilter_BdrType
   * Referenced by: '<S17>/Image Filter'
   */
  1U,

  /* Computed Parameter: ImageFilter_BdrValue
   * Referenced by: '<S17>/Image Filter'
   */
  { 0U, 0U, 0U },

  /* Computed Parameter: ImageFilter_RoundingMode
   * Referenced by: '<S17>/Image Filter'
   */
  2U,

  /* Computed Parameter: ImageFilter_AlgorithmHint
   * Referenced by: '<S17>/Image Filter'
   */
  1U,

  /* Computed Parameter: ImageFilter_Threshold
   * Referenced by: '<S17>/Image Filter'
   */
  100U,

  /* Computed Parameter: ImageFilter_PrsFrames
   * Referenced by: '<S17>/Image Filter'
   */
  8U,

  /* Computed Parameter: ImageFilter_PrsValid
   * Referenced by: '<S17>/Image Filter'
   */
  1U,

  /* Computed Parameter: ImageFilter_DepthThreshold
   * Referenced by: '<S17>/Image Filter'
   */
  255U,

  /* Computed Parameter: ImageFilter1_Zone
   * Referenced by: '<S17>/Image Filter1'
   */
  1U,

  /* Computed Parameter: ImageFilter1_BdrType
   * Referenced by: '<S17>/Image Filter1'
   */
  1U,

  /* Computed Parameter: ImageFilter1_BdrValue
   * Referenced by: '<S17>/Image Filter1'
   */
  { 0U, 0U, 0U },

  /* Computed Parameter: ImageFilter1_RoundingMode
   * Referenced by: '<S17>/Image Filter1'
   */
  2U,

  /* Computed Parameter: ImageFilter1_AlgorithmHint
   * Referenced by: '<S17>/Image Filter1'
   */
  1U,

  /* Computed Parameter: ImageFilter1_Threshold
   * Referenced by: '<S17>/Image Filter1'
   */
  100U,

  /* Computed Parameter: ImageFilter1_PrsFrames
   * Referenced by: '<S17>/Image Filter1'
   */
  8U,

  /* Computed Parameter: ImageFilter1_PrsValid
   * Referenced by: '<S17>/Image Filter1'
   */
  1U,

  /* Computed Parameter: ImageFilter1_DepthThreshold
   * Referenced by: '<S17>/Image Filter1'
   */
  255U
};
