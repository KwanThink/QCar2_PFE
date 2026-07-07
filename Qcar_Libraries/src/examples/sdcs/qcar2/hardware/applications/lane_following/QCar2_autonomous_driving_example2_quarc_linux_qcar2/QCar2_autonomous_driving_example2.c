/*
 * QCar2_autonomous_driving_example2.c
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
#include "rtwtypes.h"
#include "QCar2_autonomous_driving_example2_types.h"
#include <math.h>
#include "QCar2_autonomous_driving_example2_private.h"
#include <string.h>
#include "rt_nonfinite.h"
#include <stdlib.h>
#include <stddef.h>
#include "zero_crossing_types.h"
#include "QCar2_autonomous_driving_example2_dt.h"

/* Named constants for MATLAB Function: '<Root>/MATLAB Function' */
#define QCar2_autonomous_dri_CALL_EVENT (-1)
#define QCar2_autonomous_driving_period (0.0016666666666666668)

/* Block signals (default storage) */
B_QCar2_autonomous_driving_ex_T QCar2_autonomous_driving_exam_B;

/* Continuous states */
X_QCar2_autonomous_driving_ex_T QCar2_autonomous_driving_exam_X;

/* Disabled State Vector */
XDis_QCar2_autonomous_driving_T QCar2_autonomous_driving_e_XDis;

/* Block states (default storage) */
DW_QCar2_autonomous_driving_e_T QCar2_autonomous_driving_exa_DW;

/* Previous zero-crossings (trigger) states */
PrevZCX_QCar2_autonomous_driv_T QCar2_autonomous_drivin_PrevZCX;

/* Real-time model */
static RT_MODEL_QCar2_autonomous_dri_T QCar2_autonomous_driving_exa_M_;
RT_MODEL_QCar2_autonomous_dri_T *const QCar2_autonomous_driving_exa_M =
  &QCar2_autonomous_driving_exa_M_;

/* Forward declaration for local functions */
static void QCar2_autonomous_emxInit_real_T(emxArray_real_T_QCar2_autonom_T
  **pEmxArray, int32_T numDimensions);
static void QCar2__emxEnsureCapacity_real_T(emxArray_real_T_QCar2_autonom_T
  *emxArray, int32_T oldNumel);
static void QCar2_autonomous_emxFree_real_T(emxArray_real_T_QCar2_autonom_T
  **pEmxArray);
static void QCar2_autono_binary_expand_op_5(uint8_T in1[112614], int32_T in2,
  int32_T in3, const uint8_T in5_data[], const int32_T in5_size[2], const
  uint8_T in6[112614], int32_T in7, int32_T in8, const uint8_T in9[6279],
  int32_T in10, int32_T in11);
static void QCar2_autono_binary_expand_op_4(uint8_T in1[112614], int32_T in2,
  int32_T in3, const uint8_T in5_data[], const int32_T in5_size[2], const
  uint8_T in6[112614], int32_T in7, int32_T in8);
static void QCar2_autono_binary_expand_op_3(uint8_T in1[112614], int32_T in2,
  int32_T in3, const uint8_T in5_data[], const int32_T in5_size[2], const
  uint8_T in6[112614], int32_T in7, int32_T in8);
static void QCar2_autono_binary_expand_op_2(uint8_T in1[112614], int32_T in2,
  int32_T in3, const uint8_T in5_data[], const int32_T in5_size[2], const
  uint8_T in6_data[], const int32_T in6_size[3], int32_T in7, int32_T in8, const
  uint8_T in9[6279], int32_T in10, int32_T in11);
static void QCar2_autono_binary_expand_op_1(uint8_T in1[112614], int32_T in2,
  int32_T in3, const uint8_T in5_data[], const int32_T in5_size[2], const
  uint8_T in6_data[], const int32_T in6_size[3], int32_T in7, int32_T in8);
static void QCar2_autonomo_binary_expand_op(uint8_T in1[112614], int32_T in2,
  int32_T in3, const uint8_T in5_data[], const int32_T in5_size[2], const
  uint8_T in6_data[], const int32_T in6_size[3], int32_T in7, int32_T in8);
static void QCar2_autonomou_emxInit_int32_T(emxArray_int32_T_QCar2_autono_T
  **pEmxArray, int32_T numDimensions);
static void QCar2_emxEnsureCapacity_int32_T(emxArray_int32_T_QCar2_autono_T
  *emxArray, int32_T oldNumel);
static void QCar2_autonomous_drivi_eml_find(const boolean_T x_data[], const
  int32_T x_size[2], emxArray_int32_T_QCar2_autono_T *i,
  emxArray_int32_T_QCar2_autono_T *j);
static void QCar2_autonomou_emxFree_int32_T(emxArray_int32_T_QCar2_autono_T
  **pEmxArray);
static real_T QCar2_autonomous_driving__xnrm2(int32_T n, const
  emxArray_real_T_QCar2_autonom_T *x, int32_T ix0);
static void QCar2_autonomous_driving__xswap(int32_T n,
  emxArray_real_T_QCar2_autonom_T *x, int32_T ix0, int32_T iy0);
static void QCar2_autonomous_driving_xzlarf(int32_T m, int32_T n, int32_T iv0,
  real_T tau, emxArray_real_T_QCar2_autonom_T *C, int32_T ic0, int32_T ldc,
  real_T work[2]);
static void QCar2_autonomous_driving_e_qrpf(emxArray_real_T_QCar2_autonom_T *A,
  int32_T m, real_T tau_data[], int32_T jpvt[2]);
static void QCar2_autonomous_driving_xgeqp3(emxArray_real_T_QCar2_autonom_T *A,
  real_T tau_data[], int32_T *tau_size, int32_T jpvt[2]);
static void QCar2_autonomous_drivin_qrsolve(const
  emxArray_real_T_QCar2_autonom_T *A, const emxArray_real_T_QCar2_autonom_T *B,
  real_T Y[2], int32_T *rankA);
static void QCar2_autonomous_drivin_polyfit(const
  emxArray_real_T_QCar2_autonom_T *x, const emxArray_real_T_QCar2_autonom_T *y,
  real_T p[2]);
static void QCar2_autonomous_drivi_linspace(real_T d1, real_T d2, real_T n,
  emxArray_real_T_QCar2_autonom_T *y);
static void rate_monotonic_scheduler(void);
time_T rt_SimUpdateDiscreteEvents(
  int_T rtmNumSampTimes, void *rtmTimingData, int_T *rtmSampleHitPtr, int_T
  *rtmPerTaskSampleHits )
{
  rtmSampleHitPtr[1] = rtmStepTask(QCar2_autonomous_driving_exa_M, 1);
  rtmSampleHitPtr[2] = rtmStepTask(QCar2_autonomous_driving_exa_M, 2);
  rtmSampleHitPtr[3] = rtmStepTask(QCar2_autonomous_driving_exa_M, 3);
  UNUSED_PARAMETER(rtmNumSampTimes);
  UNUSED_PARAMETER(rtmTimingData);
  UNUSED_PARAMETER(rtmPerTaskSampleHits);
  return(-1);
}

/*
 *         This function updates active task flag for each subrate
 *         and rate transition flags for tasks that exchange data.
 *         The function assumes rate-monotonic multitasking scheduler.
 *         The function must be called at model base rate so that
 *         the generated code self-manages all its subrates and rate
 *         transition flags.
 */
static void rate_monotonic_scheduler(void)
{
  /* To ensure a deterministic data transfer between two rates,
   * data is transferred at the priority of a fast task and the frequency
   * of the slow task.  The following flags indicate when the data transfer
   * happens.  That is, a rate interaction flag is set true when both rates
   * will run, and false otherwise.
   */

  /* tid 1 shares data with slower tid rates: 2, 3 */
  if (QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[1] == 0) {
    QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_2 =
      (QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[2] == 0);

    /* update PerTaskSampleHits matrix for non-inline sfcn */
    QCar2_autonomous_driving_exa_M->Timing.perTaskSampleHits[6] =
      QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_2;
    QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_3 =
      (QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[3] == 0);

    /* update PerTaskSampleHits matrix for non-inline sfcn */
    QCar2_autonomous_driving_exa_M->Timing.perTaskSampleHits[7] =
      QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_3;
  }

  /* Compute which subrates run during the next base time step.  Subrates
   * are an integer multiple of the base rate counter.  Therefore, the subtask
   * counter is reset when it reaches its limit (zero means run).
   */
  (QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[2])++;
  if ((QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[2]) > 4) {
                               /* Sample time: [0.0083333333333333332s, 0.0s] */
    QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[2] = 0;
  }

  (QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[3])++;
  if ((QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[3]) > 5) {/* Sample time: [0.01s, 0.0s] */
    QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[3] = 0;
  }
}

/*
 * This function updates continuous states using the ODE2 fixed-step
 * solver algorithm
 */
static void rt_ertODEUpdateContinuousStates(RTWSolverInfo *si )
{
  time_T tnew = rtsiGetSolverStopTime(si);
  time_T h = rtsiGetStepSize(si);
  real_T *x = rtsiGetContStates(si);
  ODE2_IntgData *id = (ODE2_IntgData *)rtsiGetSolverData(si);
  real_T *y = id->y;
  real_T *f0 = id->f[0];
  real_T *f1 = id->f[1];
  real_T temp;
  int_T i;
  int_T nXc = 7;
  rtsiSetSimTimeStep(si,MINOR_TIME_STEP);

  /* Save the state values at time t in y, we'll use x as ynew. */
  (void) memcpy(y, x,
                (uint_T)nXc*sizeof(real_T));

  /* Assumes that rtsiSetT and ModelOutputs are up-to-date */
  /* f0 = f(t,y) */
  rtsiSetdX(si, f0);
  QCar2_autonomous_driving_example2_derivatives();

  /* f1 = f(t + h, y + h*f0) */
  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (h*f0[i]);
  }

  rtsiSetT(si, tnew);
  rtsiSetdX(si, f1);
  QCar2_autonomous_driving_example2_output0();
  QCar2_autonomous_driving_example2_derivatives();

  /* tnew = t + h
     ynew = y + (h/2)*(f0 + f1) */
  temp = 0.5*h;
  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + temp*(f0[i] + f1[i]);
  }

  rtsiSetSimTimeStep(si,MAJOR_TIME_STEP);
}

real_T rt_powd_snf(real_T u0, real_T u1)
{
  real_T y;
  if (rtIsNaN(u0) || rtIsNaN(u1)) {
    y = (rtNaN);
  } else {
    real_T tmp;
    real_T tmp_0;
    tmp = fabs(u0);
    tmp_0 = fabs(u1);
    if (rtIsInf(u1)) {
      if (tmp == 1.0) {
        y = 1.0;
      } else if (tmp > 1.0) {
        if (u1 > 0.0) {
          y = (rtInf);
        } else {
          y = 0.0;
        }
      } else if (u1 > 0.0) {
        y = 0.0;
      } else {
        y = (rtInf);
      }
    } else if (tmp_0 == 0.0) {
      y = 1.0;
    } else if (tmp_0 == 1.0) {
      if (u1 > 0.0) {
        y = u0;
      } else {
        y = 1.0 / u0;
      }
    } else if (u1 == 2.0) {
      y = u0 * u0;
    } else if ((u1 == 0.5) && (u0 >= 0.0)) {
      y = sqrt(u0);
    } else if ((u0 < 0.0) && (u1 > floor(u1))) {
      y = (rtNaN);
    } else {
      y = pow(u0, u1);
    }
  }

  return y;
}

static void QCar2_autonomous_emxInit_real_T(emxArray_real_T_QCar2_autonom_T
  **pEmxArray, int32_T numDimensions)
{
  emxArray_real_T_QCar2_autonom_T *emxArray;
  int32_T i;
  *pEmxArray = (emxArray_real_T_QCar2_autonom_T *)malloc(sizeof
    (emxArray_real_T_QCar2_autonom_T));
  emxArray = *pEmxArray;
  emxArray->data = (real_T *)NULL;
  emxArray->numDimensions = numDimensions;
  emxArray->size = (int32_T *)malloc(sizeof(int32_T) * (uint32_T)numDimensions);
  emxArray->allocatedSize = 0;
  emxArray->canFreeData = true;
  for (i = 0; i < numDimensions; i++) {
    emxArray->size[i] = 0;
  }
}

static void QCar2__emxEnsureCapacity_real_T(emxArray_real_T_QCar2_autonom_T
  *emxArray, int32_T oldNumel)
{
  int32_T i;
  int32_T newNumel;
  void *newData;
  if (oldNumel < 0) {
    oldNumel = 0;
  }

  newNumel = 1;
  for (i = 0; i < emxArray->numDimensions; i++) {
    newNumel *= emxArray->size[i];
  }

  if (newNumel > emxArray->allocatedSize) {
    i = emxArray->allocatedSize;
    if (i < 16) {
      i = 16;
    }

    while (i < newNumel) {
      if (i > 1073741823) {
        i = MAX_int32_T;
      } else {
        i <<= 1;
      }
    }

    newData = malloc((uint32_T)i * sizeof(real_T));
    if (emxArray->data != NULL) {
      memcpy(newData, emxArray->data, sizeof(real_T) * (uint32_T)oldNumel);
      if (emxArray->canFreeData) {
        free(emxArray->data);
      }
    }

    emxArray->data = (real_T *)newData;
    emxArray->allocatedSize = i;
    emxArray->canFreeData = true;
  }
}

static void QCar2_autonomous_emxFree_real_T(emxArray_real_T_QCar2_autonom_T
  **pEmxArray)
{
  if (*pEmxArray != (emxArray_real_T_QCar2_autonom_T *)NULL) {
    if (((*pEmxArray)->data != (real_T *)NULL) && (*pEmxArray)->canFreeData) {
      free((*pEmxArray)->data);
    }

    free((*pEmxArray)->size);
    free(*pEmxArray);
    *pEmxArray = (emxArray_real_T_QCar2_autonom_T *)NULL;
  }
}

real_T rt_roundd_snf(real_T u)
{
  real_T y;
  if (fabs(u) < 4.503599627370496E+15) {
    if (u >= 0.5) {
      y = floor(u + 0.5);
    } else if (u > -0.5) {
      y = u * 0.0;
    } else {
      y = ceil(u - 0.5);
    }
  } else {
    y = u;
  }

  return y;
}

static void QCar2_autono_binary_expand_op_5(uint8_T in1[112614], int32_T in2,
  int32_T in3, const uint8_T in5_data[], const int32_T in5_size[2], const
  uint8_T in6[112614], int32_T in7, int32_T in8, const uint8_T in9[6279],
  int32_T in10, int32_T in11)
{
  int32_T i;
  int32_T i_0;
  int32_T in3_idx_0;
  int32_T stride_0_0;
  int32_T stride_1_0_tmp;
  int32_T stride_2_0;
  int32_T tmp;
  uint32_T tmp_0;

  /* MATLAB Function: '<S19>/Combine images' */
  in3_idx_0 = (in3 - in2) + 1;
  stride_0_0 = (in5_size[0] != 1);
  stride_1_0_tmp = ((in8 - in7) + 2 != 1);
  stride_2_0 = ((in11 - in10) + 1 != 1);
  for (i_0 = 0; i_0 < 91; i_0++) {
    for (i = 0; i < in3_idx_0; i++) {
      tmp_0 = in6[((i * stride_1_0_tmp + in7) + 137 * i_0) - 1];
      tmp = (int32_T)(in9[(i * stride_2_0 + in10) + 69 * i_0] * tmp_0);
      if (tmp > 255) {
        tmp = 255;
      }

      tmp = (int32_T)((uint32_T)rt_roundd_snf((real_T)in5_data[i * stride_0_0 +
        in5_size[0] * i_0] / 255.0) * tmp_0 + (uint32_T)tmp);
      if (tmp > 255) {
        tmp = 255;
      }

      in1[(in2 + i) + 137 * i_0] = (uint8_T)tmp;
    }
  }

  /* End of MATLAB Function: '<S19>/Combine images' */
}

static void QCar2_autono_binary_expand_op_4(uint8_T in1[112614], int32_T in2,
  int32_T in3, const uint8_T in5_data[], const int32_T in5_size[2], const
  uint8_T in6[112614], int32_T in7, int32_T in8)
{
  int32_T i;
  int32_T i_0;
  int32_T in3_idx_0;
  int32_T stride_0_0;
  int32_T stride_1_0;

  /* MATLAB Function: '<S19>/Combine images' */
  in3_idx_0 = (in3 - in2) + 1;
  stride_0_0 = (in5_size[0] != 1);
  stride_1_0 = ((in8 - in7) + 2 != 1);
  for (i_0 = 0; i_0 < 91; i_0++) {
    for (i = 0; i < in3_idx_0; i++) {
      in1[((in2 + i) + 137 * i_0) + 37538] = (uint8_T)(in6[((i * stride_1_0 +
        in7) + 137 * i_0) + 37537] * (uint32_T)rt_roundd_snf((real_T)in5_data[i *
        stride_0_0 + in5_size[0] * i_0] / 255.0));
    }
  }

  /* End of MATLAB Function: '<S19>/Combine images' */
}

static void QCar2_autono_binary_expand_op_3(uint8_T in1[112614], int32_T in2,
  int32_T in3, const uint8_T in5_data[], const int32_T in5_size[2], const
  uint8_T in6[112614], int32_T in7, int32_T in8)
{
  int32_T i;
  int32_T i_0;
  int32_T in3_idx_0;
  int32_T stride_0_0;
  int32_T stride_1_0;

  /* MATLAB Function: '<S19>/Combine images' */
  in3_idx_0 = (in3 - in2) + 1;
  stride_0_0 = (in5_size[0] != 1);
  stride_1_0 = ((in8 - in7) + 2 != 1);
  for (i_0 = 0; i_0 < 91; i_0++) {
    for (i = 0; i < in3_idx_0; i++) {
      in1[((in2 + i) + 137 * i_0) + 75076] = (uint8_T)(in6[((i * stride_1_0 +
        in7) + 137 * i_0) + 75075] * (uint32_T)rt_roundd_snf((real_T)in5_data[i *
        stride_0_0 + in5_size[0] * i_0] / 255.0));
    }
  }

  /* End of MATLAB Function: '<S19>/Combine images' */
}

static void QCar2_autono_binary_expand_op_2(uint8_T in1[112614], int32_T in2,
  int32_T in3, const uint8_T in5_data[], const int32_T in5_size[2], const
  uint8_T in6_data[], const int32_T in6_size[3], int32_T in7, int32_T in8, const
  uint8_T in9[6279], int32_T in10, int32_T in11)
{
  int32_T i;
  int32_T i_0;
  int32_T in3_idx_0;
  int32_T stride_0_0;
  int32_T stride_1_0_tmp;
  int32_T stride_2_0;
  int32_T tmp;
  uint32_T tmp_0;

  /* MATLAB Function: '<S19>/Combine images' */
  in3_idx_0 = (in3 - in2) + 1;
  stride_0_0 = (in5_size[0] != 1);
  stride_1_0_tmp = ((in7 - in8) + 1 != 1);
  stride_2_0 = ((in11 - in10) + 1 != 1);
  for (i_0 = 0; i_0 < 91; i_0++) {
    for (i = 0; i < in3_idx_0; i++) {
      tmp_0 = in6_data[i * stride_1_0_tmp + in6_size[0] * i_0];
      tmp = (int32_T)(in9[(i * stride_2_0 + in10) + 69 * i_0] * tmp_0);
      if (tmp > 255) {
        tmp = 255;
      }

      tmp = (int32_T)((uint32_T)rt_roundd_snf((real_T)in5_data[i * stride_0_0 +
        in5_size[0] * i_0] / 255.0) * tmp_0 + (uint32_T)tmp);
      if (tmp > 255) {
        tmp = 255;
      }

      in1[(in2 + i) + 137 * (i_0 + 182)] = (uint8_T)tmp;
    }
  }

  /* End of MATLAB Function: '<S19>/Combine images' */
}

static void QCar2_autono_binary_expand_op_1(uint8_T in1[112614], int32_T in2,
  int32_T in3, const uint8_T in5_data[], const int32_T in5_size[2], const
  uint8_T in6_data[], const int32_T in6_size[3], int32_T in7, int32_T in8)
{
  int32_T i;
  int32_T i_0;
  int32_T in3_idx_0;
  int32_T stride_0_0;
  int32_T stride_1_0;

  /* MATLAB Function: '<S19>/Combine images' */
  in3_idx_0 = (in3 - in2) + 1;
  stride_0_0 = (in5_size[0] != 1);
  stride_1_0 = ((in7 - in8) + 1 != 1);
  for (i_0 = 0; i_0 < 91; i_0++) {
    for (i = 0; i < in3_idx_0; i++) {
      in1[((in2 + i) + 137 * (i_0 + 182)) + 37538] = (uint8_T)((uint32_T)
        rt_roundd_snf((real_T)in5_data[i * stride_0_0 + in5_size[0] * i_0] /
                      255.0) * in6_data[(i * stride_1_0 + in6_size[0] * i_0) +
        in6_size[0] * 91]);
    }
  }

  /* End of MATLAB Function: '<S19>/Combine images' */
}

static void QCar2_autonomo_binary_expand_op(uint8_T in1[112614], int32_T in2,
  int32_T in3, const uint8_T in5_data[], const int32_T in5_size[2], const
  uint8_T in6_data[], const int32_T in6_size[3], int32_T in7, int32_T in8)
{
  int32_T i;
  int32_T i_0;
  int32_T in3_idx_0;
  int32_T stride_0_0;
  int32_T stride_1_0;

  /* MATLAB Function: '<S19>/Combine images' */
  in3_idx_0 = (in3 - in2) + 1;
  stride_0_0 = (in5_size[0] != 1);
  stride_1_0 = ((in7 - in8) + 1 != 1);
  for (i_0 = 0; i_0 < 91; i_0++) {
    for (i = 0; i < in3_idx_0; i++) {
      in1[((in2 + i) + 137 * (i_0 + 182)) + 75076] = (uint8_T)((uint32_T)
        rt_roundd_snf((real_T)in5_data[i * stride_0_0 + in5_size[0] * i_0] /
                      255.0) * in6_data[(i * stride_1_0 + in6_size[0] * i_0) +
        ((in6_size[0] * 91) << 1)]);
    }
  }

  /* End of MATLAB Function: '<S19>/Combine images' */
}

static void QCar2_autonomou_emxInit_int32_T(emxArray_int32_T_QCar2_autono_T
  **pEmxArray, int32_T numDimensions)
{
  emxArray_int32_T_QCar2_autono_T *emxArray;
  int32_T i;
  *pEmxArray = (emxArray_int32_T_QCar2_autono_T *)malloc(sizeof
    (emxArray_int32_T_QCar2_autono_T));
  emxArray = *pEmxArray;
  emxArray->data = (int32_T *)NULL;
  emxArray->numDimensions = numDimensions;
  emxArray->size = (int32_T *)malloc(sizeof(int32_T) * (uint32_T)numDimensions);
  emxArray->allocatedSize = 0;
  emxArray->canFreeData = true;
  for (i = 0; i < numDimensions; i++) {
    emxArray->size[i] = 0;
  }
}

static void QCar2_emxEnsureCapacity_int32_T(emxArray_int32_T_QCar2_autono_T
  *emxArray, int32_T oldNumel)
{
  int32_T i;
  int32_T newNumel;
  void *newData;
  if (oldNumel < 0) {
    oldNumel = 0;
  }

  newNumel = 1;
  for (i = 0; i < emxArray->numDimensions; i++) {
    newNumel *= emxArray->size[i];
  }

  if (newNumel > emxArray->allocatedSize) {
    i = emxArray->allocatedSize;
    if (i < 16) {
      i = 16;
    }

    while (i < newNumel) {
      if (i > 1073741823) {
        i = MAX_int32_T;
      } else {
        i <<= 1;
      }
    }

    newData = malloc((uint32_T)i * sizeof(int32_T));
    if (emxArray->data != NULL) {
      memcpy(newData, emxArray->data, sizeof(int32_T) * (uint32_T)oldNumel);
      if (emxArray->canFreeData) {
        free(emxArray->data);
      }
    }

    emxArray->data = (int32_T *)newData;
    emxArray->allocatedSize = i;
    emxArray->canFreeData = true;
  }
}

/* Function for MATLAB Function: '<S19>/Find slope and intercept' */
static void QCar2_autonomous_drivi_eml_find(const boolean_T x_data[], const
  int32_T x_size[2], emxArray_int32_T_QCar2_autono_T *i,
  emxArray_int32_T_QCar2_autono_T *j)
{
  int32_T idx;
  int32_T ii;
  int32_T jj;
  int32_T nx;
  boolean_T exitg1;
  boolean_T guard1;
  nx = x_size[0] * 273;
  if (nx == 0) {
    i->size[0] = 0;
    j->size[0] = 0;
  } else {
    idx = 0;
    ii = i->size[0];
    i->size[0] = nx;
    QCar2_emxEnsureCapacity_int32_T(i, ii);
    ii = j->size[0];
    j->size[0] = nx;
    QCar2_emxEnsureCapacity_int32_T(j, ii);
    ii = 1;
    jj = 1;
    exitg1 = false;
    while ((!exitg1) && (jj <= 273)) {
      guard1 = false;
      if (x_data[((jj - 1) * x_size[0] + ii) - 1]) {
        idx++;
        i->data[idx - 1] = ii;
        j->data[idx - 1] = jj;
        if (idx >= nx) {
          exitg1 = true;
        } else {
          guard1 = true;
        }
      } else {
        guard1 = true;
      }

      if (guard1) {
        ii++;
        if (ii > x_size[0]) {
          ii = 1;
          jj++;
        }
      }
    }

    if (nx == 1) {
      if (idx == 0) {
        i->size[0] = 0;
        j->size[0] = 0;
      }
    } else if (idx < 1) {
      i->size[0] = 0;
      j->size[0] = 0;
    } else {
      ii = i->size[0];
      i->size[0] = idx;
      QCar2_emxEnsureCapacity_int32_T(i, ii);
      ii = j->size[0];
      j->size[0] = idx;
      QCar2_emxEnsureCapacity_int32_T(j, ii);
    }
  }
}

static void QCar2_autonomou_emxFree_int32_T(emxArray_int32_T_QCar2_autono_T
  **pEmxArray)
{
  if (*pEmxArray != (emxArray_int32_T_QCar2_autono_T *)NULL) {
    if (((*pEmxArray)->data != (int32_T *)NULL) && (*pEmxArray)->canFreeData) {
      free((*pEmxArray)->data);
    }

    free((*pEmxArray)->size);
    free(*pEmxArray);
    *pEmxArray = (emxArray_int32_T_QCar2_autono_T *)NULL;
  }
}

/* Function for MATLAB Function: '<S19>/Find slope and intercept' */
static real_T QCar2_autonomous_driving__xnrm2(int32_T n, const
  emxArray_real_T_QCar2_autonom_T *x, int32_T ix0)
{
  real_T y;
  int32_T k;
  y = 0.0;
  if (n >= 1) {
    if (n == 1) {
      y = fabs(x->data[ix0 - 1]);
    } else {
      real_T scale;
      int32_T kend;
      scale = 3.3121686421112381E-170;
      kend = ix0 + n;
      for (k = ix0; k < kend; k++) {
        real_T absxk;
        absxk = fabs(x->data[k - 1]);
        if (absxk > scale) {
          real_T t;
          t = scale / absxk;
          y = y * t * t + 1.0;
          scale = absxk;
        } else {
          real_T t;
          t = absxk / scale;
          y += t * t;
        }
      }

      y = scale * sqrt(y);
    }
  }

  return y;
}

