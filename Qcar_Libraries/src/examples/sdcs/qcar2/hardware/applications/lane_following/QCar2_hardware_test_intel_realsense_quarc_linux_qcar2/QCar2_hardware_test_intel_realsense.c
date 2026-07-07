/*
 * QCar2_hardware_test_intel_realsense.c
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
#include "rtwtypes.h"
#include "QCar2_hardware_test_intel_realsense_private.h"
#include <string.h>
#include "QCar2_hardware_test_intel_realsense_dt.h"

/* Block signals (default storage) */
B_QCar2_hardware_test_intel_r_T QCar2_hardware_test_intel_rea_B;

/* Block states (default storage) */
DW_QCar2_hardware_test_intel__T QCar2_hardware_test_intel_re_DW;

/* Real-time model */
static RT_MODEL_QCar2_hardware_test__T QCar2_hardware_test_intel_re_M_;
RT_MODEL_QCar2_hardware_test__T *const QCar2_hardware_test_intel_re_M =
  &QCar2_hardware_test_intel_re_M_;

/* Model output function */
void QCar2_hardware_test_intel_realsense_output(void)
{
  /* S-Function (video3d_initialize_block): '<Root>/Video3D Initialize' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Video3D Initialize (video3d_initialize_block) */
  {
  }

  /* S-Function (video3d_capture_block): '<Root>/Depth' */
  /* S-Function Block: QCar2_hardware_test_intel_realsense/Depth (video3d_capture_block) */
  {
    t_video3d_frame frame;
    t_error result;
    result = video3d_stream_get_frame
      (QCar2_hardware_test_intel_re_DW.Depth_Stream, &frame);
    if (result >= 0) {
      result = video3d_frame_get_meters(frame,
        &QCar2_hardware_test_intel_rea_B.Depth_o1[0]);

      /* Release the frame to free up its resources */
      video3d_frame_release(frame);
    }

    if (result < 0 && result != -QERR_WOULD_BLOCK) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
    }
  }

  /* S-Function (image_transform_block): '<Root>/Image Transform' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Image Transform (image_transform_block) */
  {
    t_error result;
    result = image_grayscale_to_colorized_rgb_single
      (&QCar2_hardware_test_intel_rea_B.Depth_o1[0], 1280, 720,
       QCar2_hardware_test_intel_rea_P.ImageTransform_min_pixel,
       QCar2_hardware_test_intel_rea_P.ImageTransform_max_pixel,
       QCar2_hardware_test_intel_re_DW.ImageTransform_AlgHandle,
       &QCar2_hardware_test_intel_rea_B.ImageTransform[0]);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
    }
  }

  /* S-Function (image_compress_block): '<S1>/Image Compress' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Colorized Depth Image/Image Compress (image_compress_block) */
  {
    t_error result = 0;
    size_t image_size = 0;
    result = qjpeg_compress_start
      (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress, true);
    if (result == 0) {
      result = qjpeg_compress_write_image_uint8
        (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress,
         &QCar2_hardware_test_intel_rea_B.ImageTransform[0]);
      qjpeg_compress_stop(QCar2_hardware_test_intel_re_DW.ImageCompress_Compress);

      /* Get the final size of the compressed image */
      if (result >= 0) {
        result = qjpeg_compress_get_fixed_memory_destination_size
          (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress, &image_size);
      }
    }

    /* Set the dimensions of the output signal based on the size of the compressed image */
    QCar2_hardware_test_intel_re_DW.ImageCompress_DIMS1 = (int) image_size;
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
    }
  }

  /* S-Function (channel_block): '<S1>/Channel' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Colorized Depth Image/Channel (channel_block) */
  {
    if (rtExtModeQuarcIsConnected()) {
      struct channel_info {
        t_channel_header header;
      } info;

      size_t width = 1;
      QCar2_hardware_test_intel_rea_B.Channel = CHANNEL_0;
      info.header.data_type_id = 3;
      info.header.channel = 0;
      info.header.flags = CHANNEL_FLAG_VARIABLE_SIZE;
      info.header.num_dimensions = 1;
      width *= QCar2_hardware_test_intel_re_DW.ImageCompress_DIMS1;
      info.header.dimension[0] =
        QCar2_hardware_test_intel_re_DW.ImageCompress_DIMS1;
      channel_fifo_add((t_channel_fifo)
                       QCar2_hardware_test_intel_re_DW.Channel_PWORK.Fifo,
                       &info.header,
                       &QCar2_hardware_test_intel_rea_B.ImageCompress[0], width *
                       sizeof(uint8_T));
    }
  }

  /* S-Function (video3d_capture_block): '<Root>/RGB' */
  /* S-Function Block: QCar2_hardware_test_intel_realsense/RGB (video3d_capture_block) */
  {
    t_video3d_frame frame;
    t_error result;
    result = video3d_stream_get_frame(QCar2_hardware_test_intel_re_DW.RGB_Stream,
      &frame);
    if (result >= 0) {
      result = video3d_frame_get_data(frame,
        &QCar2_hardware_test_intel_rea_B.RGB_o1[0]);

      /* Release the frame to free up its resources */
      video3d_frame_release(frame);
    }

    if (result < 0 && result != -QERR_WOULD_BLOCK) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
    }
  }

  /* S-Function (image_compress_block): '<S4>/Image Compress' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/RGB Image/Image Compress (image_compress_block) */
  {
    t_error result = 0;
    size_t image_size = 0;
    result = qjpeg_compress_start
      (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress_g, true);
    if (result == 0) {
      result = qjpeg_compress_write_image_uint8
        (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress_g,
         &QCar2_hardware_test_intel_rea_B.RGB_o1[0]);
      qjpeg_compress_stop
        (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress_g);

      /* Get the final size of the compressed image */
      if (result >= 0) {
        result = qjpeg_compress_get_fixed_memory_destination_size
          (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress_g, &image_size);
      }
    }

    /* Set the dimensions of the output signal based on the size of the compressed image */
    QCar2_hardware_test_intel_re_DW.ImageCompress_DIMS1_h = (int) image_size;
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
    }
  }

  /* S-Function (channel_block): '<S4>/Channel' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/RGB Image/Channel (channel_block) */
  {
    if (rtExtModeQuarcIsConnected()) {
      struct channel_info {
        t_channel_header header;
      } info;

      size_t width = 1;
      QCar2_hardware_test_intel_rea_B.Channel_a = CHANNEL_1;
      info.header.data_type_id = 3;
      info.header.channel = 1;
      info.header.flags = CHANNEL_FLAG_VARIABLE_SIZE;
      info.header.num_dimensions = 1;
      width *= QCar2_hardware_test_intel_re_DW.ImageCompress_DIMS1_h;
      info.header.dimension[0] =
        QCar2_hardware_test_intel_re_DW.ImageCompress_DIMS1_h;
      channel_fifo_add((t_channel_fifo)
                       QCar2_hardware_test_intel_re_DW.Channel_PWORK_i.Fifo,
                       &info.header,
                       &QCar2_hardware_test_intel_rea_B.ImageCompress_l[0],
                       width * sizeof(uint8_T));
    }
  }
}

