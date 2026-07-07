/*
 * QCar2_autonomous_driving_example2_data.c
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

#include "QCar2_autonomous_driving_example2.h"

/* Block parameters (default storage) */
P_QCar2_autonomous_driving_ex_T QCar2_autonomous_driving_exam_P = {
  /* Variable: camera_rate
   * Referenced by: '<S15>/Constant'
   */
  0.0083333333333333332,

  /* Variable: depth_rate
   * Referenced by: '<S16>/Constant'
   */
  0.01,

  /* Mask Parameter: LeftSteeringLimit_const
   * Referenced by: '<S33>/Constant'
   */
  0.3,

  /* Mask Parameter: RightSteeringLimit_const
   * Referenced by: '<S35>/Constant'
   */
  -0.3,

  /* Mask Parameter: CompareToConstant3_const
   * Referenced by: '<S32>/Constant'
   */
  -0.002,

  /* Mask Parameter: CompareToConstant1_const
   * Referenced by: '<S30>/Constant'
   */
  0.0,

  /* Mask Parameter: CompareToConstant2_const
   * Referenced by: '<S31>/Constant'
   */
  0.0,

  /* Mask Parameter: HSVColorThresholding_b_comparis
   * Referenced by: '<S12>/HSV Color Thresholding'
   */
  1,

  /* Mask Parameter: HSVColorThresholding_g_comparis
   * Referenced by: '<S12>/HSV Color Thresholding'
   */
  1,

  /* Mask Parameter: HSVColorThresholding_r_comparis
   * Referenced by: '<S12>/HSV Color Thresholding'
   */
  9,

  /* Mask Parameter: HILRead_analog_channels
   * Referenced by: '<S8>/HIL Read'
   */
  { 2U, 4U },

  /* Mask Parameter: HILWrite_digital_channels
   * Referenced by: '<S8>/HIL Write'
   */
  { 17U, 18U, 25U, 26U, 11U, 12U, 13U, 14U, 15U, 16U, 19U, 20U, 21U, 22U, 23U,
    24U },

  /* Mask Parameter: HILRead_encoder_channels
   * Referenced by: '<S8>/HIL Read'
   */
  0U,

  /* Mask Parameter: HILRead_other_channels
   * Referenced by: '<S8>/HIL Read'
   */
  { 3000U, 3001U, 3002U, 4000U, 4001U, 4002U },

  /* Mask Parameter: HILWrite_other_channels
   * Referenced by: '<S8>/HIL Write'
   */
  { 1000U, 11000U },

  /* Mask Parameter: Depth_stream_index
   * Referenced by: '<S11>/Depth'
   */
  0U,

  /* Mask Parameter: Video3DInitialize_active
   * Referenced by: '<S11>/Video3D Initialize'
   */
  true,

  /* Computed Parameter: distancem_Y0
   * Referenced by: '<S17>/distance (m)'
   */
  0.0,

  /* Expression: 0.05
   * Referenced by: '<S17>/Constant'
   */
  0.05,

  /* Expression: 2
   * Referenced by: '<S17>/Constant1'
   */
  2.0,

  /* Expression: Inf
   * Referenced by: '<S17>/Constant2'
   */
  INFINITY,

  /* Expression: [255 0 0]
   * Referenced by: '<S17>/Constant3'
   */
  { 255.0, 0.0, 0.0 },

  /* Expression: 3
   * Referenced by: '<S17>/scale'
   */
  3.0,

  /* Expression: 50
   * Referenced by: '<S19>/b_n'
   */
  50.0,

  /* Expression: 8
   * Referenced by: '<S20>/Constant'
   */
  8.0,

  /* Expression: 1
   * Referenced by: '<S20>/Saturation'
   */
  1.0,

  /* Expression: 0.5
   * Referenced by: '<S20>/Saturation'
   */
  0.5,

  /* Expression: 1
   * Referenced by: '<S21>/Constant10'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<S21>/Constant8'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<S21>/Constant4'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<S21>/Constant3'
   */
  0.0,

  /* Expression: 1.5
   * Referenced by: '<S21>/Speed Max (m//s)'
   */
  1.5,

  /* Expression: 1
   * Referenced by: '<S21>/Speed Selector (1)'
   */
  1.0,

  /* Expression: 1
   * Referenced by: '<S21>/Saturation1'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<S21>/Saturation1'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S21>/Constant9'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<S39>/Constant'
   */
  0.0,

  /* Expression: set_other_outputs_at_terminate
   * Referenced by: '<S8>/HIL Initialize'
   */
  1.0,

  /* Expression: set_other_outputs_at_switch_out
   * Referenced by: '<S8>/HIL Initialize'
   */
  0.0,

  /* Expression: set_other_outputs_at_start
   * Referenced by: '<S8>/HIL Initialize'
   */
  1.0,

  /* Expression: set_other_outputs_at_switch_in
   * Referenced by: '<S8>/HIL Initialize'
   */
  0.0,

  /* Expression: final_pwm_outputs
   * Referenced by: '<S8>/HIL Initialize'
   */
  0.0,

  /* Expression: final_other_outputs
   * Referenced by: '<S8>/HIL Initialize'
   */
  0.0,

  /* Expression: analog_input_maximums
   * Referenced by: '<S8>/HIL Initialize'
   */
  3.3,

  /* Expression: analog_input_minimums
   * Referenced by: '<S8>/HIL Initialize'
   */
  0.0,

  /* Expression: encoder_filter_frequency
   * Referenced by: '<S8>/HIL Initialize'
   */
  1.0E+8,

  /* Expression: pwm_frequency
   * Referenced by: '<S8>/HIL Initialize'
   */
  43945.3125,

  /* Expression: initial_pwm_outputs
   * Referenced by: '<S8>/HIL Initialize'
   */
  0.0,

  /* Expression: watchdog_pwm_outputs
   * Referenced by: '<S8>/HIL Initialize'
   */
  0.0,

  /* Expression: initial_other_outputs
   * Referenced by: '<S8>/HIL Initialize'
   */
  0.0,

  /* Expression: watchdog_other_outputs
   * Referenced by: '<S8>/HIL Initialize'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<S8>/Constant1'
   */
  1.0,

  /* Expression: 25
   * Referenced by: '<S8>/Constant2'
   */
  25.0,

  /* Expression: 1
   * Referenced by: '<S8>/Constant3'
   */
  1.0,

  /* Expression: 100
   * Referenced by: '<S8>/Constant4'
   */
  100.0,

  /* Expression: 1
   * Referenced by: '<S8>/Constant5'
   */
  1.0,

  /* Expression: 100
   * Referenced by: '<S8>/Constant6'
   */
  100.0,

  /* Expression: 2
   * Referenced by: '<S26>/Constant'
   */
  2.0,

  /* Expression: modulus
   * Referenced by: '<S8>/Unwrap 2^24'
   */
  1.6777215E+7,

  /* Expression: 0
   * Referenced by: '<S26>/Integrator2'
   */
  0.0,

  /* Expression: 2
   * Referenced by: '<S27>/Constant'
   */
  2.0,

  /* Expression: 0
   * Referenced by: '<S27>/Integrator2'
   */
  0.0,

  /* Expression: 2
   * Referenced by: '<S28>/Constant'
   */
  2.0,

  /* Expression: 0
   * Referenced by: '<S28>/Integrator2'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<Root>/Rate Transition'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<S13>/Pulsing Light'
   */
  1.0,

  /* Expression: 0.5/qc_get_step_size
   * Referenced by: '<S13>/Pulsing Light'
   */
  300.0,

  /* Expression: 0.5/2/qc_get_step_size
   * Referenced by: '<S13>/Pulsing Light'
   */
  150.0,

  /* Expression: 0
   * Referenced by: '<S13>/Pulsing Light'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<S13>/Constant1'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<Root>/Rate Transition1'
   */
  0.0,

  /* Expression: 0.4
   * Referenced by: '<S7>/Constant'
   */
  0.4,

  /* Expression: 1
   * Referenced by: '<S7>/Constant2'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<S21>/Switch'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<S21>/Rate Limiter'
   */
  1.0,

  /* Expression: -Inf
   * Referenced by: '<S21>/Rate Limiter'
   */
  -INFINITY,

  /* Expression: 0
   * Referenced by: '<S21>/Rate Limiter'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<Root>/Constant1'
   */
  1.0,

  /* Expression: 0.5
   * Referenced by: '<S20>/Switch'
   */
  0.5,

  /* Expression: 5
   * Referenced by: '<S18>/command saturation'
   */
  5.0,

  /* Expression: -5
   * Referenced by: '<S18>/command saturation'
   */
  -5.0,

  /* Expression: 0.1
   * Referenced by: '<S18>/Kff  (% // m//s)'
   */
  0.1,

  /* Expression: 1/720/4
   * Referenced by: '<S9>/counts to rotations'
   */
  0.00034722222222222224,

  /* Expression: (13*19)/(70*37)
   * Referenced by: '<S9>/gear ratios'
   */
  0.095366795366795362,

  /* Expression: 2*pi
   * Referenced by: '<S9>/rot//s to rad//s'
   */
  6.2831853071795862,

  /* Expression: 0.0342
   * Referenced by: '<S9>/wheel radius'
   */
  0.0342,

  /* Expression: 0.3
   * Referenced by: '<S18>/Kp (% // m//s)'
   */
  0.3,

  /* Expression: 0
   * Referenced by: '<S18>/Integrator1'
   */
  0.0,

  /* Expression: 0.4
   * Referenced by: '<S18>/Integrator1'
   */
  0.4,

  /* Expression: -0.4
   * Referenced by: '<S18>/Integrator1'
   */
  -0.4,

  /* Expression: 0
   * Referenced by: '<S13>/Memory'
   */
  0.0,

  /* Expression: 5
   * Referenced by: '<S13>/Constant2'
   */
  5.0,

  /* Expression: i_trigger_type
   * Referenced by: '<S34>/one_shot_block'
   */
  2.0,

  /* Expression: i_redun_pulse
   * Referenced by: '<S34>/one_shot_block'
   */
  1.0,

  /* Expression: 0
   * Referenced by: '<S13>/Constant'
   */
  0.0,

  /* Expression: 0.5
   * Referenced by: '<S34>/Switch'
   */
  0.5,

  /* Expression: 1
   * Referenced by: '<S8>/Gain'
   */
  1.0,

  /* Expression: 0.0
   * Referenced by: '<S8>/Steering Bias'
   */
  0.0,

  /* Expression: 1
   * Referenced by: '<S8>/direction convention'
   */
  1.0,

  /* Expression: 0.20
   * Referenced by: '<S8>/command saturation'
   */
  0.2,

  /* Expression: -0.20
   * Referenced by: '<S8>/command saturation'
   */
  -0.2,

  /* Expression: 80
   * Referenced by: '<Root>/Gain'
   */
  80.0,

  /* Expression: 220
   * Referenced by: '<Root>/Bias1'
   */
  220.0,

  /* Expression: 300
   * Referenced by: '<Root>/Saturation'
   */
  300.0,

  /* Expression: 220
   * Referenced by: '<Root>/Saturation'
   */
  220.0,

  /* Expression: 1
   * Referenced by: '<S18>/Ki (% // m)  '
   */
  1.0,

  /* Expression: qc_get_step_size
   * Referenced by: '<S14>/Constant'
   */
  0.0016666666666666668,

  /* Expression: 0
   * Referenced by: '<Root>/Rate Transition4'
   */
  0.0,

  /* Expression: 0
   * Referenced by: '<Root>/Rate Transition3'
   */
  0.0,

  /* Expression: d_brightness
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_contrast
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_hue
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_saturation
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_sharpness
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_gamma
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_coloreffect
   * Referenced by: '<S10>/Video Capture'
   */
  0.0,

  /* Expression: d_whitebalance
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_backlightcompensation
   * Referenced by: '<S10>/Video Capture'
   */
  0.0,

  /* Expression: d_gain
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_pan
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_tilt
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_roll
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_zoom
   * Referenced by: '<S10>/Video Capture'
   */
  0.0,

  /* Expression: d_exposure
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_iris
   * Referenced by: '<S10>/Video Capture'
   */
  50.0,

  /* Expression: d_focus
   * Referenced by: '<S10>/Video Capture'
   */
  0.0,

  /* Expression: d_mirror
   * Referenced by: '<S10>/Video Capture'
   */
  0.0,

  /* Expression: min_pixel
   * Referenced by: '<S12>/Image Transform'
   */
  0.0,

  /* Expression: max_pixel
   * Referenced by: '<S12>/Image Transform'
   */
  4000.0,

  /* Expression: contour_depth
   * Referenced by: '<S12>/Image Transform'
   */
  1.0,

  /* Expression: focal_length
   * Referenced by: '<S12>/Image Transform'
   */
  308.0,

  /* Expression: extrapolated
   * Referenced by: '<S12>/Image Transform'
   */
  0.0,

  /* Expression: angle
   * Referenced by: '<S12>/Image Transform'
   */
  0.0,

  /* Expression: radial_coeffs
   * Referenced by: '<S12>/Image Transform'
   */
  { -0.3129, 0.0907 },

  /* Expression: 5
   * Referenced by: '<S21>/Hue Min'
   */
  5.0,

  /* Expression: 90
   * Referenced by: '<S21>/Hue Max'
   */
  90.0,

  /* Expression: 0.5
   * Referenced by: '<S29>/Gain'
   */
  0.5,

  /* Expression: 0.4
   * Referenced by: '<S29>/20%'
   */
  0.4,

  /* Expression: 0
   * Referenced by: '<S21>/Color Selecting Mean (0)'
   */
  0.0,

  /* Expression: 0.5
   * Referenced by: '<S29>/Gain1'
   */
  0.5,

  /* Expression: 1
   * Referenced by: '<S21>/Color Selecting Window (1)'
   */
  1.0,

  /* Expression: 255/360
   * Referenced by: '<S29>/Gain6'
   */
  0.70833333333333337,

  /* Expression: 65
   * Referenced by: '<S21>/Sat Min'
   */
  65.0,

  /* Expression: 200
   * Referenced by: '<S21>/Sat Max'
   */
  200.0,

  /* Expression: 0.5
   * Referenced by: '<S29>/Gain2'
   */
  0.5,

  /* Expression: 0.4
   * Referenced by: '<S29>/20%1'
   */
  0.4,

  /* Expression: 0
   * Referenced by: '<S21>/Color Mixing Mean (0)'
   */
  0.0,

  /* Expression: 0.5
   * Referenced by: '<S29>/Gain3'
   */
  0.5,

  /* Expression: 1
   * Referenced by: '<S21>/Color Mixing Window (1)'
   */
  1.0,

  /* Expression: 180
   * Referenced by: '<S21>/Val Min'
   */
  180.0,

  /* Expression: 255
   * Referenced by: '<S21>/Val Max'
   */
  255.0,

  /* Expression: 0.5
   * Referenced by: '<S29>/Gain4'
   */
  0.5,

  /* Expression: 0.4
   * Referenced by: '<S29>/20%2'
   */
  0.4,

  /* Expression: 0
   * Referenced by: '<S21>/Brightness Mean (0)'
   */
  0.0,

  /* Expression: 0.5
   * Referenced by: '<S29>/Gain5'
   */
  0.5,

  /* Expression: 1
   * Referenced by: '<S21>/Brightness Window (1)'
   */
  1.0,

  /* Expression: [255 255 255]
   * Referenced by: '<S29>/Saturation'
   */
  { 255.0, 255.0, 255.0 },

  /* Expression: [0 0 0]
   * Referenced by: '<S29>/Saturation'
   */
  { 0.0, 0.0, 0.0 },

  /* Expression: 255/360
   * Referenced by: '<S29>/Gain7'
   */
  0.70833333333333337,

  /* Expression: [255 255 255]
   * Referenced by: '<S29>/Saturation1'
   */
  { 255.0, 255.0, 255.0 },

  /* Expression: [0 0 0]
   * Referenced by: '<S29>/Saturation1'
   */
  { 0.0, 0.0, 0.0 },

  /* Expression: r_min
   * Referenced by: '<S12>/HSV Color Thresholding'
   */
  30.0,

  /* Expression: r_max
   * Referenced by: '<S12>/HSV Color Thresholding'
   */
  70.0,

  /* Expression: g_min
   * Referenced by: '<S12>/HSV Color Thresholding'
   */
  60.0,

  /* Expression: g_max
   * Referenced by: '<S12>/HSV Color Thresholding'
   */
  100.0,

  /* Expression: b_min
   * Referenced by: '<S12>/HSV Color Thresholding'
   */
  40.0,

  /* Expression: b_max
   * Referenced by: '<S12>/HSV Color Thresholding'
   */
  80.0,

  /* Expression: 1
   * Referenced by: '<S19>/Constant4'
   */
  1.0,

  /* Expression: 0.33
   * Referenced by: '<S19>/Gain'
   */
  0.33,

  /* Expression: 1
   * Referenced by: '<S19>/Bias'
   */
  1.0,

  /* Expression: 0.75
   * Referenced by: '<S19>/Constant3'
   */
  0.75,

  /* Expression: 0.5
   * Referenced by: '<S19>/m_n'
   */
  0.5,

  /* Expression: 32.42836929607358
   * Referenced by: '<S21>/Distane To Lane (0)'
   */
  32.428369296073583,

  /* Expression: 0.5
   * Referenced by: '<S19>/Steering Saturation1'
   */
  0.5,

  /* Expression: -0.5
   * Referenced by: '<S19>/Steering Saturation1'
   */
  -0.5,

  /* Expression: d_brightness
   * Referenced by: '<S11>/Depth'
   */
  50.0,

  /* Expression: d_contrast
   * Referenced by: '<S11>/Depth'
   */
  50.0,

  /* Expression: d_hue
   * Referenced by: '<S11>/Depth'
   */
  50.0,

  /* Expression: d_saturation
   * Referenced by: '<S11>/Depth'
   */
  50.0,

  /* Expression: d_sharpness
   * Referenced by: '<S11>/Depth'
   */
  50.0,

  /* Expression: d_gamma
   * Referenced by: '<S11>/Depth'
   */
  50.0,

  /* Expression: d_whitebalance
   * Referenced by: '<S11>/Depth'
   */
  50.0,

  /* Expression: d_backlightcompensation
   * Referenced by: '<S11>/Depth'
   */
  50.0,

  /* Expression: d_gain
   * Referenced by: '<S11>/Depth'
   */
  50.0,

  /* Expression: d_exposure
   * Referenced by: '<S11>/Depth'
   */
  30.0,

  /* Expression: emitter
   * Referenced by: '<S11>/Depth'
   */
  1.0,

  /* Expression: 0.6
   * Referenced by: '<S21>/Stopping Distance (m)'
   */
  0.6,

  /* Expression: 0
   * Referenced by: '<S21>/Stopping Distance Offset (0)'
   */
  0.0,

  /* Computed Parameter: HILInitialize_DOWatchdog
   * Referenced by: '<S8>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_EIInitial
   * Referenced by: '<S8>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POModes
   * Referenced by: '<S8>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POConfiguration
   * Referenced by: '<S8>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POAlignment
   * Referenced by: '<S8>/HIL Initialize'
   */
  0,

  /* Computed Parameter: HILInitialize_POPolarity
   * Referenced by: '<S8>/HIL Initialize'
   */
  1,

  /* Computed Parameter: ImageTransform_PrPoint
   * Referenced by: '<S12>/Image Transform'
   */
  { 334, 262 },

  /* Computed Parameter: ImageTransform_Interpolation
   * Referenced by: '<S12>/Image Transform'
   */
  1,

  /* Computed Parameter: ImageTransform_Origin
   * Referenced by: '<S12>/Image Transform'
   */
  { 320, 240 },

  /* Computed Parameter: ImageTransform_OOrigin
   * Referenced by: '<S12>/Image Transform'
   */
  { 320, 240 },

  /* Computed Parameter: Gain_Gain_g
   * Referenced by: '<S17>/Gain'
   */
  63.75F,

  /* Computed Parameter: HILInitialize_AIChannels
   * Referenced by: '<S8>/HIL Initialize'
   */
  { 0U, 1U, 2U, 3U, 4U },

  /* Computed Parameter: HILInitialize_DIChannels
   * Referenced by: '<S8>/HIL Initialize'
   */
  { 0U, 1U, 2U, 3U, 4U, 5U, 6U, 7U, 8U, 9U, 10U, 11U, 12U, 13U, 14U },

  /* Computed Parameter: HILInitialize_DOChannels
   * Referenced by: '<S8>/HIL Initialize'
   */
  { 11U, 12U, 13U, 14U, 15U, 16U, 17U, 18U, 19U, 20U, 21U, 22U, 23U, 24U, 25U,
    26U },

  /* Computed Parameter: HILInitialize_EIChannels
   * Referenced by: '<S8>/HIL Initialize'
   */
  { 0U, 1U, 2U },

  /* Computed Parameter: HILInitialize_EIQuadrature
   * Referenced by: '<S8>/HIL Initialize'
   */
  4U,

  /* Computed Parameter: HILInitialize_POChannels
   * Referenced by: '<S8>/HIL Initialize'
   */
  { 0U, 1U },

  /* Computed Parameter: HILInitialize_OOChannels
   * Referenced by: '<S8>/HIL Initialize'
   */
  { 1000U, 11000U },

  /* Computed Parameter: ImageTransform_ColorTheme
   * Referenced by: '<S12>/Image Transform'
   */
  1U,

  /* Computed Parameter: ImageCompress_Quality
   * Referenced by: '<S23>/Image Compress'
   */
  50U,

  /* Computed Parameter: ImageCompress_Quality_p
   * Referenced by: '<S24>/Image Compress'
   */
  50U,

  /* Computed Parameter: Depth_Preset
   * Referenced by: '<S11>/Depth'
   */
  21U,

  /* Computed Parameter: ImageCompress_Quality_k
   * Referenced by: '<S22>/Image Compress'
   */
  50U,

  /* Computed Parameter: HILInitialize_Active
   * Referenced by: '<S8>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_AOTerminate
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AOExit
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOTerminate
   * Referenced by: '<S8>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_DOExit
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_POTerminate
   * Referenced by: '<S8>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_POExit
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_CKPStart
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_CKPEnter
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_CKStart
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_CKEnter
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AIPStart
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AIPEnter
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AOPStart
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AOPEnter
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AOStart
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AOEnter
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_AOReset
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOPStart
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOPEnter
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOStart
   * Referenced by: '<S8>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_DOEnter
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOReset
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_EIPStart
   * Referenced by: '<S8>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_EIPEnter
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_EIStart
   * Referenced by: '<S8>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_EIEnter
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_POPStart
   * Referenced by: '<S8>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_POPEnter
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_POStart
   * Referenced by: '<S8>/HIL Initialize'
   */
  true,

  /* Computed Parameter: HILInitialize_POEnter
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_POReset
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_OOReset
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOFinal
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILInitialize_DOInitial
   * Referenced by: '<S8>/HIL Initialize'
   */
  false,

  /* Computed Parameter: HILRead_Active
   * Referenced by: '<S8>/HIL Read'
   */
  true,

  /* Computed Parameter: SteadyLight_Value
   * Referenced by: '<S13>/Steady Light'
   */
  true,

  /* Computed Parameter: LightOff_Value
   * Referenced by: '<S13>/Light Off'
   */
  false,

  /* Computed Parameter: HILWrite_Active
   * Referenced by: '<S8>/HIL Write'
   */
  false,

  /* Computed Parameter: VideoDisplay_UseHardware
   * Referenced by: '<S23>/Video Display'
   */
  true,

  /* Computed Parameter: VideoDisplay_UseHardware_b
   * Referenced by: '<S24>/Video Display'
   */
  true,

  /* Computed Parameter: VideoDisplay_UseHardware_c
   * Referenced by: '<S22>/Video Display'
   */
  true,

  /* Computed Parameter: imageDepthForDisplay_Y0
   * Referenced by: '<S17>/imageDepthForDisplay'
   */
  0U,

  /* Computed Parameter: uArm0Disarm1_CurrentSetting
   * Referenced by: '<S21>/1 - Arm, 0 - Disarm1'
   */
  1U,

  /* Computed Parameter: uRight0Left_CurrentSetting
   * Referenced by: '<S21>/1 - Right, 0 - Left'
   */
  0U,

  /* Computed Parameter: ManualSwitch_CurrentSetting
   * Referenced by: '<S19>/Manual Switch'
   */
  0U
};