/* Function for MATLAB Function: '<S19>/Find slope and intercept' */
static void QCar2_autonomous_driving__xswap(int32_T n,
  emxArray_real_T_QCar2_autonom_T *x, int32_T ix0, int32_T iy0)
{
  int32_T b;
  int32_T k;
  b = (uint16_T)n - 1;
  for (k = 0; k <= b; k++) {
    real_T temp;
    int32_T temp_tmp;
    int32_T tmp;
    temp_tmp = (ix0 + k) - 1;
    temp = x->data[temp_tmp];
    tmp = (iy0 + k) - 1;
    x->data[temp_tmp] = x->data[tmp];
    x->data[tmp] = temp;
  }
}

real_T rt_hypotd_snf(real_T u0, real_T u1)
{
  real_T a;
  real_T b;
  real_T y;
  a = fabs(u0);
  b = fabs(u1);
  if (a < b) {
    a /= b;
    y = sqrt(a * a + 1.0) * b;
  } else if (a > b) {
    b /= a;
    y = sqrt(b * b + 1.0) * a;
  } else if (rtIsNaN(b)) {
    y = (rtNaN);
  } else {
    y = a * 1.4142135623730951;
  }

  return y;
}

/* Function for MATLAB Function: '<S19>/Find slope and intercept' */
static void QCar2_autonomous_driving_xzlarf(int32_T m, int32_T n, int32_T iv0,
  real_T tau, emxArray_real_T_QCar2_autonom_T *C, int32_T ic0, int32_T ldc,
  real_T work[2])
{
  int32_T i;
  int32_T jA;
  int32_T lastc;
  int32_T lastv;
  if (tau != 0.0) {
    boolean_T exitg2;
    lastv = m;
    i = iv0 + m;
    while ((lastv > 0) && (C->data[i - 2] == 0.0)) {
      lastv--;
      i--;
    }

    lastc = n;
    exitg2 = false;
    while ((!exitg2) && (lastc > 0)) {
      int32_T exitg1;
      i = ic0;
      do {
        exitg1 = 0;
        if (i <= (ic0 + lastv) - 1) {
          if (C->data[i - 1] != 0.0) {
            exitg1 = 1;
          } else {
            i++;
          }
        } else {
          lastc = 0;
          exitg1 = 2;
        }
      } while (exitg1 == 0);

      if (exitg1 == 1) {
        exitg2 = true;
      }
    }
  } else {
    lastv = 0;
    lastc = 0;
  }

  if (lastv > 0) {
    real_T c;
    int32_T b_ix;
    int32_T jy;
    if (lastc != 0) {
      work[0] = 0.0;
      jy = 0;
      for (i = ic0; ldc < 0 ? i >= ic0 : i <= ic0; i += ldc) {
        c = 0.0;
        b_ix = (i + lastv) - 1;
        for (jA = i; jA <= b_ix; jA++) {
          c += C->data[((iv0 + jA) - i) - 1] * C->data[jA - 1];
        }

        work[jy] += c;
        jy++;
      }
    }

    if (!(-tau == 0.0)) {
      jA = ic0;
      jy = (uint8_T)lastc - 1;
      for (lastc = 0; lastc <= jy; lastc++) {
        c = work[lastc];
        if (c != 0.0) {
          c *= -tau;
          b_ix = (lastv + jA) - 1;
          for (i = jA; i <= b_ix; i++) {
            C->data[i - 1] += C->data[((iv0 + i) - jA) - 1] * c;
          }
        }

        jA += ldc;
      }
    }
  }
}

/* Function for MATLAB Function: '<S19>/Find slope and intercept' */
static void QCar2_autonomous_driving_e_qrpf(emxArray_real_T_QCar2_autonom_T *A,
  int32_T m, real_T tau_data[], int32_T jpvt[2])
{
  real_T vn1[2];
  real_T vn2[2];
  real_T work[2];
  real_T s;
  real_T smax;
  int32_T b;
  int32_T e_tmp;
  int32_T ii;
  int32_T ii_tmp;
  int32_T itemp;
  int32_T j;
  int32_T ma;
  int32_T mmi;
  int32_T pvt;
  ma = A->size[0];
  work[0] = 0.0;
  s = QCar2_autonomous_driving__xnrm2(m, A, 1);
  vn1[0] = s;
  vn2[0] = s;
  work[1] = 0.0;
  s = QCar2_autonomous_driving__xnrm2(m, A, A->size[0] + 1);
  vn1[1] = s;
  vn2[1] = s;
  if (m <= 2) {
    b = (uint8_T)m;
  } else {
    b = 2;
  }

  for (j = 0; j < b; j++) {
    ii_tmp = j * ma;
    ii = ii_tmp + j;
    mmi = m - j;
    itemp = 0;
    if ((2 - j > 1) && (fabs(vn1[1]) > fabs(vn1[j]))) {
      itemp = 1;
    }

    pvt = j + itemp;
    if (pvt != j) {
      QCar2_autonomous_driving__xswap(m, A, pvt * ma + 1, ii_tmp + 1);
      itemp = jpvt[pvt];
      jpvt[pvt] = jpvt[j];
      jpvt[j] = itemp;
      vn1[pvt] = vn1[j];
      vn2[pvt] = vn2[j];
    }

    if (j + 1 < m) {
      s = A->data[ii];
      pvt = ii + 2;
      tau_data[j] = 0.0;
      if (mmi > 0) {
        smax = QCar2_autonomous_driving__xnrm2(mmi - 1, A, ii + 2);
        if (smax != 0.0) {
          smax = rt_hypotd_snf(A->data[ii], smax);
          if (A->data[ii] >= 0.0) {
            smax = -smax;
          }

          if (fabs(smax) < 1.0020841800044864E-292) {
            itemp = 0;
            do {
              itemp++;
              e_tmp = ii + mmi;
              for (ii_tmp = pvt; ii_tmp <= e_tmp; ii_tmp++) {
                A->data[ii_tmp - 1] *= 9.9792015476736E+291;
              }

              smax *= 9.9792015476736E+291;
              s *= 9.9792015476736E+291;
            } while ((fabs(smax) < 1.0020841800044864E-292) && (itemp < 20));

            smax = rt_hypotd_snf(s, QCar2_autonomous_driving__xnrm2(mmi - 1, A,
              ii + 2));
            if (s >= 0.0) {
              smax = -smax;
            }

            tau_data[j] = (smax - s) / smax;
            s = 1.0 / (s - smax);
            for (ii_tmp = pvt; ii_tmp <= e_tmp; ii_tmp++) {
              A->data[ii_tmp - 1] *= s;
            }

            for (pvt = 0; pvt < itemp; pvt++) {
              smax *= 1.0020841800044864E-292;
            }

            s = smax;
          } else {
            tau_data[j] = (smax - A->data[ii]) / smax;
            s = 1.0 / (A->data[ii] - smax);
            ii_tmp = ii + mmi;
            for (itemp = pvt; itemp <= ii_tmp; itemp++) {
              A->data[itemp - 1] *= s;
            }

            s = smax;
          }
        }
      }

      A->data[ii] = s;
    } else {
      tau_data[j] = 0.0;
    }

    if (j + 1 < 2) {
      smax = A->data[ii];
      A->data[ii] = 1.0;
      QCar2_autonomous_driving_xzlarf(mmi, 1, ii + 1, tau_data[0], A, (ii + ma)
        + 1, ma, work);
      A->data[ii] = smax;
    }

    for (ii = j + 2; ii < 3; ii++) {
      pvt = j + ma;
      if (vn1[1] != 0.0) {
        smax = fabs(A->data[pvt]) / vn1[1];
        smax = 1.0 - smax * smax;
        if (smax < 0.0) {
          smax = 0.0;
        }

        s = vn1[1] / vn2[1];
        s = s * s * smax;
        if (s <= 1.4901161193847656E-8) {
          if (j + 1 < m) {
            s = QCar2_autonomous_driving__xnrm2(mmi - 1, A, pvt + 2);
            vn1[1] = s;
            vn2[1] = s;
          } else {
            vn1[1] = 0.0;
            vn2[1] = 0.0;
          }
        } else {
          vn1[1] *= sqrt(smax);
        }
      }
    }
  }
}

/* Function for MATLAB Function: '<S19>/Find slope and intercept' */
static void QCar2_autonomous_driving_xgeqp3(emxArray_real_T_QCar2_autonom_T *A,
  real_T tau_data[], int32_T *tau_size, int32_T jpvt[2])
{
  emxArray_real_T_QCar2_autonom_T *b_A;
  int32_T i;
  int32_T loop_ub;
  int32_T loop_ub_tmp;
  boolean_T guard1;
  QCar2_autonomous_emxInit_real_T(&b_A, 2);
  i = b_A->size[0] * b_A->size[1];
  b_A->size[0] = A->size[0];
  b_A->size[1] = 2;
  QCar2__emxEnsureCapacity_real_T(b_A, i);
  loop_ub_tmp = A->size[0] << 1;
  if (loop_ub_tmp - 1 >= 0) {
    memcpy(&b_A->data[0], &A->data[0], (uint32_T)loop_ub_tmp * sizeof(real_T));
  }

  if (A->size[0] <= 2) {
    loop_ub = A->size[0];
  } else {
    loop_ub = 2;
  }

  *tau_size = loop_ub;
  if (loop_ub - 1 >= 0) {
    memset(&tau_data[0], 0, (uint32_T)loop_ub * sizeof(real_T));
  }

  guard1 = false;
  if (A->size[0] == 0) {
    guard1 = true;
  } else {
    if (A->size[0] <= 2) {
      i = A->size[0];
    } else {
      i = 2;
    }

    if (i < 1) {
      guard1 = true;
    } else {
      jpvt[0] = 1;
      jpvt[1] = 2;
      i = b_A->size[0] * b_A->size[1];
      b_A->size[0] = A->size[0];
      b_A->size[1] = 2;
      QCar2__emxEnsureCapacity_real_T(b_A, i);
      if (loop_ub_tmp - 1 >= 0) {
        memcpy(&b_A->data[0], &A->data[0], (uint32_T)loop_ub_tmp * sizeof(real_T));
      }

      QCar2_autonomous_driving_e_qrpf(b_A, A->size[0], tau_data, jpvt);
    }
  }

  if (guard1) {
    jpvt[0] = 1;
    jpvt[1] = 2;
  }

  loop_ub = b_A->size[0];
  i = A->size[0] * A->size[1];
  A->size[0] = b_A->size[0];
  A->size[1] = 2;
  QCar2__emxEnsureCapacity_real_T(A, i);
  for (i = 0; i < 2; i++) {
    for (loop_ub_tmp = 0; loop_ub_tmp < loop_ub; loop_ub_tmp++) {
      A->data[loop_ub_tmp + A->size[0] * i] = b_A->data[b_A->size[0] * i +
        loop_ub_tmp];
    }
  }

  QCar2_autonomous_emxFree_real_T(&b_A);
}

/* Function for MATLAB Function: '<S19>/Find slope and intercept' */
static void QCar2_autonomous_drivin_qrsolve(const
  emxArray_real_T_QCar2_autonom_T *A, const emxArray_real_T_QCar2_autonom_T *B,
  real_T Y[2], int32_T *rankA)
{
  emxArray_real_T_QCar2_autonom_T *b_A;
  emxArray_real_T_QCar2_autonom_T *b_B;
  real_T tau_data[2];
  real_T tol;
  int32_T jpvt[2];
  int32_T c_i;
  int32_T k;
  int32_T m;
  int32_T maxmn;
  int32_T minmn;
  QCar2_autonomous_emxInit_real_T(&b_A, 2);
  m = b_A->size[0] * b_A->size[1];
  b_A->size[0] = A->size[0];
  b_A->size[1] = 2;
  QCar2__emxEnsureCapacity_real_T(b_A, m);
  minmn = A->size[0] << 1;
  if (minmn - 1 >= 0) {
    memcpy(&b_A->data[0], &A->data[0], (uint32_T)minmn * sizeof(real_T));
  }

  QCar2_autonomous_driving_xgeqp3(b_A, tau_data, &m, jpvt);
  *rankA = 0;
  if (b_A->size[0] < 2) {
    minmn = b_A->size[0];
    maxmn = 2;
  } else {
    minmn = 2;
    maxmn = b_A->size[0];
  }

  if (minmn > 0) {
    tol = 2.2204460492503131E-15 * (real_T)maxmn * fabs(b_A->data[0]);
    while ((*rankA < minmn) && (!(fabs(b_A->data[b_A->size[0] * *rankA + *rankA])
             <= tol))) {
      (*rankA)++;
    }
  }

  minmn = 0;
  if (b_A->size[0] <= 2) {
    m = b_A->size[0];
  } else {
    m = 2;
  }

  maxmn = m - 1;
  if (b_A->size[0] <= 2) {
    m = b_A->size[0];
  } else {
    m = 2;
  }

  if (m > 0) {
    for (k = 0; k <= maxmn; k++) {
      if (b_A->data[b_A->size[0] * k + k] != 0.0) {
        minmn++;
      }
    }
  }

  QCar2_autonomous_emxInit_real_T(&b_B, 1);
  k = B->size[0];
  m = b_B->size[0];
  b_B->size[0] = B->size[0];
  QCar2__emxEnsureCapacity_real_T(b_B, m);
  if (k - 1 >= 0) {
    memcpy(&b_B->data[0], &B->data[0], (uint32_T)k * sizeof(real_T));
  }

  Y[0] = 0.0;
  Y[1] = 0.0;
  for (k = 0; k <= maxmn; k++) {
    m = b_A->size[0];
    if (tau_data[k] != 0.0) {
      tol = b_B->data[k];
      for (c_i = k + 2; c_i <= m; c_i++) {
        tol += b_A->data[(b_A->size[0] * k + c_i) - 1] * b_B->data[c_i - 1];
      }

      tol *= tau_data[k];
      if (tol != 0.0) {
        b_B->data[k] -= tol;
        for (c_i = k + 2; c_i <= m; c_i++) {
          b_B->data[c_i - 1] -= b_A->data[(b_A->size[0] * k + c_i) - 1] * tol;
        }
      }
    }
  }

  for (maxmn = 0; maxmn < minmn; maxmn++) {
    Y[jpvt[maxmn] - 1] = b_B->data[maxmn];
  }

  QCar2_autonomous_emxFree_real_T(&b_B);
  for (maxmn = minmn; maxmn >= 1; maxmn--) {
    k = jpvt[maxmn - 1];
    Y[k - 1] /= b_A->data[((maxmn - 1) * b_A->size[0] + maxmn) - 1];
    for (m = 0; m <= maxmn - 2; m++) {
      Y[jpvt[0] - 1] -= b_A->data[(maxmn - 1) * b_A->size[0]] * Y[k - 1];
    }
  }

  QCar2_autonomous_emxFree_real_T(&b_A);
}

/* Function for MATLAB Function: '<S19>/Find slope and intercept' */
static void QCar2_autonomous_drivin_polyfit(const
  emxArray_real_T_QCar2_autonom_T *x, const emxArray_real_T_QCar2_autonom_T *y,
  real_T p[2])
{
  emxArray_real_T_QCar2_autonom_T *V;
  int32_T b;
  int32_T k;
  QCar2_autonomous_emxInit_real_T(&V, 2);
  b = x->size[0];
  k = V->size[0] * V->size[1];
  V->size[0] = x->size[0];
  V->size[1] = 2;
  QCar2__emxEnsureCapacity_real_T(V, k);
  if (x->size[0] != 0) {
    for (k = 0; k < b; k++) {
      V->data[k + V->size[0]] = 1.0;
      V->data[k] = x->data[k];
    }
  }

  QCar2_autonomous_drivin_qrsolve(V, y, p, &b);
  QCar2_autonomous_emxFree_real_T(&V);
}

/* Function for MATLAB Function: '<S17>/Draw Lines Module' */
static void QCar2_autonomous_drivi_linspace(real_T d1, real_T d2, real_T n,
  emxArray_real_T_QCar2_autonom_T *y)
{
  real_T delta1;
  real_T delta2;
  int32_T c_k;
  int32_T d_tmp;
  if (!(n >= 0.0)) {
    y->size[0] = 1;
    y->size[1] = 0;
  } else {
    delta1 = floor(n);
    c_k = y->size[0] * y->size[1];
    y->size[0] = 1;
    d_tmp = (int32_T)floor(n);
    y->size[1] = (int32_T)delta1;
    QCar2__emxEnsureCapacity_real_T(y, c_k);
    if ((int32_T)delta1 >= 1) {
      y->data[(int32_T)delta1 - 1] = d2;
      if (y->size[1] >= 2) {
        y->data[0] = d1;
        if (y->size[1] >= 3) {
          if (d1 == -d2) {
            delta1 = d2 / ((real_T)y->size[1] - 1.0);
            for (c_k = 2; c_k < d_tmp; c_k++) {
              y->data[c_k - 1] = (real_T)(((c_k << 1) - y->size[1]) - 1) *
                delta1;
            }

            if (((uint32_T)y->size[1] & 1U) == 1U) {
              y->data[y->size[1] >> 1] = 0.0;
            }
          } else if (((d1 < 0.0) != (d2 < 0.0)) && ((fabs(d1) >
                       8.9884656743115785E+307) || (fabs(d2) >
                       8.9884656743115785E+307))) {
            delta1 = d1 / ((real_T)y->size[1] - 1.0);
            delta2 = d2 / ((real_T)y->size[1] - 1.0);
            for (c_k = 0; c_k <= d_tmp - 3; c_k++) {
              y->data[c_k + 1] = (((real_T)c_k + 1.0) * delta2 + d1) - ((real_T)
                c_k + 1.0) * delta1;
            }
          } else {
            delta1 = (d2 - d1) / ((real_T)y->size[1] - 1.0);
            for (c_k = 0; c_k <= d_tmp - 3; c_k++) {
              y->data[c_k + 1] = ((real_T)c_k + 1.0) * delta1 + d1;
            }
          }
        }
      }
    }
  }
}