/* Model update function */
void QCar2_hardware_test_intel_realsense_update(void)
{
  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++QCar2_hardware_test_intel_re_M->Timing.clockTick0)) {
    ++QCar2_hardware_test_intel_re_M->Timing.clockTickH0;
  }

  QCar2_hardware_test_intel_re_M->Timing.t[0] =
    QCar2_hardware_test_intel_re_M->Timing.clockTick0 *
    QCar2_hardware_test_intel_re_M->Timing.stepSize0 +
    QCar2_hardware_test_intel_re_M->Timing.clockTickH0 *
    QCar2_hardware_test_intel_re_M->Timing.stepSize0 * 4294967296.0;
}

/* Model initialize function */
void QCar2_hardware_test_intel_realsense_initialize(void)
{
  /* Start for S-Function (video3d_initialize_block): '<Root>/Video3D Initialize' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Video3D Initialize (video3d_initialize_block) */
  {
    t_error result;
    result = video3d_open("0",
                          &QCar2_hardware_test_intel_re_DW.Video3DInitialize_Video3D);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
      return;
    }
  }

  /* Start for S-Function (video3d_capture_block): '<Root>/Depth' */
  {
    t_error result;
    result = video3d_stream_open
      (QCar2_hardware_test_intel_re_DW.Video3DInitialize_Video3D,
       VIDEO3D_STREAM_DEPTH, QCar2_hardware_test_intel_rea_P.Depth_stream_index,
       30.0, 1280, 720,
       IMAGE_FORMAT_COL_MAJOR_GRAYSCALE, IMAGE_DATA_TYPE_SINGLE,
       &QCar2_hardware_test_intel_re_DW.Depth_Stream);
    if (result >= 0) {
      t_video3d_property config_properties[4];
      t_double config_values[4];
      t_uint num_config_properties = 0;
      if (QCar2_hardware_test_intel_rea_P.Depth_Preset != 21) {
        config_properties[num_config_properties] =
          VIDEO3D_PROPERTY_VISUAL_PRESET;
        config_values[num_config_properties] = (t_video3d_visual_preset)
          (QCar2_hardware_test_intel_rea_P.Depth_Preset - 1);
        num_config_properties++;
      }

      if (QCar2_hardware_test_intel_rea_P.Depth_Emitter != 3) {
        config_properties[num_config_properties] =
          VIDEO3D_PROPERTY_ENABLE_EMITTER;
        config_values[num_config_properties] =
          (QCar2_hardware_test_intel_rea_P.Depth_Emitter == 1) ? 1.0 : 0.0;
        num_config_properties++;
      }

      config_properties[num_config_properties] =
        VIDEO3D_PROPERTY_ENABLE_AUTO_WHITE_BALANCE;
      config_values[num_config_properties] = 1.0;
      num_config_properties++;
      config_properties[num_config_properties] =
        VIDEO3D_PROPERTY_ENABLE_AUTO_EXPOSURE;
      config_values[num_config_properties] = 1.0;
      num_config_properties++;
      if (num_config_properties > 0) {
        video3d_stream_set_properties
          (QCar2_hardware_test_intel_re_DW.Depth_Stream, config_properties,
           num_config_properties, config_values);
      }
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
    }
  }

  /* Start for S-Function (image_transform_block): '<Root>/Image Transform' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Image Transform (image_transform_block) */
  {
    t_error result;
    result = image_colorization_open((t_colorization_theme)
      (QCar2_hardware_test_intel_rea_P.ImageTransform_ColorTheme - 1),
      &QCar2_hardware_test_intel_re_DW.ImageTransform_AlgHandle);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
    }
  }

  /* Start for S-Function (image_compress_block): '<S1>/Image Compress' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Colorized Depth Image/Image Compress (image_compress_block) */
  {
    t_error result = qjpeg_compress_open
      (&QCar2_hardware_test_intel_re_DW.ImageCompress_Compress);
    if (result == 0) {
      do {
        result = qjpeg_compress_set_image_properties
          (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress, 1280, 720,
           COLOR_SPACE_RGB, IMAGE_DATA_TYPE_UINT8);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_quality
          (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress,
           QCar2_hardware_test_intel_rea_P.ImageCompress_Quality);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_fixed_memory_destination
          (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress,
           &QCar2_hardware_test_intel_rea_B.ImageCompress[0], 2764800);
        if (result < 0) {
          break;
        }
      } while (false);

      if (result < 0) {
        qjpeg_compress_close
          (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress);
      }
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
    }
  }

  /* Start for S-Function (channel_block): '<S1>/Channel' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Colorized Depth Image/Channel (channel_block) */
  {
    t_error result;
    result = channel_fifo_create(0, sizeof(uint8_T), 1, 2764800, 1,
      (t_channel_fifo *) &QCar2_hardware_test_intel_re_DW.Channel_PWORK.Fifo);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
    }
  }

  /* Start for S-Function (video3d_capture_block): '<Root>/RGB' */
  {
    t_error result;
    result = video3d_stream_open
      (QCar2_hardware_test_intel_re_DW.Video3DInitialize_Video3D,
       VIDEO3D_STREAM_COLOR, QCar2_hardware_test_intel_rea_P.RGB_stream_index,
       30.0, 1280, 720,
       IMAGE_FORMAT_COL_MAJOR_PLANAR_RGB, IMAGE_DATA_TYPE_UINT8,
       &QCar2_hardware_test_intel_re_DW.RGB_Stream);
    if (result >= 0) {
      t_video3d_property config_properties[4];
      t_double config_values[4];
      t_uint num_config_properties = 0;
      if (QCar2_hardware_test_intel_rea_P.RGB_Preset != 21) {
        config_properties[num_config_properties] =
          VIDEO3D_PROPERTY_VISUAL_PRESET;
        config_values[num_config_properties] = (t_video3d_visual_preset)
          (QCar2_hardware_test_intel_rea_P.RGB_Preset - 1);
        num_config_properties++;
      }

      if (QCar2_hardware_test_intel_rea_P.RGB_Emitter != 3) {
        config_properties[num_config_properties] =
          VIDEO3D_PROPERTY_ENABLE_EMITTER;
        config_values[num_config_properties] =
          (QCar2_hardware_test_intel_rea_P.RGB_Emitter == 1) ? 1.0 : 0.0;
        num_config_properties++;
      }

      config_properties[num_config_properties] =
        VIDEO3D_PROPERTY_ENABLE_AUTO_WHITE_BALANCE;
      config_values[num_config_properties] = 1.0;
      num_config_properties++;
      config_properties[num_config_properties] =
        VIDEO3D_PROPERTY_ENABLE_AUTO_EXPOSURE;
      config_values[num_config_properties] = 1.0;
      num_config_properties++;
      if (num_config_properties > 0) {
        video3d_stream_set_properties(QCar2_hardware_test_intel_re_DW.RGB_Stream,
          config_properties, num_config_properties, config_values);
      }
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
    }
  }

  /* Start for S-Function (image_compress_block): '<S4>/Image Compress' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/RGB Image/Image Compress (image_compress_block) */
  {
    t_error result = qjpeg_compress_open
      (&QCar2_hardware_test_intel_re_DW.ImageCompress_Compress_g);
    if (result == 0) {
      do {
        result = qjpeg_compress_set_image_properties
          (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress_g, 1280, 720,
           COLOR_SPACE_RGB, IMAGE_DATA_TYPE_UINT8);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_quality
          (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress_g,
           QCar2_hardware_test_intel_rea_P.ImageCompress_Quality_n);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_fixed_memory_destination
          (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress_g,
           &QCar2_hardware_test_intel_rea_B.ImageCompress_l[0], 2764800);
        if (result < 0) {
          break;
        }
      } while (false);

      if (result < 0) {
        qjpeg_compress_close
          (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress_g);
      }
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
    }
  }

  /* Start for S-Function (channel_block): '<S4>/Channel' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/RGB Image/Channel (channel_block) */
  {
    t_error result;
    result = channel_fifo_create(1, sizeof(uint8_T), 1, 2764800, 1,
      (t_channel_fifo *) &QCar2_hardware_test_intel_re_DW.Channel_PWORK_i.Fifo);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
    }
  }

  /* InitializeConditions for S-Function (video3d_initialize_block): '<Root>/Video3D Initialize' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Video3D Initialize (video3d_initialize_block) */
  {
    if (rtmIsFirstInitCond(QCar2_hardware_test_intel_re_M)) {
      t_error result = video3d_start_streaming
        (QCar2_hardware_test_intel_re_DW.Video3DInitialize_Video3D);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_hardware_test_intel_re_M, _rt_error_message);
        return;
      }
    }
  }

  /* InitializeConditions for S-Function (video3d_capture_block): '<Root>/Depth' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Depth (video3d_capture_block) */
  {
    if (rtmIsFirstInitCond(QCar2_hardware_test_intel_re_M)) {
    }
  }

  /* InitializeConditions for S-Function (video3d_capture_block): '<Root>/RGB' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/RGB (video3d_capture_block) */
  {
    if (rtmIsFirstInitCond(QCar2_hardware_test_intel_re_M)) {
    }
  }

  /* set "at time zero" to false */
  if (rtmIsFirstInitCond(QCar2_hardware_test_intel_re_M)) {
    rtmSetFirstInitCond(QCar2_hardware_test_intel_re_M, 0);
  }
}

