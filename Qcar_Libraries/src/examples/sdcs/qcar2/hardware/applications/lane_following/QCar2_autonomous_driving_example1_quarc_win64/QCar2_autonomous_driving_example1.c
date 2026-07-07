/*
 * QCar2_autonomous_driving_example1.c
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
#include "rtwtypes.h"
#include "QCar2_autonomous_driving_example1_types.h"
#include <math.h>
#include "QCar2_autonomous_driving_example1_private.h"
#include "rt_nonfinite.h"
#include <string.h>
#include <emmintrin.h>
#include <stdlib.h>
#include <stddef.h>
#include "zero_crossing_types.h"
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
static void QCar2_autonomous_drivi_linspace(real_T d1, real_T d2, real_T n,
  emxArray_real_T_QCar2_autonom_T *y);
static void QCar2_autonomous_emxFree_real_T(emxArray_real_T_QCar2_autonom_T
  **pEmxArray);
static void QCar2_autonomo_emxInit_real32_T(emxArray_real32_T_QCar2_auton_T
  **pEmxArray, int32_T numDimensions);
static void QCar_emxEnsureCapacity_real32_T(emxArray_real32_T_QCar2_auton_T
  *emxArray, int32_T oldNumel);
static void QCar2_autonomous_dri_linspace_e(real32_T d1, real32_T d2, real32_T n,
  emxArray_real32_T_QCar2_auton_T *y);
static void QCar2_autonomo_emxFree_real32_T(emxArray_real32_T_QCar2_auton_T
  **pEmxArray);
static void rate_monotonic_scheduler(void);
time_T rt_SimUpdateDiscreteEvents(
  int_T rtmNumSampTimes, void *rtmTimingData, int_T *rtmSampleHitPtr, int_T
  *rtmPerTaskSampleHits )
{
  rtmSampleHitPtr[1] = rtmStepTask(QCar2_autonomous_driving_exa_M, 1);
  rtmSampleHitPtr[2] = rtmStepTask(QCar2_autonomous_driving_exa_M, 2);
  rtmSampleHitPtr[3] = rtmStepTask(QCar2_autonomous_driving_exa_M, 3);
  rtmSampleHitPtr[4] = rtmStepTask(QCar2_autonomous_driving_exa_M, 4);
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
    QCar2_autonomous_driving_exa_M->Timing.perTaskSampleHits[7] =
      QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_2;
    QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_3 =
      (QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[3] == 0);

    /* update PerTaskSampleHits matrix for non-inline sfcn */
    QCar2_autonomous_driving_exa_M->Timing.perTaskSampleHits[8] =
      QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_3;
  }

  /* tid 3 shares data with slower tid rate: 4 */
  if (QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[3] == 0) {
    QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID3_4 =
      (QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[4] == 0);

    /* update PerTaskSampleHits matrix for non-inline sfcn */
    QCar2_autonomous_driving_exa_M->Timing.perTaskSampleHits[19] =
      QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID3_4;
  }

  /* Compute which subrates run during the next base time step.  Subrates
   * are an integer multiple of the base rate counter.  Therefore, the subtask
   * counter is reset when it reaches its limit (zero means run).
   */
  (QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[2])++;
  if ((QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[2]) > 5) {/* Sample time: [0.01s, 0.0s] */
    QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[2] = 0;
  }

  (QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[3])++;
  if ((QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[3]) > 9) {
                                /* Sample time: [0.016666666666666666s, 0.0s] */
    QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[3] = 0;
  }

  (QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[4])++;
  if ((QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[4]) > 59) {/* Sample time: [0.1s, 0.0s] */
    QCar2_autonomous_driving_exa_M->Timing.TaskCounters.TID[4] = 0;
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
  QCar2_autonomous_driving_example1_derivatives();

  /* f1 = f(t + h, y + h*f0) */
  for (i = 0; i < nXc; i++) {
    x[i] = y[i] + (h*f0[i]);
  }

  rtsiSetT(si, tnew);
  rtsiSetdX(si, f1);
  QCar2_autonomous_driving_example1_output0();
  QCar2_autonomous_driving_example1_derivatives();

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

/* Function for MATLAB Function: '<S4>/Draw Lines Module1' */
static void QCar2_autonomous_drivi_linspace(real_T d1, real_T d2, real_T n,
  emxArray_real_T_QCar2_autonom_T *y)
{
  real_T tmp[2];
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
            _mm_storeu_pd(&tmp[0], _mm_div_pd(_mm_set_pd(d2, d1), _mm_sub_pd
              (_mm_set1_pd(y->size[1]), _mm_set1_pd(1.0))));
            delta1 = tmp[0];
            delta2 = tmp[1];
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

static void QCar2_autonomo_emxInit_real32_T(emxArray_real32_T_QCar2_auton_T
  **pEmxArray, int32_T numDimensions)
{
  emxArray_real32_T_QCar2_auton_T *emxArray;
  int32_T i;
  *pEmxArray = (emxArray_real32_T_QCar2_auton_T *)malloc(sizeof
    (emxArray_real32_T_QCar2_auton_T));
  emxArray = *pEmxArray;
  emxArray->data = (real32_T *)NULL;
  emxArray->numDimensions = numDimensions;
  emxArray->size = (int32_T *)malloc(sizeof(int32_T) * (uint32_T)numDimensions);
  emxArray->allocatedSize = 0;
  emxArray->canFreeData = true;
  for (i = 0; i < numDimensions; i++) {
    emxArray->size[i] = 0;
  }
}

static void QCar_emxEnsureCapacity_real32_T(emxArray_real32_T_QCar2_auton_T
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

    newData = malloc((uint32_T)i * sizeof(real32_T));
    if (emxArray->data != NULL) {
      memcpy(newData, emxArray->data, sizeof(real32_T) * (uint32_T)oldNumel);
      if (emxArray->canFreeData) {
        free(emxArray->data);
      }
    }

    emxArray->data = (real32_T *)newData;
    emxArray->allocatedSize = i;
    emxArray->canFreeData = true;
  }
}

/* Function for MATLAB Function: '<S4>/Draw Lines Module2' */
static void QCar2_autonomous_dri_linspace_e(real32_T d1, real32_T d2, real32_T n,
  emxArray_real32_T_QCar2_auton_T *y)
{
  int32_T c_k;
  int32_T d_tmp;
  real32_T delta1;
  real32_T delta2;
  if (!(n >= 0.0F)) {
    y->size[0] = 1;
    y->size[1] = 0;
  } else {
    delta1 = floorf(n);
    c_k = y->size[0] * y->size[1];
    y->size[0] = 1;
    d_tmp = (int32_T)floorf(n);
    y->size[1] = (int32_T)delta1;
    QCar_emxEnsureCapacity_real32_T(y, c_k);
    if ((int32_T)delta1 >= 1) {
      y->data[(int32_T)delta1 - 1] = d2;
      if (y->size[1] >= 2) {
        y->data[0] = d1;
        if (y->size[1] >= 3) {
          if (d1 == -d2) {
            delta1 = d2 / (real32_T)(y->size[1] - 1);
            for (c_k = 2; c_k < d_tmp; c_k++) {
              y->data[c_k - 1] = (real32_T)(((c_k << 1) - y->size[1]) - 1) *
                delta1;
            }

            if (((uint32_T)y->size[1] & 1U) == 1U) {
              y->data[y->size[1] >> 1] = 0.0F;
            }
          } else if (((d1 < 0.0F) != (d2 < 0.0F)) && ((fabsf(d1) >
                       1.70141173E+38F) || (fabsf(d2) > 1.70141173E+38F))) {
            delta1 = d1 / (real32_T)((real_T)y->size[1] - 1.0);
            delta2 = d2 / (real32_T)((real_T)y->size[1] - 1.0);
            for (c_k = 0; c_k <= d_tmp - 3; c_k++) {
              y->data[c_k + 1] = ((real32_T)((real_T)c_k + 1.0) * delta2 + d1) -
                (real32_T)((real_T)c_k + 1.0) * delta1;
            }
          } else {
            delta1 = (d2 - d1) / (real32_T)((real_T)y->size[1] - 1.0);
            for (c_k = 0; c_k <= d_tmp - 3; c_k++) {
              y->data[c_k + 1] = (real32_T)((real_T)c_k + 1.0) * delta1 + d1;
            }
          }
        }
      }
    }
  }
}

static void QCar2_autonomo_emxFree_real32_T(emxArray_real32_T_QCar2_auton_T
  **pEmxArray)
{
  if (*pEmxArray != (emxArray_real32_T_QCar2_auton_T *)NULL) {
    if (((*pEmxArray)->data != (real32_T *)NULL) && (*pEmxArray)->canFreeData) {
      free((*pEmxArray)->data);
    }

    free((*pEmxArray)->size);
    free(*pEmxArray);
    *pEmxArray = (emxArray_real32_T_QCar2_auton_T *)NULL;
  }
}

/* Model output function for TID0 */
void QCar2_autonomous_driving_example1_output0(void) /* Sample time: [0.0s, 0.0s] */
{
  /* local block i/o variables */
  real_T rtb_HILRead_o4;
  real_T rtb_HILRead_o5;
  real_T rtb_HILRead_o6;
  real_T rtb_HILRead_o7;
  real_T rtb_HILRead_o8;
  real_T rtb_HILRead_o9;
  real_T rtb_SampleTime;
  real_T rtb_ComputationTime;
  real_T rtb_TmpSignalConversionAtHILWri[2];
  real_T rtb_RateLimiter;
  real_T rtb_Saturation;
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
    /* S-Function (hil_read_block): '<S13>/HIL Read' */

    /* S-Function Block: QCar2_autonomous_driving_example1/basicQCarIO/HIL Read (hil_read_block) */
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
        rtb_HILRead_o4 = QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[0];
        rtb_HILRead_o5 = QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[1];
        rtb_HILRead_o6 = QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[2];
        rtb_HILRead_o7 = QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[3];
        rtb_HILRead_o8 = QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[4];
        rtb_HILRead_o9 = QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer[5];
      }
    }

    /* S-Function (inverse_modulus_block): '<S13>/Unwrap 2^24' */
    /* S-Function Block: QCar2_autonomous_driving_example1/basicQCarIO/Unwrap 2^24 (inverse_modulus_block) */
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

  /* Integrator: '<S32>/Integrator1' */
  if (QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1) {
    QCar2_autonomous_driving_exam_X.Integrator1_CSTATE =
      QCar2_autonomous_driving_exam_B.Unwrap224;
  }

  /* Product: '<S32>/Product' incorporates:
   *  Constant: '<S13>/Constant1'
   *  Constant: '<S13>/Constant2'
   *  Constant: '<S32>/Constant'
   *  Integrator: '<S32>/Integrator1'
   *  Integrator: '<S32>/Integrator2'
   *  Product: '<S32>/Product2'
   *  Sum: '<S32>/Sum'
   *  Sum: '<S32>/Sum1'
   */
  QCar2_autonomous_driving_exam_B.Product =
    ((QCar2_autonomous_driving_exam_B.Unwrap224 -
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE) -
     QCar2_autonomous_driving_exam_X.Integrator2_CSTATE *
     QCar2_autonomous_driving_exam_P.Constant_Value_d *
     QCar2_autonomous_driving_exam_P.Constant1_Value_i) *
    QCar2_autonomous_driving_exam_P.Constant2_Value_d;

  /* Product: '<S32>/Product1' incorporates:
   *  Constant: '<S13>/Constant2'
   *  Integrator: '<S32>/Integrator2'
   */
  QCar2_autonomous_driving_exam_B.Product1 =
    QCar2_autonomous_driving_exam_P.Constant2_Value_d *
    QCar2_autonomous_driving_exam_X.Integrator2_CSTATE;

  /* Integrator: '<S33>/Integrator1' */
  if (QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_c) {
    QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_a =
      QCar2_autonomous_driving_exam_B.batteryvoltage;
  }

  /* Product: '<S33>/Product' incorporates:
   *  Constant: '<S13>/Constant3'
   *  Constant: '<S13>/Constant4'
   *  Constant: '<S33>/Constant'
   *  Integrator: '<S33>/Integrator1'
   *  Integrator: '<S33>/Integrator2'
   *  Product: '<S33>/Product2'
   *  Sum: '<S33>/Sum'
   *  Sum: '<S33>/Sum1'
   */
  QCar2_autonomous_driving_exam_B.Product_a =
    ((QCar2_autonomous_driving_exam_B.batteryvoltage -
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_a) -
     QCar2_autonomous_driving_exam_X.Integrator2_CSTATE_e *
     QCar2_autonomous_driving_exam_P.Constant_Value_h *
     QCar2_autonomous_driving_exam_P.Constant3_Value_d) *
    QCar2_autonomous_driving_exam_P.Constant4_Value;

  /* Product: '<S33>/Product1' incorporates:
   *  Constant: '<S13>/Constant4'
   *  Integrator: '<S33>/Integrator2'
   */
  QCar2_autonomous_driving_exam_B.Product1_e =
    QCar2_autonomous_driving_exam_P.Constant4_Value *
    QCar2_autonomous_driving_exam_X.Integrator2_CSTATE_e;

  /* Integrator: '<S34>/Integrator1' */
  if (QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_o) {
    QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_k =
      QCar2_autonomous_driving_exam_B.motorcurrent;
  }

  /* Product: '<S34>/Product' incorporates:
   *  Constant: '<S13>/Constant5'
   *  Constant: '<S13>/Constant6'
   *  Constant: '<S34>/Constant'
   *  Integrator: '<S34>/Integrator1'
   *  Integrator: '<S34>/Integrator2'
   *  Product: '<S34>/Product2'
   *  Sum: '<S34>/Sum'
   *  Sum: '<S34>/Sum1'
   */
  QCar2_autonomous_driving_exam_B.Product_d =
    ((QCar2_autonomous_driving_exam_B.motorcurrent -
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_k) -
     QCar2_autonomous_driving_exam_X.Integrator2_CSTATE_h *
     QCar2_autonomous_driving_exam_P.Constant_Value_g *
     QCar2_autonomous_driving_exam_P.Constant5_Value) *
    QCar2_autonomous_driving_exam_P.Constant6_Value;

  /* Product: '<S34>/Product1' incorporates:
   *  Constant: '<S13>/Constant6'
   *  Integrator: '<S34>/Integrator2'
   */
  QCar2_autonomous_driving_exam_B.Product1_i =
    QCar2_autonomous_driving_exam_P.Constant6_Value *
    QCar2_autonomous_driving_exam_X.Integrator2_CSTATE_h;

  /* RateTransition: '<Root>/Rate Transition' */
  if (tmp) {
    if (QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_3) {
      /* RateTransition: '<Root>/Rate Transition' */
      QCar2_autonomous_driving_exam_B.RateTransition =
        QCar2_autonomous_driving_exa_DW.RateTransition_Buffer0;
    }

    /* DiscretePulseGenerator: '<S18>/Pulsing Light' */
    if ((QCar2_autonomous_driving_exa_DW.clockTickCounter <
         QCar2_autonomous_driving_exam_P.PulsingLight_Duty) &&
        (QCar2_autonomous_driving_exa_DW.clockTickCounter >= 0)) {
      rtb_RateLimiter = QCar2_autonomous_driving_exam_P.PulsingLight_Amp;
    } else {
      rtb_RateLimiter = 0.0;
    }

    if (QCar2_autonomous_driving_exa_DW.clockTickCounter >=
        QCar2_autonomous_driving_exam_P.PulsingLight_Period - 1.0) {
      QCar2_autonomous_driving_exa_DW.clockTickCounter = 0;
    } else {
      QCar2_autonomous_driving_exa_DW.clockTickCounter++;
    }

    /* End of DiscretePulseGenerator: '<S18>/Pulsing Light' */

    /* Logic: '<S18>/AND3' incorporates:
     *  Constant: '<S40>/Constant'
     *  DataTypeConversion: '<S18>/Data Type Conversion'
     *  RelationalOperator: '<S40>/Compare'
     */
    QCar2_autonomous_driving_exam_B.AND3 =
      ((QCar2_autonomous_driving_exam_B.RateTransition >
        QCar2_autonomous_driving_exam_P.LeftSteeringLimit_const) &&
       (rtb_RateLimiter != 0.0));

    /* Logic: '<S18>/AND1' incorporates:
     *  Constant: '<S42>/Constant'
     *  DataTypeConversion: '<S18>/Data Type Conversion'
     *  RelationalOperator: '<S42>/Compare'
     */
    QCar2_autonomous_driving_exam_B.AND1 =
      ((QCar2_autonomous_driving_exam_B.RateTransition <
        QCar2_autonomous_driving_exam_P.RightSteeringLimit_const) &&
       (rtb_RateLimiter != 0.0));

    /* RateTransition: '<Root>/Rate Transition1' */
    if (QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID1_2) {
      /* RateTransition: '<Root>/Rate Transition1' */
      QCar2_autonomous_driving_exam_B.RateTransition1 =
        QCar2_autonomous_driving_exa_DW.RateTransition1_Buffer0;
    }

    /* End of RateTransition: '<Root>/Rate Transition1' */

    /* ManualSwitch: '<Root>/1 - Arm, 0 - Disarm1' */
    if (QCar2_autonomous_driving_exam_P.uArm0Disarm1_CurrentSetting == 1) {
      /* ManualSwitch: '<Root>/1 - Arm, 0 - Disarm1' incorporates:
       *  Constant: '<Root>/Constant10'
       */
      QCar2_autonomous_driving_exam_B.uArm0Disarm1 =
        QCar2_autonomous_driving_exam_P.Constant10_Value;
    } else {
      /* ManualSwitch: '<Root>/1 - Arm, 0 - Disarm1' incorporates:
       *  Constant: '<Root>/Constant8'
       */
      QCar2_autonomous_driving_exam_B.uArm0Disarm1 =
        QCar2_autonomous_driving_exam_P.Constant8_Value;
    }

    /* End of ManualSwitch: '<Root>/1 - Arm, 0 - Disarm1' */

    /* Switch: '<Root>/Switch' incorporates:
     *  Constant: '<Root>/Constant9'
     *  Saturate: '<Root>/Saturation1'
     */
    if (QCar2_autonomous_driving_exam_B.uArm0Disarm1 >
        QCar2_autonomous_driving_exam_P.Switch_Threshold) {
      /* Saturate: '<Root>/Saturation1' incorporates:
       *  Constant: '<Root>/Speed Max (m//s)'
       */
      if (QCar2_autonomous_driving_exam_P.SpeedMaxms_Value >
          QCar2_autonomous_driving_exam_P.Saturation1_UpperSat) {
        rtb_RateLimiter = QCar2_autonomous_driving_exam_P.Saturation1_UpperSat;
      } else if (QCar2_autonomous_driving_exam_P.SpeedMaxms_Value <
                 QCar2_autonomous_driving_exam_P.Saturation1_LowerSat) {
        rtb_RateLimiter = QCar2_autonomous_driving_exam_P.Saturation1_LowerSat;
      } else {
        rtb_RateLimiter = QCar2_autonomous_driving_exam_P.SpeedMaxms_Value;
      }
    } else {
      rtb_RateLimiter = QCar2_autonomous_driving_exam_P.Constant9_Value;
    }

    /* End of Switch: '<Root>/Switch' */

    /* RateLimiter: '<Root>/Rate Limiter' */
    rtb_Saturation = rtb_RateLimiter - QCar2_autonomous_driving_exa_DW.PrevY;
    if (rtb_Saturation > QCar2_autonomous_driving_exam_P.RateLimiter_RisingLim *
        QCar2_autonomous_driving_period) {
      rtb_RateLimiter = QCar2_autonomous_driving_exam_P.RateLimiter_RisingLim *
        QCar2_autonomous_driving_period + QCar2_autonomous_driving_exa_DW.PrevY;
    } else if (rtb_Saturation <
               QCar2_autonomous_driving_exam_P.RateLimiter_FallingLim *
               QCar2_autonomous_driving_period) {
      rtb_RateLimiter = QCar2_autonomous_driving_exam_P.RateLimiter_FallingLim *
        QCar2_autonomous_driving_period + QCar2_autonomous_driving_exa_DW.PrevY;
    }

    QCar2_autonomous_driving_exa_DW.PrevY = rtb_RateLimiter;

    /* End of RateLimiter: '<Root>/Rate Limiter' */

    /* MATLAB Function: '<S12>/MATLAB Function' incorporates:
     *  Constant: '<S12>/Constant'
     *  Constant: '<S12>/Constant2'
     */
    if (QCar2_autonomous_driving_exam_B.RateTransition1 <
        QCar2_autonomous_driving_exam_P.Constant_Value_p) {
      rtb_RateLimiter = 0.0;
    } else if (QCar2_autonomous_driving_exam_B.RateTransition1 <
               QCar2_autonomous_driving_exam_P.Constant2_Value_f) {
      rtb_RateLimiter /= QCar2_autonomous_driving_exam_P.Constant2_Value_f -
        QCar2_autonomous_driving_exam_P.Constant_Value_p;
      rtb_RateLimiter = rtb_RateLimiter *
        QCar2_autonomous_driving_exam_B.RateTransition1 - rtb_RateLimiter *
        QCar2_autonomous_driving_exam_P.Constant_Value_p;
    }

    /* End of MATLAB Function: '<S12>/MATLAB Function' */

    /* Switch: '<S21>/Switch' incorporates:
     *  Constant: '<Root>/Constant1'
     *  Product: '<S21>/Product'
     *  Saturate: '<S21>/Saturation'
     */
    if (QCar2_autonomous_driving_exam_P.Constant1_Value_f1 >
        QCar2_autonomous_driving_exam_P.Switch_Threshold_h) {
      /* Trigonometry: '<S21>/Cos' */
      rtb_Saturation = cos(QCar2_autonomous_driving_exam_B.RateTransition);

      /* Math: '<S21>/Square' incorporates:
       *  Constant: '<S21>/Constant'
       */
      if ((rtb_Saturation < 0.0) &&
          (QCar2_autonomous_driving_exam_P.Constant_Value_j > floor
           (QCar2_autonomous_driving_exam_P.Constant_Value_j))) {
        rtb_Saturation = -rt_powd_snf(-rtb_Saturation,
          QCar2_autonomous_driving_exam_P.Constant_Value_j);
      } else {
        rtb_Saturation = rt_powd_snf(rtb_Saturation,
          QCar2_autonomous_driving_exam_P.Constant_Value_j);
      }

      /* Saturate: '<S21>/Saturation' incorporates:
       *  Math: '<S21>/Square'
       */
      if (rtb_Saturation > QCar2_autonomous_driving_exam_P.Saturation_UpperSat)
      {
        rtb_Saturation = QCar2_autonomous_driving_exam_P.Saturation_UpperSat;
      } else if (rtb_Saturation <
                 QCar2_autonomous_driving_exam_P.Saturation_LowerSat) {
        rtb_Saturation = QCar2_autonomous_driving_exam_P.Saturation_LowerSat;
      }

      rtb_RateLimiter *= rtb_Saturation;
    }

    /* End of Switch: '<S21>/Switch' */

    /* Saturate: '<S20>/command saturation' */
    if (rtb_RateLimiter >
        QCar2_autonomous_driving_exam_P.commandsaturation_UpperSat) {
      rtb_RateLimiter =
        QCar2_autonomous_driving_exam_P.commandsaturation_UpperSat;
    } else if (rtb_RateLimiter <
               QCar2_autonomous_driving_exam_P.commandsaturation_LowerSat) {
      rtb_RateLimiter =
        QCar2_autonomous_driving_exam_P.commandsaturation_LowerSat;
    }

    /* Product: '<S20>/Multiply1' incorporates:
     *  Saturate: '<S20>/command saturation'
     */
    QCar2_autonomous_driving_exam_B.desired = rtb_RateLimiter *
      QCar2_autonomous_driving_exam_B.uArm0Disarm1;

    /* Gain: '<S20>/Kff  (% // m//s)' */
    QCar2_autonomous_driving_exam_B.Kffms =
      QCar2_autonomous_driving_exam_P.Kffms_Gain *
      QCar2_autonomous_driving_exam_B.desired;
  }

  /* Sum: '<S20>/Sum' incorporates:
   *  Gain: '<S14>/counts to rotations'
   *  Gain: '<S14>/gear ratios'
   *  Gain: '<S14>/rot//s to rad//s'
   *  Gain: '<S14>/wheel radius'
   *  Product: '<S20>/Multiply'
   */
  rtb_RateLimiter = QCar2_autonomous_driving_exam_B.desired -
    QCar2_autonomous_driving_exam_P.countstorotations_Gain *
    QCar2_autonomous_driving_exam_B.Product1 *
    QCar2_autonomous_driving_exam_P.gearratios_Gain *
    QCar2_autonomous_driving_exam_P.rotstorads_Gain *
    QCar2_autonomous_driving_exam_P.wheelradius_Gain *
    QCar2_autonomous_driving_exam_B.uArm0Disarm1;
  if (tmp) {
    /* RelationalOperator: '<S46>/Compare' incorporates:
     *  Constant: '<S46>/Constant'
     */
    QCar2_autonomous_driving_exam_B.Compare =
      (QCar2_autonomous_driving_exam_B.desired ==
       QCar2_autonomous_driving_exam_P.Constant_Value_i);
  }

  /* Integrator: '<S20>/Integrator1' */
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

  /* Product: '<S20>/Multiply2' incorporates:
   *  Gain: '<S20>/Kp (% // m//s)'
   *  Integrator: '<S20>/Integrator1'
   *  Sum: '<S20>/Add'
   *  Sum: '<S20>/Add1'
   */
  QCar2_autonomous_driving_exam_B.pwmdutycycle =
    ((QCar2_autonomous_driving_exam_P.Kpms_Gain * rtb_RateLimiter +
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_b) +
     QCar2_autonomous_driving_exam_B.Kffms) *
    QCar2_autonomous_driving_exam_B.uArm0Disarm1;
  if (tmp) {
    /* Abs: '<S18>/Abs' incorporates:
     *  Memory: '<S18>/Memory'
     */
    QCar2_autonomous_driving_exam_B.Abs = fabs
      (QCar2_autonomous_driving_exa_DW.Memory_PreviousInput);
  }

  /* RelationalOperator: '<S39>/Compare' incorporates:
   *  Abs: '<S18>/Abs1'
   *  Constant: '<S39>/Constant'
   *  Sum: '<S18>/Subtract'
   */
  QCar2_autonomous_driving_exam_B.Compare_d = (fabs
    (QCar2_autonomous_driving_exam_B.pwmdutycycle) -
    QCar2_autonomous_driving_exam_B.Abs <
    QCar2_autonomous_driving_exam_P.CompareToConstant3_const);

  /* S-Function (one_shot_block): '<S41>/one_shot_block' incorporates:
   *  Constant: '<S18>/Constant2'
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

  /* DataTypeConversion: '<S18>/Data Type Conversion1' */
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[0] =
    QCar2_autonomous_driving_exam_B.AND3;
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[1] =
    QCar2_autonomous_driving_exam_B.AND1;
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[2] =
    QCar2_autonomous_driving_exam_B.AND3;
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[3] =
    QCar2_autonomous_driving_exam_B.AND1;

  /* Switch: '<S41>/Switch' incorporates:
   *  Constant: '<S18>/Constant'
   *  Constant: '<S18>/Constant1'
   */
  if (QCar2_autonomous_driving_exam_B.one_shot_block >=
      QCar2_autonomous_driving_exam_P.Switch_Threshold_e) {
    rtb_Saturation = QCar2_autonomous_driving_exam_P.Constant1_Value_f;
  } else {
    rtb_Saturation = QCar2_autonomous_driving_exam_P.Constant_Value_di;
  }

  /* Switch: '<S18>/Switch2' incorporates:
   *  Constant: '<S37>/Constant'
   *  Logic: '<S18>/AND2'
   *  RelationalOperator: '<S37>/Compare'
   *  Switch: '<S41>/Switch'
   */
  if ((rtb_Saturation != 0.0) || (QCar2_autonomous_driving_exam_B.pwmdutycycle ==
       QCar2_autonomous_driving_exam_P.CompareToConstant1_const)) {
    /* DataTypeConversion: '<S18>/Data Type Conversion1' incorporates:
     *  Constant: '<S18>/Steady Light'
     */
    QCar2_autonomous_driving_exam_B.DataTypeConversion1[4] =
      QCar2_autonomous_driving_exam_P.SteadyLight_Value;
  } else {
    /* DataTypeConversion: '<S18>/Data Type Conversion1' incorporates:
     *  Constant: '<S18>/Light Off'
     */
    QCar2_autonomous_driving_exam_B.DataTypeConversion1[4] =
      QCar2_autonomous_driving_exam_P.LightOff_Value;
  }

  /* End of Switch: '<S18>/Switch2' */

  /* DataTypeConversion: '<S18>/Data Type Conversion1' incorporates:
   *  Constant: '<S18>/Steady Light'
   *  Constant: '<S38>/Constant'
   *  RelationalOperator: '<S38>/Compare'
   */
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[5] =
    (QCar2_autonomous_driving_exam_B.pwmdutycycle <
     QCar2_autonomous_driving_exam_P.CompareToConstant2_const);
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[6] =
    QCar2_autonomous_driving_exam_P.SteadyLight_Value;
  QCar2_autonomous_driving_exam_B.DataTypeConversion1[7] =
    QCar2_autonomous_driving_exam_P.SteadyLight_Value;
  if (tmp) {
    /* SignalConversion generated from: '<S13>/HIL Write' */
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

    /* End of SignalConversion generated from: '<S13>/HIL Write' */

    /* Bias: '<S13>/Steering Bias' incorporates:
     *  Gain: '<S13>/Gain'
     */
    rtb_SteeringBias = QCar2_autonomous_driving_exam_P.Gain_Gain *
      QCar2_autonomous_driving_exam_B.RateTransition +
      QCar2_autonomous_driving_exam_P.SteeringBias_Bias;
  }

  /* Gain: '<S13>/direction convention' */
  rtb_Saturation = QCar2_autonomous_driving_exam_P.directionconvention_Gain *
    QCar2_autonomous_driving_exam_B.pwmdutycycle;

  /* Saturate: '<S13>/command saturation' */
  if (rtb_Saturation >
      QCar2_autonomous_driving_exam_P.commandsaturation_UpperSat_n) {
    /* Saturate: '<S13>/command saturation' */
    QCar2_autonomous_driving_exam_B.commandsaturation =
      QCar2_autonomous_driving_exam_P.commandsaturation_UpperSat_n;
  } else if (rtb_Saturation <
             QCar2_autonomous_driving_exam_P.commandsaturation_LowerSat_d) {
    /* Saturate: '<S13>/command saturation' */
    QCar2_autonomous_driving_exam_B.commandsaturation =
      QCar2_autonomous_driving_exam_P.commandsaturation_LowerSat_d;
  } else {
    /* Saturate: '<S13>/command saturation' */
    QCar2_autonomous_driving_exam_B.commandsaturation = rtb_Saturation;
  }

  /* End of Saturate: '<S13>/command saturation' */
  if (tmp) {
    /* SignalConversion generated from: '<S13>/HIL Write' */
    rtb_TmpSignalConversionAtHILWri[0] = rtb_SteeringBias;
    rtb_TmpSignalConversionAtHILWri[1] =
      QCar2_autonomous_driving_exam_B.commandsaturation;

    /* S-Function (hil_write_block): '<S13>/HIL Write' */

    /* S-Function Block: QCar2_autonomous_driving_example1/basicQCarIO/HIL Write (hil_write_block) */
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
  }

  /* Gain: '<S20>/Ki (% // m)  ' */
  QCar2_autonomous_driving_exam_B.Kim = QCar2_autonomous_driving_exam_P.Kim_Gain
    * rtb_RateLimiter;
  if (tmp) {
    /* S-Function (sample_time_block): '<S3>/Sample Time' */

    /* S-Function Block: QCar2_autonomous_driving_example1/Control Loop Timing /Sample Time (sample_time_block) */
    {
      t_error result;
      t_timeout current_time;
      t_timeout time_difference;
      result = timeout_get_high_resolution_time(&current_time);
      if (result >= 0) {
        result = timeout_subtract(&time_difference, &current_time,
          &QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime);
        rtb_SampleTime = time_difference.seconds + time_difference.nanoseconds *
          1e-9;
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

    /* S-Function (computation_time_block): '<S3>/Computation Time' */

    /* S-Function Block: QCar2_autonomous_driving_example1/Control Loop Timing /Computation Time (computation_time_block) */
    {
      rtb_ComputationTime =
        QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationTime.seconds
        + QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationTime.nanoseconds
        * 1e-9;
    }
  }
}

/* Model update function for TID0 */
void QCar2_autonomous_driving_example1_update0(void) /* Sample time: [0.0s, 0.0s] */
{
  /* Update for Integrator: '<S32>/Integrator1' */
  QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1 = false;

  /* Update for Integrator: '<S33>/Integrator1' */
  QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_c = false;

  /* Update for Integrator: '<S34>/Integrator1' */
  QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_o = false;
  if (rtmIsMajorTimeStep(QCar2_autonomous_driving_exa_M)) {
    /* Update for Memory: '<S18>/Memory' */
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
void QCar2_autonomous_driving_example1_derivatives(void)
{
  XDot_QCar2_autonomous_driving_T *_rtXdot;
  boolean_T lsat;
  boolean_T usat;
  _rtXdot = ((XDot_QCar2_autonomous_driving_T *)
             QCar2_autonomous_driving_exa_M->derivs);

  /* Derivatives for Integrator: '<S32>/Integrator1' */
  _rtXdot->Integrator1_CSTATE = QCar2_autonomous_driving_exam_B.Product1;

  /* Derivatives for Integrator: '<S32>/Integrator2' */
  _rtXdot->Integrator2_CSTATE = QCar2_autonomous_driving_exam_B.Product;

  /* Derivatives for Integrator: '<S33>/Integrator1' */
  _rtXdot->Integrator1_CSTATE_a = QCar2_autonomous_driving_exam_B.Product1_e;

  /* Derivatives for Integrator: '<S33>/Integrator2' */
  _rtXdot->Integrator2_CSTATE_e = QCar2_autonomous_driving_exam_B.Product_a;

  /* Derivatives for Integrator: '<S34>/Integrator1' */
  _rtXdot->Integrator1_CSTATE_k = QCar2_autonomous_driving_exam_B.Product1_i;

  /* Derivatives for Integrator: '<S34>/Integrator2' */
  _rtXdot->Integrator2_CSTATE_h = QCar2_autonomous_driving_exam_B.Product_d;

  /* Derivatives for Integrator: '<S20>/Integrator1' */
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

  /* End of Derivatives for Integrator: '<S20>/Integrator1' */
}

/* Model output function for TID2 */
void QCar2_autonomous_driving_example1_output2(void) /* Sample time: [0.01s, 0.0s] */
{
  /* local block i/o variables */
  real_T rtb_SampleTime_n;
  real_T rtb_ComputationTime_h;
  real_T rtb_y;
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

  /* S-Function (video3d_initialize_block): '<S16>/Video3D Initialize' */

  /* S-Function Block: QCar2_autonomous_driving_example1/captureDepth/Video3D Initialize (video3d_initialize_block) */
  {
  }

  /* S-Function (video3d_capture_block): '<S16>/Depth' */
  /* S-Function Block: QCar2_autonomous_driving_example1/captureDepth/Depth (video3d_capture_block) */
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

  /* S-Function (sample_time_block): '<S2>/Sample Time' */

  /* S-Function Block: QCar2_autonomous_driving_example1/ Depth Timing/Sample Time (sample_time_block) */
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

  /* S-Function (computation_time_block): '<S2>/Computation Time' */

  /* S-Function Block: QCar2_autonomous_driving_example1/ Depth Timing/Computation Time (computation_time_block) */
  {
    rtb_ComputationTime_h =
      QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationTi_o.seconds +
      QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationTi_o.nanoseconds
      * 1e-9;
  }

  /* RateTransition: '<Root>/Rate Transition2' */
  rtb_RateTransition2 =
    QCar2_autonomous_driving_exa_DW.RateTransition2_Buffer[QCar2_autonomous_driving_exa_DW.RateTransition2_ActiveBufIdx];

  /* Outputs for Enabled SubSystem: '<Root>/obstacleDetection' incorporates:
   *  EnablePort: '<S19>/Enable'
   */
  if (QCar2_autonomous_driving_exam_B.Depth_o4) {
    /* MATLAB Function: '<S19>/Steering based  image subselector' incorporates:
     *  S-Function (video3d_capture_block): '<S16>/Depth'
     */
    rtb_RateTransition2 = 320.0 - rtb_RateTransition2 * 260.0 / 0.5;
    for (firstBlockLength = 0; firstBlockLength < 120; firstBlockLength++) {
      for (nblocks = 0; nblocks < 120; nblocks++) {
        QCar2_autonomous_driving_exam_B.region[nblocks + 120 * firstBlockLength]
          = QCar2_autonomous_driving_exam_B.Depth_o1[(((int32_T)
          (((rtb_RateTransition2 + 1.0) - 60.0) + (real_T)firstBlockLength) - 1)
          * 360 + nblocks) + 120];
      }
    }

    lastBlockLength = 0;
    for (firstBlockLength = 0; firstBlockLength < 14400; firstBlockLength++) {
      /* MATLAB Function: '<S19>/MATLAB Function' incorporates:
       *  Constant: '<S19>/Constant1'
       */
      if (QCar2_autonomous_driving_exam_B.region[firstBlockLength] <
          QCar2_autonomous_driving_exam_P.Constant1_Value) {
        lastBlockLength++;
      }
    }

    nblocks = lastBlockLength;
    lastBlockLength = 0;
    for (firstBlockLength = 0; firstBlockLength < 14400; firstBlockLength++) {
      /* MATLAB Function: '<S19>/MATLAB Function' incorporates:
       *  Constant: '<S19>/Constant1'
       */
      if (QCar2_autonomous_driving_exam_B.region[firstBlockLength] <
          QCar2_autonomous_driving_exam_P.Constant1_Value) {
        QCar2_autonomous_driving_exam_B.tmp_data_m[lastBlockLength] = (int16_T)
          firstBlockLength;
        lastBlockLength++;
      }
    }

    lastBlockLength = 0;
    for (firstBlockLength = 0; firstBlockLength < nblocks; firstBlockLength++) {
      /* MATLAB Function: '<S19>/MATLAB Function' incorporates:
       *  Constant: '<S19>/Constant'
       */
      if (QCar2_autonomous_driving_exam_B.region[QCar2_autonomous_driving_exam_B.tmp_data_m
          [firstBlockLength]] > QCar2_autonomous_driving_exam_P.Constant_Value)
      {
        lastBlockLength++;
      }
    }

    tmp_size_idx_0 = lastBlockLength;
    lastBlockLength = 0;
    for (firstBlockLength = 0; firstBlockLength < nblocks; firstBlockLength++) {
      /* MATLAB Function: '<S19>/MATLAB Function' incorporates:
       *  Constant: '<S19>/Constant'
       */
      if (QCar2_autonomous_driving_exam_B.region[QCar2_autonomous_driving_exam_B.tmp_data_m
          [firstBlockLength]] > QCar2_autonomous_driving_exam_P.Constant_Value)
      {
        QCar2_autonomous_driving_exam_B.tmp_data[lastBlockLength] = (int16_T)
          firstBlockLength;
        lastBlockLength++;
      }
    }

    /* MATLAB Function: '<S19>/MATLAB Function' */
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
        QCar2_autonomous_driving_exam_B.region[QCar2_autonomous_driving_exam_B.tmp_data
        [0]];
      for (iy = 2; iy <= firstBlockLength; iy++) {
        accumulatedData +=
          QCar2_autonomous_driving_exam_B.region[QCar2_autonomous_driving_exam_B.tmp_data
          [iy - 1]];
      }

      for (firstBlockLength = 2; firstBlockLength <= nblocks; firstBlockLength++)
      {
        xblockoffset = (firstBlockLength - 1) << 10;
        bsum =
          QCar2_autonomous_driving_exam_B.region[QCar2_autonomous_driving_exam_B.tmp_data
          [xblockoffset]];
        if (firstBlockLength == nblocks) {
          hi = lastBlockLength;
        } else {
          hi = 1024;
        }

        for (iy = 2; iy <= hi; iy++) {
          bsum +=
            QCar2_autonomous_driving_exam_B.region[QCar2_autonomous_driving_exam_B.tmp_data
            [(xblockoffset + iy) - 1]];
        }

        accumulatedData += bsum;
      }
    }

    rtb_y = accumulatedData / (real_T)tmp_size_idx_0;

    /* Product: '<S19>/Divide' incorporates:
     *  Constant: '<S19>/scale'
     *  MATLAB Function: '<S19>/Steering based  image subselector'
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

    /* Selector: '<S19>/Selector' */
    for (firstBlockLength = 0; firstBlockLength < 214; firstBlockLength++) {
      for (nblocks = 0; nblocks < 120; nblocks++) {
        /* DataTypeConversion: '<S19>/Data Type Conversion' incorporates:
         *  Gain: '<S19>/Gain'
         *  S-Function (video3d_capture_block): '<S16>/Depth'
         *  Selector: '<S19>/Selector'
         */
        tmp = floorf(QCar2_autonomous_driving_exam_B.Depth_o1[3 *
                     firstBlockLength * 360 + 3 * nblocks] *
                     QCar2_autonomous_driving_exam_P.Gain_Gain_g);
        if (rtIsNaNF(tmp) || rtIsInfF(tmp)) {
          tmp = 0.0F;
        } else {
          tmp = fmodf(tmp, 256.0F);
        }

        if (tmp < 0.0F) {
          QCar2_autonomous_driving_exam_B.Selector[nblocks + 120 *
            firstBlockLength] = (uint8_T)-(int8_T)(uint8_T)-tmp;
        } else {
          QCar2_autonomous_driving_exam_B.Selector[nblocks + 120 *
            firstBlockLength] = (uint8_T)tmp;
        }

        /* End of DataTypeConversion: '<S19>/Data Type Conversion' */
      }
    }

    /* End of Selector: '<S19>/Selector' */

    /* MATLAB Function: '<S19>/Draw Lines Module' incorporates:
     *  Selector: '<S19>/Selector'
     */
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

    /* MATLAB Function: '<S19>/Draw Lines Module' incorporates:
     *  Constant: '<S19>/Constant3'
     *  Product: '<S19>/Divide'
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

    /* Product: '<S19>/Multiply' incorporates:
     *  Constant: '<Root>/Stopping Distance (m)'
     *  Constant: '<S19>/Constant2'
     *  Logic: '<S19>/AND'
     *  S-Function (compare_block): '<S19>/Compare'
     *  S-Function (compare_block): '<S19>/Compare1'
     */
    QCar2_autonomous_driving_exam_B.Multiply = (real_T)((rtb_y >=
      QCar2_autonomous_driving_exam_P.StoppingDistancem_Value) && (rtb_y <
      QCar2_autonomous_driving_exam_P.Constant2_Value)) * rtb_y;
  }

  /* End of Outputs for SubSystem: '<Root>/obstacleDetection' */

  /* S-Function (image_compress_block): '<S5>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Display Depth/Image Compress (image_compress_block) */
  {
    t_error result = 0;
    size_t image_size = 0;
    result = qjpeg_compress_start
      (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress, true);
    if (result == 0) {
      result = qjpeg_compress_write_image_uint8
        (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress,
         &QCar2_autonomous_driving_exam_B.img_out[0]);
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

  /* S-Function (channel_block): '<S5>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Display Depth/Channel (channel_block) */
  {
  }

  /* RateTransition: '<Root>/Rate Transition1' */
  QCar2_autonomous_driving_exa_DW.RateTransition1_Buffer0 =
    QCar2_autonomous_driving_exam_B.Multiply;
}

/* Model update function for TID2 */
void QCar2_autonomous_driving_example1_update2(void) /* Sample time: [0.01s, 0.0s] */
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
void QCar2_autonomous_driving_example1_output3(void)
                                /* Sample time: [0.016666666666666666s, 0.0s] */
{
  /* local block i/o variables */
  real_T rtb_SampleTime_l;
  real_T rtb_ComputationTime_o;
  uint32_T rtb_ImageFindObjects_o1;
  uint32_T rtb_ImageFindObjects_o2;
  real32_T rtb_ImageFindObjects_o5;
  uint16_T rtb_ImageFindObjects_o4[4];
  boolean_T rtb_VideoCapture_o2;

  /* local scratch DWork variables */
  t_blob ImageFindObjects_Blobs;
  real_T rtb_SteeringSaturation1;
  int32_T d;
  int32_T dimIdx_idx_0;
  int32_T i;
  int32_T portWid;
  int32_T rtb_y_f_tmp;
  real32_T rtb_ImageFindObjects_o3[2];
  real32_T rtb_Reshape[2];
  boolean_T tmp;

  /* S-Function (sample_time_block): '<S1>/Sample Time' */

  /* S-Function Block: QCar2_autonomous_driving_example1/ CSI Timing/Sample Time (sample_time_block) */
  {
    t_error result;
    t_timeout current_time;
    t_timeout time_difference;
    result = timeout_get_high_resolution_time(&current_time);
    if (result >= 0) {
      result = timeout_subtract(&time_difference, &current_time,
        &QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime_g);
      rtb_SampleTime_l = time_difference.seconds + time_difference.nanoseconds *
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

  /* S-Function (computation_time_block): '<S1>/Computation Time' */

  /* S-Function Block: QCar2_autonomous_driving_example1/ CSI Timing/Computation Time (computation_time_block) */
  {
    rtb_ComputationTime_o =
      QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationT_of.seconds +
      QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationT_of.nanoseconds
      * 1e-9;
  }

  /* S-Function (video_capture_block): '<S15>/Video Capture' */
  /* S-Function Block: QCar2_autonomous_driving_example1/captureCSI/Video Capture (video_capture_block) */
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
    rtb_VideoCapture_o2 = (result > 0);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* MATLAB Function: '<Root>/MATLAB Function' incorporates:
   *  S-Function (video_capture_block): '<S15>/Video Capture'
   */
  for (i = 0; i < 820; i++) {
    for (d = 0; d < 200; d++) {
      portWid = 410 * i + d;
      rtb_y_f_tmp = 200 * i + d;
      QCar2_autonomous_driving_exam_B.y_f[rtb_y_f_tmp] =
        QCar2_autonomous_driving_exam_B.VideoCapture_o1[portWid + 210];
      QCar2_autonomous_driving_exam_B.y_f[rtb_y_f_tmp + 164000] =
        QCar2_autonomous_driving_exam_B.VideoCapture_o1[portWid + 336410];
      QCar2_autonomous_driving_exam_B.y_f[rtb_y_f_tmp + 328000] =
        QCar2_autonomous_driving_exam_B.VideoCapture_o1[portWid + 672610];
    }
  }

  /* End of MATLAB Function: '<Root>/MATLAB Function' */

  /* S-Function (image_transform_block): '<S17>/Image Transform1' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Image Transform1 (image_transform_block) */
  {
    t_error result;
    result = image_rgb_to_hsv_uint8
      (QCar2_autonomous_driving_exa_DW.ImageTransform1_AlgHandle,
       &QCar2_autonomous_driving_exam_B.y_f[0], 820, 200,
       &QCar2_autonomous_driving_exam_B.ImageTransform1[0]);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* S-Function (image_compare_block): '<S17>/HSV Color Thresholding1' incorporates:
   *  Constant: '<S17>/max hue'
   *  Constant: '<S17>/max sat'
   *  Constant: '<S17>/max val'
   *  Constant: '<S17>/min hue'
   *  Constant: '<S17>/min sat'
   *  Constant: '<S17>/min val'
   */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/HSV Color Thresholding1 (image_compare_block) */
  {
    t_error result;
    t_image_comparison_type comparison0 = (t_image_comparison_type)
      (QCar2_autonomous_driving_exam_P.HSVColorThresholding1_r_compari - 1);
    t_image_comparison_type comparison1 = (t_image_comparison_type)
      (QCar2_autonomous_driving_exam_P.HSVColorThresholding1_g_compari - 1);
    t_image_comparison_type comparison2 = (t_image_comparison_type)
      (QCar2_autonomous_driving_exam_P.HSVColorThresholding1_b_compari - 1);
    t_uint8 minimum;
    t_uint8 maximum;
    do {
      if ((comparison0 & COMPARE_WRAP) == 0) {
        if (QCar2_autonomous_driving_exam_P.minhue_Value < 0) {
          minimum = 0;
        } else if (QCar2_autonomous_driving_exam_P.minhue_Value > 255U) {
          minimum = 255U;
        } else {
          minimum = (t_uint8) QCar2_autonomous_driving_exam_P.minhue_Value;
        }

        if (QCar2_autonomous_driving_exam_P.maxhue_Value < 0) {
          maximum = 0;
        } else if (QCar2_autonomous_driving_exam_P.maxhue_Value > 255U) {
          maximum = 255U;
        } else {
          maximum = (t_uint8) QCar2_autonomous_driving_exam_P.maxhue_Value;
        }
      } else {
        minimum = (t_uint8) (QCar2_autonomous_driving_exam_P.minhue_Value - 256U
                             * floor
                             (QCar2_autonomous_driving_exam_P.minhue_Value /
                              256U));
        maximum = (t_uint8) (QCar2_autonomous_driving_exam_P.maxhue_Value - 256U
                             * floor
                             (QCar2_autonomous_driving_exam_P.maxhue_Value /
                              256U));
      }

      result = image_grayscale_compare_range_uint8
        (&QCar2_autonomous_driving_exam_B.ImageTransform1[0], 820, 200,
         comparison0, minimum, maximum,
         &QCar2_autonomous_driving_exam_B.HSVColorThresholding1_o1[0]);
      if (result < 0) {
        break;
      }

      if ((comparison1 & COMPARE_WRAP) == 0) {
        if (QCar2_autonomous_driving_exam_P.minsat_Value < 0) {
          minimum = 0;
        } else if (QCar2_autonomous_driving_exam_P.minsat_Value > 255U) {
          minimum = 255U;
        } else {
          minimum = (t_uint8) QCar2_autonomous_driving_exam_P.minsat_Value;
        }

        if (QCar2_autonomous_driving_exam_P.maxsat_Value < 0) {
          maximum = 0;
        } else if (QCar2_autonomous_driving_exam_P.maxsat_Value > 255U) {
          maximum = 255U;
        } else {
          maximum = (t_uint8) QCar2_autonomous_driving_exam_P.maxsat_Value;
        }
      } else {
        minimum = (t_uint8) (QCar2_autonomous_driving_exam_P.minsat_Value - 256U
                             * floor
                             (QCar2_autonomous_driving_exam_P.minsat_Value /
                              256U));
        maximum = (t_uint8) (QCar2_autonomous_driving_exam_P.maxsat_Value - 256U
                             * floor
                             (QCar2_autonomous_driving_exam_P.maxsat_Value /
                              256U));
      }

      result = image_grayscale_compare_range_uint8
        (&QCar2_autonomous_driving_exam_B.ImageTransform1[164000], 820, 200,
         comparison1, minimum, maximum,
         &QCar2_autonomous_driving_exam_B.HSVColorThresholding1_o2[0]);
      if (result < 0) {
        break;
      }

      if ((comparison2 & COMPARE_WRAP) == 0) {
        if (QCar2_autonomous_driving_exam_P.minval_Value < 0) {
          minimum = 0;
        } else if (QCar2_autonomous_driving_exam_P.minval_Value > 255U) {
          minimum = 255U;
        } else {
          minimum = (t_uint8) QCar2_autonomous_driving_exam_P.minval_Value;
        }

        if (QCar2_autonomous_driving_exam_P.maxval_Value < 0) {
          maximum = 0;
        } else if (QCar2_autonomous_driving_exam_P.maxval_Value > 255U) {
          maximum = 255U;
        } else {
          maximum = (t_uint8) QCar2_autonomous_driving_exam_P.maxval_Value;
        }
      } else {
        minimum = (t_uint8) (QCar2_autonomous_driving_exam_P.minval_Value - 256U
                             * floor
                             (QCar2_autonomous_driving_exam_P.minval_Value /
                              256U));
        maximum = (t_uint8) (QCar2_autonomous_driving_exam_P.maxval_Value - 256U
                             * floor
                             (QCar2_autonomous_driving_exam_P.maxval_Value /
                              256U));
      }

      result = image_grayscale_compare_range_uint8
        (&QCar2_autonomous_driving_exam_B.ImageTransform1[328000], 820, 200,
         comparison2, minimum, maximum,
         &QCar2_autonomous_driving_exam_B.HSVColorThresholding1_o3[0]);
    } while (false);

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* S-Function (image_logic_block): '<S17>/Image Logic' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Image Logic (image_logic_block) */
  {
    t_error result = 0;
    result = image_grayscale_bitand_uint8
      (&QCar2_autonomous_driving_exam_B.HSVColorThresholding1_o3[0], 820, 200,
       &QCar2_autonomous_driving_exam_B.HSVColorThresholding1_o2[0],
       QCar2_autonomous_driving_exam_P.ImageLogic_row,
       QCar2_autonomous_driving_exam_P.ImageLogic_column, 820, 200,
       &QCar2_autonomous_driving_exam_B.ImageLogic1[0]);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* S-Function (image_logic_block): '<S17>/Image Logic1' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Image Logic1 (image_logic_block) */
  {
    t_error result = 0;
    result = image_grayscale_bitand_uint8_in_place
      (&QCar2_autonomous_driving_exam_B.ImageLogic1[0], 820, 200,
       &QCar2_autonomous_driving_exam_B.HSVColorThresholding1_o1[0],
       QCar2_autonomous_driving_exam_P.ImageLogic1_row,
       QCar2_autonomous_driving_exam_P.ImageLogic1_column, 820, 200);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* S-Function (image_filter_block): '<S17>/Image Filter' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Image Filter (image_filter_block) */
  {
    t_region_of_interest roi;
    t_error result;
    roi.row = 0;
    roi.column = 0;
    roi.height = 200;
    roi.width = 820;
    result = image_filter_minimum_grayscale_uint8_compute
      (QCar2_autonomous_driving_exa_DW.ImageFilter_Filter,
       &QCar2_autonomous_driving_exam_B.ImageLogic1[0], &roi,
       (QCar2_autonomous_driving_exam_P.ImageFilter_BdrValue[0]),
       &QCar2_autonomous_driving_exam_B.ImageLogic2[0]);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* S-Function (image_filter_block): '<S17>/Image Filter1' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Image Filter1 (image_filter_block) */
  {
    t_region_of_interest roi;
    t_error result;
    roi.row = 0;
    roi.column = 0;
    roi.height = 200;
    roi.width = 820;
    result = image_filter_maximum_grayscale_uint8_compute
      (QCar2_autonomous_driving_exa_DW.ImageFilter1_Filter,
       &QCar2_autonomous_driving_exam_B.ImageLogic2[0], &roi,
       (QCar2_autonomous_driving_exam_P.ImageFilter1_BdrValue[0]),
       &QCar2_autonomous_driving_exam_B.ImageFilter1[0]);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* MATLAB Function: '<S11>/Mask' incorporates:
   *  Constant: '<Root>/ROI [xmin xmax ymin ymax]'
   */
  memset(&QCar2_autonomous_driving_exam_B.y_j[0], 0, 164000U * sizeof(uint8_T));
  if (QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value[2] >
      QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value[3]) {
    portWid = 0;
    i = 0;
  } else {
    portWid = (int32_T)
      QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value[2] - 1;
    i = (int32_T)QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value[3];
  }

  if (QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value[0] >
      QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value[1]) {
    rtb_y_f_tmp = 0;
    d = 0;
  } else {
    rtb_y_f_tmp = (int32_T)
      QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value[0] - 1;
    d = (int32_T)QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value[1];
  }

  dimIdx_idx_0 = i - portWid;
  d -= rtb_y_f_tmp;
  for (i = 0; i < d; i++) {
    if (dimIdx_idx_0 - 1 >= 0) {
      memset(&QCar2_autonomous_driving_exam_B.y_j[i * 200 + (portWid +
              rtb_y_f_tmp * 200)], 255, (uint32_T)((((dimIdx_idx_0 + portWid) +
                rtb_y_f_tmp * 200) - portWid) - rtb_y_f_tmp * 200) * sizeof
             (uint8_T));
    }
  }

  /* End of MATLAB Function: '<S11>/Mask' */

  /* S-Function (image_logic_block): '<S11>/Image Logic2' */

  /* S-Function Block: QCar2_autonomous_driving_example1/ROI Mask/Image Logic2 (image_logic_block) */
  {
    t_error result = 0;
    result = image_grayscale_bitand_uint8
      (&QCar2_autonomous_driving_exam_B.ImageFilter1[0], 820, 200,
       &QCar2_autonomous_driving_exam_B.y_j[0],
       QCar2_autonomous_driving_exam_P.ImageLogic2_row,
       QCar2_autonomous_driving_exam_P.ImageLogic2_column, 820, 200,
       &QCar2_autonomous_driving_exam_B.ImageLogic2[0]);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* S-Function (image_find_objects_block): '<S7>/Image Find Objects' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Lane Location/Image Find Objects (image_find_objects_block) */
  {
    t_blob_criteria criteria;
    t_int result;
    t_int i;
    criteria.min_pixels =
      QCar2_autonomous_driving_exam_P.ImageFindObjects_min_pixels;
    criteria.max_pixels =
      QCar2_autonomous_driving_exam_P.ImageFindObjects_max_pixels;
    criteria.connectivity = (t_blob_connectivity)
      (QCar2_autonomous_driving_exam_P.ImageFindObjects_connectivity - 1);
    criteria.sort_order = (t_blob_sort_order)
      (QCar2_autonomous_driving_exam_P.ImageFindObjects_sort_order - 1);
    criteria.largest = (QCar2_autonomous_driving_exam_P.ImageFindObjects_largest
                        != 0);
    criteria.exclude_edges =
      (QCar2_autonomous_driving_exam_P.ImageFindObjects_exclude_at_edg != 0);
    result = image_find_blobs_uint8
      (QCar2_autonomous_driving_exa_DW.ImageFindObjects_FindHandle,
       &QCar2_autonomous_driving_exam_B.ImageLogic2[0], &criteria,
       &ImageFindObjects_Blobs, 1);
    if (result >= 0) {
      QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS2 = result;
      ;
      QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS3[0] = 2;
      ;
      QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS3[1] = result;
      ;
      QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS4[0] = 4;
      ;
      QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS4[1] = result;
      ;
      QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS5 = result;
      ;
      rtb_ImageFindObjects_o1 = (t_uint) result;
      for (i = 0; i < result; i++) {
        rtb_ImageFindObjects_o2 = ImageFindObjects_Blobs.num_pixels;
        rtb_ImageFindObjects_o3[2*i] = ImageFindObjects_Blobs.centroid_row;
        rtb_ImageFindObjects_o3[2*i + 1] =
          ImageFindObjects_Blobs.centroid_column;
        rtb_ImageFindObjects_o4[4*i] = ImageFindObjects_Blobs.min_row;
        rtb_ImageFindObjects_o4[4*i + 1] = ImageFindObjects_Blobs.min_column;
        rtb_ImageFindObjects_o4[4*i + 2] = ImageFindObjects_Blobs.max_row;
        rtb_ImageFindObjects_o4[4*i + 3] = ImageFindObjects_Blobs.max_column;
        rtb_ImageFindObjects_o5 = (t_single) ImageFindObjects_Blobs.num_pixels /
          ((t_single) (ImageFindObjects_Blobs.max_row -
                       ImageFindObjects_Blobs.min_row + 1) *
           (ImageFindObjects_Blobs.max_column -
            ImageFindObjects_Blobs.min_column + 1));
      }
    } else {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Width: '<S7>/Width' incorporates:
   *  Reshape: '<S7>/Reshape'
   */
  d = QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS3[0] *
    QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS3[1];

  /* Width: '<S7>/Width' */
  QCar2_autonomous_driving_exam_B.Width = d;

  /* Reshape: '<S7>/Reshape' incorporates:
   *  S-Function (image_find_objects_block): '<S7>/Image Find Objects'
   */
  QCar2_autonomous_driving_exa_DW.Reshape_DIMS1 = d;
  for (i = 0; i < d; i++) {
    rtb_Reshape[i] = rtb_ImageFindObjects_o3[i];
  }

  /* MATLAB Function: '<S7>/MATLAB Function' incorporates:
   *  Constant: '<Root>/Nomimal Lane Position (Pixel Column)'
   *  Reshape: '<S7>/Reshape'
   */
  if (!QCar2_autonomous_driving_exa_DW.last_location_not_empty) {
    QCar2_autonomous_driving_exa_DW.last_location[0] = (real32_T)
      QCar2_autonomous_driving_exam_P.NomimalLanePositionPixelColumn_;
    QCar2_autonomous_driving_exa_DW.last_location[1] = 0.0F;
    QCar2_autonomous_driving_exa_DW.last_location_not_empty = true;
  }

  if (QCar2_autonomous_driving_exam_B.Width > 0.0) {
    QCar2_autonomous_driving_exa_DW.last_location[0] = rtb_Reshape[0];
    QCar2_autonomous_driving_exa_DW.last_location[1] = rtb_Reshape[1];
  }

  /* Gain: '<Root>/Gain1' incorporates:
   *  Constant: '<Root>/Nomimal Lane Position (Pixel Column)'
   *  MATLAB Function: '<S7>/MATLAB Function'
   *  Sum: '<S7>/Sum'
   */
  rtb_SteeringSaturation1 =
    (QCar2_autonomous_driving_exam_P.NomimalLanePositionPixelColumn_ -
     QCar2_autonomous_driving_exa_DW.last_location[1]) *
    QCar2_autonomous_driving_exam_P.Gain1_Gain;

  /* Saturate: '<Root>/Steering Saturation1' */
  if (rtb_SteeringSaturation1 >
      QCar2_autonomous_driving_exam_P.SteeringSaturation1_UpperSat) {
    rtb_SteeringSaturation1 =
      QCar2_autonomous_driving_exam_P.SteeringSaturation1_UpperSat;
  } else if (rtb_SteeringSaturation1 <
             QCar2_autonomous_driving_exam_P.SteeringSaturation1_LowerSat) {
    rtb_SteeringSaturation1 =
      QCar2_autonomous_driving_exam_P.SteeringSaturation1_LowerSat;
  }

  /* End of Saturate: '<Root>/Steering Saturation1' */

  /* RateTransition: '<Root>/Rate Transition' */
  QCar2_autonomous_driving_exa_DW.RateTransition_Buffer0 =
    rtb_SteeringSaturation1;

  /* RateTransition: '<Root>/Rate Transition10' incorporates:
   *  MATLAB Function: '<S7>/MATLAB Function'
   *  RateTransition: '<Root>/Rate Transition6'
   */
  tmp = QCar2_autonomous_driving_exa_M->Timing.RateInteraction.TID3_4;
  if (tmp) {
    QCar2_autonomous_driving_exa_DW.RateTransition10_Buffer[0] =
      QCar2_autonomous_driving_exa_DW.last_location[0];
    QCar2_autonomous_driving_exa_DW.RateTransition10_Buffer[1] =
      QCar2_autonomous_driving_exa_DW.last_location[1];
  }

  /* End of RateTransition: '<Root>/Rate Transition10' */

  /* RateTransition: '<Root>/Rate Transition2' */
  QCar2_autonomous_driving_exa_DW.RateTransition2_Buffer[QCar2_autonomous_driving_exa_DW.RateTransition2_ActiveBufIdx
    == 0] = rtb_SteeringSaturation1;
  QCar2_autonomous_driving_exa_DW.RateTransition2_ActiveBufIdx = (int8_T)
    (QCar2_autonomous_driving_exa_DW.RateTransition2_ActiveBufIdx == 0);

  /* RateTransition: '<Root>/Rate Transition6' */
  if (tmp) {
    memcpy(&QCar2_autonomous_driving_exa_DW.RateTransition6_Buffer[0],
           &QCar2_autonomous_driving_exam_B.y_f[0], 492000U * sizeof(uint8_T));

    /* RateTransition: '<Root>/Rate Transition7' incorporates:
     *  Constant: '<Root>/ROI [xmin xmax ymin ymax]'
     */
    QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[0] =
      QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value[0];
    QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[1] =
      QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value[1];
    QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[2] =
      QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value[2];
    QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[3] =
      QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value[3];

    /* RateTransition: '<Root>/Rate Transition8' incorporates:
     *  S-Function (image_logic_block): '<S11>/Image Logic2'
     */
    memcpy(&QCar2_autonomous_driving_exa_DW.RateTransition8_Buffer[0],
           &QCar2_autonomous_driving_exam_B.ImageLogic2[0], 164000U * sizeof
           (uint8_T));

    /* RateTransition: '<Root>/Rate Transition9' incorporates:
     *  Constant: '<Root>/Nomimal Lane Position (Pixel Column)'
     */
    QCar2_autonomous_driving_exa_DW.RateTransition9_Buffer =
      QCar2_autonomous_driving_exam_P.NomimalLanePositionPixelColumn_;
  }

  /* S-Function (image_compress_block): '<S35>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Combined  Displays/Image Compress (image_compress_block) */
  {
    t_error result = 0;
    size_t image_size = 0;
    result = qjpeg_compress_start
      (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_l, true);
    if (result == 0) {
      result = qjpeg_compress_write_image_uint8
        (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_l,
         &QCar2_autonomous_driving_exam_B.ImageLogic1[0]);
      qjpeg_compress_stop
        (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_l);

      /* Get the final size of the compressed image */
      if (result >= 0) {
        result = qjpeg_compress_get_fixed_memory_destination_size
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_l, &image_size);
      }
    }

    /* Set the dimensions of the output signal based on the size of the compressed image */
    QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_f = (int) image_size;
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* S-Function (channel_block): '<S35>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Combined  Displays/Channel (channel_block) */
  {
  }

  /* S-Function (image_compress_block): '<S36>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Filtered Image/Image Compress (image_compress_block) */
  {
    t_error result = 0;
    size_t image_size = 0;
    result = qjpeg_compress_start
      (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_j, true);
    if (result == 0) {
      result = qjpeg_compress_write_image_uint8
        (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_j,
         &QCar2_autonomous_driving_exam_B.ImageFilter1[0]);
      qjpeg_compress_stop
        (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_j);

      /* Get the final size of the compressed image */
      if (result >= 0) {
        result = qjpeg_compress_get_fixed_memory_destination_size
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_j, &image_size);
      }
    }

    /* Set the dimensions of the output signal based on the size of the compressed image */
    QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_b = (int) image_size;
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* S-Function (channel_block): '<S36>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Filtered Image/Channel (channel_block) */
  {
  }

  for (i = 0; i < 164000; i++) {
    /* SignalConversion generated from: '<S17>/Matrix Concatenate' incorporates:
     *  S-Function (image_compare_block): '<S17>/HSV Color Thresholding1'
     */
    QCar2_autonomous_driving_exam_B.y_f[i] =
      QCar2_autonomous_driving_exam_B.HSVColorThresholding1_o1[i];

    /* SignalConversion generated from: '<S17>/Matrix Concatenate' incorporates:
     *  S-Function (image_compare_block): '<S17>/HSV Color Thresholding1'
     */
    QCar2_autonomous_driving_exam_B.y_f[i + 164000] =
      QCar2_autonomous_driving_exam_B.HSVColorThresholding1_o2[i];

    /* SignalConversion generated from: '<S17>/Matrix Concatenate' incorporates:
     *  S-Function (image_compare_block): '<S17>/HSV Color Thresholding1'
     */
    QCar2_autonomous_driving_exam_B.y_f[i + 328000] =
      QCar2_autonomous_driving_exam_B.HSVColorThresholding1_o3[i];
  }

  /* S-Function (channel_block): '<S17>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Channel (channel_block) */
  {
  }
}

/* Model update function for TID3 */
void QCar2_autonomous_driving_example1_update3(void)
                                /* Sample time: [0.016666666666666666s, 0.0s] */
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

/* Model output function for TID4 */
void QCar2_autonomous_driving_example1_output4(void) /* Sample time: [0.1s, 0.0s] */
{
  emxArray_real32_T_QCar2_auton_T *col_vec_0;
  emxArray_real32_T_QCar2_auton_T *row_vec_0;
  emxArray_real_T_QCar2_autonom_T *col_vec;
  emxArray_real_T_QCar2_autonom_T *row_vec;
  real_T rtb_y_fm[10];
  real_T itr;
  real_T itr_tmp;
  real_T itr_tmp_0;
  real_T rtb_y_n;
  real_T rtb_y_n_0;
  int32_T c_k;
  int32_T i;
  int32_T nx;
  real32_T itr_0;
  int8_T z_tmp;
  uint8_T RateTransition6_Buffer;
  uint8_T RateTransition8_Buffer;

  /* MATLAB Function: '<S4>/Draw Lines Module2' incorporates:
   *  MATLAB Function: '<S4>/Draw Lines Module1'
   *  MATLAB Function: '<S4>/MATLAB Function'
   *  RateTransition: '<Root>/Rate Transition6'
   */
  memcpy(&QCar2_autonomous_driving_exam_B.img_out_e[0],
         &QCar2_autonomous_driving_exa_DW.RateTransition6_Buffer[0], 492000U *
         sizeof(uint8_T));

  /* MATLAB Function: '<S4>/MATLAB Function' incorporates:
   *  MATLAB Function: '<S4>/Draw Lines Module1'
   *  MATLAB Function: '<S4>/Draw Lines Module2'
   *  RateTransition: '<Root>/Rate Transition6'
   *  RateTransition: '<Root>/Rate Transition8'
   */
  for (i = 0; i < 164000; i++) {
    RateTransition8_Buffer =
      QCar2_autonomous_driving_exa_DW.RateTransition8_Buffer[i];
    z_tmp = (int8_T)rt_roundd_snf((real_T)(uint8_T)(MAX_uint8_T
      - RateTransition8_Buffer) / 255.0);
    RateTransition6_Buffer =
      QCar2_autonomous_driving_exa_DW.RateTransition6_Buffer[i];
    c_k = (int32_T)((uint32_T)RateTransition8_Buffer * RateTransition6_Buffer);
    if (c_k > 255) {
      c_k = 255;
    }

    c_k = (int32_T)((uint32_T)z_tmp * RateTransition6_Buffer + (uint32_T)c_k);
    if (c_k > 255) {
      c_k = 255;
    }

    QCar2_autonomous_driving_exam_B.img_out_e[i] = (uint8_T)c_k;
    QCar2_autonomous_driving_exam_B.img_out_e[i + 164000] = (uint8_T)
      (QCar2_autonomous_driving_exa_DW.RateTransition6_Buffer[i + 164000] *
       (uint32_T)z_tmp);
    QCar2_autonomous_driving_exam_B.img_out_e[i + 328000] = (uint8_T)
      (QCar2_autonomous_driving_exa_DW.RateTransition6_Buffer[i + 328000] *
       (uint32_T)z_tmp);
  }

  /* MATLAB Function: '<S4>/MATLAB Function1' incorporates:
   *  RateTransition: '<Root>/Rate Transition7'
   */
  rtb_y_fm[0] = QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[2];
  rtb_y_fm[5] = QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[0];
  rtb_y_fm[1] = QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[2];
  rtb_y_fm[6] = QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[1];
  rtb_y_fm[2] = QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[3];
  rtb_y_fm[7] = QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[1];
  rtb_y_fm[3] = QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[3];
  rtb_y_fm[8] = QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[0];
  rtb_y_fm[4] = QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[2];
  rtb_y_fm[9] = QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer[0];
  QCar2_autonomous_emxInit_real_T(&row_vec, 2);
  QCar2_autonomous_emxInit_real_T(&col_vec, 2);

  /* MATLAB Function: '<S4>/Draw Lines Module1' incorporates:
   *  Constant: '<S4>/Constant2'
   *  MATLAB Function: '<S4>/Draw Lines Module2'
   */
  for (c_k = 0; c_k < 4; c_k++) {
    rtb_y_n = rtb_y_fm[c_k];
    rtb_y_n_0 = rtb_y_fm[c_k + 1];
    itr_tmp = rtb_y_fm[c_k + 5];
    itr_tmp_0 = rtb_y_fm[c_k + 6];
    itr = fmax(fabs(rtb_y_n - rtb_y_n_0), fabs(itr_tmp - itr_tmp_0));
    QCar2_autonomous_drivi_linspace(rtb_y_n, rtb_y_n_0, itr, row_vec);
    nx = row_vec->size[1];
    for (i = 0; i < nx; i++) {
      row_vec->data[i] = rt_roundd_snf(row_vec->data[i]);
    }

    QCar2_autonomous_drivi_linspace(itr_tmp, itr_tmp_0, itr, col_vec);
    nx = col_vec->size[1];
    for (i = 0; i < nx; i++) {
      col_vec->data[i] = rt_roundd_snf(col_vec->data[i]);
    }

    nx = (int32_T)itr;
    for (i = 0; i < nx; i++) {
      rtb_y_n = col_vec->data[i];
      rtb_y_n_0 = row_vec->data[i];
      itr_tmp = rt_roundd_snf(QCar2_autonomous_driving_exam_P.Constant2_Value_k
        [0]);
      if (itr_tmp < 256.0) {
        if (itr_tmp >= 0.0) {
          QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
            ((int32_T)rtb_y_n - 1)) - 1] = (uint8_T)itr_tmp;
        } else {
          QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
            ((int32_T)rtb_y_n - 1)) - 1] = 0U;
        }
      } else {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
          ((int32_T)rtb_y_n - 1)) - 1] = MAX_uint8_T;
      }

      itr_tmp = rt_roundd_snf(QCar2_autonomous_driving_exam_P.Constant2_Value_k
        [1]);
      if (itr_tmp < 256.0) {
        if (itr_tmp >= 0.0) {
          QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
            ((int32_T)rtb_y_n - 1)) + 163999] = (uint8_T)itr_tmp;
        } else {
          QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
            ((int32_T)rtb_y_n - 1)) + 163999] = 0U;
        }
      } else {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
          ((int32_T)rtb_y_n - 1)) + 163999] = MAX_uint8_T;
      }

      itr_tmp = rt_roundd_snf(QCar2_autonomous_driving_exam_P.Constant2_Value_k
        [2]);
      if (itr_tmp < 256.0) {
        if (itr_tmp >= 0.0) {
          QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
            ((int32_T)rtb_y_n - 1)) + 327999] = (uint8_T)itr_tmp;
        } else {
          QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
            ((int32_T)rtb_y_n - 1)) + 327999] = 0U;
        }
      } else {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
          ((int32_T)rtb_y_n - 1)) + 327999] = MAX_uint8_T;
      }
    }
  }

  /* MATLAB Function: '<S4>/Draw Lines Module3' incorporates:
   *  Constant: '<S4>/Constant3'
   *  MATLAB Function: '<S4>/Draw Lines Module2'
   *  RateTransition: '<Root>/Rate Transition9'
   */
  itr = fmax(409.0, fabs(QCar2_autonomous_driving_exa_DW.RateTransition9_Buffer
              - QCar2_autonomous_driving_exa_DW.RateTransition9_Buffer));
  QCar2_autonomous_drivi_linspace(1.0, 410.0, itr, row_vec);
  nx = row_vec->size[1];
  for (i = 0; i < nx; i++) {
    row_vec->data[i] = rt_roundd_snf(row_vec->data[i]);
  }

  QCar2_autonomous_drivi_linspace
    (QCar2_autonomous_driving_exa_DW.RateTransition9_Buffer,
     QCar2_autonomous_driving_exa_DW.RateTransition9_Buffer, itr, col_vec);
  nx = col_vec->size[1];
  for (i = 0; i < nx; i++) {
    col_vec->data[i] = rt_roundd_snf(col_vec->data[i]);
  }

  nx = (int32_T)itr;
  for (i = 0; i < nx; i++) {
    rtb_y_n = col_vec->data[i];
    rtb_y_n_0 = row_vec->data[i];
    itr_tmp = rt_roundd_snf(QCar2_autonomous_driving_exam_P.Constant3_Value_a[0]);
    if (itr_tmp < 256.0) {
      if (itr_tmp >= 0.0) {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
          ((int32_T)rtb_y_n - 1)) - 1] = (uint8_T)itr_tmp;
      } else {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
          ((int32_T)rtb_y_n - 1)) - 1] = 0U;
      }
    } else {
      QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
        ((int32_T)rtb_y_n - 1)) - 1] = MAX_uint8_T;
    }

    itr_tmp = rt_roundd_snf(QCar2_autonomous_driving_exam_P.Constant3_Value_a[1]);
    if (itr_tmp < 256.0) {
      if (itr_tmp >= 0.0) {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
          ((int32_T)rtb_y_n - 1)) + 163999] = (uint8_T)itr_tmp;
      } else {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
          ((int32_T)rtb_y_n - 1)) + 163999] = 0U;
      }
    } else {
      QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
        ((int32_T)rtb_y_n - 1)) + 163999] = MAX_uint8_T;
    }

    itr_tmp = rt_roundd_snf(QCar2_autonomous_driving_exam_P.Constant3_Value_a[2]);
    if (itr_tmp < 256.0) {
      if (itr_tmp >= 0.0) {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
          ((int32_T)rtb_y_n - 1)) + 327999] = (uint8_T)itr_tmp;
      } else {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
          ((int32_T)rtb_y_n - 1)) + 327999] = 0U;
      }
    } else {
      QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)rtb_y_n_0 + 200 *
        ((int32_T)rtb_y_n - 1)) + 327999] = MAX_uint8_T;
    }
  }

  /* End of MATLAB Function: '<S4>/Draw Lines Module3' */
  QCar2_autonomous_emxFree_real_T(&col_vec);
  QCar2_autonomous_emxFree_real_T(&row_vec);

  /* MATLAB Function: '<S4>/Draw Lines Module2' incorporates:
   *  MATLAB Function: '<S4>/MATLAB Function3'
   *  RateTransition: '<Root>/Rate Transition10'
   */
  itr_0 = fmaxf(409.0F, fabsf
                (QCar2_autonomous_driving_exa_DW.RateTransition10_Buffer[1] -
                 QCar2_autonomous_driving_exa_DW.RateTransition10_Buffer[1]));
  QCar2_autonomo_emxInit_real32_T(&row_vec_0, 2);

  /* MATLAB Function: '<S4>/Draw Lines Module2' */
  QCar2_autonomous_dri_linspace_e(1.0F, 410.0F, itr_0, row_vec_0);
  nx = row_vec_0->size[1];
  for (i = 0; i < nx; i++) {
    row_vec_0->data[i] = roundf(row_vec_0->data[i]);
  }

  QCar2_autonomo_emxInit_real32_T(&col_vec_0, 2);

  /* MATLAB Function: '<S4>/Draw Lines Module2' incorporates:
   *  Constant: '<S4>/Constant4'
   *  MATLAB Function: '<S4>/MATLAB Function3'
   *  RateTransition: '<Root>/Rate Transition10'
   */
  QCar2_autonomous_dri_linspace_e
    (QCar2_autonomous_driving_exa_DW.RateTransition10_Buffer[1],
     QCar2_autonomous_driving_exa_DW.RateTransition10_Buffer[1], itr_0,
     col_vec_0);
  nx = col_vec_0->size[1];
  for (i = 0; i < nx; i++) {
    col_vec_0->data[i] = roundf(col_vec_0->data[i]);
  }

  nx = (int32_T)itr_0;
  for (i = 0; i < nx; i++) {
    itr_tmp = rt_roundd_snf(QCar2_autonomous_driving_exam_P.Constant4_Value_m[0]);
    if (itr_tmp < 256.0) {
      if (itr_tmp >= 0.0) {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)row_vec_0->data
          [(int32_T)((real32_T)i + 1.0F) - 1] + 200 * ((int32_T)col_vec_0->data
          [(int32_T)((real32_T)i + 1.0F) - 1] - 1)) - 1] = (uint8_T)itr_tmp;
      } else {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)row_vec_0->data
          [(int32_T)((real32_T)i + 1.0F) - 1] + 200 * ((int32_T)col_vec_0->data
          [(int32_T)((real32_T)i + 1.0F) - 1] - 1)) - 1] = 0U;
      }
    } else {
      QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)row_vec_0->data
        [(int32_T)((real32_T)i + 1.0F) - 1] + 200 * ((int32_T)col_vec_0->data
        [(int32_T)((real32_T)i + 1.0F) - 1] - 1)) - 1] = MAX_uint8_T;
    }

    itr_tmp = rt_roundd_snf(QCar2_autonomous_driving_exam_P.Constant4_Value_m[1]);
    if (itr_tmp < 256.0) {
      if (itr_tmp >= 0.0) {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)row_vec_0->data
          [(int32_T)((real32_T)i + 1.0F) - 1] + 200 * ((int32_T)col_vec_0->data
          [(int32_T)((real32_T)i + 1.0F) - 1] - 1)) + 163999] = (uint8_T)itr_tmp;
      } else {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)row_vec_0->data
          [(int32_T)((real32_T)i + 1.0F) - 1] + 200 * ((int32_T)col_vec_0->data
          [(int32_T)((real32_T)i + 1.0F) - 1] - 1)) + 163999] = 0U;
      }
    } else {
      QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)row_vec_0->data
        [(int32_T)((real32_T)i + 1.0F) - 1] + 200 * ((int32_T)col_vec_0->data
        [(int32_T)((real32_T)i + 1.0F) - 1] - 1)) + 163999] = MAX_uint8_T;
    }

    itr_tmp = rt_roundd_snf(QCar2_autonomous_driving_exam_P.Constant4_Value_m[2]);
    if (itr_tmp < 256.0) {
      if (itr_tmp >= 0.0) {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)row_vec_0->data
          [(int32_T)((real32_T)i + 1.0F) - 1] + 200 * ((int32_T)col_vec_0->data
          [(int32_T)((real32_T)i + 1.0F) - 1] - 1)) + 327999] = (uint8_T)itr_tmp;
      } else {
        QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)row_vec_0->data
          [(int32_T)((real32_T)i + 1.0F) - 1] + 200 * ((int32_T)col_vec_0->data
          [(int32_T)((real32_T)i + 1.0F) - 1] - 1)) + 327999] = 0U;
      }
    } else {
      QCar2_autonomous_driving_exam_B.img_out_e[((int32_T)row_vec_0->data
        [(int32_T)((real32_T)i + 1.0F) - 1] + 200 * ((int32_T)col_vec_0->data
        [(int32_T)((real32_T)i + 1.0F) - 1] - 1)) + 327999] = MAX_uint8_T;
    }
  }

  QCar2_autonomo_emxFree_real32_T(&col_vec_0);
  QCar2_autonomo_emxFree_real32_T(&row_vec_0);

  /* S-Function (image_compress_block): '<S6>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Display Tracking Diagnostics/Image Compress (image_compress_block) */
  {
    t_error result = 0;
    size_t image_size = 0;
    result = qjpeg_compress_start
      (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_lh, true);
    if (result == 0) {
      result = qjpeg_compress_write_image_uint8
        (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_lh,
         &QCar2_autonomous_driving_exam_B.img_out_e[0]);
      qjpeg_compress_stop
        (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_lh);

      /* Get the final size of the compressed image */
      if (result >= 0) {
        result = qjpeg_compress_get_fixed_memory_destination_size
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_lh,
           &image_size);
      }
    }

    /* Set the dimensions of the output signal based on the size of the compressed image */
    QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_e = (int) image_size;
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* S-Function (channel_block): '<S6>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Display Tracking Diagnostics/Channel (channel_block) */
  {
  }
}

