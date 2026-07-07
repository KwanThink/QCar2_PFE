/*
 * QCar2_autonomous_driving_example1_private.h
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

#ifndef QCar2_autonomous_driving_example1_private_h_
#define QCar2_autonomous_driving_example1_private_h_
#include "rtwtypes.h"
#include "multiword_types.h"
#include "zero_crossing_types.h"
#include "QCar2_autonomous_driving_example1_types.h"

/* A global buffer for storing error messages (defined in quanser_common library) */
EXTERN char _rt_error_message[512];
extern real_T rt_powd_snf(real_T u0, real_T u1);
extern real_T rt_roundd_snf(real_T u);

/* private model entry point functions */
extern void QCar2_autonomous_driving_example1_derivatives(void);

#endif                        /* QCar2_autonomous_driving_example1_private_h_ */