/* Model terminate function */
void QCar2_hardware_test_intel_realsense_terminate(void)
{
  /* Terminate for S-Function (video3d_initialize_block): '<Root>/Video3D Initialize' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Video3D Initialize (video3d_initialize_block) */
  {
    video3d_stop_streaming
      (QCar2_hardware_test_intel_re_DW.Video3DInitialize_Video3D);
    video3d_close(QCar2_hardware_test_intel_re_DW.Video3DInitialize_Video3D);
  }

  /* Terminate for S-Function (image_transform_block): '<Root>/Image Transform' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Image Transform (image_transform_block) */
  {
    image_colorization_close
      (QCar2_hardware_test_intel_re_DW.ImageTransform_AlgHandle);
  }

  /* Terminate for S-Function (image_compress_block): '<S1>/Image Compress' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Colorized Depth Image/Image Compress (image_compress_block) */
  {
    qjpeg_compress_close(QCar2_hardware_test_intel_re_DW.ImageCompress_Compress);
    QCar2_hardware_test_intel_re_DW.ImageCompress_Compress = NULL;
  }

  /* Terminate for S-Function (channel_block): '<S1>/Channel' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/Colorized Depth Image/Channel (channel_block) */
  {
    channel_fifo_destroy((t_channel_fifo)
                         QCar2_hardware_test_intel_re_DW.Channel_PWORK.Fifo);
    QCar2_hardware_test_intel_re_DW.Channel_PWORK.Fifo = NULL;
  }

  /* Terminate for S-Function (image_compress_block): '<S4>/Image Compress' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/RGB Image/Image Compress (image_compress_block) */
  {
    qjpeg_compress_close
      (QCar2_hardware_test_intel_re_DW.ImageCompress_Compress_g);
    QCar2_hardware_test_intel_re_DW.ImageCompress_Compress_g = NULL;
  }

  /* Terminate for S-Function (channel_block): '<S4>/Channel' */

  /* S-Function Block: QCar2_hardware_test_intel_realsense/RGB Image/Channel (channel_block) */
  {
    channel_fifo_destroy((t_channel_fifo)
                         QCar2_hardware_test_intel_re_DW.Channel_PWORK_i.Fifo);
    QCar2_hardware_test_intel_re_DW.Channel_PWORK_i.Fifo = NULL;
  }
}