/* Model update function for TID4 */
void QCar2_autonomous_driving_example1_update4(void) /* Sample time: [0.1s, 0.0s] */
{
  /* Update absolute time */
  /* The "clockTick4" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick4"
   * and "Timing.stepSize4". Size of "clockTick4" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick4 and the high bits
   * Timing.clockTickH4. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++QCar2_autonomous_driving_exa_M->Timing.clockTick4)) {
    ++QCar2_autonomous_driving_exa_M->Timing.clockTickH4;
  }

  QCar2_autonomous_driving_exa_M->Timing.t[4] =
    QCar2_autonomous_driving_exa_M->Timing.clockTick4 *
    QCar2_autonomous_driving_exa_M->Timing.stepSize4 +
    QCar2_autonomous_driving_exa_M->Timing.clockTickH4 *
    QCar2_autonomous_driving_exa_M->Timing.stepSize4 * 4294967296.0;
}

/* Use this function only if you need to maintain compatibility with an existing static main program. */
void QCar2_autonomous_driving_example1_output(int_T tid)
{
  switch (tid) {
   case 0 :
    QCar2_autonomous_driving_example1_output0();
    break;

   case 2 :
    QCar2_autonomous_driving_example1_output2();
    break;

   case 3 :
    QCar2_autonomous_driving_example1_output3();
    break;

   case 4 :
    QCar2_autonomous_driving_example1_output4();
    break;

   default :
    /* do nothing */
    break;
  }
}

/* Use this function only if you need to maintain compatibility with an existing static main program. */
void QCar2_autonomous_driving_example1_update(int_T tid)
{
  switch (tid) {
   case 0 :
    QCar2_autonomous_driving_example1_update0();
    break;

   case 2 :
    QCar2_autonomous_driving_example1_update2();
    break;

   case 3 :
    QCar2_autonomous_driving_example1_update3();
    break;

   case 4 :
    QCar2_autonomous_driving_example1_update4();
    break;

   default :
    /* do nothing */
    break;
  }
}

/* Model initialize function */
void QCar2_autonomous_driving_example1_initialize(void)
{
  /* Start for S-Function (hil_initialize_block): '<S13>/HIL Initialize' */

  /* S-Function Block: QCar2_autonomous_driving_example1/basicQCarIO/HIL Initialize (hil_initialize_block) */
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

  /* Start for S-Function (inverse_modulus_block): '<S13>/Unwrap 2^24' */

  /* S-Function Block: QCar2_autonomous_driving_example1/basicQCarIO/Unwrap 2^24 (inverse_modulus_block) */
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

  /* Start for S-Function (sample_time_block): '<S3>/Sample Time' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Control Loop Timing /Sample Time (sample_time_block) */
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

  /* Start for S-Function (video3d_initialize_block): '<S16>/Video3D Initialize' */

  /* S-Function Block: QCar2_autonomous_driving_example1/captureDepth/Video3D Initialize (video3d_initialize_block) */
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

  /* Start for S-Function (video3d_capture_block): '<S16>/Depth' */
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

  /* Start for S-Function (sample_time_block): '<S2>/Sample Time' */

  /* S-Function Block: QCar2_autonomous_driving_example1/ Depth Timing/Sample Time (sample_time_block) */
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

  /* Start for S-Function (image_compress_block): '<S5>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Display Depth/Image Compress (image_compress_block) */
  {
    t_error result = qjpeg_compress_open
      (&QCar2_autonomous_driving_exa_DW.ImageCompress_Compress);
    if (result == 0) {
      do {
        result = qjpeg_compress_set_image_properties
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress, 214, 120,
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
           &QCar2_autonomous_driving_exam_B.ImageCompress[0], 77040);
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

  /* Start for S-Function (channel_block): '<S5>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Display Depth/Channel (channel_block) */
  {
  }

  /* Start for S-Function (sample_time_block): '<S1>/Sample Time' */

  /* S-Function Block: QCar2_autonomous_driving_example1/ CSI Timing/Sample Time (sample_time_block) */
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

  /* Start for S-Function (video_capture_block): '<S15>/Video Capture' */
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
    result = video_capture_open("video://localhost:2", 60.0, 820U, 410U,
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

  /* Start for S-Function (image_transform_block): '<S17>/Image Transform1' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Image Transform1 (image_transform_block) */
  {
    t_error result;
    result = image_rgb_to_hsv_open
      (&QCar2_autonomous_driving_exa_DW.ImageTransform1_AlgHandle);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (image_filter_block): '<S17>/Image Filter' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Image Filter (image_filter_block) */
  {
    t_image_common_parameters common_parameters;
    t_error result;
    memory_zero(&common_parameters, sizeof(common_parameters));
    common_parameters.image_width = 820;
    common_parameters.image_height = 200;
    common_parameters.zone = (t_roi_zone)
      (QCar2_autonomous_driving_exam_P.ImageFilter_Zone - 1);
    common_parameters.maximum_roi_height = 200;
    common_parameters.maximum_roi_width = 820;
    result = image_filter_minimum_grayscale_uint8_open(&common_parameters,
      (QCar2_autonomous_driving_exam_P.ImageFilter_MaskSize[0]),
      (QCar2_autonomous_driving_exam_P.ImageFilter_MaskSize[1]), (t_border_type)
      QCar2_autonomous_driving_exam_P.ImageFilter_BdrType,
      &QCar2_autonomous_driving_exa_DW.ImageFilter_Filter);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (image_filter_block): '<S17>/Image Filter1' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Image Filter1 (image_filter_block) */
  {
    t_image_common_parameters common_parameters;
    t_error result;
    memory_zero(&common_parameters, sizeof(common_parameters));
    common_parameters.image_width = 820;
    common_parameters.image_height = 200;
    common_parameters.zone = (t_roi_zone)
      (QCar2_autonomous_driving_exam_P.ImageFilter1_Zone - 1);
    common_parameters.maximum_roi_height = 200;
    common_parameters.maximum_roi_width = 820;
    result = image_filter_maximum_grayscale_uint8_open(&common_parameters,
      (QCar2_autonomous_driving_exam_P.ImageFilter1_MaskSize[0]),
      (QCar2_autonomous_driving_exam_P.ImageFilter1_MaskSize[1]), (t_border_type)
      QCar2_autonomous_driving_exam_P.ImageFilter1_BdrType,
      &QCar2_autonomous_driving_exa_DW.ImageFilter1_Filter);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (image_find_objects_block): '<S7>/Image Find Objects' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Lane Location/Image Find Objects (image_find_objects_block) */
  {
    t_error result;
    QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS2 = 0;
    ;
    QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS3[0] = 2;
    ;
    QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS3[1] = 0;
    ;
    QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS4[0] = 4;
    ;
    QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS4[1] = 0;
    ;
    QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS5 = 0;
    ;
    result = image_find_blobs_initialize(820, 200,
      &QCar2_autonomous_driving_exa_DW.ImageFindObjects_FindHandle);
    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (image_compress_block): '<S35>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Combined  Displays/Image Compress (image_compress_block) */
  {
    t_error result = qjpeg_compress_open
      (&QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_l);
    if (result == 0) {
      do {
        result = qjpeg_compress_set_image_properties
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_l, 820, 200,
           COLOR_SPACE_GRAYSCALE, IMAGE_DATA_TYPE_UINT8);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_quality
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_l,
           QCar2_autonomous_driving_exam_P.ImageCompress_Quality_n);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_fixed_memory_destination
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_l,
           &QCar2_autonomous_driving_exam_B.ImageCompress_m[0], 164000);
        if (result < 0) {
          break;
        }
      } while (false);

      if (result < 0) {
        qjpeg_compress_close
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_l);
      }
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (channel_block): '<S35>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Combined  Displays/Channel (channel_block) */
  {
  }

  /* Start for S-Function (image_compress_block): '<S36>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Filtered Image/Image Compress (image_compress_block) */
  {
    t_error result = qjpeg_compress_open
      (&QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_j);
    if (result == 0) {
      do {
        result = qjpeg_compress_set_image_properties
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_j, 820, 200,
           COLOR_SPACE_GRAYSCALE, IMAGE_DATA_TYPE_UINT8);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_quality
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_j,
           QCar2_autonomous_driving_exam_P.ImageCompress_Quality_a);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_fixed_memory_destination
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_j,
           &QCar2_autonomous_driving_exam_B.ImageCompress_a[0], 164000);
        if (result < 0) {
          break;
        }
      } while (false);

      if (result < 0) {
        qjpeg_compress_close
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_j);
      }
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (channel_block): '<S36>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Filtered Image/Channel (channel_block) */
  {
  }

  /* Start for S-Function (channel_block): '<S17>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Channel (channel_block) */
  {
  }

  /* Start for S-Function (image_compress_block): '<S6>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Display Tracking Diagnostics/Image Compress (image_compress_block) */
  {
    t_error result = qjpeg_compress_open
      (&QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_lh);
    if (result == 0) {
      do {
        result = qjpeg_compress_set_image_properties
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_lh, 820, 200,
           COLOR_SPACE_RGB, IMAGE_DATA_TYPE_UINT8);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_quality
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_lh,
           QCar2_autonomous_driving_exam_P.ImageCompress_Quality_h);
        if (result < 0) {
          break;
        }

        result = qjpeg_compress_set_fixed_memory_destination
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_lh,
           &QCar2_autonomous_driving_exam_B.ImageCompress_l[0], 492000);
        if (result < 0) {
          break;
        }
      } while (false);

      if (result < 0) {
        qjpeg_compress_close
          (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_lh);
      }
    }

    if (result < 0) {
      msg_get_error_messageA(NULL, result, _rt_error_message, sizeof
        (_rt_error_message));
      rtmSetErrorStatus(QCar2_autonomous_driving_exa_M, _rt_error_message);
    }
  }

  /* Start for S-Function (channel_block): '<S6>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Display Tracking Diagnostics/Channel (channel_block) */
  {
  }

  QCar2_autonomous_drivin_PrevZCX.Integrator1_Reset_ZCE = UNINITIALIZED_ZCSIG;

  {
    int32_T i;

    /* InitializeConditions for Integrator: '<S32>/Integrator1' incorporates:
     *  Integrator: '<S33>/Integrator1'
     *  Integrator: '<S34>/Integrator1'
     */
    if (rtmIsFirstInitCond(QCar2_autonomous_driving_exa_M)) {
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE = 0.0;
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_a = 0.0;
      QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_k = 0.0;
    }

    QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1 = true;

    /* End of InitializeConditions for Integrator: '<S32>/Integrator1' */

    /* InitializeConditions for Integrator: '<S32>/Integrator2' */
    QCar2_autonomous_driving_exam_X.Integrator2_CSTATE =
      QCar2_autonomous_driving_exam_P.Integrator2_IC;

    /* InitializeConditions for Integrator: '<S33>/Integrator1' */
    QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_c = true;

    /* InitializeConditions for Integrator: '<S33>/Integrator2' */
    QCar2_autonomous_driving_exam_X.Integrator2_CSTATE_e =
      QCar2_autonomous_driving_exam_P.Integrator2_IC_g;

    /* InitializeConditions for Integrator: '<S34>/Integrator1' */
    QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_o = true;

    /* InitializeConditions for Integrator: '<S34>/Integrator2' */
    QCar2_autonomous_driving_exam_X.Integrator2_CSTATE_h =
      QCar2_autonomous_driving_exam_P.Integrator2_IC_e;

    /* InitializeConditions for RateTransition: '<Root>/Rate Transition' */
    QCar2_autonomous_driving_exa_DW.RateTransition_Buffer0 =
      QCar2_autonomous_driving_exam_P.RateTransition_InitialCondition;

    /* InitializeConditions for DiscretePulseGenerator: '<S18>/Pulsing Light' */
    QCar2_autonomous_driving_exa_DW.clockTickCounter = 0;

    /* InitializeConditions for RateTransition: '<Root>/Rate Transition1' */
    QCar2_autonomous_driving_exa_DW.RateTransition1_Buffer0 =
      QCar2_autonomous_driving_exam_P.RateTransition1_InitialConditio;

    /* InitializeConditions for RateLimiter: '<Root>/Rate Limiter' */
    QCar2_autonomous_driving_exa_DW.PrevY =
      QCar2_autonomous_driving_exam_P.RateLimiter_IC;

    /* InitializeConditions for Integrator: '<S20>/Integrator1' */
    QCar2_autonomous_driving_exam_X.Integrator1_CSTATE_b =
      QCar2_autonomous_driving_exam_P.Integrator1_IC;

    /* InitializeConditions for Memory: '<S18>/Memory' */
    QCar2_autonomous_driving_exa_DW.Memory_PreviousInput =
      QCar2_autonomous_driving_exam_P.Memory_InitialCondition;

    /* InitializeConditions for S-Function (one_shot_block): '<S41>/one_shot_block' incorporates:
     *  Constant: '<S18>/Constant2'
     */
    {
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[0] = 0.0;
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[1] = 0.0;
      QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE[2] = 0.0;
    }

    /* InitializeConditions for S-Function (video3d_initialize_block): '<S16>/Video3D Initialize' */

    /* S-Function Block: QCar2_autonomous_driving_example1/captureDepth/Video3D Initialize (video3d_initialize_block) */
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

    /* InitializeConditions for S-Function (video3d_capture_block): '<S16>/Depth' */

    /* S-Function Block: QCar2_autonomous_driving_example1/captureDepth/Depth (video3d_capture_block) */
    {
      if (rtmIsFirstInitCond(QCar2_autonomous_driving_exa_M)) {
      }
    }

    /* InitializeConditions for RateTransition: '<Root>/Rate Transition2' */
    QCar2_autonomous_driving_exa_DW.RateTransition2_Buffer[0] =
      QCar2_autonomous_driving_exam_P.RateTransition2_InitialConditio;

    /* SystemInitialize for MATLAB Function: '<S7>/MATLAB Function' */
    QCar2_autonomous_driving_exa_DW.last_location_not_empty = false;

    /* SystemInitialize for Enabled SubSystem: '<Root>/obstacleDetection' */
    /* SystemInitialize for Outport: '<S19>/imageDepthForDisplay' */
    for (i = 0; i < 77040; i++) {
      QCar2_autonomous_driving_exam_B.img_out[i] =
        QCar2_autonomous_driving_exam_P.imageDepthForDisplay_Y0;
    }

    /* End of SystemInitialize for Outport: '<S19>/imageDepthForDisplay' */

    /* SystemInitialize for Product: '<S19>/Multiply' incorporates:
     *  Outport: '<S19>/distance (m)'
     */
    QCar2_autonomous_driving_exam_B.Multiply =
      QCar2_autonomous_driving_exam_P.distancem_Y0;

    /* End of SystemInitialize for SubSystem: '<Root>/obstacleDetection' */

    /* set "at time zero" to false */
    if (rtmIsFirstInitCond(QCar2_autonomous_driving_exa_M)) {
      rtmSetFirstInitCond(QCar2_autonomous_driving_exa_M, 0);
    }
  }
}

/* Model terminate function */
void QCar2_autonomous_driving_example1_terminate(void)
{
  /* Terminate for S-Function (hil_initialize_block): '<S13>/HIL Initialize' */

  /* S-Function Block: QCar2_autonomous_driving_example1/basicQCarIO/HIL Initialize (hil_initialize_block) */
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

  /* Terminate for S-Function (video3d_initialize_block): '<S16>/Video3D Initialize' */

  /* S-Function Block: QCar2_autonomous_driving_example1/captureDepth/Video3D Initialize (video3d_initialize_block) */
  {
    video3d_stop_streaming
      (QCar2_autonomous_driving_exa_DW.Video3DInitialize_Video3D);
    video3d_close(QCar2_autonomous_driving_exa_DW.Video3DInitialize_Video3D);
  }

  /* Terminate for S-Function (image_compress_block): '<S5>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Display Depth/Image Compress (image_compress_block) */
  {
    qjpeg_compress_close(QCar2_autonomous_driving_exa_DW.ImageCompress_Compress);
    QCar2_autonomous_driving_exa_DW.ImageCompress_Compress = NULL;
  }

  /* Terminate for S-Function (channel_block): '<S5>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Display Depth/Channel (channel_block) */
  {
  }

  /* Terminate for S-Function (video_capture_block): '<S15>/Video Capture' */
  video_capture_stop(QCar2_autonomous_driving_exa_DW.VideoCapture_VideoCapture);
  video_capture_close(QCar2_autonomous_driving_exa_DW.VideoCapture_VideoCapture);

  /* Terminate for S-Function (image_transform_block): '<S17>/Image Transform1' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Image Transform1 (image_transform_block) */
  {
    image_rgb_to_hsv_close
      (QCar2_autonomous_driving_exa_DW.ImageTransform1_AlgHandle);
  }

  /* Terminate for S-Function (image_filter_block): '<S17>/Image Filter' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Image Filter (image_filter_block) */
  {
    image_filter_minimum_close
      (QCar2_autonomous_driving_exa_DW.ImageFilter_Filter);
  }

  /* Terminate for S-Function (image_filter_block): '<S17>/Image Filter1' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Image Filter1 (image_filter_block) */
  {
    image_filter_maximum_close
      (QCar2_autonomous_driving_exa_DW.ImageFilter1_Filter);
  }

  /* Terminate for S-Function (image_find_objects_block): '<S7>/Image Find Objects' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Lane Location/Image Find Objects (image_find_objects_block) */
  {
    image_find_blobs_destroy
      (QCar2_autonomous_driving_exa_DW.ImageFindObjects_FindHandle);
  }

  /* Terminate for S-Function (image_compress_block): '<S35>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Combined  Displays/Image Compress (image_compress_block) */
  {
    qjpeg_compress_close
      (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_l);
    QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_l = NULL;
  }

  /* Terminate for S-Function (channel_block): '<S35>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Combined  Displays/Channel (channel_block) */
  {
  }

  /* Terminate for S-Function (image_compress_block): '<S36>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Filtered Image/Image Compress (image_compress_block) */
  {
    qjpeg_compress_close
      (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_j);
    QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_j = NULL;
  }

  /* Terminate for S-Function (channel_block): '<S36>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Filtered Image/Channel (channel_block) */
  {
  }

  /* Terminate for S-Function (channel_block): '<S17>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/colorThresholdingHSV/Channel (channel_block) */
  {
  }

  /* Terminate for S-Function (image_compress_block): '<S6>/Image Compress' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Display Tracking Diagnostics/Image Compress (image_compress_block) */
  {
    qjpeg_compress_close
      (QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_lh);
    QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_lh = NULL;
  }

  /* Terminate for S-Function (channel_block): '<S6>/Channel' */

  /* S-Function Block: QCar2_autonomous_driving_example1/Display Tracking Diagnostics/Channel (channel_block) */
  {
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
  QCar2_autonomous_driving_example1_output(tid);
}

void MdlUpdate(int_T tid)
{
  if (tid == 1)
    tid = 0;
  QCar2_autonomous_driving_example1_update(tid);
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
  QCar2_autonomous_driving_example1_initialize();
}

void MdlTerminate(void)
{
  QCar2_autonomous_driving_example1_terminate();
}

/* Registration function */
RT_MODEL_QCar2_autonomous_dri_T *QCar2_autonomous_driving_example1(void)
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
    int_T i;
    for (i = 0; i < 5; i++) {
      mdlTsMap[i] = i;
    }

    QCar2_autonomous_driving_exa_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
    QCar2_autonomous_driving_exa_M->Timing.sampleTimes =
      (&QCar2_autonomous_driving_exa_M->Timing.sampleTimesArray[0]);
    QCar2_autonomous_driving_exa_M->Timing.offsetTimes =
      (&QCar2_autonomous_driving_exa_M->Timing.offsetTimesArray[0]);

    /* task periods */
    QCar2_autonomous_driving_exa_M->Timing.sampleTimes[0] = (0.0);
    QCar2_autonomous_driving_exa_M->Timing.sampleTimes[1] =
      (0.0016666666666666668);
    QCar2_autonomous_driving_exa_M->Timing.sampleTimes[2] = (0.01);
    QCar2_autonomous_driving_exa_M->Timing.sampleTimes[3] =
      (0.016666666666666666);
    QCar2_autonomous_driving_exa_M->Timing.sampleTimes[4] = (0.1);

    /* task offsets */
    QCar2_autonomous_driving_exa_M->Timing.offsetTimes[0] = (0.0);
    QCar2_autonomous_driving_exa_M->Timing.offsetTimes[1] = (0.0);
    QCar2_autonomous_driving_exa_M->Timing.offsetTimes[2] = (0.0);
    QCar2_autonomous_driving_exa_M->Timing.offsetTimes[3] = (0.0);
    QCar2_autonomous_driving_exa_M->Timing.offsetTimes[4] = (0.0);
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
  QCar2_autonomous_driving_exa_M->Timing.stepSize2 = 0.01;
  QCar2_autonomous_driving_exa_M->Timing.stepSize3 = 0.016666666666666666;
  QCar2_autonomous_driving_exa_M->Timing.stepSize4 = 0.1;
  rtmSetFirstInitCond(QCar2_autonomous_driving_exa_M, 1);
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
    QCar2_autonomous_driving_exam_B.Channel_f = CHANNEL_0;
    QCar2_autonomous_driving_exam_B.Channel_m = CHANNEL_0;
    QCar2_autonomous_driving_exam_B.Channel_i = CHANNEL_0;
    QCar2_autonomous_driving_exam_B.Channel_a = CHANNEL_0;
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

  /* Initialize Sizes */
  QCar2_autonomous_driving_exa_M->Sizes.numContStates = (7);/* Number of continuous states */
  QCar2_autonomous_driving_exa_M->Sizes.numPeriodicContStates = (0);
                                      /* Number of periodic continuous states */
  QCar2_autonomous_driving_exa_M->Sizes.numY = (0);/* Number of model outputs */
  QCar2_autonomous_driving_exa_M->Sizes.numU = (0);/* Number of model inputs */
  QCar2_autonomous_driving_exa_M->Sizes.sysDirFeedThru = (0);/* The model is not direct feedthrough */
  QCar2_autonomous_driving_exa_M->Sizes.numSampTimes = (5);/* Number of sample times */
  QCar2_autonomous_driving_exa_M->Sizes.numBlocks = (209);/* Number of blocks */
  QCar2_autonomous_driving_exa_M->Sizes.numBlockIO = (42);/* Number of block outputs */
  QCar2_autonomous_driving_exa_M->Sizes.numBlockPrms = (370);/* Sum of parameter "widths" */
  return QCar2_autonomous_driving_exa_M;
}

/*========================================================================*
 * End of Classic call interface                                          *
 *========================================================================*/