/* Model output function for TID0 */
void QCar2_autonomous_driving_example2_output0(void) /* Sample time: [0.0s, 0.0s] */
{
  real_T rtb_TmpSignalConversionAtHILWri[2];
  real_T rateLimiterRate;
  real_T rtb_Saturation_e;
  real_T rtb_SteeringBias;
  int32_T i;
  boolean_T rtb_TmpSignalConversionAtHILW_k[16];
  boolean_T didZcEventOccur;
  boolean_T tmp;
  if (rtmIsMajorTimeStep(QCar2_autonomous_driving_exa_M)) {
    /* set solver stop time */
    if (!(QCar2_autonomous_driving_exa_M->Timing.clockTick0+1)) {
      rtsiSetSolverStopTime(&QCar2_autonomous_driving_exa_M->solverInfo,
                            ((QCar2_autonomous_driving_exa_M->Timing.clockTickH0
        + 1) * QCar2_autonomous_driving_exa_M->Timing.stepSize0 * 4294967296.0));
    } else {
      rtsiSetSolverStopTime(&QCar2_autonomous_driving_exa_M->solverInfo,
                            ((QCar2_autonomous_driving_exa_M->Timing.clockTick0
        + 1) * QCar2_autonomous_driving_exa_M->Timing.stepSize0 +
        QCar2_autonomous_driving_exa_M->Timing.clockTickH0 *
        QCar2_autonomous_driving_exa_M->Timing.stepSize0 * 4294967296.0));
    }

    {                                  /* Sample time: [0.0s, 0.0s] */
      rate_monotonic_scheduler();
    }
  }                                    /* end MajorTimeStep */

  /* Update absolute time of base rate at minor time step */
  if (rtmIsMinorTimeStep(QCar2_autonomous_driving_exa_M)) {
    QCar2_autonomous_driving_exa_M->Timing.t[0] = rtsiGetT
      (&QCar2_autonomous_driving_exa_M->solverInfo);
  }

  /* RateTransition: '<Root>/Rate Transition' */
  tmp = rtmIsMajorTimeStep(QCar2_autonomous_driving_exa_M);
  if (tmp) {
    /* S-Function (hil_read_block): '<S8>/HIL Read' */

    /* S-Function Block: QCar2_autonomous_driving_example2/basicQCarIO/HIL Read (hil_read_block) */
    {
      t_error result = hil_read
        (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
         QCar2_autonomous_driving_exam_P.HILRead_analog_channels, 2U,
         &QCar2_autonomous_driving_exam_P.HILRead_encoder_channels, 1U,
         NULL, 0U,
         QCar2_autonomous_driving_exam_P.HILRead_other_channels, 6U,
         &QCar2_autonomous_driving_exa_DW.HILRead_AnalogBuffer[0],
         &QCar2_autonomous_driving_exa_DW.HILRead_EncoderBuffer,
         NULL,
         &QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[0]
         );
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
      } else {
        QCar2_autonomous_driving_exam_B.batteryvoltage =
          QCar2_autonomous_driving_exa_DW.HILRead_AnalogBuffer[0];
        QCar2_autonomous_driving_exam_B.motorcurrent =
          QCar2_autonomous_driving_exa_DW.HILRead_AnalogBuffer[1];
        QCar2_autonomous_driving_exam_B.encodercounts =
          QCar2_autonomous_driving_exa_DW.HILRead_EncoderBuffer;
        QCar2_autonomous_driving_exam_B.HILRead_o4 =
          QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[0];
        QCar2_autonomous_driving_exam_B.HILRead_o5 =
          QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[1];
        QCar2_autonomous_driving_exam_B.HILRead_o6 =
          QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[2];
        QCar2_autonomous_driving_exam_B.HILRead_o7 =
          QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[3];
        QCar2_autonomous_driving_exam_B.HILRead_o8 =
          QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[4];
        QCar2_autonomous_driving_exam_B.HILRead_o9 =
          QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[5];
      }
    }

    /* S-Function (inverse_modulus_block): '<S8>/Unwrap 2^24' */
    /* S-Function Block: QCar2_autonomous_driving_example2/basicQCarIO/Unwrap 2^24 (inverse_modulus_block) */
    {
      static const real_T sampling_period = 0.0016666666666666668;
      real_T half_range = QCar2_autonomous_driving_exam_P.Unwrap224_Modulus /
        2.0;
      real_T du, dy;
      if (QCar2_autonomous_driving_exa_DW.Unwrap224_FirstSample) {
        QCar2_autonomous_driving_exa_DW.Unwrap224_FirstSample = false;
        QCar2_autonomous_driving_exa_DW.Unwrap224_PreviousInput =
          QCar2_autonomous_driving_exam_B.encodercounts;
      }

      du = (real_T) QCar2_autonomous_driving_exam_B.encodercounts -
        QCar2_autonomous_driving_exa_DW.Unwrap224_PreviousInput;
      if (du > half_range) {
        QCar2_autonomous_driving_exa_DW.Unwrap224_Revolutions =
          QCar2_autonomous_driving_exa_DW.Unwrap224_Revolutions - 1;
        dy = du - QCar2_autonomous_driving_exam_P.Unwrap224_Modulus;
      } else if (du < -half_range) {
        QCar2_autonomous_driving_exa_DW.Unwrap224_Revolutions =
          QCar2_autonomous_driving_exa_DW.Unwrap224_Revolutions + 1;
        dy = du + QCar2_autonomous_driving_exam_P.Unwrap224_Modulus;
      } else {
        dy = du;
      }

      QCar2_autonomous_driving_exam_B.Unwrap224 =
        QCar2_autonomous_driving_exam_B.encodercounts +
        QCar2_autonomous_driving_exa_DW.Unwrap224_Revolutions *
        QCar2_autonomous_driving_exam_P.Unwrap224_Modulus;
      QCar2_autonomous_driving_exa_DW.Unwrap224_PreviousInput =
        QCar2_autonomous_driving_exam_B.encodercounts;
    }
  }

  /* Integrator: '<S26>/Integrator1' */
  if (QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1) {
    QCar2_autonomous_driving_exam_X.Integrator1_CSTATE =
      QCar2_autonomous_driving_exam_B.Unwrap224;
  }

  /* Product: '<S26>/Product' incorporates:
   *  Constant: '<S26>/Constant'
   *  Constant: '<S8>/Constant1'
   *  Constant: '<S8>/Constant2'
   *  Integrator: '<S26>/Integrator1'
   *  Integrator: '<S26>/Integrator2'
   *  Product: '<S26>/Product2'
   *  Sum: '<S26>/Sum'
   *  Sum: '<S26>/Sum1'
   */
  QCar2_autonomous_driving_exam_B.Product =
    ((QCar2_autonomous_driving_exam_B.Unwrap224 -
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE) -
     QCar2_autonomous_driving_exam_X.Integrator2_CSTATE *
     QCar2_autonomous_driving_exam_P.Constant_Value_l *
     QCar2_autonomous_driving_exam_P.Constant1_Value_h) *
    QCar2_autonomous_driving_exam_P.Constant2_Value_n;

  /* Product: '<S26>/Product1' incorporates:
   *  Constant: '<S8>/Constant2'
   *  Integrator: '<S26>/Integrator2'
   */
  QCar2_autonomous_driving_exam_B.Product1 =
    QCar2_autonomous_driving_exam_P.Constant2_Value_n *
    QCar2_autonomous_driving_exam_X.Integrator2_CSTATE;

  /* Integrator: '<S27>/Integrator1' */
  if (QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_j) {
    QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_a =
      QCar2_autonomous_driving_exam_B.batteryvoltage;
  }

  /* Product: '<S27>/Product' incorporates:
   *  Constant: '<S27>/Constant'
   *  Constant: '<S8>/Constant3'
   *  Constant: '<S8>/Constant4'
   *  Integrator: '<S27>/Integrator1'
   *  Integrator: '<S27>/Integrator2'
   *  Product: '<S27>/Product2'
   *  Sum: '<S27>/Sum'
   *  Sum: '<S27>/Sum1'
   */
  QCar2_autonomous_driving_exam_B.Product_a =
    ((QCar2_autonomous_driving_exam_B.batteryvoltage -
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_a) -
     QCar2_autonomous_driving_exam_X.Integrator2_CSTATE_k *
     QCar2_autonomous_driving_exam_P.Constant_Value_h *
     QCar2_autonomous_driving_exam_P.Constant3_Value_d) *
    QCar2_autonomous_driving_exam_P.Constant4_Value_h;

  /* Product: '<S27>/Product1' incorporates:
   *  Constant: '<S8>/Constant4'
   *  Integrator: '<S27>/Integrator2'
   */
  QCar2_autonomous_driving_exam_B.Product1_c =
    QCar2_autonomous_driving_exam_P.Constant4_Value_h *
    QCar2_autonomous_driving_exam_X.Integrator2_CSTATE_k;

  /* Integrator: '<S28>/Integrator1' */
  if (QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_m) {
    QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_aa =
      QCar2_autonomous_driving_exam_B.motorcurrent;
  }

  /* Product: '<S28>/Product' incorporates:
   *  Constant: '<S28>/Constant'
   *  Constant: '<S8>/Constant5'
   *  Constant: '<S8>/Constant6'
   *  Integrator: '<S28>/Integrator1'
   *  Integrator: '<S28>/Integrator2'
   *  Product: '<S28>/Product2'
   *  Sum: '<S28>/Sum'
   *  Sum: '<S28>/Sum1'
   */
  QCar2_autonomous_driving_exam_B.Product_c =
    ((QCar2_autonomous_driving_exam_B.motorcurrent -
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_aa) -
     QCar2_autonomous_driving_exam_X.Integrator2_CSTATE_k5 *
     QCar2_autonomous_driving_exam_P.Constant_Value_p *
     QCar2_autonomous_driving_exam_P.Constant5_Value) *
    QCar2_autonomous_driving_exam_P.Constant6_Value;

  /* Product: '<S28>/Product1' incorporates:
   *  Constant: '<S8>/Constant6'
   *  Integrator: '<S28>/Integrator2'
   */
  QCar2_autonomous_driving_exam_B.Product1_o =
    QCar2_autonomous_driving_exam_P.Constant6_Value *
    QCar2_autonomous_driving_exam_X.Integrator2_CSTATE_k5;

  /* RateTransition: '<Root>/Rate Transition' */
  if (tmp) {
    if (QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_2) {
      /* RateTransition: '<Root>/Rate Transition' */
      QCar2_autonomous_driving_exam_B.RateTransition =
        QCar2_autonomous_driving_exa_DW.RateTransition_Buffer0;
    }

    /* DiscretePulseGenerator: '<S13>/Pulsing Light' */
    rtb_Saturation_e = (QCar2_autonomous_driving_exa_DW.clockTickCounter <
                        QCar2_autonomous_driving_exam_P.PulsingLight_Duty) &&
      (QCar2_autonomous_driving_exa_DW.clockTickCounter >= 0) ?
      QCar2_autonomous_driving_exam_P.PulsingLight_Amp : 0.0;
    if (QCar2_autonomous_driving_exa_DW.clockTickCounter >=
        QCar2_autonomous_driving_exam_P.PulsingLight_Period - 1.0) {
      QCar2_autonomous_driving_exa_DW.clockTickCounter = 0;
    } else {
      QCar2_autonomous_driving_exa_DW.clockTickCounter++;
    }

    /* End of DiscretePulseGenerator: '<S13>/Pulsing Light' */

    /* Logic: '<S13>/AND3' incorporates:
     *  Constant: '<S33>/Constant'
     *  DataTypeConversion: '<S13>/Data Type Conversion'
     *  RelationalOperator: '<S33>/Compare'
     */
    QCar2_autonomous_driving_exam_B.AND3 =
      ((QCar2_autonomous_driving_exam_B.RateTransition >
        QCar2_autonomous_driving_exam_P.LeftSteeringLimit_const) &&
       (rtb_Saturation_e != 0.0));

    /* Logic: '<S13>/AND1' incorporates:
     *  Constant: '<S35>/Constant'
     *  DataTypeConversion: '<S13>/Data Type Conversion'
     *  RelationalOperator: '<S35>/Compare'
     */
    QCar2_autonomous_driving_exam_B.AND1 =
      ((QCar2_autonomous_driving_exam_B.RateTransition <
        QCar2_autonomous_driving_exam_P.RightSteeringLimit_const) &&
       (rtb_Saturation_e != 0.0));

    /* RateTransition: '<Root>/Rate Transition1' */
    if (QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_3) {
      /* RateTransition: '<Root>/Rate Transition1' */
      QCar2_autonomous_driving_exam_B.RateTransition1 =
        QCar2_autonomous_driving_exa_DW.RateTransition1_Buffer0;
    }

    /* End of RateTransition: '<Root>/Rate Transition1' */

    /* ManualSwitch: '<S21>/1 - Arm, 0 - Disarm1' */
    if (QCar2_autonomous_driving_exam_P.uArm0Disarm1_CurrentSetting == 1) {
      /* ManualSwitch: '<S21>/1 - Arm, 0 - Disarm1' incorporates:
       *  Constant: '<S21>/Constant10'
       */
      QCar2_autonomous_driving_exam_B.uArm0Disarm1 =
        QCar2_autonomous_driving_exam_P.Constant10_Value;
    } else {
      /* ManualSwitch: '<S21>/1 - Arm, 0 - Disarm1' incorporates:
       *  Constant: '<S21>/Constant8'
       */
      QCar2_autonomous_driving_exam_B.uArm0Disarm1 =
        QCar2_autonomous_driving_exam_P.Constant8_Value;
    }

    /* End of ManualSwitch: '<S21>/1 - Arm, 0 - Disarm1' */

    /* Switch: '<S21>/Switch' incorporates:
     *  Constant: '<S21>/Constant9'
     */
    if (QCar2_autonomous_driving_exam_B.uArm0Disarm1 >
        QCar2_autonomous_driving_exam_P.Switch_Threshold) {
      /* Gain: '<S21>/Speed Selector (1)' incorporates:
       *  Constant: '<S21>/Speed Max (m//s)'
       */
      rtb_Saturation_e = QCar2_autonomous_driving_exam_P.SpeedSelector1_Gain *
        QCar2_autonomous_driving_exam_P.SpeedMaxms_Value;

      /* Saturate: '<S21>/Saturation1' */
      if (rtb_Saturation_e >
          QCar2_autonomous_driving_exam_P.Saturation1_UpperSat) {
        rtb_Saturation_e = QCar2_autonomous_driving_exam_P.Saturation1_UpperSat;
      } else if (rtb_Saturation_e <
                 QCar2_autonomous_driving_exam_P.Saturation1_LowerSat) {
        rtb_Saturation_e = QCar2_autonomous_driving_exam_P.Saturation1_LowerSat;
      }

      /* End of Saturate: '<S21>/Saturation1' */
    } else {
      rtb_Saturation_e = QCar2_autonomous_driving_exam_P.Constant9_Value;
    }

    /* End of Switch: '<S21>/Switch' */

    /* RateLimiter: '<S21>/Rate Limiter' */
    rateLimiterRate = rtb_Saturation_e - QCar2_autonomous_driving_exa_DW.PrevY;
    if (rateLimiterRate > QCar2_autonomous_driving_exam_P.RateLimiter_RisingLim *
        QCar2_autonomous_driving_period) {
      rtb_Saturation_e = QCar2_autonomous_driving_exam_P.RateLimiter_RisingLim *
        QCar2_autonomous_driving_period + QCar2_autonomous_driving_exa_DW.PrevY;
    } else if (rateLimiterRate <
               QCar2_autonomous_driving_exam_P.RateLimiter_FallingLim *
               QCar2_autonomous_driving_period) {
      rtb_Saturation_e = QCar2_autonomous_driving_exam_P.RateLimiter_FallingLim *
        QCar2_autonomous_driving_period + QCar2_autonomous_driving_exa_DW.PrevY;
    }

    QCar2_autonomous_driving_exa_DW.PrevY = rtb_Saturation_e;

    /* End of RateLimiter: '<S21>/Rate Limiter' */

    /* MATLAB Function: '<S7>/MATLAB Function' incorporates:
     *  Constant: '<S7>/Constant'
     *  Constant: '<S7>/Constant2'
     */
    QCar2_autonomous_driving_exa_DW.sfEvent_nr = QCar2_autonomous_dri_CALL_EVENT;
    QCar2_autonomous_driving_exam_B.speed_cmd = rtb_Saturation_e;
    if (QCar2_autonomous_driving_exam_B.RateTransition1 <
        QCar2_autonomous_driving_exam_P.Constant_Value_po) {
      QCar2_autonomous_driving_exam_B.speed_cmd = 0.0;
    } else if (QCar2_autonomous_driving_exam_B.RateTransition1 <
               QCar2_autonomous_driving_exam_P.Constant2_Value_f) {
      rtb_Saturation_e /= QCar2_autonomous_driving_exam_P.Constant2_Value_f -
        QCar2_autonomous_driving_exam_P.Constant_Value_po;
      QCar2_autonomous_driving_exam_B.speed_cmd = rtb_Saturation_e *
        QCar2_autonomous_driving_exam_B.RateTransition1 - rtb_Saturation_e *
        QCar2_autonomous_driving_exam_P.Constant_Value_po;
    }

    /* End of MATLAB Function: '<S7>/MATLAB Function' */

    /* Switch: '<S20>/Switch' incorporates:
     *  Constant: '<Root>/Constant1'
     */
    if (QCar2_autonomous_driving_exam_P.Constant1_Value_f1 >
        QCar2_autonomous_driving_exam_P.Switch_Threshold_h) {
      /* Trigonometry: '<S20>/Cos' */
      rtb_Saturation_e = cos(QCar2_autonomous_driving_exam_B.RateTransition);

      /* Math: '<S20>/Square' incorporates:
       *  Constant: '<S20>/Constant'
       */
      if ((rtb_Saturation_e < 0.0) &&
          (QCar2_autonomous_driving_exam_P.Constant_Value_j > floor
           (QCar2_autonomous_driving_exam_P.Constant_Value_j))) {
        rateLimiterRate = -rt_powd_snf(-rtb_Saturation_e,
          QCar2_autonomous_driving_exam_P.Constant_Value_j);
      } else {
        rateLimiterRate = rt_powd_snf(rtb_Saturation_e,
          QCar2_autonomous_driving_exam_P.Constant_Value_j);
      }

      /* End of Math: '<S20>/Square' */

      /* Saturate: '<S20>/Saturation' */
      if (rateLimiterRate > QCar2_autonomous_driving_exam_P.Saturation_UpperSat)
      {
        rateLimiterRate = QCar2_autonomous_driving_exam_P.Saturation_UpperSat;
      } else if (rateLimiterRate <
                 QCar2_autonomous_driving_exam_P.Saturation_LowerSat) {
        rateLimiterRate = QCar2_autonomous_driving_exam_P.Saturation_LowerSat;
      }

      /* Switch: '<S20>/Switch' incorporates:
       *  Product: '<S20>/Product'
       *  Saturate: '<S20>/Saturation'
       */
      QCar2_autonomous_driving_exam_B.DesiredSpeedms =
        QCar2_autonomous_driving_exam_B.speed_cmd * rateLimiterRate;
    } else {
      /* Switch: '<S20>/Switch' */
      QCar2_autonomous_driving_exam_B.DesiredSpeedms =
        QCar2_autonomous_driving_exam_B.speed_cmd;
    }

    /* End of Switch: '<S20>/Switch' */

    /* Saturate: '<S18>/command saturation' */
    if (QCar2_autonomous_driving_exam_B.DesiredSpeedms >
        QCar2_autonomous_driving_exam_P.commandsaturation_UpperSat) {
      rateLimiterRate =
        QCar2_autonomous_driving_exam_P.commandsaturation_UpperSat;
    } else if (QCar2_autonomous_driving_exam_B.DesiredSpeedms <
               QCar2_autonomous_driving_exam_P.commandsaturation_LowerSat) {
      rateLimiterRate =
        QCar2_autonomous_driving_exam_P.commandsaturation_LowerSat;
    } else {
      rateLimiterRate = QCar2_autonomous_driving_exam_B.DesiredSpeedms;
    }

    /* Product: '<S18>/Multiply1' incorporates:
     *  Saturate: '<S18>/command saturation'
     */
    QCar2_autonomous_driving_exam_B.desired = rateLimiterRate *
      QCar2_autonomous_driving_exam_B.uArm0Disarm1;

    /* Gain: '<S18>/Kff  (% // m//s)' */
    QCar2_autonomous_driving_exam_B.Kffms =
      QCar2_autonomous_driving_exam_P.Kffms_Gain *
      QCar2_autonomous_driving_exam_B.desired;
  }

  /* Product: '<S18>/Multiply' incorporates:
   *  Gain: '<S9>/counts to rotations'
   *  Gain: '<S9>/gear ratios'
   *  Gain: '<S9>/rot//s to rad//s'
   *  Gain: '<S9>/wheel radius'
   */
  QCar2_autonomous_driving_exam_B.measured =
    QCar2_autonomous_driving_exam_P.countstorotations_Gain *
    QCar2_autonomous_driving_exam_B.Product1 *
    QCar2_autonomous_driving_exam_P.gearratios_Gain *
    QCar2_autonomous_driving_exam_P.rotstorads_Gain *
    QCar2_autonomous_driving_exam_P.wheelradius_Gain *
    QCar2_autonomous_driving_exam_B.uArm0Disarm1;

  /* Sum: '<S18>/Sum' */
  rtb_Saturation_e = QCar2_autonomous_driving_exam_B.desired -
    QCar2_autonomous_driving_exam_B.measured;
  if (tmp) {
    /* RelationalOperator: '<S39>/Compare' incorporates:
     *  Constant: '<S39>/Constant'
     */
    QCar2_autonomous_driving_exam_B.Compare =
      (QCar2_autonomous_driving_exam_B.desired ==
       QCar2_autonomous_driving_exam_P.Constant_Value_i);
  }

  /* Integrator: '<S18>/Integrator1' */
  /* Limited  Integrator  */
  if (rtsiIsModeUpdateTimeStep(&QCar2_autonomous_driving_exa_M->solverInfo)) {
    didZcEventOccur = (((QCar2_autonomous_drivin_PrevZCX.Integrator1_Reset_ZCE ==
                         POS_ZCSIG) != (int32_T)
                        QCar2_autonomous_driving_exam_B.Compare) &&
                       (QCar2_autonomous_drivin_PrevZCX.Integrator1_Reset_ZCE !=
                        UNINITIALIZED_ZCSIG));
    QCar2_autonomous_drivin_PrevZCX.Integrator1_Reset_ZCE =
      QCar2_autonomous_driving_exam_B.Compare;

    /* evaluate zero-crossings */
    if (didZcEventOccur) {
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_b =
        QCar2_autonomous_driving_exam_P.Integrator1_IC;
    }
  }

  if (QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_b >=
      QCar2_autonomous_driving_exam_P.Integrator1_UpperSat) {
    QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_b =
      QCar2_autonomous_driving_exam_P.Integrator1_UpperSat;
  } else if (QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_b <=
             QCar2_autonomous_driving_exam_P.Integrator1_LowerSat) {
    QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_b =
      QCar2_autonomous_driving_exam_P.Integrator1_LowerSat;
  }

  /* Product: '<S18>/Multiply2' incorporates:
   *  Gain: '<S18>/Kp (% // m//s)'
   *  Integrator: '<S18>/Integrator1'
   *  Sum: '<S18>/Add'
   *  Sum: '<S18>/Add1'
   */
  QCar2_autonomous_driving_exam_B.pwmdutycycle =
    ((QCar2_autonomous_driving_exam_P.Kpms_Gain * rtb_Saturation_e +
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_b) +
     QCar2_autonomous_driving_exam_B.Kffms) *
    QCar2_autonomous_driving_exam_B.uArm0Disarm1;
  if (tmp) {
    /* Abs: '<S13>/Abs' incorporates:
     *  Memory: '<S13>/Memory'
     */
    QCar2_autonomous_driving_exam_B.Abs = fabs
      (QCar2_autonomous_driving_exa_DW.Memory_PreviousInput);
  }

  /* RelationalOperator: '<S32>/Compare' incorporates:
   *  Abs: '<S13>/Abs1'
   *  Constant: '<S32>/Constant'
   *  Sum: '<S13>/Subtract'
   */
  QCar2_autonomous_driving_exam_B.Compare_d = (fabs
    (QCar2_autonomous_driving_exam_B.pwmdutycycle) -
    QCar2_autonomous_driving_exam_B.Abs <
    QCar2_autonomous_driving_exam_P.CompareToConstant3_const);

  /* S-Function (one_shot_block): '<S34>/one_shot_block' incorporates:
   *  Constant: '<S13>/Constant2'
   */
  if (QCar2_autonomous_driving_exam_P.one_shot_block_trigger_type == 1.0 &&
      QCar2_autonomous_driving_exam_B.Compare_d -
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[2] > 0 ) {
    if (QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] == 1.0 &&
        QCar2_autonomous_driving_exam_P.one_shot_block_redun_pulse == 1.0 ) {
    } else if (QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] == 1.0 &&
               QCar2_autonomous_driving_exam_P.one_shot_block_redun_pulse == 2.0
               ) {
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[1] = 0.0;
    } else {
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] = 1.0;
    }
  } else if (QCar2_autonomous_driving_exam_P.one_shot_block_trigger_type == 2.0 &&
             QCar2_autonomous_driving_exam_B.Compare_d -
             QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[2] < 0 ) {
    if (QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] == 1.0 &&
        QCar2_autonomous_driving_exam_P.one_shot_block_redun_pulse == 1.0 ) {
    } else if (QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] == 1.0 &&
               QCar2_autonomous_driving_exam_P.one_shot_block_redun_pulse == 2.0
               ) {
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[1] = 0.0;
    } else {
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] = 1.0;
    }
  } else if ((QCar2_autonomous_driving_exam_P.one_shot_block_trigger_type == 3.0
              && QCar2_autonomous_driving_exam_B.Compare_d -
              QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[2] < 0 ) ||
             (QCar2_autonomous_driving_exam_P.one_shot_block_trigger_type == 3.0
              && QCar2_autonomous_driving_exam_B.Compare_d -
              QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[2] > 0 ) ) {
    if (QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] == 1.0 &&
        QCar2_autonomous_driving_exam_P.one_shot_block_redun_pulse == 1.0 ) {
    } else if (QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] == 1.0 &&
               QCar2_autonomous_driving_exam_P.one_shot_block_redun_pulse == 2.0
               ) {
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[1] = 0.0;
    } else {
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] = 1.0;
    }
  }

  QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[2] =
    QCar2_autonomous_driving_exam_B.Compare_d ;
  if (QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] == 1.0 &&
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[1] <
      QCar2_autonomous_driving_exam_P.Constant2_Value_b ) {
    QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[1] += 1.0;
    QCar2_autonomous_driving_exam_B.one_shot_block = 1.0;
  } else if (QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] == 1.0 &&
             QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[1] >=
             QCar2_autonomous_driving_exam_P.Constant2_Value_b ) {
    QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] = 0.0;
    QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[1] = 0.0;
    QCar2_autonomous_driving_exam_B.one_shot_block = 0.0;
  } else if (QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] == 0.0 ) {
    QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[1] = 0.0;
    QCar2_autonomous_driving_exam_B.one_shot_block = 0.0;
  }

  /* DataTypeConversion: '<S13>/Data Type Conversion1' */
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[0] =
    QCar2_autonomous_driving_exam_B.AND3;
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[1] =
    QCar2_autonomous_driving_exam_B.AND1;
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[2] =
    QCar2_autonomous_driving_exam_B.AND3;
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[3] =
    QCar2_autonomous_driving_exam_B.AND1;

  /* Switch: '<S34>/Switch' incorporates:
   *  Constant: '<S13>/Constant'
   *  Constant: '<S13>/Constant1'
   */
  if (QCar2_autonomous_driving_exam_B.one_shot_block >=
      QCar2_autonomous_driving_exam_P.Switch_Threshold_e) {
    rateLimiterRate = QCar2_autonomous_driving_exam_P.Constant1_Value_f;
  } else {
    rateLimiterRate = QCar2_autonomous_driving_exam_P.Constant_Value_d;
  }

  /* Switch: '<S13>/Switch2' incorporates:
   *  Constant: '<S30>/Constant'
   *  Logic: '<S13>/AND2'
   *  RelationalOperator: '<S30>/Compare'
   *  Switch: '<S34>/Switch'
   */
  if ((rateLimiterRate != 0.0) || (QCar2_autonomous_driving_exam_B.pwmdutycycle ==
       QCar2_autonomous_driving_exam_P.CompareToConstant1_const)) {
    /* DataTypeConversion: '<S13>/Data Type Conversion1' incorporates:
     *  Constant: '<S13>/Steady Light'
     */
    QCar2_autonomous_driving_exam_B.DataTypeConversion1[4] =
      QCar2_autonomous_driving_exam_P.SteadyLight_Value;
  } else {
    /* DataTypeConversion: '<S13>/Data Type Conversion1' incorporates:
     *  Constant: '<S13>/Light Off'
     */
    QCar2_autonomous_driving_exam_B.DataTypeConversion1[4] =
      QCar2_autonomous_driving_exam_P.LightOff_Value;
  }

  /* End of Switch: '<S13>/Switch2' */

  /* DataTypeConversion: '<S13>/Data Type Conversion1' incorporates:
   *  Constant: '<S13>/Steady Light'
   *  Constant: '<S31>/Constant'
   *  RelationalOperator: '<S31>/Compare'
   */
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[5] =
    (QCar2_autonomous_driving_exam_B.pwmdutycycle <
     QCar2_autonomous_driving_exam_P.CompareToConstant2_const);
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[6] =
    QCar2_autonomous_driving_exam_P.SteadyLight_Value;
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[7] =
    QCar2_autonomous_driving_exam_P.SteadyLight_Value;
  if (tmp) {
    /* SignalConversion generated from: '<S8>/HIL Write' */
    for (i = 0; i < 5; i++) {
      rtb_TmpSignalConversionAtHILW_k[i] =
        QCar2_autonomous_driving_exam_B.DataTypeConversion1[i];
    }

    rtb_TmpSignalConversionAtHILW_k[5] =
      QCar2_autonomous_driving_exam_B.DataTypeConversion1[4];
    rtb_TmpSignalConversionAtHILW_k[6] =
      QCar2_autonomous_driving_exam_B.DataTypeConversion1[4];
    rtb_TmpSignalConversionAtHILW_k[11] =
      QCar2_autonomous_driving_exam_B.DataTypeConversion1[6];
    rtb_TmpSignalConversionAtHILW_k[7] =
      QCar2_autonomous_driving_exam_B.DataTypeConversion1[4];
    rtb_TmpSignalConversionAtHILW_k[9] =
      QCar2_autonomous_driving_exam_B.DataTypeConversion1[5];
    rtb_TmpSignalConversionAtHILW_k[12] =
      QCar2_autonomous_driving_exam_B.DataTypeConversion1[6];
    rtb_TmpSignalConversionAtHILW_k[8] =
      QCar2_autonomous_driving_exam_B.DataTypeConversion1[5];
    rtb_TmpSignalConversionAtHILW_k[10] =
      QCar2_autonomous_driving_exam_B.DataTypeConversion1[6];
    rtb_TmpSignalConversionAtHILW_k[13] =
      QCar2_autonomous_driving_exam_B.DataTypeConversion1[7];
    rtb_TmpSignalConversionAtHILW_k[14] =
      QCar2_autonomous_driving_exam_B.DataTypeConversion1[7];
    rtb_TmpSignalConversionAtHILW_k[15] =
      QCar2_autonomous_driving_exam_B.DataTypeConversion1[7];

    /* End of SignalConversion generated from: '<S8>/HIL Write' */

    /* Bias: '<S8>/Steering Bias' incorporates:
     *  Gain: '<S8>/Gain'
     */
    rtb_SteeringBias = QCar2_autonomous_driving_exam_P.Gain_Gain *
      QCar2_autonomous_driving_exam_B.RateTransition +
      QCar2_autonomous_driving_exam_P.SteeringBias_Bias;
  }

  /* Gain: '<S8>/direction convention' */
  rateLimiterRate = QCar2_autonomous_driving_exam_P.directionconvention_Gain *
    QCar2_autonomous_driving_exam_B.pwmdutycycle;

  /* Saturate: '<S8>/command saturation' */
  if (rateLimiterRate >
      QCar2_autonomous_driving_exam_P.commandsaturation_UpperSat_e) {
    /* Saturate: '<S8>/command saturation' */
    QCar2_autonomous_driving_exam_B.commandsaturation =
      QCar2_autonomous_driving_exam_P.commandsaturation_UpperSat_e;
  } else if (rateLimiterRate <
             QCar2_autonomous_driving_exam_P.commandsaturation_LowerSat_j) {
    /* Saturate: '<S8>/command saturation' */
    QCar2_autonomous_driving_exam_B.commandsaturation =
      QCar2_autonomous_driving_exam_P.commandsaturation_LowerSat_j;
  } else {
    /* Saturate: '<S8>/command saturation' */
    QCar2_autonomous_driving_exam_B.commandsaturation = rateLimiterRate;
  }

  /* End of Saturate: '<S8>/command saturation' */
  if (tmp) {
    /* SignalConversion generated from: '<S8>/HIL Write' */
    rtb_TmpSignalConversionAtHILWri[0] = rtb_SteeringBias;
    rtb_TmpSignalConversionAtHILWri[1] =
      QCar2_autonomous_driving_exam_B.commandsaturation;

    /* S-Function (hil_write_block): '<S8>/HIL Write' */

    /* S-Function Block: QCar2_autonomous_driving_example2/basicQCarIO/HIL Write (hil_write_block) */
    {
      t_error result;
      result = hil_write(QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
                         NULL, 0U,
                         NULL, 0U,
                         QCar2_autonomous_driving_exam_P.HILWrite_digital_channels,
                         16U,
                         QCar2_autonomous_driving_exam_P.HILWrite_other_channels,
                         2U,
                         NULL,
                         NULL,
                         (t_boolean *) &rtb_TmpSignalConversionAtHILW_k[0],
                         &rtb_TmpSignalConversionAtHILWri[0]
                         );
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
      }
    }

    /* RateTransition: '<Root>/Rate Transition5' */
    if (QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_2) {
      /* Bias: '<Root>/Bias1' incorporates:
       *  Gain: '<Root>/Gain'
       *  Sum: '<Root>/Subtract'
       */
      rateLimiterRate = (QCar2_autonomous_driving_exam_B.speed_cmd -
                         QCar2_autonomous_driving_exam_B.DesiredSpeedms) *
        QCar2_autonomous_driving_exam_P.Gain_Gain_p +
        QCar2_autonomous_driving_exam_P.Bias1_Bias;

      /* Saturate: '<Root>/Saturation' */
      if (rateLimiterRate >
          QCar2_autonomous_driving_exam_P.Saturation_UpperSat_p) {
        QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer =
          QCar2_autonomous_driving_exam_P.Saturation_UpperSat_p;
      } else if (rateLimiterRate <
                 QCar2_autonomous_driving_exam_P.Saturation_LowerSat_p) {
        QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer =
          QCar2_autonomous_driving_exam_P.Saturation_LowerSat_p;
      } else {
        QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer = rateLimiterRate;
      }

      /* End of Saturate: '<Root>/Saturation' */
    }

    /* End of RateTransition: '<Root>/Rate Transition5' */
  }

  /* Gain: '<S18>/Ki (% // m)  ' */
  QCar2_autonomous_driving_exam_B.Kim = QCar2_autonomous_driving_exam_P.Kim_Gain
    * rtb_Saturation_e;
  if (tmp) {
    /* S-Function (sample_time_block): '<S14>/Sample Time' */

    /* S-Function Block: QCar2_autonomous_driving_example2/monitorTiming /Sample Time (sample_time_block) */
    {
      t_error result;
      t_timeout current_time;
      t_timeout time_difference;
      result = timeout_get_high_resolution_time(&current_time);
      if (result >= 0) {
        result = timeout_subtract(&time_difference, &current_time,
          &QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime);
        QCar2_autonomous_driving_exam_B.SampleTime = time_difference.seconds +
          time_difference.nanoseconds * 1e-9;
        memcpy(&QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime,
               &current_time, sizeof(t_timeout));
      }

      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }
    }

    /* Constant: '<S14>/Constant' */
    QCar2_autonomous_driving_exam_B.Constant =
      QCar2_autonomous_driving_exam_P.Constant_Value_c;

    /* S-Function (computation_time_block): '<S14>/Computation Time' */

    /* S-Function Block: QCar2_autonomous_driving_example2/monitorTiming /Computation Time (computation_time_block) */
    {
      QCar2_autonomous_driving_exam_B.ComputationTime =
        QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationTime.seconds
        + QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationTime.nanoseconds
        * 1e-9;
    }

    /* RateTransition: '<Root>/Rate Transition4' */
    if (QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_2) {
      /* RateTransition: '<Root>/Rate Transition4' */
      QCar2_autonomous_driving_exam_B.RateTransition4[0] =
        QCar2_autonomous_driving_exa_DW.RateTransition4_Buffer0[0];
      QCar2_autonomous_driving_exam_B.RateTransition4[1] =
        QCar2_autonomous_driving_exa_DW.RateTransition4_Buffer0[1];
      QCar2_autonomous_driving_exam_B.RateTransition4[2] =
        QCar2_autonomous_driving_exa_DW.RateTransition4_Buffer0[2];
    }

    /* End of RateTransition: '<Root>/Rate Transition4' */

    /* RateTransition: '<Root>/Rate Transition3' */
    if (QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_3) {
      /* RateTransition: '<Root>/Rate Transition3' */
      QCar2_autonomous_driving_exam_B.RateTransition3[0] =
        QCar2_autonomous_driving_exa_DW.RateTransition3_Buffer0[0];
      QCar2_autonomous_driving_exam_B.RateTransition3[1] =
        QCar2_autonomous_driving_exa_DW.RateTransition3_Buffer0[1];
      QCar2_autonomous_driving_exam_B.RateTransition3[2] =
        QCar2_autonomous_driving_exa_DW.RateTransition3_Buffer0[2];
    }

    /* End of RateTransition: '<Root>/Rate Transition3' */
  }
}