/*========================================================================*
 * Start of Classic call interface                                        *
 *========================================================================*/
void MdlOutputs(int_T tid)
{
  QCar2_hardware_test_intel_realsense_output();
  UNUSED_PARAMETER(tid);
}

void MdlUpdate(int_T tid)
{
  QCar2_hardware_test_intel_realsense_update();
  UNUSED_PARAMETER(tid);
}

void MdlInitializeSizes(void)
{
}

void MdlInitializeSampleTimes(void)
{
}

void MdlInitialize(void)
{
}

void MdlStart(void)
{
  QCar2_hardware_test_intel_realsense_initialize();
}

void MdlTerminate(void)
{
  QCar2_hardware_test_intel_realsense_terminate();
}

/* Registration function */
RT_MODEL_QCar2_hardware_test__T *QCar2_hardware_test_intel_realsense(void)
{
  /* Registration code */

  /* initialize real-time model */
  (void) memset((void *)QCar2_hardware_test_intel_re_M, 0,
                sizeof(RT_MODEL_QCar2_hardware_test__T));

  /* Initialize timing info */
  {
    int_T *mdlTsMap =
      QCar2_hardware_test_intel_re_M->Timing.sampleTimeTaskIDArray;
    mdlTsMap[0] = 0;
    QCar2_hardware_test_intel_re_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
    QCar2_hardware_test_intel_re_M->Timing.sampleTimes =
      (&QCar2_hardware_test_intel_re_M->Timing.sampleTimesArray[0]);
    QCar2_hardware_test_intel_re_M->Timing.offsetTimes =
      (&QCar2_hardware_test_intel_re_M->Timing.offsetTimesArray[0]);

    /* task periods */
    QCar2_hardware_test_intel_re_M->Timing.sampleTimes[0] =
      (0.033333333333333333);

    /* task offsets */
    QCar2_hardware_test_intel_re_M->Timing.offsetTimes[0] = (0.0);
  }

  rtmSetTPtr(QCar2_hardware_test_intel_re_M,
             &QCar2_hardware_test_intel_re_M->Timing.tArray[0]);

  {
    int_T *mdlSampleHits = QCar2_hardware_test_intel_re_M->Timing.sampleHitArray;
    mdlSampleHits[0] = 1;
    QCar2_hardware_test_intel_re_M->Timing.sampleHits = (&mdlSampleHits[0]);
  }

  rtmSetTFinal(QCar2_hardware_test_intel_re_M, -1);
  QCar2_hardware_test_intel_re_M->Timing.stepSize0 = 0.033333333333333333;
  rtmSetFirstInitCond(QCar2_hardware_test_intel_re_M, 1);

  /* External mode info */
  QCar2_hardware_test_intel_re_M->Sizes.checksums[0] = (1812130633U);
  QCar2_hardware_test_intel_re_M->Sizes.checksums[1] = (435013428U);
  QCar2_hardware_test_intel_re_M->Sizes.checksums[2] = (656485492U);
  QCar2_hardware_test_intel_re_M->Sizes.checksums[3] = (2739294561U);

  {
    static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE;
    static RTWExtModeInfo rt_ExtModeInfo;
    static const sysRanDType *systemRan[1];
    QCar2_hardware_test_intel_re_M->extModeInfo = (&rt_ExtModeInfo);
    rteiSetSubSystemActiveVectorAddresses(&rt_ExtModeInfo, systemRan);
    systemRan[0] = &rtAlwaysEnabled;
    rteiSetModelMappingInfoPtr(QCar2_hardware_test_intel_re_M->extModeInfo,
      &QCar2_hardware_test_intel_re_M->SpecialInfo.mappingInfo);
    rteiSetChecksumsPtr(QCar2_hardware_test_intel_re_M->extModeInfo,
                        QCar2_hardware_test_intel_re_M->Sizes.checksums);
    rteiSetTPtr(QCar2_hardware_test_intel_re_M->extModeInfo, rtmGetTPtr
                (QCar2_hardware_test_intel_re_M));
  }

  QCar2_hardware_test_intel_re_M->solverInfoPtr =
    (&QCar2_hardware_test_intel_re_M->solverInfo);
  QCar2_hardware_test_intel_re_M->Timing.stepSize = (0.033333333333333333);
  rtsiSetFixedStepSize(&QCar2_hardware_test_intel_re_M->solverInfo,
                       0.033333333333333333);
  rtsiSetSolverMode(&QCar2_hardware_test_intel_re_M->solverInfo,
                    SOLVER_MODE_SINGLETASKING);

  /* block I/O */
  QCar2_hardware_test_intel_re_M->blockIO = ((void *)
    &QCar2_hardware_test_intel_rea_B);
  (void) memset(((void *) &QCar2_hardware_test_intel_rea_B), 0,
                sizeof(B_QCar2_hardware_test_intel_r_T));

  {
    QCar2_hardware_test_intel_rea_B.Channel = CHANNEL_0;
    QCar2_hardware_test_intel_rea_B.Channel_a = CHANNEL_0;
  }

  /* parameters */
  QCar2_hardware_test_intel_re_M->defaultParam = ((real_T *)
    &QCar2_hardware_test_intel_rea_P);

  /* states (dwork) */
  QCar2_hardware_test_intel_re_M->dwork = ((void *)
    &QCar2_hardware_test_intel_re_DW);
  (void) memset((void *)&QCar2_hardware_test_intel_re_DW, 0,
                sizeof(DW_QCar2_hardware_test_intel__T));

  /* data type transition information */
  {
    static DataTypeTransInfo dtInfo;
    (void) memset((char_T *) &dtInfo, 0,
                  sizeof(dtInfo));
    QCar2_hardware_test_intel_re_M->SpecialInfo.mappingInfo = (&dtInfo);
    dtInfo.numDataTypes = 30;
    dtInfo.dataTypeSizes = &rtDataTypeSizes[0];
    dtInfo.dataTypeNames = &rtDataTypeNames[0];

    /* Block I/O transition table */
    dtInfo.BTransTable = &rtBTransTable;

    /* Parameters transition table */
    dtInfo.PTransTable = &rtPTransTable;
  }

  /* Initialize Sizes */
  QCar2_hardware_test_intel_re_M->Sizes.numContStates = (0);/* Number of continuous states */
  QCar2_hardware_test_intel_re_M->Sizes.numY = (0);/* Number of model outputs */
  QCar2_hardware_test_intel_re_M->Sizes.numU = (0);/* Number of model inputs */
  QCar2_hardware_test_intel_re_M->Sizes.sysDirFeedThru = (0);/* The model is not direct feedthrough */
  QCar2_hardware_test_intel_re_M->Sizes.numSampTimes = (1);/* Number of sample times */
  QCar2_hardware_test_intel_re_M->Sizes.numBlocks = (10);/* Number of blocks */
  QCar2_hardware_test_intel_re_M->Sizes.numBlockIO = (10);/* Number of block outputs */
  QCar2_hardware_test_intel_re_M->Sizes.numBlockPrms = (47);/* Sum of parameter "widths" */
  return QCar2_hardware_test_intel_re_M;
}

/*========================================================================*
 * End of Classic call interface                                          *
 *========================================================================*/