/* Model update function for TID0 */
void QCar2_autonomous_driving_example2_update0(void) /* Sample time: [0.0s, 0.0s] */
{
  /* Update for Integrator: '<S26>/Integrator1' */
  QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1 = false;

  /* Update for Integrator: '<S27>/Integrator1' */
  QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_j = false;

  /* Update for Integrator: '<S28>/Integrator1' */
  QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_m = false;
  if (rtmIsMajorTimeStep(QCar2_autonomous_driving_exa_M)) {
    /* Update for Memory: '<S13>/Memory' */
    QCar2_autonomous_driving_exa_DW.Memory_PreviousInput =
      QCar2_autonomous_driving_exam_B.pwmdutycycle;
  }

  if (rtmIsMajorTimeStep(QCar2_autonomous_driving_exa_M)) {
    rt_ertODEUpdateContinuousStates(&QCar2_autonomous_driving_exa_M->solverInfo);
  }

  /* Update absolute time */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++QCar2_autonomous_driving_exa_M->Timing.clockTick0)) {
    ++QCar2_autonomous_driving_exa_M->Timing.clockTickH0;
  }

  QCar2_autonomous_driving_exa_M->Timing.t[0] = rtsiGetSolverStopTime
    (&QCar2_autonomous_driving_exa_M->solverInfo);

  /* Update absolute time */
  /* The "clockTick1" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick1"
   * and "Timing.stepSize1". Size of "clockTick1" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick1 and the high bits
   * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++QCar2_autonomous_driving_exa_M->Timing.clockTick1)) {
    ++QCar2_autonomous_driving_exa_M->Timing.clockTickH1;
  }

  QCar2_autonomous_driving_exa_M->Timing.t[1] =
    QCar2_autonomous_driving_exa_M->Timing.clockTick1 *
    QCar2_autonomous_driving_exa_M->Timing.stepSize1 +
    QCar2_autonomous_driving_exa_M->Timing.clockTickH1 *
    QCar2_autonomous_driving_exa_M->Timing.stepSize1 * 4294967296.0;
}

/* Derivatives for root system: '<Root>' */
void QCar2_autonomous_driving_example2_derivatives(void)
{
  XDot_QCar2_autonomous_driving_T *_rtXdot;
  boolean_T lsat;
  boolean_T usat;
  _rtXdot = ((XDot_QCar2_autonomous_driving_T *)
             QCar2_autonomous_driving_exa_M->derivs);

  /* Derivatives for Integrator: '<S26>/Integrator1' */
  _rtXdot->Integrator1_CSTATE = QCar2_autonomous_driving_exam_B.Product1;

  /* Derivatives for Integrator: '<S26>/Integrator2' */
  _rtXdot->Integrator2_CSTATE = QCar2_autonomous_driving_exam_B.Product;

  /* Derivatives for Integrator: '<S27>/Integrator1' */
  _rtXdot->Integrator1_CSTATE_a = QCar2_autonomous_driving_exam_B.Product1_c;

  /* Derivatives for Integrator: '<S27>/Integrator2' */
  _rtXdot->Integrator2_CSTATE_k = QCar2_autonomous_driving_exam_B.Product_a;

  /* Derivatives for Integrator: '<S28>/Integrator1' */
  _rtXdot->Integrator1_CSTATE_aa = QCar2_autonomous_driving_exam_B.Product1_o;

  /* Derivatives for Integrator: '<S28>/Integrator2' */
  _rtXdot->Integrator2_CSTATE_k5 = QCar2_autonomous_driving_exam_B.Product_c;

  /* Derivatives for Integrator: '<S18>/Integrator1' */
  lsat = (QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_b <=
          QCar2_autonomous_driving_exam_P.Integrator1_LowerSat);
  usat = (QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_b >=
          QCar2_autonomous_driving_exam_P.Integrator1_UpperSat);
  if (((!lsat) && (!usat)) || (lsat && (QCar2_autonomous_driving_exam_B.Kim >
        0.0)) || (usat && (QCar2_autonomous_driving_exam_B.Kim < 0.0))) {
    _rtXdot->Integrator1_CSTATE_b = QCar2_autonomous_driving_exam_B.Kim;
  } else {
    /* in saturation */
    _rtXdot->Integrator1_CSTATE_b = 0.0;
  }

  /* End of Derivatives for Integrator: '<S18>/Integrator1' */
}

/* Model output function for TID2 */
void QCar2_autonomous_driving_example2_output2(void)
                               /* Sample time: [0.0083333333333333332s, 0.0s] */
{
  /* local block i/o variables */
  real_T rtb_SampleTime;
  real_T rtb_ComputationTime;
  emxArray_int32_T_QCar2_autono_T *ii;
  emxArray_int32_T_QCar2_autono_T *jj;
  emxArray_real_T_QCar2_autonom_T *b_0;
  emxArray_real_T_QCar2_autonom_T *imageSize;
  emxArray_real_T_QCar2_autonom_T *x;
  real_T result[2];
  real_T rtb_Add1;
  real_T rtb_Add4;
  real_T rtb_Add7;
  real_T rtb_Product3;
  real_T rtb_Product4;
  real_T rtb_Product5;
  real_T rtb_uRight0Left;
  real_T u0;
  int32_T section_size[3];
  int32_T tmp_size[2];
  int32_T varargin_1_tmp_size[2];
  int32_T b;
  int32_T b_n;
  int32_T i;
  int32_T i_0;
  int32_T imageToThreshold_tmp;
  int32_T imageToThreshold_tmp_0;
  int32_T loop_ub;
  int32_T loop_ub_0;
  int32_T o;
  int32_T p;
  uint8_T y_m;

  /* ManualSwitch: '<S21>/1 - Right, 0 - Left' incorporates:
   *  Constant: '<S21>/Constant3'
   *  Constant: '<S21>/Constant4'
   */
  if (QCar2_autonomous_driving_exam_P.uRight0Left_CurrentSetting == 1) {
    rtb_uRight0Left = QCar2_autonomous_driving_exam_P.Constant4_Value;
  } else {
    rtb_uRight0Left = QCar2_autonomous_driving_exam_P.Constant3_Value_b;
  }

  /* End of ManualSwitch: '<S21>/1 - Right, 0 - Left' */

  /* S-Function (video_capture_block): '<S10>/Video Capture' */
  /* S-Function Block: QCar2_autonomous_driving_example2/captureCSI/Video Capture (video_capture_block) */
  {
    t_error result;
    t_video_capture_attribute local_attr[18] = {
      { QCar2_autonomous_driving_exam_P.VideoCapture_Brightness,
        VIDEO_CAPTURE_PROPERTY_BRIGHTNESS, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Contrast,
        VIDEO_CAPTURE_PROPERTY_CONTRAST, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Hue,
        VIDEO_CAPTURE_PROPERTY_HUE, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Saturation,
        VIDEO_CAPTURE_PROPERTY_SATURATION, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Sharpness,
        VIDEO_CAPTURE_PROPERTY_SHARPNESS, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Gamma,
        VIDEO_CAPTURE_PROPERTY_GAMMA, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_ColorEnable,
        VIDEO_CAPTURE_PROPERTY_COLOREFFECT, (t_boolean) 0, true }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_WhiteBalance,
        VIDEO_CAPTURE_PROPERTY_WHITEBALANCE, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_BacklightCompensat,
        VIDEO_CAPTURE_PROPERTY_BACKLIGHTCOMPENSATION, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Gain,
        VIDEO_CAPTURE_PROPERTY_GAIN, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Pan,
        VIDEO_CAPTURE_PROPERTY_PAN, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Tilt,
        VIDEO_CAPTURE_PROPERTY_TILT, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Roll,
        VIDEO_CAPTURE_PROPERTY_ROLL, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Zoom,
        VIDEO_CAPTURE_PROPERTY_ZOOM, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Exposure,
        VIDEO_CAPTURE_PROPERTY_EXPOSURE, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Iris,
        VIDEO_CAPTURE_PROPERTY_IRIS, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Focus,
        VIDEO_CAPTURE_PROPERTY_FOCUS, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Mirror,
        VIDEO_CAPTURE_PROPERTY_MIRROR, (t_boolean) 0, true }
    };

    video_capture_set_property
      (QCar2_autonomous_driving_exa_DW.VideoCapture_VideoCapture, local_attr,
       ARRAY_LENGTH(local_attr));
    result = video_capture_read
      (QCar2_autonomous_driving_exa_DW.VideoCapture_VideoCapture,
       &QCar2_autonomous_driving_exam_B.VideoCapture_o1[0]);
    QCar2_autonomous_driving_exam_B.VideoCapture_o2 = (result > 0);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* MATLAB Function: '<Root>/MATLAB Function' incorporates:
   *  RateTransition: '<Root>/Rate Transition5'
   *  S-Function (video_capture_block): '<S10>/Video Capture'
   */
  QCar2_autonomous_driving_exa_DW.sfEvent_k = QCar2_autonomous_dri_CALL_EVENT;
  if (rtb_uRight0Left != 0.0) {
    for (i = 0; i < 273; i++) {
      for (i_0 = 0; i_0 < 205; i_0++) {
        imageToThreshold_tmp = ((int32_T)((real_T)i + 547.66666666666663) - 1) *
          410 + i_0;
        imageToThreshold_tmp_0 = 205 * i + i_0;
        QCar2_autonomous_driving_exam_B.imageToThreshold[imageToThreshold_tmp_0]
          = QCar2_autonomous_driving_exam_B.VideoCapture_o1[imageToThreshold_tmp
          + 205];
        QCar2_autonomous_driving_exam_B.imageToThreshold[imageToThreshold_tmp_0
          + 55965] =
          QCar2_autonomous_driving_exam_B.VideoCapture_o1[imageToThreshold_tmp +
          336405];
        QCar2_autonomous_driving_exam_B.imageToThreshold[imageToThreshold_tmp_0
          + 111930] =
          QCar2_autonomous_driving_exam_B.VideoCapture_o1[imageToThreshold_tmp +
          672605];
      }
    }
  } else {
    for (i = 0; i < 273; i++) {
      for (i_0 = 0; i_0 < 205; i_0++) {
        imageToThreshold_tmp = 410 * i + i_0;
        imageToThreshold_tmp_0 = 205 * i + i_0;
        QCar2_autonomous_driving_exam_B.imageToThreshold[imageToThreshold_tmp_0]
          = QCar2_autonomous_driving_exam_B.VideoCapture_o1[imageToThreshold_tmp
          + 205];
        QCar2_autonomous_driving_exam_B.imageToThreshold[imageToThreshold_tmp_0
          + 55965] =
          QCar2_autonomous_driving_exam_B.VideoCapture_o1[imageToThreshold_tmp +
          336405];
        QCar2_autonomous_driving_exam_B.imageToThreshold[imageToThreshold_tmp_0
          + 111930] =
          QCar2_autonomous_driving_exam_B.VideoCapture_o1[imageToThreshold_tmp +
          672605];
      }
    }
  }

  if (205.0 - ((410.0 - QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer)
               + 1.0) < 1.0) {
    b = 0;
  } else {
    b = (int32_T)(205.0 - ((410.0 -
      QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer) + 1.0));
  }

  for (i = 0; i < 3; i++) {
    for (i_0 = 0; i_0 < 273; i_0++) {
      if (b - 1 >= 0) {
        memset(&QCar2_autonomous_driving_exam_B.imageToThreshold[i * 55965 + i_0
               * 205], 0, (uint32_T)b * sizeof(uint8_T));
      }
    }
  }

  /* S-Function (image_transform_block): '<S12>/Image Transform' */

  /* S-Function Block: QCar2_autonomous_driving_example2/colorThresholdingHSV/Image Transform (image_transform_block) */
  {
    t_error result;
    result = image_rgb_to_hsv_uint8
      (QCar2_autonomous_driving_exa_DW.ImageTransform_AlgHandle,
       &QCar2_autonomous_driving_exam_B.imageToThreshold[0], 273, 205,
       &QCar2_autonomous_driving_exam_B.ImageTransform[0]);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Gain: '<S29>/Gain' incorporates:
   *  Constant: '<S21>/Hue Max'
   *  Constant: '<S21>/Hue Min'
   *  Sum: '<S29>/Add'
   */
  rtb_Add1 = (QCar2_autonomous_driving_exam_P.HueMin_Value +
              QCar2_autonomous_driving_exam_P.HueMax_Value) *
    QCar2_autonomous_driving_exam_P.Gain_Gain_d;

  /* Constant: '<S21>/Color Selecting Mean (0)' */
  QCar2_autonomous_driving_exam_B.ColorSelectingMean0 =
    QCar2_autonomous_driving_exam_P.ColorSelectingMean0_Value;

  /* Sum: '<S29>/Add1' incorporates:
   *  Gain: '<S29>/20%'
   *  Product: '<S29>/Product'
   */
  rtb_Add1 += QCar2_autonomous_driving_exam_P.u0_Gain * rtb_Add1 *
    QCar2_autonomous_driving_exam_B.ColorSelectingMean0;

  /* Constant: '<S21>/Color Selecting Window (1)' */
  QCar2_autonomous_driving_exam_B.ColorSelectingWindow1 =
    QCar2_autonomous_driving_exam_P.ColorSelectingWindow1_Value;

  /* Product: '<S29>/Product5' incorporates:
   *  Constant: '<S21>/Hue Max'
   *  Constant: '<S21>/Hue Min'
   *  Gain: '<S29>/Gain1'
   *  Sum: '<S29>/Subtract'
   */
  rtb_Product5 = (QCar2_autonomous_driving_exam_P.HueMax_Value -
                  QCar2_autonomous_driving_exam_P.HueMin_Value) *
    QCar2_autonomous_driving_exam_P.Gain1_Gain *
    QCar2_autonomous_driving_exam_B.ColorSelectingWindow1;

  /* Sum: '<S29>/Subtract1' */
  QCar2_autonomous_driving_exam_B.Subtract1 = rtb_Add1 - rtb_Product5;

  /* Gain: '<S29>/Gain2' incorporates:
   *  Constant: '<S21>/Sat Max'
   *  Constant: '<S21>/Sat Min'
   *  Sum: '<S29>/Add3'
   */
  rtb_Add4 = (QCar2_autonomous_driving_exam_P.SatMin_Value +
              QCar2_autonomous_driving_exam_P.SatMax_Value) *
    QCar2_autonomous_driving_exam_P.Gain2_Gain;

  /* Constant: '<S21>/Color Mixing Mean (0)' */
  QCar2_autonomous_driving_exam_B.ColorMixingMean0 =
    QCar2_autonomous_driving_exam_P.ColorMixingMean0_Value;

  /* Sum: '<S29>/Add4' incorporates:
   *  Gain: '<S29>/20%1'
   *  Product: '<S29>/Product1'
   */
  rtb_Add4 += QCar2_autonomous_driving_exam_P.u01_Gain * rtb_Add4 *
    QCar2_autonomous_driving_exam_B.ColorMixingMean0;

  /* Constant: '<S21>/Color Mixing Window (1)' */
  QCar2_autonomous_driving_exam_B.ColorMixingWindow1 =
    QCar2_autonomous_driving_exam_P.ColorMixingWindow1_Value;

  /* Product: '<S29>/Product4' incorporates:
   *  Constant: '<S21>/Sat Max'
   *  Constant: '<S21>/Sat Min'
   *  Gain: '<S29>/Gain3'
   *  Sum: '<S29>/Subtract2'
   */
  rtb_Product4 = (QCar2_autonomous_driving_exam_P.SatMax_Value -
                  QCar2_autonomous_driving_exam_P.SatMin_Value) *
    QCar2_autonomous_driving_exam_P.Gain3_Gain *
    QCar2_autonomous_driving_exam_B.ColorMixingWindow1;

  /* Sum: '<S29>/Subtract3' */
  QCar2_autonomous_driving_exam_B.Subtract3 = rtb_Add4 - rtb_Product4;

  /* Gain: '<S29>/Gain4' incorporates:
   *  Constant: '<S21>/Val Max'
   *  Constant: '<S21>/Val Min'
   *  Sum: '<S29>/Add6'
   */
  rtb_Add7 = (QCar2_autonomous_driving_exam_P.ValMin_Value +
              QCar2_autonomous_driving_exam_P.ValMax_Value) *
    QCar2_autonomous_driving_exam_P.Gain4_Gain;

  /* Constant: '<S21>/Brightness Mean (0)' */
  QCar2_autonomous_driving_exam_B.BrightnessMean0 =
    QCar2_autonomous_driving_exam_P.BrightnessMean0_Value;

  /* Sum: '<S29>/Add7' incorporates:
   *  Gain: '<S29>/20%2'
   *  Product: '<S29>/Product2'
   */
  rtb_Add7 += QCar2_autonomous_driving_exam_P.u02_Gain * rtb_Add7 *
    QCar2_autonomous_driving_exam_B.BrightnessMean0;

  /* Constant: '<S21>/Brightness Window (1)' */
  QCar2_autonomous_driving_exam_B.BrightnessWindow1 =
    QCar2_autonomous_driving_exam_P.BrightnessWindow1_Value;

  /* Product: '<S29>/Product3' incorporates:
   *  Constant: '<S21>/Val Max'
   *  Constant: '<S21>/Val Min'
   *  Gain: '<S29>/Gain5'
   *  Sum: '<S29>/Subtract4'
   */
  rtb_Product3 = (QCar2_autonomous_driving_exam_P.ValMax_Value -
                  QCar2_autonomous_driving_exam_P.ValMin_Value) *
    QCar2_autonomous_driving_exam_P.Gain5_Gain *
    QCar2_autonomous_driving_exam_B.BrightnessWindow1;

  /* Sum: '<S29>/Subtract5' */
  QCar2_autonomous_driving_exam_B.Subtract5 = rtb_Add7 - rtb_Product3;

  /* Gain: '<S29>/Gain6' */
  u0 = QCar2_autonomous_driving_exam_P.Gain6_Gain *
    QCar2_autonomous_driving_exam_B.Subtract1;

  /* Saturate: '<S29>/Saturation' */
  if (u0 > QCar2_autonomous_driving_exam_P.Saturation_UpperSat_i[0]) {
    /* Saturate: '<S29>/Saturation' */
    QCar2_autonomous_driving_exam_B.Saturation[0] =
      QCar2_autonomous_driving_exam_P.Saturation_UpperSat_i[0];
  } else if (u0 < QCar2_autonomous_driving_exam_P.Saturation_LowerSat_g[0]) {
    /* Saturate: '<S29>/Saturation' */
    QCar2_autonomous_driving_exam_B.Saturation[0] =
      QCar2_autonomous_driving_exam_P.Saturation_LowerSat_g[0];
  } else {
    /* Saturate: '<S29>/Saturation' */
    QCar2_autonomous_driving_exam_B.Saturation[0] = u0;
  }

  if (QCar2_autonomous_driving_exam_B.Subtract3 >
      QCar2_autonomous_driving_exam_P.Saturation_UpperSat_i[1]) {
    /* Saturate: '<S29>/Saturation' */
    QCar2_autonomous_driving_exam_B.Saturation[1] =
      QCar2_autonomous_driving_exam_P.Saturation_UpperSat_i[1];
  } else if (QCar2_autonomous_driving_exam_B.Subtract3 <
             QCar2_autonomous_driving_exam_P.Saturation_LowerSat_g[1]) {
    /* Saturate: '<S29>/Saturation' */
    QCar2_autonomous_driving_exam_B.Saturation[1] =
      QCar2_autonomous_driving_exam_P.Saturation_LowerSat_g[1];
  } else {
    /* Saturate: '<S29>/Saturation' */
    QCar2_autonomous_driving_exam_B.Saturation[1] =
      QCar2_autonomous_driving_exam_B.Subtract3;
  }

  if (QCar2_autonomous_driving_exam_B.Subtract5 >
      QCar2_autonomous_driving_exam_P.Saturation_UpperSat_i[2]) {
    /* Saturate: '<S29>/Saturation' */
    QCar2_autonomous_driving_exam_B.Saturation[2] =
      QCar2_autonomous_driving_exam_P.Saturation_UpperSat_i[2];
  } else if (QCar2_autonomous_driving_exam_B.Subtract5 <
             QCar2_autonomous_driving_exam_P.Saturation_LowerSat_g[2]) {
    /* Saturate: '<S29>/Saturation' */
    QCar2_autonomous_driving_exam_B.Saturation[2] =
      QCar2_autonomous_driving_exam_P.Saturation_LowerSat_g[2];
  } else {
    /* Saturate: '<S29>/Saturation' */
    QCar2_autonomous_driving_exam_B.Saturation[2] =
      QCar2_autonomous_driving_exam_B.Subtract5;
  }

  /* End of Saturate: '<S29>/Saturation' */

  /* Sum: '<S29>/Add2' */
  QCar2_autonomous_driving_exam_B.Add2 = rtb_Add1 + rtb_Product5;

  /* Sum: '<S29>/Add5' */
  QCar2_autonomous_driving_exam_B.Add5 = rtb_Add4 + rtb_Product4;

  /* Sum: '<S29>/Add8' */
  QCar2_autonomous_driving_exam_B.Add8 = rtb_Add7 + rtb_Product3;

  /* Gain: '<S29>/Gain7' */
  u0 = QCar2_autonomous_driving_exam_P.Gain7_Gain *
    QCar2_autonomous_driving_exam_B.Add2;

  /* Saturate: '<S29>/Saturation1' */
  if (u0 > QCar2_autonomous_driving_exam_P.Saturation1_UpperSat_d[0]) {
    /* Saturate: '<S29>/Saturation1' */
    QCar2_autonomous_driving_exam_B.Saturation1[0] =
      QCar2_autonomous_driving_exam_P.Saturation1_UpperSat_d[0];
  } else if (u0 < QCar2_autonomous_driving_exam_P.Saturation1_LowerSat_o[0]) {
    /* Saturate: '<S29>/Saturation1' */
    QCar2_autonomous_driving_exam_B.Saturation1[0] =
      QCar2_autonomous_driving_exam_P.Saturation1_LowerSat_o[0];
  } else {
    /* Saturate: '<S29>/Saturation1' */
    QCar2_autonomous_driving_exam_B.Saturation1[0] = u0;
  }

  if (QCar2_autonomous_driving_exam_B.Add5 >
      QCar2_autonomous_driving_exam_P.Saturation1_UpperSat_d[1]) {
    /* Saturate: '<S29>/Saturation1' */
    QCar2_autonomous_driving_exam_B.Saturation1[1] =
      QCar2_autonomous_driving_exam_P.Saturation1_UpperSat_d[1];
  } else if (QCar2_autonomous_driving_exam_B.Add5 <
             QCar2_autonomous_driving_exam_P.Saturation1_LowerSat_o[1]) {
    /* Saturate: '<S29>/Saturation1' */
    QCar2_autonomous_driving_exam_B.Saturation1[1] =
      QCar2_autonomous_driving_exam_P.Saturation1_LowerSat_o[1];
  } else {
    /* Saturate: '<S29>/Saturation1' */
    QCar2_autonomous_driving_exam_B.Saturation1[1] =
      QCar2_autonomous_driving_exam_B.Add5;
  }

  if (QCar2_autonomous_driving_exam_B.Add8 >
      QCar2_autonomous_driving_exam_P.Saturation1_UpperSat_d[2]) {
    /* Saturate: '<S29>/Saturation1' */
    QCar2_autonomous_driving_exam_B.Saturation1[2] =
      QCar2_autonomous_driving_exam_P.Saturation1_UpperSat_d[2];
  } else if (QCar2_autonomous_driving_exam_B.Add8 <
             QCar2_autonomous_driving_exam_P.Saturation1_LowerSat_o[2]) {
    /* Saturate: '<S29>/Saturation1' */
    QCar2_autonomous_driving_exam_B.Saturation1[2] =
      QCar2_autonomous_driving_exam_P.Saturation1_LowerSat_o[2];
  } else {
    /* Saturate: '<S29>/Saturation1' */
    QCar2_autonomous_driving_exam_B.Saturation1[2] =
      QCar2_autonomous_driving_exam_B.Add8;
  }

  /* End of Saturate: '<S29>/Saturation1' */

  /* S-Function (image_compare_block): '<S12>/HSV Color Thresholding' */

  /* S-Function Block: QCar2_autonomous_driving_example2/colorThresholdingHSV/HSV Color Thresholding (image_compare_block) */
  {
    t_error result;
    t_image_comparison_type comparisons[3];
    t_uint8 minimums[3];
    t_uint8 maximums[3];
    comparisons[0] = (t_image_comparison_type)
      (QCar2_autonomous_driving_exam_P.HSVColorThresholding_r_comparis - 1);
    comparisons[1] = (t_image_comparison_type)
      (QCar2_autonomous_driving_exam_P.HSVColorThresholding_g_comparis - 1);
    comparisons[2] = (t_image_comparison_type)
      (QCar2_autonomous_driving_exam_P.HSVColorThresholding_b_comparis - 1);
    if ((comparisons[0] & COMPARE_WRAP) == 0) {
      if (QCar2_autonomous_driving_exam_B.Saturation[0] < 0) {
        minimums[0] = 0;
      } else if (QCar2_autonomous_driving_exam_B.Saturation[0] > 255U) {
        minimums[0] = 255U;
      } else {
        minimums[0] = (t_uint8) QCar2_autonomous_driving_exam_B.Saturation[0];
      }

      if (QCar2_autonomous_driving_exam_B.Saturation1[0] < 0) {
        maximums[0] = 0;
      } else if (QCar2_autonomous_driving_exam_B.Saturation1[0] > 255U) {
        maximums[0] = 255U;
      } else {
        maximums[0] = (t_uint8) QCar2_autonomous_driving_exam_B.Saturation1[0];
      }
    } else {
      minimums[0] = (t_uint8) (QCar2_autonomous_driving_exam_B.Saturation[0] -
        256U * floor(QCar2_autonomous_driving_exam_B.Saturation[0] / 256U));
      maximums[0] = (t_uint8) (QCar2_autonomous_driving_exam_B.Saturation1[0] -
        256U * floor(QCar2_autonomous_driving_exam_B.Saturation1[0] / 256U));
    }

    if ((comparisons[1] & COMPARE_WRAP) == 0) {
      if (QCar2_autonomous_driving_exam_B.Saturation[1] < 0) {
        minimums[1] = 0;
      } else if (QCar2_autonomous_driving_exam_B.Saturation[1] > 255U) {
        minimums[1] = 255U;
      } else {
        minimums[1] = (t_uint8) QCar2_autonomous_driving_exam_B.Saturation[1];
      }

      if (QCar2_autonomous_driving_exam_B.Saturation1[1] < 0) {
        maximums[1] = 0;
      } else if (QCar2_autonomous_driving_exam_B.Saturation1[1] > 255U) {
        maximums[1] = 255U;
      } else {
        maximums[1] = (t_uint8) QCar2_autonomous_driving_exam_B.Saturation1[1];
      }
    } else {
      minimums[1] = (t_uint8) (QCar2_autonomous_driving_exam_B.Saturation[1] -
        256U * floor(QCar2_autonomous_driving_exam_B.Saturation[1] / 256U));
      maximums[1] = (t_uint8) (QCar2_autonomous_driving_exam_B.Saturation1[1] -
        256U * floor(QCar2_autonomous_driving_exam_B.Saturation1[1] / 256U));
    }

    if ((comparisons[2] & COMPARE_WRAP) == 0) {
      if (QCar2_autonomous_driving_exam_B.Saturation[2] < 0) {
        minimums[2] = 0;
      } else if (QCar2_autonomous_driving_exam_B.Saturation[2] > 255U) {
        minimums[2] = 255U;
      } else {
        minimums[2] = (t_uint8) QCar2_autonomous_driving_exam_B.Saturation[2];
      }

      if (QCar2_autonomous_driving_exam_B.Saturation1[2] < 0) {
        maximums[2] = 0;
      } else if (QCar2_autonomous_driving_exam_B.Saturation1[2] > 255U) {
        maximums[2] = 255U;
      } else {
        maximums[2] = (t_uint8) QCar2_autonomous_driving_exam_B.Saturation1[2];
      }
    } else {
      minimums[2] = (t_uint8) (QCar2_autonomous_driving_exam_B.Saturation[2] -
        256U * floor(QCar2_autonomous_driving_exam_B.Saturation[2] / 256U));
      maximums[2] = (t_uint8) (QCar2_autonomous_driving_exam_B.Saturation1[2] -
        256U * floor(QCar2_autonomous_driving_exam_B.Saturation1[2] / 256U));
    }

    result = image_rgb_compare_range_uint8
      (&QCar2_autonomous_driving_exam_B.ImageTransform[0], 273, 205, comparisons,
       minimums, maximums, COMPARE_OUTPUT_COMBINED,
       &QCar2_autonomous_driving_exam_B.HSVColorThresholding[0]);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* MATLAB Function: '<S19>/Quick Resize' incorporates:
   *  S-Function (image_compare_block): '<S12>/HSV Color Thresholding'
   */
  QCar2_autonomous_driving_exa_DW.sfEvent_n = QCar2_autonomous_dri_CALL_EVENT;
  for (i = 0; i < 91; i++) {
    for (i_0 = 0; i_0 < 69; i_0++) {
      QCar2_autonomous_driving_exam_B.y_b[i_0 + 69 * i] =
        QCar2_autonomous_driving_exam_B.HSVColorThresholding[3 * i * 205 + 3 *
        i_0];
    }
  }

  /* End of MATLAB Function: '<S19>/Quick Resize' */

  /* MATLAB Function: '<S19>/Quick Resize1' incorporates:
   *  S-Function (video_capture_block): '<S10>/Video Capture'
   */
  QCar2_autonomous_driving_exa_DW.sfEvent = QCar2_autonomous_dri_CALL_EVENT;
  for (i = 0; i < 274; i++) {
    for (i_0 = 0; i_0 < 137; i_0++) {
      imageToThreshold_tmp = 3 * i * 410 + 3 * i_0;
      imageToThreshold_tmp_0 = 137 * i + i_0;
      QCar2_autonomous_driving_exam_B.y_m[imageToThreshold_tmp_0] =
        QCar2_autonomous_driving_exam_B.VideoCapture_o1[imageToThreshold_tmp];
      QCar2_autonomous_driving_exam_B.y_m[imageToThreshold_tmp_0 + 37538] =
        QCar2_autonomous_driving_exam_B.VideoCapture_o1[imageToThreshold_tmp +
        336200];
      QCar2_autonomous_driving_exam_B.y_m[imageToThreshold_tmp_0 + 75076] =
        QCar2_autonomous_driving_exam_B.VideoCapture_o1[imageToThreshold_tmp +
        672400];
    }
  }

  /* End of MATLAB Function: '<S19>/Quick Resize1' */

  /* Bias: '<S19>/Bias' incorporates:
   *  Gain: '<S19>/Gain'
   *  RateTransition: '<Root>/Rate Transition5'
   *  Rounding: '<S19>/Floor'
   */
  rtb_Add1 = floor(QCar2_autonomous_driving_exam_P.Gain_Gain_a *
                   QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer) +
    QCar2_autonomous_driving_exam_P.Bias_Bias;

  /* MATLAB Function: '<S19>/Combine images' */
  QCar2_autonomous_driving_exa_DW.sfEvent_o3 = QCar2_autonomous_dri_CALL_EVENT;
  memcpy(&QCar2_autonomous_driving_exam_B.y_d[0],
         &QCar2_autonomous_driving_exam_B.y_m[0], 112614U * sizeof(uint8_T));
  QCar2_autonomous_emxInit_real_T(&b_0, 2);

  /* MATLAB Function: '<S19>/Combine images' */
  if (rtIsNaN(rtb_Add1)) {
    i_0 = b_0->size[0] * b_0->size[1];
    b_0->size[1] = 1;
    QCar2__emxEnsureCapacity_real_T(b_0, i_0);
  } else if (rtb_Add1 > 137.0) {
    b_0->size[1] = 0;
  } else if (floor(rtb_Add1) == rtb_Add1) {
    i_0 = b_0->size[0] * b_0->size[1];
    b_0->size[0] = 1;
    b_0->size[1] = (int32_T)(137.0 - rtb_Add1) + 1;
    QCar2__emxEnsureCapacity_real_T(b_0, i_0);
    loop_ub = (int32_T)(137.0 - rtb_Add1);
    for (i = 0; i <= loop_ub; i++) {
      b_0->data[i] = rtb_Add1 + (real_T)i;
    }
  } else {
    rtb_Product5 = floor((137.0 - rtb_Add1) + 0.5);
    rtb_Add4 = rtb_Add1 + rtb_Product5;
    if (fabs(rtb_Add4 - 137.0) < 4.4408920985006262E-16 * fmax(fabs(rtb_Add1),
         137.0)) {
      rtb_Product5++;
    } else if (!(rtb_Add4 - 137.0 > 0.0)) {
      rtb_Product5++;
    }

    i_0 = b_0->size[0] * b_0->size[1];
    b_0->size[1] = (int32_T)rtb_Product5;
    QCar2__emxEnsureCapacity_real_T(b_0, i_0);
  }

  if (70 - b_0->size[1] > 69) {
    b = 0;
    b_n = 0;
  } else {
    b = 69 - b_0->size[1];
    b_n = 69;
  }

  QCar2_autonomous_emxFree_real_T(&b_0);

  /* MATLAB Function: '<S19>/Combine images' incorporates:
   *  Constant: '<S19>/Constant4'
   */
  if (QCar2_autonomous_driving_exam_P.Constant4_Value_a != 0.0) {
    if (rtb_uRight0Left != 0.0) {
      if (rtb_Add1 > 137.0) {
        imageToThreshold_tmp = 1;
        imageToThreshold_tmp_0 = 0;
      } else {
        imageToThreshold_tmp = (int32_T)rtb_Add1;
        imageToThreshold_tmp_0 = 137;
      }

      loop_ub = imageToThreshold_tmp_0 - imageToThreshold_tmp;
      section_size[0] = loop_ub + 1;
      section_size[1] = 91;
      section_size[2] = 3;
      for (i = 0; i < 3; i++) {
        for (i_0 = 0; i_0 < 91; i_0++) {
          for (o = 0; o <= loop_ub; o++) {
            QCar2_autonomous_driving_exam_B.section_data[(o + (loop_ub + 1) *
              i_0) + (loop_ub + 1) * 91 * i] =
              QCar2_autonomous_driving_exam_B.y_m[(((((int32_T)((real_T)i_0 +
              183.66666666666666) - 1) * 137 + imageToThreshold_tmp) + o) +
              37538 * i) - 1];
          }
        }
      }

      loop_ub_0 = b_n - b;
      varargin_1_tmp_size[0] = loop_ub_0;
      varargin_1_tmp_size[1] = 91;
      for (i = 0; i < 91; i++) {
        for (i_0 = 0; i_0 < loop_ub_0; i_0++) {
          QCar2_autonomous_driving_exam_B.varargin_1_tmp_data[i_0 + loop_ub_0 *
            i] = (uint8_T)(MAX_uint8_T - QCar2_autonomous_driving_exam_B.y_b[(b
            + i_0) + 69 * i]);
        }
      }

      if (rtb_Add1 > 137.0) {
        p = 0;
        o = 0;
      } else {
        p = (int32_T)rtb_Add1 - 1;
        o = 137;
      }

      if (loop_ub + 1 == loop_ub_0) {
        b_n = o - p;
        for (i = 0; i < 91; i++) {
          for (i_0 = 0; i_0 < b_n; i_0++) {
            y_m = QCar2_autonomous_driving_exam_B.section_data[(loop_ub + 1) * i
              + i_0];
            o = (int32_T)((uint32_T)QCar2_autonomous_driving_exam_B.y_b[(b + i_0)
                          + 69 * i] * y_m);
            if (o > 255) {
              o = 255;
            }

            o = (int32_T)((uint32_T)rt_roundd_snf((real_T)
              QCar2_autonomous_driving_exam_B.varargin_1_tmp_data[loop_ub_0 * i
              + i_0] / 255.0) * y_m + (uint32_T)o);
            if (o > 255) {
              o = 255;
            }

            QCar2_autonomous_driving_exam_B.y_d[(p + i_0) + 137 * (i + 182)] =
              (uint8_T)o;
          }
        }
      } else {
        QCar2_autono_binary_expand_op_2(QCar2_autonomous_driving_exam_B.y_d, p,
          o - 1, QCar2_autonomous_driving_exam_B.varargin_1_tmp_data,
          varargin_1_tmp_size, QCar2_autonomous_driving_exam_B.section_data,
          section_size, imageToThreshold_tmp_0, imageToThreshold_tmp,
          QCar2_autonomous_driving_exam_B.y_b, b, b_n - 1);
      }

      if (rtb_Add1 > 137.0) {
        b_n = 0;
        b = 0;
      } else {
        b_n = (int32_T)rtb_Add1 - 1;
        b = 137;
      }

      if (loop_ub + 1 == loop_ub_0) {
        b -= b_n;
        for (i = 0; i < 91; i++) {
          for (i_0 = 0; i_0 < b; i_0++) {
            QCar2_autonomous_driving_exam_B.y_d[((b_n + i_0) + 137 * (i + 182))
              + 37538] = (uint8_T)(QCar2_autonomous_driving_exam_B.section_data
              [((loop_ub + 1) * i + i_0) + (loop_ub + 1) * 91] * (uint32_T)
              rt_roundd_snf((real_T)
                            QCar2_autonomous_driving_exam_B.varargin_1_tmp_data[loop_ub_0
                            * i + i_0] / 255.0));
          }
        }
      } else {
        QCar2_autono_binary_expand_op_1(QCar2_autonomous_driving_exam_B.y_d, b_n,
          b - 1, QCar2_autonomous_driving_exam_B.varargin_1_tmp_data,
          varargin_1_tmp_size, QCar2_autonomous_driving_exam_B.section_data,
          section_size, imageToThreshold_tmp_0, imageToThreshold_tmp);
      }

      if (rtb_Add1 > 137.0) {
        b_n = 0;
        b = 0;
      } else {
        b_n = (int32_T)rtb_Add1 - 1;
        b = 137;
      }

      if (loop_ub + 1 == loop_ub_0) {
        b -= b_n;
        for (i = 0; i < 91; i++) {
          for (i_0 = 0; i_0 < b; i_0++) {
            QCar2_autonomous_driving_exam_B.y_d[((b_n + i_0) + 137 * (i + 182))
              + 75076] = (uint8_T)(QCar2_autonomous_driving_exam_B.section_data
              [((loop_ub + 1) * i + i_0) + (((loop_ub + 1) * 91) << 1)] *
              (uint32_T)rt_roundd_snf((real_T)
              QCar2_autonomous_driving_exam_B.varargin_1_tmp_data[loop_ub_0 * i
              + i_0] / 255.0));
          }
        }
      } else {
        QCar2_autonomo_binary_expand_op(QCar2_autonomous_driving_exam_B.y_d, b_n,
          b - 1, QCar2_autonomous_driving_exam_B.varargin_1_tmp_data,
          varargin_1_tmp_size, QCar2_autonomous_driving_exam_B.section_data,
          section_size, imageToThreshold_tmp_0, imageToThreshold_tmp);
      }
    } else {
      if (rtb_Add1 > 137.0) {
        imageToThreshold_tmp = 0;
        imageToThreshold_tmp_0 = -1;
      } else {
        imageToThreshold_tmp = (int32_T)rtb_Add1 - 1;
        imageToThreshold_tmp_0 = 136;
      }

      loop_ub = b_n - b;
      varargin_1_tmp_size[0] = loop_ub;
      varargin_1_tmp_size[1] = 91;
      for (i = 0; i < 91; i++) {
        for (i_0 = 0; i_0 < loop_ub; i_0++) {
          QCar2_autonomous_driving_exam_B.varargin_1_tmp_data[i_0 + loop_ub * i]
            = (uint8_T)(MAX_uint8_T - QCar2_autonomous_driving_exam_B.y_b[(b +
            i_0) + 69 * i]);
        }
      }

      if (rtb_Add1 > 137.0) {
        p = 0;
        o = 0;
      } else {
        p = (int32_T)rtb_Add1 - 1;
        o = 137;
      }

      i = (imageToThreshold_tmp_0 - imageToThreshold_tmp) + 1;
      if (i == loop_ub) {
        b_n = o - p;
        for (i_0 = 0; i_0 < 91; i_0++) {
          for (o = 0; o < b_n; o++) {
            y_m = QCar2_autonomous_driving_exam_B.y_m[(imageToThreshold_tmp + o)
              + 137 * i_0];
            loop_ub = (int32_T)((uint32_T)QCar2_autonomous_driving_exam_B.y_b[(b
              + o) + 69 * i_0] * y_m);
            if (loop_ub > 255) {
              loop_ub = 255;
            }

            loop_ub = (int32_T)((uint32_T)rt_roundd_snf((real_T)
              QCar2_autonomous_driving_exam_B.varargin_1_tmp_data[varargin_1_tmp_size
              [0] * i_0 + o] / 255.0) * y_m + (uint32_T)loop_ub);
            if (loop_ub > 255) {
              loop_ub = 255;
            }

            QCar2_autonomous_driving_exam_B.y_d[(p + o) + 137 * i_0] = (uint8_T)
              loop_ub;
          }
        }
      } else {
        QCar2_autono_binary_expand_op_5(QCar2_autonomous_driving_exam_B.y_d, p,
          o - 1, QCar2_autonomous_driving_exam_B.varargin_1_tmp_data,
          varargin_1_tmp_size, QCar2_autonomous_driving_exam_B.y_m,
          imageToThreshold_tmp + 1, imageToThreshold_tmp_0,
          QCar2_autonomous_driving_exam_B.y_b, b, b_n - 1);
      }

      if (rtb_Add1 > 137.0) {
        b_n = 0;
        b = 0;
      } else {
        b_n = (int32_T)rtb_Add1 - 1;
        b = 137;
      }

      if (i == varargin_1_tmp_size[0]) {
        b -= b_n;
        for (i_0 = 0; i_0 < 91; i_0++) {
          for (o = 0; o < b; o++) {
            QCar2_autonomous_driving_exam_B.y_d[((b_n + o) + 137 * i_0) + 37538]
              = (uint8_T)(QCar2_autonomous_driving_exam_B.y_m
                          [((imageToThreshold_tmp + o) + 137 * i_0) + 37538] *
                          (uint32_T)rt_roundd_snf((real_T)
              QCar2_autonomous_driving_exam_B.varargin_1_tmp_data[varargin_1_tmp_size
              [0] * i_0 + o] / 255.0));
          }
        }
      } else {
        QCar2_autono_binary_expand_op_4(QCar2_autonomous_driving_exam_B.y_d, b_n,
          b - 1, QCar2_autonomous_driving_exam_B.varargin_1_tmp_data,
          varargin_1_tmp_size, QCar2_autonomous_driving_exam_B.y_m,
          imageToThreshold_tmp + 1, imageToThreshold_tmp_0);
      }

      if (rtb_Add1 > 137.0) {
        b_n = 0;
        b = 0;
      } else {
        b_n = (int32_T)rtb_Add1 - 1;
        b = 137;
      }

      if (i == varargin_1_tmp_size[0]) {
        b -= b_n;
        for (i = 0; i < 91; i++) {
          for (i_0 = 0; i_0 < b; i_0++) {
            QCar2_autonomous_driving_exam_B.y_d[((b_n + i_0) + 137 * i) + 75076]
              = (uint8_T)(QCar2_autonomous_driving_exam_B.y_m
                          [((imageToThreshold_tmp + i_0) + 137 * i) + 75076] *
                          (uint32_T)rt_roundd_snf((real_T)
              QCar2_autonomous_driving_exam_B.varargin_1_tmp_data[varargin_1_tmp_size
              [0] * i + i_0] / 255.0));
          }
        }
      } else {
        QCar2_autono_binary_expand_op_3(QCar2_autonomous_driving_exam_B.y_d, b_n,
          b - 1, QCar2_autonomous_driving_exam_B.varargin_1_tmp_data,
          varargin_1_tmp_size, QCar2_autonomous_driving_exam_B.y_m,
          imageToThreshold_tmp + 1, imageToThreshold_tmp_0);
      }
    }
  }

  /* S-Function (image_compress_block): '<S23>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example2/Display RGB/RGB Image Processed/Image Compress (image_compress_block) */
  {
    t_error result = 0;
    size_t image_size = 0;
    result = qjpeg_compress_start
      (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress, true);
    if (result == 0) {
      result = qjpeg_compress_write_image_uint8
        (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress,
         &QCar2_autonomous_driving_exam_B.y_d[0]);
      qjpeg_compress_stop(QCar2_autonomous_driving_exa_DW.ImageCompress_Compress);

      /* Get the final size of the compressed image */
      if (result >= 0) {
        result = qjpeg_compress_get_fixed_memory_destination_size
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress, &image_size);
      }
    }

    /* Set the dimensions of the output signal based on the size of the compressed image */
    QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1 = (int) image_size;
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* S-Function (channel_block): '<S23>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example2/Display RGB/RGB Image Processed/Channel (channel_block) */
  {
    if (rtExtModeQuarcIsConnected()) {
      struct channel_info {
        t_channel_header header;
      } info;

      size_t width = 1;
      QCar2_autonomous_driving_exam_B.Channel = CHANNEL_1;
      info.header.data_type_id = 3;
      info.header.channel = 1;
      info.header.flags = CHANNEL_FLAG_VARIABLE_SIZE;
      info.header.num_dimensions = 1;
      width *= QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1;
      info.header.dimension[0] =
        QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1;
      channel_fifo_add((t_channel_fifo)
                       QCar2_autonomous_driving_exa_DW.Channel_PWORK.Fifo,
                       &info.header,
                       &QCar2_autonomous_driving_exam_B.ImageCompress[0], width *
                       sizeof(uint8_T));
    }
  }

  /* S-Function (image_compress_block): '<S24>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example2/RGB Image  Pre-Proccessing/RGB Image No Threshold/Image Compress (image_compress_block) */
  {
    t_error result = 0;
    size_t image_size = 0;
    result = qjpeg_compress_start
      (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_c, true);
    if (result == 0) {
      result = qjpeg_compress_write_image_uint8
        (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_c,
         &QCar2_autonomous_driving_exam_B.imageToThreshold[0]);
      qjpeg_compress_stop
        (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_c);

      /* Get the final size of the compressed image */
      if (result >= 0) {
        result = qjpeg_compress_get_fixed_memory_destination_size
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_c, &image_size);
      }
    }

    /* Set the dimensions of the output signal based on the size of the compressed image */
    QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_m = (int) image_size;
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* S-Function (channel_block): '<S24>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example2/RGB Image  Pre-Proccessing/RGB Image No Threshold/Channel (channel_block) */
  {
    if (rtExtModeQuarcIsConnected()) {
      struct channel_info {
        t_channel_header header;
      } info;

      size_t width = 1;
      QCar2_autonomous_driving_exam_B.Channel_b = CHANNEL_2;
      info.header.data_type_id = 3;
      info.header.channel = 2;
      info.header.flags = CHANNEL_FLAG_VARIABLE_SIZE;
      info.header.num_dimensions = 1;
      width *= QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_m;
      info.header.dimension[0] =
        QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_m;
      channel_fifo_add((t_channel_fifo)
                       QCar2_autonomous_driving_exa_DW.Channel_PWORK_b.Fifo,
                       &info.header,
                       &QCar2_autonomous_driving_exam_B.ImageCompress_h[0],
                       width * sizeof(uint8_T));
    }
  }

  /* MATLAB Function: '<S19>/Find slope and intercept' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function'
   *  RateTransition: '<Root>/Rate Transition5'
   *  S-Function (image_compare_block): '<S12>/HSV Color Thresholding'
   */
  QCar2_autonomous_driving_exa_DW.sfEvent_o = QCar2_autonomous_dri_CALL_EVENT;
  if ((205.0 - ((410.0 - QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer)
                + 1.0)) + 1.0 > 205.0) {
    b_n = 0;
    b = 0;
  } else {
    b_n = (int32_T)((205.0 - ((410.0 -
      QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer) + 1.0)) + 1.0) - 1;
    b = 205;
  }

  loop_ub = b - b_n;
  tmp_size[0] = loop_ub;
  tmp_size[1] = 273;
  for (i = 0; i < 273; i++) {
    for (i_0 = 0; i_0 < loop_ub; i_0++) {
      QCar2_autonomous_driving_exam_B.tmp_data[i_0 + loop_ub * i] =
        (QCar2_autonomous_driving_exam_B.HSVColorThresholding[(b_n + i_0) + 205 *
         i] > 0);
    }
  }

  QCar2_autonomou_emxInit_int32_T(&ii, 1);
  QCar2_autonomou_emxInit_int32_T(&jj, 1);

  /* MATLAB Function: '<S19>/Find slope and intercept' */
  QCar2_autonomous_drivi_eml_find(QCar2_autonomous_driving_exam_B.tmp_data,
    tmp_size, ii, jj);
  QCar2_autonomous_emxInit_real_T(&x, 1);

  /* MATLAB Function: '<S19>/Find slope and intercept' */
  loop_ub = jj->size[0];
  i_0 = x->size[0];
  x->size[0] = jj->size[0];
  QCar2__emxEnsureCapacity_real_T(x, i_0);
  for (i = 0; i < loop_ub; i++) {
    x->data[i] = jj->data[i];
    if (rtb_uRight0Left != 0.0) {
      x->data[i] = 273.33333333333331 - x->data[i];
    }
  }

  QCar2_autonomou_emxFree_int32_T(&jj);
  QCar2_autonomous_emxInit_real_T(&imageSize, 1);

  /* MATLAB Function: '<S19>/Find slope and intercept' incorporates:
   *  MATLAB Function: '<Root>/MATLAB Function'
   *  RateTransition: '<Root>/Rate Transition5'
   */
  loop_ub = ii->size[0];
  i_0 = imageSize->size[0];
  imageSize->size[0] = ii->size[0];
  QCar2__emxEnsureCapacity_real_T(imageSize, i_0);
  for (i = 0; i < loop_ub; i++) {
    imageSize->data[i] = ((410.0 -
      QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer) + 1.0) - (real_T)
      ii->data[i];
  }

  QCar2_autonomou_emxFree_int32_T(&ii);

  /* MATLAB Function: '<S19>/Find slope and intercept' */
  QCar2_autonomous_drivin_polyfit(x, imageSize, result);
  QCar2_autonomous_emxFree_real_T(&imageSize);
  QCar2_autonomous_emxFree_real_T(&x);

  /* Constant: '<S21>/Distane To Lane (0)' */
  QCar2_autonomous_driving_exam_B.DistaneToLane0 =
    QCar2_autonomous_driving_exam_P.DistaneToLane0_Value;

  /* MATLAB Function: '<S19>/MATLAB Function' incorporates:
   *  Constant: '<S19>/Constant3'
   *  Constant: '<S19>/m_n'
   *  MATLAB Function: '<Root>/MATLAB Function'
   *  MATLAB Function: '<S19>/Find slope and intercept'
   *  ManualSwitch: '<S19>/Manual Switch'
   *  RateTransition: '<Root>/Rate Transition5'
   */
  QCar2_autonomous_driving_exa_DW.sfEvent_j = QCar2_autonomous_dri_CALL_EVENT;
  if (rtb_uRight0Left != 0.0) {
    /* ManualSwitch: '<S19>/Manual Switch' incorporates:
     *  Constant: '<S19>/b_n'
     */
    if (QCar2_autonomous_driving_exam_P.ManualSwitch_CurrentSetting == 1) {
      rtb_uRight0Left = QCar2_autonomous_driving_exam_P.b_n_Value;
    } else {
      rtb_uRight0Left = QCar2_autonomous_driving_exam_B.DistaneToLane0;
    }

    rtb_uRight0Left = ((((410.0 -
                          QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer)
                         + 1.0) - rtb_uRight0Left) /
                       QCar2_autonomous_driving_exam_P.m_n_Value - (((410.0 -
      QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer) + 1.0) - result[1])
                       / result[0]) *
      -QCar2_autonomous_driving_exam_P.Constant3_Value_br / 273.33333333333331;
  } else {
    if (QCar2_autonomous_driving_exam_P.ManualSwitch_CurrentSetting == 1) {
      /* ManualSwitch: '<S19>/Manual Switch' incorporates:
       *  Constant: '<S19>/b_n'
       */
      rtb_uRight0Left = QCar2_autonomous_driving_exam_P.b_n_Value;
    } else {
      /* ManualSwitch: '<S19>/Manual Switch' */
      rtb_uRight0Left = QCar2_autonomous_driving_exam_B.DistaneToLane0;
    }

    rtb_uRight0Left = ((((410.0 -
                          QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer)
                         + 1.0) - rtb_uRight0Left) /
                       QCar2_autonomous_driving_exam_P.m_n_Value - (((410.0 -
      QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer) + 1.0) - result[1])
                       / result[0]) *
      QCar2_autonomous_driving_exam_P.Constant3_Value_br / 273.33333333333331;
  }

  /* End of MATLAB Function: '<S19>/MATLAB Function' */

  /* Saturate: '<S19>/Steering Saturation1' */
  if (rtb_uRight0Left >
      QCar2_autonomous_driving_exam_P.SteeringSaturation1_UpperSat) {
    /* Saturate: '<S19>/Steering Saturation1' */
    QCar2_autonomous_driving_exam_B.SteeringSaturation1 =
      QCar2_autonomous_driving_exam_P.SteeringSaturation1_UpperSat;
  } else if (rtb_uRight0Left <
             QCar2_autonomous_driving_exam_P.SteeringSaturation1_LowerSat) {
    /* Saturate: '<S19>/Steering Saturation1' */
    QCar2_autonomous_driving_exam_B.SteeringSaturation1 =
      QCar2_autonomous_driving_exam_P.SteeringSaturation1_LowerSat;
  } else {
    /* Saturate: '<S19>/Steering Saturation1' */
    QCar2_autonomous_driving_exam_B.SteeringSaturation1 = rtb_uRight0Left;
  }

  /* End of Saturate: '<S19>/Steering Saturation1' */

  /* RateTransition: '<Root>/Rate Transition' */
  QCar2_autonomous_driving_exa_DW.RateTransition_Buffer0 =
    QCar2_autonomous_driving_exam_B.SteeringSaturation1;

  /* S-Function (sample_time_block): '<S15>/Sample Time' */

  /* S-Function Block: QCar2_autonomous_driving_example2/monitorTiming 1/Sample Time (sample_time_block) */
  {
    t_error result;
    t_timeout current_time;
    t_timeout time_difference;
    result = timeout_get_high_resolution_time(&current_time);
    if (result >= 0) {
      result = timeout_subtract(&time_difference, &current_time,
        &QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime_g);
      rtb_SampleTime = time_difference.seconds + time_difference.nanoseconds *
        1e-9;
      memcpy(&QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime_g,
             &current_time, sizeof(t_timeout));
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
      return;
    }
  }

  /* S-Function (computation_time_block): '<S15>/Computation Time' */

  /* S-Function Block: QCar2_autonomous_driving_example2/monitorTiming 1/Computation Time (computation_time_block) */
  {
    rtb_ComputationTime =
      QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationTi_o.seconds +
      QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationTi_o.nanoseconds
      * 1e-9;
  }

  /* RateTransition: '<Root>/Rate Transition4' incorporates:
   *  Constant: '<S15>/Constant'
   */
  QCar2_autonomous_driving_exa_DW.RateTransition4_Buffer0[0] = rtb_SampleTime;
  QCar2_autonomous_driving_exa_DW.RateTransition4_Buffer0[1] =
    QCar2_autonomous_driving_exam_P.camera_rate;
  QCar2_autonomous_driving_exa_DW.RateTransition4_Buffer0[2] =
    rtb_ComputationTime;
}

/* Model update function for TID2 */
void QCar2_autonomous_driving_example2_update2(void)
                               /* Sample time: [0.0083333333333333332s, 0.0s] */
{
  /* Update absolute time */
  /* The "clockTick2" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick2"
   * and "Timing.stepSize2". Size of "clockTick2" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick2 and the high bits
   * Timing.clockTickH2. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++QCar2_autonomous_driving_exa_M->Timing.clockTick2)) {
    ++QCar2_autonomous_driving_exa_M->Timing.clockTickH2;
  }

  QCar2_autonomous_driving_exa_M->Timing.t[2] =
    QCar2_autonomous_driving_exa_M->Timing.clockTick2 *
    QCar2_autonomous_driving_exa_M->Timing.stepSize2 +
    QCar2_autonomous_driving_exa_M->Timing.clockTickH2 *
    QCar2_autonomous_driving_exa_M->Timing.stepSize2 * 4294967296.0;
}

/* Model output function for TID3 */
void QCar2_autonomous_driving_example2_output3(void) /* Sample time: [0.01s, 0.0s] */
{
  /* local block i/o variables */
  real_T rtb_Add_i;
  real_T rtb_SampleTime_n;
  real_T rtb_ComputationTime_h;
  emxArray_real_T_QCar2_autonom_T *col_vec;
  emxArray_real_T_QCar2_autonom_T *row_vec;
  real_T rtb_Divide[10];
  real_T accumulatedData;
  real_T bsum;
  real_T rtb_RateTransition2;
  real_T rtb_RateTransition2_tmp;
  real_T rtb_RateTransition2_tmp_0;
  int32_T firstBlockLength;
  int32_T hi;
  int32_T iy;
  int32_T lastBlockLength;
  int32_T nblocks;
  int32_T tmp_size_idx_0;
  int32_T xblockoffset;
  real32_T tmp;

  /* Reset subsysRan breadcrumbs */
  srClearBC(QCar2_autonomous_driving_exa_DW.obstacleDetection_SubsysRanBC);

  /* S-Function (video3d_initialize_block): '<S11>/Video3D Initialize' */

  /* S-Function Block: QCar2_autonomous_driving_example2/captureDepth/Video3D Initialize (video3d_initialize_block) */
  {
  }

  /* S-Function (video3d_capture_block): '<S11>/Depth' */
  /* S-Function Block: QCar2_autonomous_driving_example2/captureDepth/Depth (video3d_capture_block) */
  {
    t_video3d_frame frame;
    t_error result;
    result = video3d_stream_get_frame
      (QCar2_autonomous_driving_exa_DW.Depth_Stream, &frame);
    if (result >= 0) {
      result = video3d_frame_get_meters(frame,
        &QCar2_autonomous_driving_exam_B.Depth_o1[0]);

      /* Release the frame to free up its resources */
      video3d_frame_release(frame);
    }

    QCar2_autonomous_driving_exam_B.Depth_o4 = (result >= 0);
    if (result < 0 && result != -QERR_WOULD_BLOCK) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* RateTransition: '<Root>/Rate Transition2' */
  rtb_RateTransition2 = QCar2_autonomous_driving_exam_B.SteeringSaturation1;

  /* Sum: '<S21>/Add' incorporates:
   *  Constant: '<S21>/Stopping Distance (m)'
   *  Gain: '<S21>/Stopping Distance Offset (0)'
   */
  rtb_Add_i = QCar2_autonomous_driving_exam_P.StoppingDistanceOffset0_Gain *
    QCar2_autonomous_driving_exam_P.StoppingDistancem_Value +
    QCar2_autonomous_driving_exam_P.StoppingDistancem_Value;

  /* Outputs for Enabled SubSystem: '<Root>/obstacleDetection' incorporates:
   *  EnablePort: '<S17>/Enable'
   */
  if (QCar2_autonomous_driving_exam_B.Depth_o4) {
    /* MATLAB Function: '<S17>/Steering based  image subselector' incorporates:
     *  S-Function (video3d_capture_block): '<S11>/Depth'
     */
    QCar2_autonomous_driving_exa_DW.sfEvent_p = QCar2_autonomous_dri_CALL_EVENT;
    rtb_RateTransition2 = 320.0 - rtb_RateTransition2 * 260.0 / 0.5;
    for (firstBlockLength = 0; firstBlockLength < 120; firstBlockLength++) {
      for (nblocks = 0; nblocks < 120; nblocks++) {
        QCar2_autonomous_driving_exam_B.region[nblocks + 120 * firstBlockLength]
          = QCar2_autonomous_driving_exam_B.Depth_o1[(((int32_T)
          (((rtb_RateTransition2 + 1.0) - 60.0) + (real_T)firstBlockLength) - 1)
          * 360 + nblocks) + 120];
      }
    }

    /* MATLAB Function: '<S17>/MATLAB Function' */
    QCar2_autonomous_driving_exa_DW.sfEvent_g = QCar2_autonomous_dri_CALL_EVENT;
    lastBlockLength = 0;
    for (firstBlockLength = 0; firstBlockLength < 14400; firstBlockLength++) {
      /* MATLAB Function: '<S17>/MATLAB Function' incorporates:
       *  Constant: '<S17>/Constant1'
       */
      if (QCar2_autonomous_driving_exam_B.region[firstBlockLength] <
          QCar2_autonomous_driving_exam_P.Constant1_Value) {
        lastBlockLength++;
      }
    }

    nblocks = lastBlockLength;
    lastBlockLength = 0;
    for (firstBlockLength = 0; firstBlockLength < 14400; firstBlockLength++) {
      /* MATLAB Function: '<S17>/MATLAB Function' incorporates:
       *  Constant: '<S17>/Constant1'
       */
      if (QCar2_autonomous_driving_exam_B.region[firstBlockLength] <
          QCar2_autonomous_driving_exam_P.Constant1_Value) {
        QCar2_autonomous_driving_exam_B.tmp_data_c[lastBlockLength] = (int16_T)
          firstBlockLength;
        lastBlockLength++;
      }
    }

    lastBlockLength = 0;
    for (firstBlockLength = 0; firstBlockLength < nblocks; firstBlockLength++) {
      /* MATLAB Function: '<S17>/MATLAB Function' incorporates:
       *  Constant: '<S17>/Constant'
       */
      if (QCar2_autonomous_driving_exam_B.region[QCar2_autonomous_driving_exam_B.tmp_data_c
          [firstBlockLength]] > QCar2_autonomous_driving_exam_P.Constant_Value)
      {
        lastBlockLength++;
      }
    }

    tmp_size_idx_0 = lastBlockLength;
    lastBlockLength = 0;
    for (firstBlockLength = 0; firstBlockLength < nblocks; firstBlockLength++) {
      /* MATLAB Function: '<S17>/MATLAB Function' incorporates:
       *  Constant: '<S17>/Constant'
       */
      if (QCar2_autonomous_driving_exam_B.region[QCar2_autonomous_driving_exam_B.tmp_data_c
          [firstBlockLength]] > QCar2_autonomous_driving_exam_P.Constant_Value)
      {
        QCar2_autonomous_driving_exam_B.tmp_data_m[lastBlockLength] = (int16_T)
          firstBlockLength;
        lastBlockLength++;
      }
    }

    /* MATLAB Function: '<S17>/MATLAB Function' */
    if (tmp_size_idx_0 == 0) {
      accumulatedData = 0.0;
    } else {
      if (tmp_size_idx_0 <= 1024) {
        firstBlockLength = tmp_size_idx_0;
        lastBlockLength = 0;
        nblocks = 1;
      } else {
        firstBlockLength = 1024;
        nblocks = (int32_T)((uint32_T)tmp_size_idx_0 >> 10);
        lastBlockLength = tmp_size_idx_0 - (nblocks << 10);
        if (lastBlockLength > 0) {
          nblocks++;
        } else {
          lastBlockLength = 1024;
        }
      }

      accumulatedData =
        QCar2_autonomous_driving_exam_B.region[QCar2_autonomous_driving_exam_B.tmp_data_m
        [0]];
      for (iy = 2; iy <= firstBlockLength; iy++) {
        accumulatedData +=
          QCar2_autonomous_driving_exam_B.region[QCar2_autonomous_driving_exam_B.tmp_data_m
          [iy - 1]];
      }

      for (firstBlockLength = 2; firstBlockLength <= nblocks; firstBlockLength++)
      {
        xblockoffset = (firstBlockLength - 1) << 10;
        bsum =
          QCar2_autonomous_driving_exam_B.region[QCar2_autonomous_driving_exam_B.tmp_data_m
          [xblockoffset]];
        if (firstBlockLength == nblocks) {
          hi = lastBlockLength;
        } else {
          hi = 1024;
        }

        for (iy = 2; iy <= hi; iy++) {
          bsum +=
            QCar2_autonomous_driving_exam_B.region[QCar2_autonomous_driving_exam_B.tmp_data_m
            [(xblockoffset + iy) - 1]];
        }

        accumulatedData += bsum;
      }
    }

    QCar2_autonomous_driving_exam_B.y = accumulatedData / (real_T)tmp_size_idx_0;

    /* Product: '<S17>/Divide' incorporates:
     *  Constant: '<S17>/scale'
     *  MATLAB Function: '<S17>/Steering based  image subselector'
     */
    rtb_Divide[0] = 101.0 / QCar2_autonomous_driving_exam_P.scale_Value;
    accumulatedData = ((rtb_RateTransition2 + 1.0) - 60.0) /
      QCar2_autonomous_driving_exam_P.scale_Value;
    rtb_Divide[5] = accumulatedData;
    rtb_Divide[1] = 101.0 / QCar2_autonomous_driving_exam_P.scale_Value;
    rtb_RateTransition2 = (rtb_RateTransition2 + 60.0) /
      QCar2_autonomous_driving_exam_P.scale_Value;
    rtb_Divide[6] = rtb_RateTransition2;
    rtb_Divide[2] = 220.0 / QCar2_autonomous_driving_exam_P.scale_Value;
    rtb_Divide[7] = rtb_RateTransition2;
    rtb_Divide[3] = 220.0 / QCar2_autonomous_driving_exam_P.scale_Value;
    rtb_Divide[8] = accumulatedData;
    rtb_Divide[4] = 101.0 / QCar2_autonomous_driving_exam_P.scale_Value;
    rtb_Divide[9] = accumulatedData;

    /* Selector: '<S17>/Selector' incorporates:
     *  DataTypeConversion: '<S17>/Data Type Conversion'
     */
    for (firstBlockLength = 0; firstBlockLength < 214; firstBlockLength++) {
      for (nblocks = 0; nblocks < 120; nblocks++) {
        /* DataTypeConversion: '<S17>/Data Type Conversion' incorporates:
         *  Gain: '<S17>/Gain'
         *  S-Function (video3d_capture_block): '<S11>/Depth'
         */
        tmp = floorf(QCar2_autonomous_driving_exam_B.Depth_o1[3 *
                     firstBlockLength * 360 + 3 * nblocks] *
                     QCar2_autonomous_driving_exam_P.Gain_Gain_g);
        if (rtIsNaNF(tmp) || rtIsInfF(tmp)) {
          tmp = 0.0F;
        } else {
          tmp = fmodf(tmp, 256.0F);
        }

        QCar2_autonomous_driving_exam_B.Selector[nblocks + 120 *
          firstBlockLength] = (uint8_T)(tmp < 0.0F ? (int32_T)(uint8_T)-(int8_T)
          (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
      }
    }

    /* End of Selector: '<S17>/Selector' */

    /* MATLAB Function: '<S17>/Draw Lines Module' incorporates:
     *  Selector: '<S17>/Selector'
     */
    QCar2_autonomous_driving_exa_DW.sfEvent_gp = QCar2_autonomous_dri_CALL_EVENT;
    for (nblocks = 0; nblocks < 25680; nblocks++) {
      QCar2_autonomous_driving_exam_B.img_out[nblocks] =
        QCar2_autonomous_driving_exam_B.Selector[nblocks];
      QCar2_autonomous_driving_exam_B.img_out[nblocks + 25680] =
        QCar2_autonomous_driving_exam_B.Selector[nblocks];
      QCar2_autonomous_driving_exam_B.img_out[nblocks + 51360] =
        QCar2_autonomous_driving_exam_B.Selector[nblocks];
    }

    QCar2_autonomous_emxInit_real_T(&row_vec, 2);
    QCar2_autonomous_emxInit_real_T(&col_vec, 2);

    /* MATLAB Function: '<S17>/Draw Lines Module' incorporates:
     *  Constant: '<S17>/Constant3'
     *  Product: '<S17>/Divide'
     */
    for (nblocks = 0; nblocks < 4; nblocks++) {
      accumulatedData = rtb_Divide[nblocks];
      bsum = rtb_Divide[nblocks + 1];
      rtb_RateTransition2_tmp = rtb_Divide[nblocks + 5];
      rtb_RateTransition2_tmp_0 = rtb_Divide[nblocks + 6];
      rtb_RateTransition2 = fmax(fabs(accumulatedData - bsum), fabs
        (rtb_RateTransition2_tmp - rtb_RateTransition2_tmp_0));
      QCar2_autonomous_drivi_linspace(accumulatedData, bsum, rtb_RateTransition2,
        row_vec);
      firstBlockLength = row_vec->size[1];
      for (iy = 0; iy < firstBlockLength; iy++) {
        row_vec->data[iy] = rt_roundd_snf(row_vec->data[iy]);
      }

      QCar2_autonomous_drivi_linspace(rtb_RateTransition2_tmp,
        rtb_RateTransition2_tmp_0, rtb_RateTransition2, col_vec);
      firstBlockLength = col_vec->size[1];
      for (iy = 0; iy < firstBlockLength; iy++) {
        col_vec->data[iy] = rt_roundd_snf(col_vec->data[iy]);
      }

      iy = (int32_T)rtb_RateTransition2;
      for (lastBlockLength = 0; lastBlockLength < iy; lastBlockLength++) {
        rtb_RateTransition2 = col_vec->data[lastBlockLength];
        accumulatedData = row_vec->data[lastBlockLength];
        bsum = rt_roundd_snf(QCar2_autonomous_driving_exam_P.Constant3_Value[0]);
        if (bsum < 256.0) {
          if (bsum >= 0.0) {
            QCar2_autonomous_driving_exam_B.img_out[((int32_T)accumulatedData +
              120 * ((int32_T)rtb_RateTransition2 - 1)) - 1] = (uint8_T)bsum;
          } else {
            QCar2_autonomous_driving_exam_B.img_out[((int32_T)accumulatedData +
              120 * ((int32_T)rtb_RateTransition2 - 1)) - 1] = 0U;
          }
        } else {
          QCar2_autonomous_driving_exam_B.img_out[((int32_T)accumulatedData +
            120 * ((int32_T)rtb_RateTransition2 - 1)) - 1] = MAX_uint8_T;
        }

        bsum = rt_roundd_snf(QCar2_autonomous_driving_exam_P.Constant3_Value[1]);
        if (bsum < 256.0) {
          if (bsum >= 0.0) {
            QCar2_autonomous_driving_exam_B.img_out[((int32_T)accumulatedData +
              120 * ((int32_T)rtb_RateTransition2 - 1)) + 25679] = (uint8_T)bsum;
          } else {
            QCar2_autonomous_driving_exam_B.img_out[((int32_T)accumulatedData +
              120 * ((int32_T)rtb_RateTransition2 - 1)) + 25679] = 0U;
          }
        } else {
          QCar2_autonomous_driving_exam_B.img_out[((int32_T)accumulatedData +
            120 * ((int32_T)rtb_RateTransition2 - 1)) + 25679] = MAX_uint8_T;
        }

        bsum = rt_roundd_snf(QCar2_autonomous_driving_exam_P.Constant3_Value[2]);
        if (bsum < 256.0) {
          if (bsum >= 0.0) {
            QCar2_autonomous_driving_exam_B.img_out[((int32_T)accumulatedData +
              120 * ((int32_T)rtb_RateTransition2 - 1)) + 51359] = (uint8_T)bsum;
          } else {
            QCar2_autonomous_driving_exam_B.img_out[((int32_T)accumulatedData +
              120 * ((int32_T)rtb_RateTransition2 - 1)) + 51359] = 0U;
          }
        } else {
          QCar2_autonomous_driving_exam_B.img_out[((int32_T)accumulatedData +
            120 * ((int32_T)rtb_RateTransition2 - 1)) + 51359] = MAX_uint8_T;
        }
      }
    }

    QCar2_autonomous_emxFree_real_T(&col_vec);
    QCar2_autonomous_emxFree_real_T(&row_vec);

    /* Product: '<S17>/Multiply' incorporates:
     *  Constant: '<S17>/Constant2'
     *  Logic: '<S17>/AND'
     *  S-Function (compare_block): '<S17>/Compare'
     *  S-Function (compare_block): '<S17>/Compare1'
     *  Sum: '<S21>/Add'
     */
    QCar2_autonomous_driving_exam_B.Multiply = (real_T)
      ((QCar2_autonomous_driving_exam_B.y >= rtb_Add_i) &&
       (QCar2_autonomous_driving_exam_B.y <
        QCar2_autonomous_driving_exam_P.Constant2_Value)) *
      QCar2_autonomous_driving_exam_B.y;
    if (rtsiIsModeUpdateTimeStep(&QCar2_autonomous_driving_exa_M->solverInfo)) {
      srUpdateBC(QCar2_autonomous_driving_exa_DW.obstacleDetection_SubsysRanBC);
    }
  }

  /* End of Outputs for SubSystem: '<Root>/obstacleDetection' */

  /* S-Function (image_compress_block): '<S22>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example2/Display Depth/Depth Camera Information/Image Compress (image_compress_block) */
  {
    t_error result = 0;
    size_t image_size = 0;
    result = qjpeg_compress_start
      (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_cq, true);
    if (result == 0) {
      result = qjpeg_compress_write_image_uint8
        (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_cq,
         &QCar2_autonomous_driving_exam_B.img_out[0]);
      qjpeg_compress_stop
        (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_cq);

      /* Get the final size of the compressed image */
      if (result >= 0) {
        result = qjpeg_compress_get_fixed_memory_destination_size
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_cq,
           &image_size);
      }
    }

    /* Set the dimensions of the output signal based on the size of the compressed image */
    QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_g = (int) image_size;
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* S-Function (channel_block): '<S22>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example2/Display Depth/Depth Camera Information/Channel (channel_block) */
  {
    if (rtExtModeQuarcIsConnected()) {
      struct channel_info {
        t_channel_header header;
      } info;

      size_t width = 1;
      QCar2_autonomous_driving_exam_B.Channel_g = CHANNEL_0;
      info.header.data_type_id = 3;
      info.header.channel = 0;
      info.header.flags = CHANNEL_FLAG_VARIABLE_SIZE;
      info.header.num_dimensions = 1;
      width *= QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_g;
      info.header.dimension[0] =
        QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_g;
      channel_fifo_add((t_channel_fifo)
                       QCar2_autonomous_driving_exa_DW.Channel_PWORK_m.Fifo,
                       &info.header,
                       &QCar2_autonomous_driving_exam_B.ImageCompress_o[0],
                       width * sizeof(uint8_T));
    }
  }

  /* RateTransition: '<Root>/Rate Transition1' */
  QCar2_autonomous_driving_exa_DW.RateTransition1_Buffer0 =
    QCar2_autonomous_driving_exam_B.Multiply;

  /* S-Function (sample_time_block): '<S16>/Sample Time' */

  /* S-Function Block: QCar2_autonomous_driving_example2/monitorTiming 2/Sample Time (sample_time_block) */
  {
    t_error result;
    t_timeout current_time;
    t_timeout time_difference;
    result = timeout_get_high_resolution_time(&current_time);
    if (result >= 0) {
      result = timeout_subtract(&time_difference, &current_time,
        &QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime_e);
      rtb_SampleTime_n = time_difference.seconds + time_difference.nanoseconds *
        1e-9;
      memcpy(&QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime_e,
             &current_time, sizeof(t_timeout));
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
      return;
    }
  }

  /* S-Function (computation_time_block): '<S16>/Computation Time' */

  /* S-Function Block: QCar2_autonomous_driving_example2/monitorTiming 2/Computation Time (computation_time_block) */
  {
    rtb_ComputationTime_h =
      QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationT_om.seconds +
      QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationT_om.nanoseconds
      * 1e-9;
  }

  /* RateTransition: '<Root>/Rate Transition3' incorporates:
   *  Constant: '<S16>/Constant'
   */
  QCar2_autonomous_driving_exa_DW.RateTransition3_Buffer0[0] = rtb_SampleTime_n;
  QCar2_autonomous_driving_exa_DW.RateTransition3_Buffer0[1] =
    QCar2_autonomous_driving_exam_P.depth_rate;
  QCar2_autonomous_driving_exa_DW.RateTransition3_Buffer0[2] =
    rtb_ComputationTime_h;
}

/* Model update function for TID3 */
void QCar2_autonomous_driving_example2_update3(void) /* Sample time: [0.01s, 0.0s] */
{
  /* Update absolute time */
  /* The "clockTick3" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick3"
   * and "Timing.stepSize3". Size of "clockTick3" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick3 and the high bits
   * Timing.clockTickH3. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++QCar2_autonomous_driving_exa_M->Timing.clockTick3)) {
    ++QCar2_autonomous_driving_exa_M->Timing.clockTickH3;
  }

  QCar2_autonomous_driving_exa_M->Timing.t[3] =
    QCar2_autonomous_driving_exa_M->Timing.clockTick3 *
    QCar2_autonomous_driving_exa_M->Timing.stepSize3 +
    QCar2_autonomous_driving_exa_M->Timing.clockTickH3 *
    QCar2_autonomous_driving_exa_M->Timing.stepSize3 * 4294967296.0;
}

/* Use this function only if you need to maintain compatibility with an existing static main program. */
void QCar2_autonomous_driving_example2_output(int_T tid)
{
  switch (tid) {
   case 0 :
    QCar2_autonomous_driving_example2_output0();
    break;

   case 2 :
    QCar2_autonomous_driving_example2_output2();
    break;

   case 3 :
    QCar2_autonomous_driving_example2_output3();
    break;

   default :
    /* do nothing */
    break;
  }
}

/* Use this function only if you need to maintain compatibility with an existing static main program. */
void QCar2_autonomous_driving_example2_update(int_T tid)
{
  switch (tid) {
   case 0 :
    QCar2_autonomous_driving_example2_update0();
    break;

   case 2 :
    QCar2_autonomous_driving_example2_update2();
    break;

   case 3 :
    QCar2_autonomous_driving_example2_update3();
    break;

   default :
    /* do nothing */
    break;
  }
}

/* Model initialize function */
void QCar2_autonomous_driving_example2_initialize(void)
{
  /* Start for S-Function (hil_initialize_block): '<S8>/HIL Initialize' */

  /* S-Function Block: QCar2_autonomous_driving_example2/basicQCarIO/HIL Initialize (hil_initialize_block) */
  {
    t_int result;
    t_boolean is_switching;
    result = hil_open("qcar2", "0",
                      &QCar2_autonomous_driving_exa_DW.HILInitialize_Card);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
      return;
    }

    is_switching = false;
    result = hil_set_card_specific_options
      (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
       "gyro_fs=250;gyro_rate=500;gyro_bw=125;gyro_ord=3;accel_fs=16;accel_rate=1000;accel_bw=250;accel_ord=3;temp_bw=4000;enc0_dir=0;enc1_dir=0;enc2_dir=0;steer_bias=0.05;",
       165);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
      return;
    }

    result = hil_watchdog_clear
      (QCar2_autonomous_driving_exa_DW.HILInitialize_Card);
    if (result < 0 && result != -QERR_HIL_WATCHDOG_CLEAR) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
      return;
    }

    if ((QCar2_autonomous_driving_exam_P.HILInitialize_AIPStart && !is_switching)
        || (QCar2_autonomous_driving_exam_P.HILInitialize_AIPEnter &&
            is_switching)) {
      {
        int_T i1;
        real_T *dw_AIMinimums =
          &QCar2_autonomous_driving_exa_DW.HILInitialize_AIMinimums[0];
        for (i1=0; i1 < 5; i1++) {
          dw_AIMinimums[i1] =
            QCar2_autonomous_driving_exam_P.HILInitialize_AILow;
        }
      }

      {
        int_T i1;
        real_T *dw_AIMaximums =
          &QCar2_autonomous_driving_exa_DW.HILInitialize_AIMaximums[0];
        for (i1=0; i1 < 5; i1++) {
          dw_AIMaximums[i1] =
            QCar2_autonomous_driving_exam_P.HILInitialize_AIHigh;
        }
      }

      result = hil_set_analog_input_ranges
        (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
         QCar2_autonomous_driving_exam_P.HILInitialize_AIChannels, 5U,
         &QCar2_autonomous_driving_exa_DW.HILInitialize_AIMinimums[0],
         &QCar2_autonomous_driving_exa_DW.HILInitialize_AIMaximums[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }
    }

    result = hil_set_digital_directions
      (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
       QCar2_autonomous_driving_exam_P.HILInitialize_DIChannels, 15U,
       QCar2_autonomous_driving_exam_P.HILInitialize_DOChannels, 16U);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
      return;
    }

    if ((QCar2_autonomous_driving_exam_P.HILInitialize_DOStart && !is_switching)
        || (QCar2_autonomous_driving_exam_P.HILInitialize_DOEnter &&
            is_switching)) {
      {
        int_T i1;
        boolean_T *dw_DOBits =
          &QCar2_autonomous_driving_exa_DW.HILInitialize_DOBits[0];
        for (i1=0; i1 < 16; i1++) {
          dw_DOBits[i1] =
            QCar2_autonomous_driving_exam_P.HILInitialize_DOInitial;
        }
      }

      result = hil_write_digital
        (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
         QCar2_autonomous_driving_exam_P.HILInitialize_DOChannels, 16U,
         (t_boolean *) &QCar2_autonomous_driving_exa_DW.HILInitialize_DOBits[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }
    }

    if (QCar2_autonomous_driving_exam_P.HILInitialize_DOReset) {
      {
        int_T i1;
        int32_T *dw_DOStates =
          &QCar2_autonomous_driving_exa_DW.HILInitialize_DOStates[0];
        for (i1=0; i1 < 16; i1++) {
          dw_DOStates[i1] =
            QCar2_autonomous_driving_exam_P.HILInitialize_DOWatchdog;
        }
      }

      result = hil_watchdog_set_digital_expiration_state
        (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
         QCar2_autonomous_driving_exam_P.HILInitialize_DOChannels, 16U, (const
          t_digital_state *)
         &QCar2_autonomous_driving_exa_DW.HILInitialize_DOStates[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }
    }

    if ((QCar2_autonomous_driving_exam_P.HILInitialize_EIPStart && !is_switching)
        || (QCar2_autonomous_driving_exam_P.HILInitialize_EIPEnter &&
            is_switching)) {
      QCar2_autonomous_driving_exa_DW.HILInitialize_QuadratureModes[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_EIQuadrature;
      QCar2_autonomous_driving_exa_DW.HILInitialize_QuadratureModes[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_EIQuadrature;
      QCar2_autonomous_driving_exa_DW.HILInitialize_QuadratureModes[2] =
        QCar2_autonomous_driving_exam_P.HILInitialize_EIQuadrature;
      result = hil_set_encoder_quadrature_mode
        (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
         QCar2_autonomous_driving_exam_P.HILInitialize_EIChannels, 3U,
         (t_encoder_quadrature_mode *)
         &QCar2_autonomous_driving_exa_DW.HILInitialize_QuadratureModes[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }

      QCar2_autonomous_driving_exa_DW.HILInitialize_FilterFrequency[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_EIFrequency;
      QCar2_autonomous_driving_exa_DW.HILInitialize_FilterFrequency[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_EIFrequency;
      QCar2_autonomous_driving_exa_DW.HILInitialize_FilterFrequency[2] =
        QCar2_autonomous_driving_exam_P.HILInitialize_EIFrequency;
      result = hil_set_encoder_filter_frequency
        (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
         QCar2_autonomous_driving_exam_P.HILInitialize_EIChannels, 3U,
         &QCar2_autonomous_driving_exa_DW.HILInitialize_FilterFrequency[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }
    }

    if ((QCar2_autonomous_driving_exam_P.HILInitialize_EIStart && !is_switching)
        || (QCar2_autonomous_driving_exam_P.HILInitialize_EIEnter &&
            is_switching)) {
      QCar2_autonomous_driving_exa_DW.HILInitialize_InitialEICounts[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_EIInitial;
      QCar2_autonomous_driving_exa_DW.HILInitialize_InitialEICounts[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_EIInitial;
      QCar2_autonomous_driving_exa_DW.HILInitialize_InitialEICounts[2] =
        QCar2_autonomous_driving_exam_P.HILInitialize_EIInitial;
      result = hil_set_encoder_counts
        (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
         QCar2_autonomous_driving_exam_P.HILInitialize_EIChannels, 3U,
         &QCar2_autonomous_driving_exa_DW.HILInitialize_InitialEICounts[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }
    }

    if ((QCar2_autonomous_driving_exam_P.HILInitialize_POPStart && !is_switching)
        || (QCar2_autonomous_driving_exam_P.HILInitialize_POPEnter &&
            is_switching)) {
      uint32_T num_duty_cycle_modes = 0;
      uint32_T num_frequency_modes = 0;
      QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POModes;
      QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POModes;
      result = hil_set_pwm_mode
        (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
         QCar2_autonomous_driving_exam_P.HILInitialize_POChannels, 2U,
         (t_pwm_mode *)
         &QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }

      if (QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[0] ==
          PWM_DUTY_CYCLE_MODE ||
          QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[0] ==
          PWM_ONE_SHOT_MODE ||
          QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[0] ==
          PWM_TIME_MODE ||
          QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[0] ==
          PWM_RAW_MODE) {
        QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedChans[num_duty_cycle_modes]
          = (QCar2_autonomous_driving_exam_P.HILInitialize_POChannels[0]);
        QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedFreqs[num_duty_cycle_modes]
          = QCar2_autonomous_driving_exam_P.HILInitialize_POFrequency;
        num_duty_cycle_modes++;
      } else {
        QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedChans[1U -
          num_frequency_modes] =
          (QCar2_autonomous_driving_exam_P.HILInitialize_POChannels[0]);
        QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedFreqs[1U -
          num_frequency_modes] =
          QCar2_autonomous_driving_exam_P.HILInitialize_POFrequency;
        num_frequency_modes++;
      }

      if (QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[1] ==
          PWM_DUTY_CYCLE_MODE ||
          QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[1] ==
          PWM_ONE_SHOT_MODE ||
          QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[1] ==
          PWM_TIME_MODE ||
          QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[1] ==
          PWM_RAW_MODE) {
        QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedChans[num_duty_cycle_modes]
          = (QCar2_autonomous_driving_exam_P.HILInitialize_POChannels[1]);
        QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedFreqs[num_duty_cycle_modes]
          = QCar2_autonomous_driving_exam_P.HILInitialize_POFrequency;
        num_duty_cycle_modes++;
      } else {
        QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedChans[1U -
          num_frequency_modes] =
          (QCar2_autonomous_driving_exam_P.HILInitialize_POChannels[1]);
        QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedFreqs[1U -
          num_frequency_modes] =
          QCar2_autonomous_driving_exam_P.HILInitialize_POFrequency;
        num_frequency_modes++;
      }

      if (num_duty_cycle_modes > 0) {
        result = hil_set_pwm_frequency
          (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
           &QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedChans[0],
           num_duty_cycle_modes,
           &QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedFreqs[0]);
        if (result < 0) {
          msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
            (_rt_error_message));
          rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
          return;
        }
      }

      if (num_frequency_modes > 0) {
        result = hil_set_pwm_duty_cycle
          (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
           &QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedChans[num_duty_cycle_modes],
           num_frequency_modes,
           &QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedFreqs[num_duty_cycle_modes]);
        if (result < 0) {
          msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
            (_rt_error_message));
          rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
          return;
        }
      }

      QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POConfiguration;
      QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POConfiguration;
      QCar2_autonomous_driving_exa_DW.HILInitialize_POAlignValues[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POAlignment;
      QCar2_autonomous_driving_exa_DW.HILInitialize_POAlignValues[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POAlignment;
      QCar2_autonomous_driving_exa_DW.HILInitialize_POPolarityVals[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POPolarity;
      QCar2_autonomous_driving_exa_DW.HILInitialize_POPolarityVals[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POPolarity;
      result = hil_set_pwm_configuration
        (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
         QCar2_autonomous_driving_exam_P.HILInitialize_POChannels, 2U,
         (t_pwm_configuration *)
         &QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues[0],
         (t_pwm_alignment *)
         &QCar2_autonomous_driving_exa_DW.HILInitialize_POAlignValues[0],
         (t_pwm_polarity *)
         &QCar2_autonomous_driving_exa_DW.HILInitialize_POPolarityVals[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }
    }

    if ((QCar2_autonomous_driving_exam_P.HILInitialize_POStart && !is_switching)
        || (QCar2_autonomous_driving_exam_P.HILInitialize_POEnter &&
            is_switching)) {
      QCar2_autonomous_driving_exa_DW.HILInitialize_POValues[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POInitial;
      QCar2_autonomous_driving_exa_DW.HILInitialize_POValues[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POInitial;
      result = hil_write_pwm(QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
        QCar2_autonomous_driving_exam_P.HILInitialize_POChannels, 2U,
        &QCar2_autonomous_driving_exa_DW.HILInitialize_POValues[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }
    }

    if (QCar2_autonomous_driving_exam_P.HILInitialize_POReset) {
      QCar2_autonomous_driving_exa_DW.HILInitialize_POValues[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POWatchdog;
      QCar2_autonomous_driving_exa_DW.HILInitialize_POValues[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POWatchdog;
      result = hil_watchdog_set_pwm_expiration_state
        (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
         QCar2_autonomous_driving_exam_P.HILInitialize_POChannels, 2U,
         &QCar2_autonomous_driving_exa_DW.HILInitialize_POValues[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }
    }

    if ((QCar2_autonomous_driving_exam_P.HILInitialize_OOStart && !is_switching)
        || (QCar2_autonomous_driving_exam_P.HILInitialize_OOEnter &&
            is_switching)) {
      QCar2_autonomous_driving_exa_DW.HILInitialize_OOValues[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_OOInitial;
      QCar2_autonomous_driving_exa_DW.HILInitialize_OOValues[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_OOInitial;
      result = hil_write_other
        (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
         QCar2_autonomous_driving_exam_P.HILInitialize_OOChannels, 2U,
         &QCar2_autonomous_driving_exa_DW.HILInitialize_OOValues[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }
    }

    if (QCar2_autonomous_driving_exam_P.HILInitialize_OOReset) {
      QCar2_autonomous_driving_exa_DW.HILInitialize_OOValues[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_OOWatchdog;
      QCar2_autonomous_driving_exa_DW.HILInitialize_OOValues[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_OOWatchdog;
      result = hil_watchdog_set_other_expiration_state
        (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
         QCar2_autonomous_driving_exam_P.HILInitialize_OOChannels, 2U,
         &QCar2_autonomous_driving_exa_DW.HILInitialize_OOValues[0]);
      if (result < 0) {
        msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
          (_rt_error_message));
        rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        return;
      }
    }
  }

  /* Start for S-Function (inverse_modulus_block): '<S8>/Unwrap 2^24' */

  /* S-Function Block: QCar2_autonomous_driving_example2/basicQCarIO/Unwrap 2^24 (inverse_modulus_block) */
  {
    QCar2_autonomous_driving_exa_DW.Unwrap224_FirstSample = true;
    QCar2_autonomous_driving_exa_DW.Unwrap224_Revolutions = 0;
  }

  /* Start for RateTransition: '<Root>/Rate Transition' */
  QCar2_autonomous_driving_exam_B.RateTransition =
    QCar2_autonomous_driving_exam_P.RateTransition_InitialCondition;

  /* Start for RateTransition: '<Root>/Rate Transition1' */
  QCar2_autonomous_driving_exam_B.RateTransition1 =
    QCar2_autonomous_driving_exam_P.RateTransition1_InitialConditio;

  /* Start for S-Function (sample_time_block): '<S14>/Sample Time' */

  /* S-Function Block: QCar2_autonomous_driving_example2/monitorTiming /Sample Time (sample_time_block) */
  {
    t_error result;
    result = timeout_get_high_resolution_time
      (&QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
      return;
    }
  }

  /* Start for RateTransition: '<Root>/Rate Transition4' */
  QCar2_autonomous_driving_exam_B.RateTransition4[0] =
    QCar2_autonomous_driving_exam_P.RateTransition4_InitialConditio;

  /* Start for RateTransition: '<Root>/Rate Transition3' */
  QCar2_autonomous_driving_exam_B.RateTransition3[0] =
    QCar2_autonomous_driving_exam_P.RateTransition3_InitialConditio;

  /* Start for RateTransition: '<Root>/Rate Transition4' */
  QCar2_autonomous_driving_exam_B.RateTransition4[1] =
    QCar2_autonomous_driving_exam_P.RateTransition4_InitialConditio;

  /* Start for RateTransition: '<Root>/Rate Transition3' */
  QCar2_autonomous_driving_exam_B.RateTransition3[1] =
    QCar2_autonomous_driving_exam_P.RateTransition3_InitialConditio;

  /* Start for RateTransition: '<Root>/Rate Transition4' */
  QCar2_autonomous_driving_exam_B.RateTransition4[2] =
    QCar2_autonomous_driving_exam_P.RateTransition4_InitialConditio;

  /* Start for RateTransition: '<Root>/Rate Transition3' */
  QCar2_autonomous_driving_exam_B.RateTransition3[2] =
    QCar2_autonomous_driving_exam_P.RateTransition3_InitialConditio;

  /* Start for S-Function (video_capture_block): '<S10>/Video Capture' */
  {
    t_video_capture_attribute local_attr[18] = {
      { QCar2_autonomous_driving_exam_P.VideoCapture_Brightness,
        VIDEO_CAPTURE_PROPERTY_BRIGHTNESS, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Contrast,
        VIDEO_CAPTURE_PROPERTY_CONTRAST, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Hue,
        VIDEO_CAPTURE_PROPERTY_HUE, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Saturation,
        VIDEO_CAPTURE_PROPERTY_SATURATION, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Sharpness,
        VIDEO_CAPTURE_PROPERTY_SHARPNESS, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Gamma,
        VIDEO_CAPTURE_PROPERTY_GAMMA, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_ColorEnable,
        VIDEO_CAPTURE_PROPERTY_COLOREFFECT, (t_boolean) 0, true }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_WhiteBalance,
        VIDEO_CAPTURE_PROPERTY_WHITEBALANCE, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_BacklightCompensat,
        VIDEO_CAPTURE_PROPERTY_BACKLIGHTCOMPENSATION, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Gain,
        VIDEO_CAPTURE_PROPERTY_GAIN, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Pan,
        VIDEO_CAPTURE_PROPERTY_PAN, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Tilt,
        VIDEO_CAPTURE_PROPERTY_TILT, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Roll,
        VIDEO_CAPTURE_PROPERTY_ROLL, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Zoom,
        VIDEO_CAPTURE_PROPERTY_ZOOM, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Exposure,
        VIDEO_CAPTURE_PROPERTY_EXPOSURE, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Iris,
        VIDEO_CAPTURE_PROPERTY_IRIS, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Focus,
        VIDEO_CAPTURE_PROPERTY_FOCUS, (t_boolean) 0, false }
      , { QCar2_autonomous_driving_exam_P.VideoCapture_Mirror,
        VIDEO_CAPTURE_PROPERTY_MIRROR, (t_boolean) 0, true }
    };

    t_error result;

    /*printf("Opening camera video://localhost:2\n"); fflush(stdout);*/
    result = video_capture_open("video://localhost:2", 120.0, 820U, 410U,
      IMAGE_FORMAT_COL_MAJOR_PLANAR_RGB, IMAGE_DATA_TYPE_UINT8,
      &QCar2_autonomous_driving_exa_DW.VideoCapture_VideoCapture,
      local_attr, 18
      );
    if (result >= 0) {
      result = video_capture_start
        (QCar2_autonomous_driving_exa_DW.VideoCapture_VideoCapture);
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (image_transform_block): '<S12>/Image Transform' */

  /* S-Function Block: QCar2_autonomous_driving_example2/colorThresholdingHSV/Image Transform (image_transform_block) */
  {
    t_error result;
    result = image_rgb_to_hsv_open
      (&QCar2_autonomous_driving_exa_DW.ImageTransform_AlgHandle);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (image_compress_block): '<S23>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example2/Display RGB/RGB Image Processed/Image Compress (image_compress_block) */
  {
    t_error result = qjpeg_compress_open
      (&QCar2_autonomous_driving_exa_DW.ImageCompress_Compress);
    if (result == 0) {
      do {
        result = qjpeg_compress_set_image_properties
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress, 274, 137,
           COLOR_SPACE_RGB, IMAGE_DATA_TYPE_UINT8);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_quality
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress,
           QCar2_autonomous_driving_exam_P.ImageCompress_Quality);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_fixed_memory_destination
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress,
           &QCar2_autonomous_driving_exam_B.ImageCompress[0], 112614);
        if (result < 0) {
          break;
        }
      } while (false);

      if (result < 0) {
        qjpeg_compress_close
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress);
      }
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (channel_block): '<S23>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example2/Display RGB/RGB Image Processed/Channel (channel_block) */
  {
    t_error result;
    result = channel_fifo_create(1, sizeof(uint8_T), 1, 112614, 1,
      (t_channel_fifo *) &QCar2_autonomous_driving_exa_DW.Channel_PWORK.Fifo);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (image_compress_block): '<S24>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example2/RGB Image  Pre-Proccessing/RGB Image No Threshold/Image Compress (image_compress_block) */
  {
    t_error result = qjpeg_compress_open
      (&QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_c);
    if (result == 0) {
      do {
        result = qjpeg_compress_set_image_properties
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_c, 273, 205,
           COLOR_SPACE_RGB, IMAGE_DATA_TYPE_UINT8);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_quality
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_c,
           QCar2_autonomous_driving_exam_P.ImageCompress_Quality_p);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_fixed_memory_destination
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_c,
           &QCar2_autonomous_driving_exam_B.ImageCompress_h[0], 167895);
        if (result < 0) {
          break;
        }
      } while (false);

      if (result < 0) {
        qjpeg_compress_close
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_c);
      }
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (channel_block): '<S24>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example2/RGB Image  Pre-Proccessing/RGB Image No Threshold/Channel (channel_block) */
  {
    t_error result;
    result = channel_fifo_create(2, sizeof(uint8_T), 1, 167895, 1,
      (t_channel_fifo *) &QCar2_autonomous_driving_exa_DW.Channel_PWORK_b.Fifo);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (sample_time_block): '<S15>/Sample Time' */

  /* S-Function Block: QCar2_autonomous_driving_example2/monitorTiming 1/Sample Time (sample_time_block) */
  {
    t_error result;
    result = timeout_get_high_resolution_time
      (&QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime_g);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
      return;
    }
  }

  /* Start for S-Function (video3d_initialize_block): '<S11>/Video3D Initialize' */

  /* S-Function Block: QCar2_autonomous_driving_example2/captureDepth/Video3D Initialize (video3d_initialize_block) */
  {
    t_error result;
    result = video3d_open("0",
                          &QCar2_autonomous_driving_exa_DW.Video3DInitialize_Video3D);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
      return;
    }
  }

  /* Start for S-Function (video3d_capture_block): '<S11>/Depth' */
  {
    t_error result;
    result = video3d_stream_open
      (QCar2_autonomous_driving_exa_DW.Video3DInitialize_Video3D,
       VIDEO3D_STREAM_DEPTH, QCar2_autonomous_driving_exam_P.Depth_stream_index,
       100.0, 640, 360,
       IMAGE_FORMAT_COL_MAJOR_GRAYSCALE, IMAGE_DATA_TYPE_SINGLE,
       &QCar2_autonomous_driving_exa_DW.Depth_Stream);
    if (result >= 0) {
      t_video3d_property config_properties[4];
      t_double config_values[4];
      t_uint num_config_properties = 0;
      if (QCar2_autonomous_driving_exam_P.Depth_Preset != 21) {
        config_properties[num_config_properties] =
          VIDEO3D_PROPERTY_VISUAL_PRESET;
        config_values[num_config_properties] = (t_video3d_visual_preset)
          (QCar2_autonomous_driving_exam_P.Depth_Preset - 1);
        num_config_properties++;
      }

      if (QCar2_autonomous_driving_exam_P.Depth_Emitter != 3) {
        config_properties[num_config_properties] =
          VIDEO3D_PROPERTY_ENABLE_EMITTER;
        config_values[num_config_properties] =
          (QCar2_autonomous_driving_exam_P.Depth_Emitter == 1) ? 1.0 : 0.0;
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
          (QCar2_autonomous_driving_exa_DW.Depth_Stream, config_properties,
           num_config_properties, config_values);
      }
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (image_compress_block): '<S22>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example2/Display Depth/Depth Camera Information/Image Compress (image_compress_block) */
  {
    t_error result = qjpeg_compress_open
      (&QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_cq);
    if (result == 0) {
      do {
        result = qjpeg_compress_set_image_properties
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_cq, 214, 120,
           COLOR_SPACE_RGB, IMAGE_DATA_TYPE_UINT8);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_quality
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_cq,
           QCar2_autonomous_driving_exam_P.ImageCompress_Quality_k);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_fixed_memory_destination
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_cq,
           &QCar2_autonomous_driving_exam_B.ImageCompress_o[0], 77040);
        if (result < 0) {
          break;
        }
      } while (false);

      if (result < 0) {
        qjpeg_compress_close
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_cq);
      }
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (channel_block): '<S22>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example2/Display Depth/Depth Camera Information/Channel (channel_block) */
  {
    t_error result;
    result = channel_fifo_create(0, sizeof(uint8_T), 1, 77040, 1,
      (t_channel_fifo *) &QCar2_autonomous_driving_exa_DW.Channel_PWORK_m.Fifo);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (sample_time_block): '<S16>/Sample Time' */

  /* S-Function Block: QCar2_autonomous_driving_example2/monitorTiming 2/Sample Time (sample_time_block) */
  {
    t_error result;
    result = timeout_get_high_resolution_time
      (&QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime_e);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
      return;
    }
  }

  QCar2_autonomous_drivin_PrevZCX.Integrator1_Reset_ZCE = UNINITIALIZED_ZCSIG;

  {
    int32_T i;

    /* InitializeConditions for Integrator: '<S26>/Integrator1' incorporates:
     *  Integrator: '<S27>/Integrator1'
     *  Integrator: '<S28>/Integrator1'
     */
    if (rtmIsFirstInitCond(QCar2_autonomous_driving_exa_M)) {
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE = 0.0;
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_a = 0.0;
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_aa = 0.0;
    }

    QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1 = true;

    /* End of InitializeConditions for Integrator: '<S26>/Integrator1' */

    /* InitializeConditions for Integrator: '<S26>/Integrator2' */
    QCar2_autonomous_driving_exam_X.Integrator2_CSTATE =
      QCar2_autonomous_driving_exam_P.Integrator2_IC;

    /* InitializeConditions for Integrator: '<S27>/Integrator1' */
    QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_j = true;

    /* InitializeConditions for Integrator: '<S27>/Integrator2' */
    QCar2_autonomous_driving_exam_X.Integrator2_CSTATE_k =
      QCar2_autonomous_driving_exam_P.Integrator2_IC_l;

    /* InitializeConditions for Integrator: '<S28>/Integrator1' */
    QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_m = true;

    /* InitializeConditions for Integrator: '<S28>/Integrator2' */
    QCar2_autonomous_driving_exam_X.Integrator2_CSTATE_k5 =
      QCar2_autonomous_driving_exam_P.Integrator2_IC_d;

    /* InitializeConditions for RateTransition: '<Root>/Rate Transition' */
    QCar2_autonomous_driving_exa_DW.RateTransition_Buffer0 =
      QCar2_autonomous_driving_exam_P.RateTransition_InitialCondition;

    /* InitializeConditions for DiscretePulseGenerator: '<S13>/Pulsing Light' */
    QCar2_autonomous_driving_exa_DW.clockTickCounter = 0;

    /* InitializeConditions for RateTransition: '<Root>/Rate Transition1' */
    QCar2_autonomous_driving_exa_DW.RateTransition1_Buffer0 =
      QCar2_autonomous_driving_exam_P.RateTransition1_InitialConditio;

    /* InitializeConditions for RateLimiter: '<S21>/Rate Limiter' */
    QCar2_autonomous_driving_exa_DW.PrevY =
      QCar2_autonomous_driving_exam_P.RateLimiter_IC;

    /* InitializeConditions for Integrator: '<S18>/Integrator1' */
    QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_b =
      QCar2_autonomous_driving_exam_P.Integrator1_IC;

    /* InitializeConditions for Memory: '<S13>/Memory' */
    QCar2_autonomous_driving_exa_DW.Memory_PreviousInput =
      QCar2_autonomous_driving_exam_P.Memory_InitialCondition;

    /* InitializeConditions for S-Function (one_shot_block): '<S34>/one_shot_block' incorporates:
     *  Constant: '<S13>/Constant2'
     */
    {
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] = 0.0;
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[1] = 0.0;
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[2] = 0.0;
    }

    /* InitializeConditions for RateTransition: '<Root>/Rate Transition4' */
    QCar2_autonomous_driving_exa_DW.RateTransition4_Buffer0[0] =
      QCar2_autonomous_driving_exam_P.RateTransition4_InitialConditio;
    QCar2_autonomous_driving_exa_DW.RateTransition4_Buffer0[1] =
      QCar2_autonomous_driving_exam_P.RateTransition4_InitialConditio;
    QCar2_autonomous_driving_exa_DW.RateTransition4_Buffer0[2] =
      QCar2_autonomous_driving_exam_P.RateTransition4_InitialConditio;

    /* InitializeConditions for RateTransition: '<Root>/Rate Transition3' */
    QCar2_autonomous_driving_exa_DW.RateTransition3_Buffer0[0] =
      QCar2_autonomous_driving_exam_P.RateTransition3_InitialConditio;
    QCar2_autonomous_driving_exa_DW.RateTransition3_Buffer0[1] =
      QCar2_autonomous_driving_exam_P.RateTransition3_InitialConditio;
    QCar2_autonomous_driving_exa_DW.RateTransition3_Buffer0[2] =
      QCar2_autonomous_driving_exam_P.RateTransition3_InitialConditio;

    /* InitializeConditions for S-Function (video3d_initialize_block): '<S11>/Video3D Initialize' */

    /* S-Function Block: QCar2_autonomous_driving_example2/captureDepth/Video3D Initialize (video3d_initialize_block) */
    {
      if (rtmIsFirstInitCond(QCar2_autonomous_driving_exa_M)) {
        t_error result = video3d_start_streaming
          (QCar2_autonomous_driving_exa_DW.Video3DInitialize_Video3D);
        if (result < 0) {
          msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
            (_rt_error_message));
          rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
          return;
        }
      }
    }

    /* InitializeConditions for S-Function (video3d_capture_block): '<S11>/Depth' */

    /* S-Function Block: QCar2_autonomous_driving_example2/captureDepth/Depth (video3d_capture_block) */
    {
      if (rtmIsFirstInitCond(QCar2_autonomous_driving_exa_M)) {
      }
    }

    /* SystemInitialize for MATLAB Function: '<Root>/MATLAB Function' */
    QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_jq = false;
    QCar2_autonomous_driving_exa_DW.sfEvent_k = QCar2_autonomous_dri_CALL_EVENT;

    /* SystemInitialize for MATLAB Function: '<S7>/MATLAB Function' */
    QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_o = false;
    QCar2_autonomous_driving_exa_DW.sfEvent_nr = QCar2_autonomous_dri_CALL_EVENT;

    /* SystemInitialize for Enabled SubSystem: '<Root>/obstacleDetection' */
    /* SystemInitialize for MATLAB Function: '<S17>/Draw Lines Module' */
    QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_eh = false;
    QCar2_autonomous_driving_exa_DW.sfEvent_gp = QCar2_autonomous_dri_CALL_EVENT;

    /* SystemInitialize for MATLAB Function: '<S17>/MATLAB Function' */
    QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_e = false;
    QCar2_autonomous_driving_exa_DW.sfEvent_g = QCar2_autonomous_dri_CALL_EVENT;

    /* SystemInitialize for MATLAB Function: '<S17>/Steering based  image subselector' */
    QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_k = false;
    QCar2_autonomous_driving_exa_DW.sfEvent_p = QCar2_autonomous_dri_CALL_EVENT;

    /* SystemInitialize for Outport: '<S17>/imageDepthForDisplay' */
    for (i = 0; i < 77040; i++) {
      QCar2_autonomous_driving_exam_B.img_out[i] =
        QCar2_autonomous_driving_exam_P.imageDepthForDisplay_Y0;
    }

    /* End of SystemInitialize for Outport: '<S17>/imageDepthForDisplay' */

    /* SystemInitialize for Product: '<S17>/Multiply' incorporates:
     *  Outport: '<S17>/distance (m)'
     */
    QCar2_autonomous_driving_exam_B.Multiply =
      QCar2_autonomous_driving_exam_P.distancem_Y0;

    /* End of SystemInitialize for SubSystem: '<Root>/obstacleDetection' */

    /* SystemInitialize for MATLAB Function: '<S19>/Combine images' */
    QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_g = false;
    QCar2_autonomous_driving_exa_DW.sfEvent_o3 = QCar2_autonomous_dri_CALL_EVENT;

    /* SystemInitialize for MATLAB Function: '<S19>/Find slope and intercept' */
    QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_j = false;
    QCar2_autonomous_driving_exa_DW.sfEvent_o = QCar2_autonomous_dri_CALL_EVENT;

    /* SystemInitialize for MATLAB Function: '<S19>/MATLAB Function' */
    QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_d = false;
    QCar2_autonomous_driving_exa_DW.sfEvent_j = QCar2_autonomous_dri_CALL_EVENT;

    /* SystemInitialize for MATLAB Function: '<S19>/Quick Resize' */
    QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_i = false;
    QCar2_autonomous_driving_exa_DW.sfEvent_n = QCar2_autonomous_dri_CALL_EVENT;

    /* SystemInitialize for MATLAB Function: '<S19>/Quick Resize1' */
    QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit = false;
    QCar2_autonomous_driving_exa_DW.sfEvent = QCar2_autonomous_dri_CALL_EVENT;

    /* set "at time zero" to false */
    if (rtmIsFirstInitCond(QCar2_autonomous_driving_exa_M)) {
      rtmSetFirstInitCond(QCar2_autonomous_driving_exa_M, 0);
    }
  }
}

/* Model terminate function */
void QCar2_autonomous_driving_example2_terminate(void)
{
  /* Terminate for S-Function (hil_initialize_block): '<S8>/HIL Initialize' */

  /* S-Function Block: QCar2_autonomous_driving_example2/basicQCarIO/HIL Initialize (hil_initialize_block) */
  {
    t_boolean is_switching;
    t_int result;
    t_uint32 num_final_digital_outputs = 0;
    t_uint32 num_final_pwm_outputs = 0;
    t_uint32 num_final_other_outputs = 0;
    hil_task_stop_all(QCar2_autonomous_driving_exa_DW.HILInitialize_Card);
    hil_monitor_stop_all(QCar2_autonomous_driving_exa_DW.HILInitialize_Card);
    is_switching = false;
    if ((QCar2_autonomous_driving_exam_P.HILInitialize_DOTerminate &&
         !is_switching) || (QCar2_autonomous_driving_exam_P.HILInitialize_DOExit
         && is_switching)) {
      {
        int_T i1;
        boolean_T *dw_DOBits =
          &QCar2_autonomous_driving_exa_DW.HILInitialize_DOBits[0];
        for (i1=0; i1 < 16; i1++) {
          dw_DOBits[i1] = QCar2_autonomous_driving_exam_P.HILInitialize_DOFinal;
        }
      }

      num_final_digital_outputs = 16U;
    } else {
      num_final_digital_outputs = 0;
    }

    if ((QCar2_autonomous_driving_exam_P.HILInitialize_POTerminate &&
         !is_switching) || (QCar2_autonomous_driving_exam_P.HILInitialize_POExit
         && is_switching)) {
      QCar2_autonomous_driving_exa_DW.HILInitialize_POValues[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POFinal;
      QCar2_autonomous_driving_exa_DW.HILInitialize_POValues[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_POFinal;
      num_final_pwm_outputs = 2U;
    } else {
      num_final_pwm_outputs = 0;
    }

    if ((QCar2_autonomous_driving_exam_P.HILInitialize_OOTerminate &&
         !is_switching) || (QCar2_autonomous_driving_exam_P.HILInitialize_OOExit
         && is_switching)) {
      QCar2_autonomous_driving_exa_DW.HILInitialize_OOValues[0] =
        QCar2_autonomous_driving_exam_P.HILInitialize_OOFinal;
      QCar2_autonomous_driving_exa_DW.HILInitialize_OOValues[1] =
        QCar2_autonomous_driving_exam_P.HILInitialize_OOFinal;
      num_final_other_outputs = 2U;
    } else {
      num_final_other_outputs = 0;
    }

    if (0
        || num_final_pwm_outputs > 0
        || num_final_digital_outputs > 0
        || num_final_other_outputs > 0
        ) {
      /* Attempt to write the final outputs atomically (due to firmware issue in old Q2-USB). Otherwise write channels individually */
      result = hil_write(QCar2_autonomous_driving_exa_DW.HILInitialize_Card
                         , NULL, 0
                         ,
                         QCar2_autonomous_driving_exam_P.HILInitialize_POChannels,
                         num_final_pwm_outputs
                         ,
                         QCar2_autonomous_driving_exam_P.HILInitialize_DOChannels,
                         num_final_digital_outputs
                         ,
                         QCar2_autonomous_driving_exam_P.HILInitialize_OOChannels,
                         num_final_other_outputs
                         , NULL
                         ,
                         &QCar2_autonomous_driving_exa_DW.HILInitialize_POValues[
                         0]
                         , (t_boolean *)
                         &QCar2_autonomous_driving_exa_DW.HILInitialize_DOBits[0]
                         ,
                         &QCar2_autonomous_driving_exa_DW.HILInitialize_OOValues[
                         0]
                         );
      if (result == -QERR_HIL_WRITE_NOT_SUPPORTED) {
        t_error local_result;
        result = 0;

        /* The hil_write operation is not supported by this card. Write final outputs for each channel type */
        if (num_final_pwm_outputs > 0) {
          local_result = hil_write_pwm
            (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
             QCar2_autonomous_driving_exam_P.HILInitialize_POChannels,
             num_final_pwm_outputs,
             &QCar2_autonomous_driving_exa_DW.HILInitialize_POValues[0]);
          if (local_result < 0) {
            result = local_result;
          }
        }

        if (num_final_digital_outputs > 0) {
          local_result = hil_write_digital
            (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
             QCar2_autonomous_driving_exam_P.HILInitialize_DOChannels,
             num_final_digital_outputs, (t_boolean *)
             &QCar2_autonomous_driving_exa_DW.HILInitialize_DOBits[0]);
          if (local_result < 0) {
            result = local_result;
          }
        }

        if (num_final_other_outputs > 0) {
          local_result = hil_write_other
            (QCar2_autonomous_driving_exa_DW.HILInitialize_Card,
             QCar2_autonomous_driving_exam_P.HILInitialize_OOChannels,
             num_final_other_outputs,
             &QCar2_autonomous_driving_exa_DW.HILInitialize_OOValues[0]);
          if (local_result < 0) {
            result = local_result;
          }
        }

        if (result < 0) {
          msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
            (_rt_error_message));
          rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
        }
      }
    }

    hil_task_delete_all(QCar2_autonomous_driving_exa_DW.HILInitialize_Card);
    hil_monitor_delete_all(QCar2_autonomous_driving_exa_DW.HILInitialize_Card);
    hil_close(QCar2_autonomous_driving_exa_DW.HILInitialize_Card);
    QCar2_autonomous_driving_exa_DW.HILInitialize_Card = NULL;
  }

  /* Terminate for S-Function (video_capture_block): '<S10>/Video Capture' */
  video_capture_stop(QCar2_autonomous_driving_exa_DW.VideoCapture_VideoCapture);
  video_capture_close(QCar2_autonomous_driving_exa_DW.VideoCapture_VideoCapture);

  /* Terminate for S-Function (image_transform_block): '<S12>/Image Transform' */

  /* S-Function Block: QCar2_autonomous_driving_example2/colorThresholdingHSV/Image Transform (image_transform_block) */
  {
    image_rgb_to_hsv_close
      (QCar2_autonomous_driving_exa_DW.ImageTransform_AlgHandle);
  }

  /* Terminate for S-Function (image_compress_block): '<S23>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example2/Display RGB/RGB Image Processed/Image Compress (image_compress_block) */
  {
    qjpeg_compress_close(QCar2_autonomous_driving_exa_DW.ImageCompress_Compress);
    QCar2_autonomous_driving_exa_DW.ImageCompress_Compress = NULL;
  }

  /* Terminate for S-Function (channel_block): '<S23>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example2/Display RGB/RGB Image Processed/Channel (channel_block) */
  {
    channel_fifo_destroy((t_channel_fifo)
                         QCar2_autonomous_driving_exa_DW.Channel_PWORK.Fifo);
    QCar2_autonomous_driving_exa_DW.Channel_PWORK.Fifo = NULL;
  }

  /* Terminate for S-Function (image_compress_block): '<S24>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example2/RGB Image  Pre-Proccessing/RGB Image No Threshold/Image Compress (image_compress_block) */
  {
    qjpeg_compress_close
      (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_c);
    QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_c = NULL;
  }

  /* Terminate for S-Function (channel_block): '<S24>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example2/RGB Image  Pre-Proccessing/RGB Image No Threshold/Channel (channel_block) */
  {
    channel_fifo_destroy((t_channel_fifo)
                         QCar2_autonomous_driving_exa_DW.Channel_PWORK_b.Fifo);
    QCar2_autonomous_driving_exa_DW.Channel_PWORK_b.Fifo = NULL;
  }

  /* Terminate for S-Function (video3d_initialize_block): '<S11>/Video3D Initialize' */

  /* S-Function Block: QCar2_autonomous_driving_example2/captureDepth/Video3D Initialize (video3d_initialize_block) */
  {
    video3d_stop_streaming
      (QCar2_autonomous_driving_exa_DW.Video3DInitialize_Video3D);
    video3d_close(QCar2_autonomous_driving_exa_DW.Video3DInitialize_Video3D);
  }

  /* Terminate for S-Function (image_compress_block): '<S22>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example2/Display Depth/Depth Camera Information/Image Compress (image_compress_block) */
  {
    qjpeg_compress_close
      (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_cq);
    QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_cq = NULL;
  }

  /* Terminate for S-Function (channel_block): '<S22>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example2/Display Depth/Depth Camera Information/Channel (channel_block) */
  {
    channel_fifo_destroy((t_channel_fifo)
                         QCar2_autonomous_driving_exa_DW.Channel_PWORK_m.Fifo);
    QCar2_autonomous_driving_exa_DW.Channel_PWORK_m.Fifo = NULL;
  }
}

/*========================================================================*
 * Start of Classic call interface                                        *
 *========================================================================*/

/* Solver interface called by GRT_Main */
#ifndef USE_GENERATED_SOLVER

void rt_ODECreateIntegrationData(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

void rt_ODEDestroyIntegrationData(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

void rt_ODEUpdateContinuousStates(RTWSolverInfo *si)
{
  UNUSED_PARAMETER(si);
  return;
}                                      /* do nothing */

#endif

void MdlOutputs(int_T tid)
{
  if (tid == 1)
    tid = 0;
  QCar2_autonomous_driving_example2_output(tid);
}

void MdlUpdate(int_T tid)
{
  if (tid == 1)
    tid = 0;
  QCar2_autonomous_driving_example2_update(tid);
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
  QCar2_autonomous_driving_example2_initialize();
}

void MdlTerminate(void)
{
  QCar2_autonomous_driving_example2_terminate();
}

/* Registration function */
RT_MODEL_QCar2_autonomous_dri_T *QCar2_autonomous_driving_example2(void)
{
  /* Registration code */

  /* initialize real-time model */
  (void) memset((void *)QCar2_autonomous_driving_exa_M, 0,
                sizeof(RT_MODEL_QCar2_autonomous_dri_T));

  {
    /* Setup solver object */
    rtsiSetSimTimeStepPtr(&QCar2_autonomous_driving_exa_M->solverInfo,
                          &QCar2_autonomous_driving_exa_M->Timing.simTimeStep);
    rtsiSetTPtr(&QCar2_autonomous_driving_exa_M->solverInfo, &rtmGetTPtr
                (QCar2_autonomous_driving_exa_M));
    rtsiSetStepSizePtr(&QCar2_autonomous_driving_exa_M->solverInfo,
                       &QCar2_autonomous_driving_exa_M->Timing.stepSize0);
    rtsiSetdXPtr(&QCar2_autonomous_driving_exa_M->solverInfo,
                 &QCar2_autonomous_driving_exa_M->derivs);
    rtsiSetContStatesPtr(&QCar2_autonomous_driving_exa_M->solverInfo, (real_T **)
                         &QCar2_autonomous_driving_exa_M->contStates);
    rtsiSetNumContStatesPtr(&QCar2_autonomous_driving_exa_M->solverInfo,
      &QCar2_autonomous_driving_exa_M->Sizes.numContStates);
    rtsiSetNumPeriodicContStatesPtr(&QCar2_autonomous_driving_exa_M->solverInfo,
      &QCar2_autonomous_driving_exa_M->Sizes.numPeriodicContStates);
    rtsiSetPeriodicContStateIndicesPtr
      (&QCar2_autonomous_driving_exa_M->solverInfo,
       &QCar2_autonomous_driving_exa_M->periodicContStateIndices);
    rtsiSetPeriodicContStateRangesPtr
      (&QCar2_autonomous_driving_exa_M->solverInfo,
       &QCar2_autonomous_driving_exa_M->periodicContStateRanges);
    rtsiSetContStateDisabledPtr(&QCar2_autonomous_driving_exa_M->solverInfo,
      (boolean_T**) &QCar2_autonomous_driving_exa_M->contStateDisabled);
    rtsiSetErrorStatusPtr(&QCar2_autonomous_driving_exa_M->solverInfo,
                          (&rtmGetErrorStatus(QCar2_autonomous_driving_exa_M)));
    rtsiSetRTModelPtr(&QCar2_autonomous_driving_exa_M->solverInfo,
                      QCar2_autonomous_driving_exa_M);
  }

  rtsiSetSimTimeStep(&QCar2_autonomous_driving_exa_M->solverInfo,
                     MAJOR_TIME_STEP);
  rtsiSetIsMinorTimeStepWithModeChange
    (&QCar2_autonomous_driving_exa_M->solverInfo, false);
  rtsiSetIsContModeFrozen(&QCar2_autonomous_driving_exa_M->solverInfo, false);
  QCar2_autonomous_driving_exa_M->intgData.y =
    QCar2_autonomous_driving_exa_M->odeY;
  QCar2_autonomous_driving_exa_M->intgData.f[0] =
    QCar2_autonomous_driving_exa_M->odeF[0];
  QCar2_autonomous_driving_exa_M->intgData.f[1] =
    QCar2_autonomous_driving_exa_M->odeF[1];
  QCar2_autonomous_driving_exa_M->contStates = ((real_T *)
    &QCar2_autonomous_driving_exam_X);
  QCar2_autonomous_driving_exa_M->contStateDisabled = ((boolean_T *)
    &QCar2_autonomous_driving_e_XDis);
  QCar2_autonomous_driving_exa_M->Timing.tStart = (0.0);
  rtsiSetSolverData(&QCar2_autonomous_driving_exa_M->solverInfo, (void *)
                    &QCar2_autonomous_driving_exa_M->intgData);
  rtsiSetSolverName(&QCar2_autonomous_driving_exa_M->solverInfo,"ode2");

  /* Initialize timing info */
  {
    int_T *mdlTsMap =
      QCar2_autonomous_driving_exa_M->Timing.sampleTimeTaskIDArray;
    mdlTsMap[0] = 0;
    mdlTsMap[1] = 1;
    mdlTsMap[2] = 2;
    mdlTsMap[3] = 3;
    QCar2_autonomous_driving_exa_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
    QCar2_autonomous_driving_exa_M->Timing.sampleTimes =
      (&QCar2_autonomous_driving_exa_M->Timing.sampleTimesArray[0]);
    QCar2_autonomous_driving_exa_M->Timing.offsetTimes =
      (&QCar2_autonomous_driving_exa_M->Timing.offsetTimesArray[0]);

    /* task periods */
    QCar2_autonomous_driving_exa_M->Timing.sampleTimes[0] = (0.0);
    QCar2_autonomous_driving_exa_M->Timing.sampleTimes[1] =
      (0.0016666666666666668);
    QCar2_autonomous_driving_exa_M->Timing.sampleTimes[2] =
      (0.0083333333333333332);
    QCar2_autonomous_driving_exa_M->Timing.sampleTimes[3] = (0.01);

    /* task offsets */
    QCar2_autonomous_driving_exa_M->Timing.offsetTimes[0] = (0.0);
    QCar2_autonomous_driving_exa_M->Timing.offsetTimes[1] = (0.0);
    QCar2_autonomous_driving_exa_M->Timing.offsetTimes[2] = (0.0);
    QCar2_autonomous_driving_exa_M->Timing.offsetTimes[3] = (0.0);
  }

  rtmSetTPtr(QCar2_autonomous_driving_exa_M,
             &QCar2_autonomous_driving_exa_M->Timing.tArray[0]);

  {
    int_T *mdlSampleHits = QCar2_autonomous_driving_exa_M->Timing.sampleHitArray;
    int_T *mdlPerTaskSampleHits =
      QCar2_autonomous_driving_exa_M->Timing.perTaskSampleHitsArray;
    QCar2_autonomous_driving_exa_M->Timing.perTaskSampleHits =
      (&mdlPerTaskSampleHits[0]);
    mdlSampleHits[0] = 1;
    QCar2_autonomous_driving_exa_M->Timing.sampleHits = (&mdlSampleHits[0]);
  }

  rtmSetTFinal(QCar2_autonomous_driving_exa_M, -1);
  QCar2_autonomous_driving_exa_M->Timing.stepSize0 = 0.0016666666666666668;
  QCar2_autonomous_driving_exa_M->Timing.stepSize1 = 0.0016666666666666668;
  QCar2_autonomous_driving_exa_M->Timing.stepSize2 = 0.0083333333333333332;
  QCar2_autonomous_driving_exa_M->Timing.stepSize3 = 0.01;
  rtmSetFirstInitCond(QCar2_autonomous_driving_exa_M, 1);

  /* External mode info */
  QCar2_autonomous_driving_exa_M->Sizes.checksums[0] = (3929161557U);
  QCar2_autonomous_driving_exa_M->Sizes.checksums[1] = (1525605064U);
  QCar2_autonomous_driving_exa_M->Sizes.checksums[2] = (1492113437U);
  QCar2_autonomous_driving_exa_M->Sizes.checksums[3] = (2175012024U);

  {
    static const sysRanDType rtAlwaysEnabled = SUBSYS_RAN_BC_ENABLE;
    static RTWExtModeInfo rt_ExtModeInfo;
    static const sysRanDType *systemRan[20];
    QCar2_autonomous_driving_exa_M->extModeInfo = (&rt_ExtModeInfo);
    rteiSetSubSystemActiveVectorAddresses(&rt_ExtModeInfo, systemRan);
    systemRan[0] = &rtAlwaysEnabled;
    systemRan[1] = &rtAlwaysEnabled;
    systemRan[2] = &rtAlwaysEnabled;
    systemRan[3] = (sysRanDType *)
      &QCar2_autonomous_driving_exa_DW.obstacleDetection_SubsysRanBC;
    systemRan[4] = (sysRanDType *)
      &QCar2_autonomous_driving_exa_DW.obstacleDetection_SubsysRanBC;
    systemRan[5] = (sysRanDType *)
      &QCar2_autonomous_driving_exa_DW.obstacleDetection_SubsysRanBC;
    systemRan[6] = (sysRanDType *)
      &QCar2_autonomous_driving_exa_DW.obstacleDetection_SubsysRanBC;
    systemRan[7] = &rtAlwaysEnabled;
    systemRan[8] = &rtAlwaysEnabled;
    systemRan[9] = &rtAlwaysEnabled;
    systemRan[10] = &rtAlwaysEnabled;
    systemRan[11] = &rtAlwaysEnabled;
    systemRan[12] = &rtAlwaysEnabled;
    systemRan[13] = &rtAlwaysEnabled;
    systemRan[14] = &rtAlwaysEnabled;
    systemRan[15] = &rtAlwaysEnabled;
    systemRan[16] = &rtAlwaysEnabled;
    systemRan[17] = &rtAlwaysEnabled;
    systemRan[18] = &rtAlwaysEnabled;
    systemRan[19] = &rtAlwaysEnabled;
    rteiSetModelMappingInfoPtr(QCar2_autonomous_driving_exa_M->extModeInfo,
      &QCar2_autonomous_driving_exa_M->SpecialInfo.mappingInfo);
    rteiSetChecksumsPtr(QCar2_autonomous_driving_exa_M->extModeInfo,
                        QCar2_autonomous_driving_exa_M->Sizes.checksums);
    rteiSetTPtr(QCar2_autonomous_driving_exa_M->extModeInfo, rtmGetTPtr
                (QCar2_autonomous_driving_exa_M));
  }

  QCar2_autonomous_driving_exa_M->solverInfoPtr =
    (&QCar2_autonomous_driving_exa_M->solverInfo);
  QCar2_autonomous_driving_exa_M->Timing.stepSize = (0.0016666666666666668);
  rtsiSetFixedStepSize(&QCar2_autonomous_driving_exa_M->solverInfo,
                       0.0016666666666666668);
  rtsiSetSolverMode(&QCar2_autonomous_driving_exa_M->solverInfo,
                    SOLVER_MODE_MULTITASKING);

  /* block I/O */
  QCar2_autonomous_driving_exa_M->blockIO = ((void *)
    &QCar2_autonomous_driving_exam_B);
  (void) memset(((void *) &QCar2_autonomous_driving_exam_B), 0,
                sizeof(B_QCar2_autonomous_driving_ex_T));

  {
    QCar2_autonomous_driving_exam_B.Channel = CHANNEL_0;
    QCar2_autonomous_driving_exam_B.Channel_b = CHANNEL_0;
    QCar2_autonomous_driving_exam_B.Channel_g = CHANNEL_0;
  }

  /* parameters */
  QCar2_autonomous_driving_exa_M->defaultParam = ((real_T *)
    &QCar2_autonomous_driving_exam_P);

  /* states (continuous) */
  {
    real_T *x = (real_T *) &QCar2_autonomous_driving_exam_X;
    QCar2_autonomous_driving_exa_M->contStates = (x);
    (void) memset((void *)&QCar2_autonomous_driving_exam_X, 0,
                  sizeof(X_QCar2_autonomous_driving_ex_T));
  }

  /* disabled states */
  {
    boolean_T *xdis = (boolean_T *) &QCar2_autonomous_driving_e_XDis;
    QCar2_autonomous_driving_exa_M->contStateDisabled = (xdis);
    (void) memset((void *)&QCar2_autonomous_driving_e_XDis, 0,
                  sizeof(XDis_QCar2_autonomous_driving_T));
  }

  /* states (dwork) */
  QCar2_autonomous_driving_exa_M->dwork = ((void *)
    &QCar2_autonomous_driving_exa_DW);
  (void) memset((void *)&QCar2_autonomous_driving_exa_DW, 0,
                sizeof(DW_QCar2_autonomous_driving_e_T));

  /* data type transition information */
  {
    static DataTypeTransInfo dtInfo;
    (void) memset((char_T *) &dtInfo, 0,
                  sizeof(dtInfo));
    QCar2_autonomous_driving_exa_M->SpecialInfo.mappingInfo = (&dtInfo);
    dtInfo.numDataTypes = 33;
    dtInfo.dataTypeSizes = &rtDataTypeSizes[0];
    dtInfo.dataTypeNames = &rtDataTypeNames[0];

    /* Block I/O transition table */
    dtInfo.BTransTable = &rtBTransTable;

    /* Parameters transition table */
    dtInfo.PTransTable = &rtPTransTable;
  }

  /* Initialize Sizes */
  QCar2_autonomous_driving_exa_M->Sizes.numContStates = (7);/* Number of continuous states */
  QCar2_autonomous_driving_exa_M->Sizes.numPeriodicContStates = (0);
                                      /* Number of periodic continuous states */
  QCar2_autonomous_driving_exa_M->Sizes.numY = (0);/* Number of model outputs */
  QCar2_autonomous_driving_exa_M->Sizes.numU = (0);/* Number of model inputs */
  QCar2_autonomous_driving_exa_M->Sizes.sysDirFeedThru = (0);/* The model is not direct feedthrough */
  QCar2_autonomous_driving_exa_M->Sizes.numSampTimes = (4);/* Number of sample times */
  QCar2_autonomous_driving_exa_M->Sizes.numBlocks = (262);/* Number of blocks */
  QCar2_autonomous_driving_exa_M->Sizes.numBlockIO = (80);/* Number of block outputs */
  QCar2_autonomous_driving_exa_M->Sizes.numBlockPrms = (330);/* Sum of parameter "widths" */
  return QCar2_autonomous_driving_exa_M;
}

/*========================================================================*
 * End of Classic call interface                                          *
 *========================================================================*/
