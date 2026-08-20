\ Model qcar2_flat_coordinate_oampc_mk2c
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x433bf7ecb158c3e0
Minimize
 
Subject To
 flat_dynamics_X_0: - z[0,0] - 0.02 z[0,1] + z[1,0] - 0.0002 v[0,0] = 0
 flat_dynamics_Xdot_0: - z[0,1] + z[1,1] - 0.02 v[0,0] = 0
 flat_dynamics_Y_0: - z[0,2] - 0.02 z[0,3] + z[1,2] - 0.0002 v[0,1] = 0
 flat_dynamics_Ydot_0: - z[0,3] + z[1,3] - 0.02 v[0,1] = 0
 flat_dynamics_X_1: - z[1,0] - 0.02 z[1,1] + z[2,0] - 0.0002 v[1,0] = 0
 flat_dynamics_Xdot_1: - z[1,1] + z[2,1] - 0.02 v[1,0] = 0
 flat_dynamics_Y_1: - z[1,2] - 0.02 z[1,3] + z[2,2] - 0.0002 v[1,1] = 0
 flat_dynamics_Ydot_1: - z[1,3] + z[2,3] - 0.02 v[1,1] = 0
 flat_dynamics_X_2: - z[2,0] - 0.02 z[2,1] + z[3,0] - 0.0002 v[2,0] = 0
 flat_dynamics_Xdot_2: - z[2,1] + z[3,1] - 0.02 v[2,0] = 0
 flat_dynamics_Y_2: - z[2,2] - 0.02 z[2,3] + z[3,2] - 0.0002 v[2,1] = 0
 flat_dynamics_Ydot_2: - z[2,3] + z[3,3] - 0.02 v[2,1] = 0
 flat_dynamics_X_3: - z[3,0] - 0.02 z[3,1] + z[4,0] - 0.0002 v[3,0] = 0
 flat_dynamics_Xdot_3: - z[3,1] + z[4,1] - 0.02 v[3,0] = 0
 flat_dynamics_Y_3: - z[3,2] - 0.02 z[3,3] + z[4,2] - 0.0002 v[3,1] = 0
 flat_dynamics_Ydot_3: - z[3,3] + z[4,3] - 0.02 v[3,1] = 0
 flat_dynamics_X_4: - z[4,0] - 0.02 z[4,1] + z[5,0] - 0.0002 v[4,0] = 0
 flat_dynamics_Xdot_4: - z[4,1] + z[5,1] - 0.02 v[4,0] = 0
 flat_dynamics_Y_4: - z[4,2] - 0.02 z[4,3] + z[5,2] - 0.0002 v[4,1] = 0
 flat_dynamics_Ydot_4: - z[4,3] + z[5,3] - 0.02 v[4,1] = 0
 flat_dynamics_X_5: - z[5,0] - 0.02 z[5,1] + z[6,0] - 0.0002 v[5,0] = 0
 flat_dynamics_Xdot_5: - z[5,1] + z[6,1] - 0.02 v[5,0] = 0
 flat_dynamics_Y_5: - z[5,2] - 0.02 z[5,3] + z[6,2] - 0.0002 v[5,1] = 0
 flat_dynamics_Ydot_5: - z[5,3] + z[6,3] - 0.02 v[5,1] = 0
 flat_dynamics_X_6: - z[6,0] - 0.02 z[6,1] + z[7,0] - 0.0002 v[6,0] = 0
 flat_dynamics_Xdot_6: - z[6,1] + z[7,1] - 0.02 v[6,0] = 0
 flat_dynamics_Y_6: - z[6,2] - 0.02 z[6,3] + z[7,2] - 0.0002 v[6,1] = 0
 flat_dynamics_Ydot_6: - z[6,3] + z[7,3] - 0.02 v[6,1] = 0
 flat_dynamics_X_7: - z[7,0] - 0.02 z[7,1] + z[8,0] - 0.0002 v[7,0] = 0
 flat_dynamics_Xdot_7: - z[7,1] + z[8,1] - 0.02 v[7,0] = 0
 flat_dynamics_Y_7: - z[7,2] - 0.02 z[7,3] + z[8,2] - 0.0002 v[7,1] = 0
 flat_dynamics_Ydot_7: - z[7,3] + z[8,3] - 0.02 v[7,1] = 0
 flat_dynamics_X_8: - z[8,0] - 0.02 z[8,1] + z[9,0] - 0.0002 v[8,0] = 0
 flat_dynamics_Xdot_8: - z[8,1] + z[9,1] - 0.02 v[8,0] = 0
 flat_dynamics_Y_8: - z[8,2] - 0.02 z[8,3] + z[9,2] - 0.0002 v[8,1] = 0
 flat_dynamics_Ydot_8: - z[8,3] + z[9,3] - 0.02 v[8,1] = 0
 flat_dynamics_X_9: - z[9,0] - 0.02 z[9,1] + z[10,0] - 0.0002 v[9,0] = 0
 flat_dynamics_Xdot_9: - z[9,1] + z[10,1] - 0.02 v[9,0] = 0
 flat_dynamics_Y_9: - z[9,2] - 0.02 z[9,3] + z[10,2] - 0.0002 v[9,1] = 0
 flat_dynamics_Ydot_9: - z[9,3] + z[10,3] - 0.02 v[9,1] = 0
 flat_dynamics_X_10: - z[10,0] - 0.02 z[10,1] + z[11,0] - 0.0002 v[10,0]
   = 0
 flat_dynamics_Xdot_10: - z[10,1] + z[11,1] - 0.02 v[10,0] = 0
 flat_dynamics_Y_10: - z[10,2] - 0.02 z[10,3] + z[11,2] - 0.0002 v[10,1]
   = 0
 flat_dynamics_Ydot_10: - z[10,3] + z[11,3] - 0.02 v[10,1] = 0
 flat_dynamics_X_11: - z[11,0] - 0.02 z[11,1] + z[12,0] - 0.0002 v[11,0]
   = 0
 flat_dynamics_Xdot_11: - z[11,1] + z[12,1] - 0.02 v[11,0] = 0
 flat_dynamics_Y_11: - z[11,2] - 0.02 z[11,3] + z[12,2] - 0.0002 v[11,1]
   = 0
 flat_dynamics_Ydot_11: - z[11,3] + z[12,3] - 0.02 v[11,1] = 0
 flat_dynamics_X_12: - z[12,0] - 0.02 z[12,1] + z[13,0] - 0.0002 v[12,0]
   = 0
 flat_dynamics_Xdot_12: - z[12,1] + z[13,1] - 0.02 v[12,0] = 0
 flat_dynamics_Y_12: - z[12,2] - 0.02 z[12,3] + z[13,2] - 0.0002 v[12,1]
   = 0
 flat_dynamics_Ydot_12: - z[12,3] + z[13,3] - 0.02 v[12,1] = 0
 flat_dynamics_X_13: - z[13,0] - 0.02 z[13,1] + z[14,0] - 0.0002 v[13,0]
   = 0
 flat_dynamics_Xdot_13: - z[13,1] + z[14,1] - 0.02 v[13,0] = 0
 flat_dynamics_Y_13: - z[13,2] - 0.02 z[13,3] + z[14,2] - 0.0002 v[13,1]
   = 0
 flat_dynamics_Ydot_13: - z[13,3] + z[14,3] - 0.02 v[13,1] = 0
 flat_dynamics_X_14: - z[14,0] - 0.02 z[14,1] + z[15,0] - 0.0002 v[14,0]
   = 0
 flat_dynamics_Xdot_14: - z[14,1] + z[15,1] - 0.02 v[14,0] = 0
 flat_dynamics_Y_14: - z[14,2] - 0.02 z[14,3] + z[15,2] - 0.0002 v[14,1]
   = 0
 flat_dynamics_Ydot_14: - z[14,3] + z[15,3] - 0.02 v[14,1] = 0
 flat_dynamics_X_15: - z[15,0] - 0.02 z[15,1] + z[16,0] - 0.0002 v[15,0]
   = 0
 flat_dynamics_Xdot_15: - z[15,1] + z[16,1] - 0.02 v[15,0] = 0
 flat_dynamics_Y_15: - z[15,2] - 0.02 z[15,3] + z[16,2] - 0.0002 v[15,1]
   = 0
 flat_dynamics_Ydot_15: - z[15,3] + z[16,3] - 0.02 v[15,1] = 0
 flat_dynamics_X_16: - z[16,0] - 0.02 z[16,1] + z[17,0] - 0.0002 v[16,0]
   = 0
 flat_dynamics_Xdot_16: - z[16,1] + z[17,1] - 0.02 v[16,0] = 0
 flat_dynamics_Y_16: - z[16,2] - 0.02 z[16,3] + z[17,2] - 0.0002 v[16,1]
   = 0
 flat_dynamics_Ydot_16: - z[16,3] + z[17,3] - 0.02 v[16,1] = 0
 flat_dynamics_X_17: - z[17,0] - 0.02 z[17,1] + z[18,0] - 0.0002 v[17,0]
   = 0
 flat_dynamics_Xdot_17: - z[17,1] + z[18,1] - 0.02 v[17,0] = 0
 flat_dynamics_Y_17: - z[17,2] - 0.02 z[17,3] + z[18,2] - 0.0002 v[17,1]
   = 0
 flat_dynamics_Ydot_17: - z[17,3] + z[18,3] - 0.02 v[17,1] = 0
 flat_dynamics_X_18: - z[18,0] - 0.02 z[18,1] + z[19,0] - 0.0002 v[18,0]
   = 0
 flat_dynamics_Xdot_18: - z[18,1] + z[19,1] - 0.02 v[18,0] = 0
 flat_dynamics_Y_18: - z[18,2] - 0.02 z[18,3] + z[19,2] - 0.0002 v[18,1]
   = 0
 flat_dynamics_Ydot_18: - z[18,3] + z[19,3] - 0.02 v[18,1] = 0
 flat_dynamics_X_19: - z[19,0] - 0.02 z[19,1] + z[20,0] - 0.0002 v[19,0]
   = 0
 flat_dynamics_Xdot_19: - z[19,1] + z[20,1] - 0.02 v[19,0] = 0
 flat_dynamics_Y_19: - z[19,2] - 0.02 z[19,3] + z[20,2] - 0.0002 v[19,1]
   = 0
 flat_dynamics_Ydot_19: - z[19,3] + z[20,3] - 0.02 v[19,1] = 0
 flat_dynamics_X_20: - z[20,0] - 0.02 z[20,1] + z[21,0] - 0.0002 v[20,0]
   = 0
 flat_dynamics_Xdot_20: - z[20,1] + z[21,1] - 0.02 v[20,0] = 0
 flat_dynamics_Y_20: - z[20,2] - 0.02 z[20,3] + z[21,2] - 0.0002 v[20,1]
   = 0
 flat_dynamics_Ydot_20: - z[20,3] + z[21,3] - 0.02 v[20,1] = 0
 flat_dynamics_X_21: - z[21,0] - 0.02 z[21,1] + z[22,0] - 0.0002 v[21,0]
   = 0
 flat_dynamics_Xdot_21: - z[21,1] + z[22,1] - 0.02 v[21,0] = 0
 flat_dynamics_Y_21: - z[21,2] - 0.02 z[21,3] + z[22,2] - 0.0002 v[21,1]
   = 0
 flat_dynamics_Ydot_21: - z[21,3] + z[22,3] - 0.02 v[21,1] = 0
 flat_dynamics_X_22: - z[22,0] - 0.02 z[22,1] + z[23,0] - 0.0002 v[22,0]
   = 0
 flat_dynamics_Xdot_22: - z[22,1] + z[23,1] - 0.02 v[22,0] = 0
 flat_dynamics_Y_22: - z[22,2] - 0.02 z[22,3] + z[23,2] - 0.0002 v[22,1]
   = 0
 flat_dynamics_Ydot_22: - z[22,3] + z[23,3] - 0.02 v[22,1] = 0
 flat_dynamics_X_23: - z[23,0] - 0.02 z[23,1] + z[24,0] - 0.0002 v[23,0]
   = 0
 flat_dynamics_Xdot_23: - z[23,1] + z[24,1] - 0.02 v[23,0] = 0
 flat_dynamics_Y_23: - z[23,2] - 0.02 z[23,3] + z[24,2] - 0.0002 v[23,1]
   = 0
 flat_dynamics_Ydot_23: - z[23,3] + z[24,3] - 0.02 v[23,1] = 0
 flat_dynamics_X_24: - z[24,0] - 0.02 z[24,1] + z[25,0] - 0.0002 v[24,0]
   = 0
 flat_dynamics_Xdot_24: - z[24,1] + z[25,1] - 0.02 v[24,0] = 0
 flat_dynamics_Y_24: - z[24,2] - 0.02 z[24,3] + z[25,2] - 0.0002 v[24,1]
   = 0
 flat_dynamics_Ydot_24: - z[24,3] + z[25,3] - 0.02 v[24,1] = 0
 flat_dynamics_X_25: - z[25,0] - 0.02 z[25,1] + z[26,0] - 0.0002 v[25,0]
   = 0
 flat_dynamics_Xdot_25: - z[25,1] + z[26,1] - 0.02 v[25,0] = 0
 flat_dynamics_Y_25: - z[25,2] - 0.02 z[25,3] + z[26,2] - 0.0002 v[25,1]
   = 0
 flat_dynamics_Ydot_25: - z[25,3] + z[26,3] - 0.02 v[25,1] = 0
 flat_dynamics_X_26: - z[26,0] - 0.02 z[26,1] + z[27,0] - 0.0002 v[26,0]
   = 0
 flat_dynamics_Xdot_26: - z[26,1] + z[27,1] - 0.02 v[26,0] = 0
 flat_dynamics_Y_26: - z[26,2] - 0.02 z[26,3] + z[27,2] - 0.0002 v[26,1]
   = 0
 flat_dynamics_Ydot_26: - z[26,3] + z[27,3] - 0.02 v[26,1] = 0
 flat_dynamics_X_27: - z[27,0] - 0.02 z[27,1] + z[28,0] - 0.0002 v[27,0]
   = 0
 flat_dynamics_Xdot_27: - z[27,1] + z[28,1] - 0.02 v[27,0] = 0
 flat_dynamics_Y_27: - z[27,2] - 0.02 z[27,3] + z[28,2] - 0.0002 v[27,1]
   = 0
 flat_dynamics_Ydot_27: - z[27,3] + z[28,3] - 0.02 v[27,1] = 0
 flat_dynamics_X_28: - z[28,0] - 0.02 z[28,1] + z[29,0] - 0.0002 v[28,0]
   = 0
 flat_dynamics_Xdot_28: - z[28,1] + z[29,1] - 0.02 v[28,0] = 0
 flat_dynamics_Y_28: - z[28,2] - 0.02 z[28,3] + z[29,2] - 0.0002 v[28,1]
   = 0
 flat_dynamics_Ydot_28: - z[28,3] + z[29,3] - 0.02 v[28,1] = 0
 flat_dynamics_X_29: - z[29,0] - 0.02 z[29,1] + z[30,0] - 0.0002 v[29,0]
   = 0
 flat_dynamics_Xdot_29: - z[29,1] + z[30,1] - 0.02 v[29,0] = 0
 flat_dynamics_Y_29: - z[29,2] - 0.02 z[29,3] + z[30,2] - 0.0002 v[29,1]
   = 0
 flat_dynamics_Ydot_29: - z[29,3] + z[30,3] - 0.02 v[29,1] = 0
 W_tan_delta_lower_0: >= -0.5773519017263813
 W_tan_delta_upper_0: <= 0.5773519017263813
 W_ax_lower_0: >= -1
 W_ax_upper_0: <= 1
 W_tan_delta_lower_1: >= -0.5773519017263813
 W_tan_delta_upper_1: <= 0.5773519017263813
 W_ax_lower_1: >= -1
 W_ax_upper_1: <= 1
 W_tan_delta_lower_2: >= -0.5773519017263813
 W_tan_delta_upper_2: <= 0.5773519017263813
 W_ax_lower_2: >= -1
 W_ax_upper_2: <= 1
 W_tan_delta_lower_3: >= -0.5773519017263813
 W_tan_delta_upper_3: <= 0.5773519017263813
 W_ax_lower_3: >= -1
 W_ax_upper_3: <= 1
 W_tan_delta_lower_4: >= -0.5773519017263813
 W_tan_delta_upper_4: <= 0.5773519017263813
 W_ax_lower_4: >= -1
 W_ax_upper_4: <= 1
 W_tan_delta_lower_5: >= -0.5773519017263813
 W_tan_delta_upper_5: <= 0.5773519017263813
 W_ax_lower_5: >= -1
 W_ax_upper_5: <= 1
 W_tan_delta_lower_6: >= -0.5773519017263813
 W_tan_delta_upper_6: <= 0.5773519017263813
 W_ax_lower_6: >= -1
 W_ax_upper_6: <= 1
 W_tan_delta_lower_7: >= -0.5773519017263813
 W_tan_delta_upper_7: <= 0.5773519017263813
 W_ax_lower_7: >= -1
 W_ax_upper_7: <= 1
 W_tan_delta_lower_8: >= -0.5773519017263813
 W_tan_delta_upper_8: <= 0.5773519017263813
 W_ax_lower_8: >= -1
 W_ax_upper_8: <= 1
 W_tan_delta_lower_9: >= -0.5773519017263813
 W_tan_delta_upper_9: <= 0.5773519017263813
 W_ax_lower_9: >= -1
 W_ax_upper_9: <= 1
 W_tan_delta_lower_10: >= -0.5773519017263813
 W_tan_delta_upper_10: <= 0.5773519017263813
 W_ax_lower_10: >= -1
 W_ax_upper_10: <= 1
 W_tan_delta_lower_11: >= -0.5773519017263813
 W_tan_delta_upper_11: <= 0.5773519017263813
 W_ax_lower_11: >= -1
 W_ax_upper_11: <= 1
 W_tan_delta_lower_12: >= -0.5773519017263813
 W_tan_delta_upper_12: <= 0.5773519017263813
 W_ax_lower_12: >= -1
 W_ax_upper_12: <= 1
 W_tan_delta_lower_13: >= -0.5773519017263813
 W_tan_delta_upper_13: <= 0.5773519017263813
 W_ax_lower_13: >= -1
 W_ax_upper_13: <= 1
 W_tan_delta_lower_14: >= -0.5773519017263813
 W_tan_delta_upper_14: <= 0.5773519017263813
 W_ax_lower_14: >= -1
 W_ax_upper_14: <= 1
 W_tan_delta_lower_15: >= -0.5773519017263813
 W_tan_delta_upper_15: <= 0.5773519017263813
 W_ax_lower_15: >= -1
 W_ax_upper_15: <= 1
 W_tan_delta_lower_16: >= -0.5773519017263813
 W_tan_delta_upper_16: <= 0.5773519017263813
 W_ax_lower_16: >= -1
 W_ax_upper_16: <= 1
 W_tan_delta_lower_17: >= -0.5773519017263813
 W_tan_delta_upper_17: <= 0.5773519017263813
 W_ax_lower_17: >= -1
 W_ax_upper_17: <= 1
 W_tan_delta_lower_18: >= -0.5773519017263813
 W_tan_delta_upper_18: <= 0.5773519017263813
 W_ax_lower_18: >= -1
 W_ax_upper_18: <= 1
 W_tan_delta_lower_19: >= -0.5773519017263813
 W_tan_delta_upper_19: <= 0.5773519017263813
 W_ax_lower_19: >= -1
 W_ax_upper_19: <= 1
 W_tan_delta_lower_20: >= -0.5773519017263813
 W_tan_delta_upper_20: <= 0.5773519017263813
 W_ax_lower_20: >= -1
 W_ax_upper_20: <= 1
 W_tan_delta_lower_21: >= -0.5773519017263813
 W_tan_delta_upper_21: <= 0.5773519017263813
 W_ax_lower_21: >= -1
 W_ax_upper_21: <= 1
 W_tan_delta_lower_22: >= -0.5773519017263813
 W_tan_delta_upper_22: <= 0.5773519017263813
 W_ax_lower_22: >= -1
 W_ax_upper_22: <= 1
 W_tan_delta_lower_23: >= -0.5773519017263813
 W_tan_delta_upper_23: <= 0.5773519017263813
 W_ax_lower_23: >= -1
 W_ax_upper_23: <= 1
 W_tan_delta_lower_24: >= -0.5773519017263813
 W_tan_delta_upper_24: <= 0.5773519017263813
 W_ax_lower_24: >= -1
 W_ax_upper_24: <= 1
 W_tan_delta_lower_25: >= -0.5773519017263813
 W_tan_delta_upper_25: <= 0.5773519017263813
 W_ax_lower_25: >= -1
 W_ax_upper_25: <= 1
 W_tan_delta_lower_26: >= -0.5773519017263813
 W_tan_delta_upper_26: <= 0.5773519017263813
 W_ax_lower_26: >= -1
 W_ax_upper_26: <= 1
 W_tan_delta_lower_27: >= -0.5773519017263813
 W_tan_delta_upper_27: <= 0.5773519017263813
 W_ax_lower_27: >= -1
 W_ax_upper_27: <= 1
 W_tan_delta_lower_28: >= -0.5773519017263813
 W_tan_delta_upper_28: <= 0.5773519017263813
 W_ax_lower_28: >= -1
 W_ax_upper_28: <= 1
 W_tan_delta_lower_29: >= -0.5773519017263813
 W_tan_delta_upper_29: <= 0.5773519017263813
 W_ax_lower_29: >= -1
 W_ax_upper_29: <= 1
 obs_alpha_sum_s0_j0: alpha[0,0,0] + alpha[0,1,0] + alpha[0,2,0]
   + alpha[0,3,0] >= 0
 obs_face_s0_e0_j0: - obstacle_slack + 100 alpha[0,0,0] <= 100
 obs_face_s0_e1_j0: - obstacle_slack + 100 alpha[0,1,0] <= 100
 obs_face_s0_e2_j0: - obstacle_slack + 100 alpha[0,2,0] <= 100
 obs_face_s0_e3_j0: - obstacle_slack + 100 alpha[0,3,0] <= 100
 obs_alpha_sum_s0_j1: alpha[0,0,1] + alpha[0,1,1] + alpha[0,2,1]
   + alpha[0,3,1] >= 0
 obs_face_s0_e0_j1: - obstacle_slack + 100 alpha[0,0,1] <= 100
 obs_face_s0_e1_j1: - obstacle_slack + 100 alpha[0,1,1] <= 100
 obs_face_s0_e2_j1: - obstacle_slack + 100 alpha[0,2,1] <= 100
 obs_face_s0_e3_j1: - obstacle_slack + 100 alpha[0,3,1] <= 100
 obs_alpha_sum_s0_j2: alpha[0,0,2] + alpha[0,1,2] + alpha[0,2,2]
   + alpha[0,3,2] >= 0
 obs_face_s0_e0_j2: - obstacle_slack + 100 alpha[0,0,2] <= 100
 obs_face_s0_e1_j2: - obstacle_slack + 100 alpha[0,1,2] <= 100
 obs_face_s0_e2_j2: - obstacle_slack + 100 alpha[0,2,2] <= 100
 obs_face_s0_e3_j2: - obstacle_slack + 100 alpha[0,3,2] <= 100
 obs_alpha_sum_s0_j3: alpha[0,0,3] + alpha[0,1,3] + alpha[0,2,3]
   + alpha[0,3,3] >= 0
 obs_face_s0_e0_j3: - obstacle_slack + 100 alpha[0,0,3] <= 100
 obs_face_s0_e1_j3: - obstacle_slack + 100 alpha[0,1,3] <= 100
 obs_face_s0_e2_j3: - obstacle_slack + 100 alpha[0,2,3] <= 100
 obs_face_s0_e3_j3: - obstacle_slack + 100 alpha[0,3,3] <= 100
 obs_alpha_sum_s0_j4: alpha[0,0,4] + alpha[0,1,4] + alpha[0,2,4]
   + alpha[0,3,4] >= 0
 obs_face_s0_e0_j4: - obstacle_slack + 100 alpha[0,0,4] <= 100
 obs_face_s0_e1_j4: - obstacle_slack + 100 alpha[0,1,4] <= 100
 obs_face_s0_e2_j4: - obstacle_slack + 100 alpha[0,2,4] <= 100
 obs_face_s0_e3_j4: - obstacle_slack + 100 alpha[0,3,4] <= 100
 obs_alpha_sum_s0_j5: alpha[0,0,5] + alpha[0,1,5] + alpha[0,2,5]
   + alpha[0,3,5] >= 0
 obs_face_s0_e0_j5: - obstacle_slack + 100 alpha[0,0,5] <= 100
 obs_face_s0_e1_j5: - obstacle_slack + 100 alpha[0,1,5] <= 100
 obs_face_s0_e2_j5: - obstacle_slack + 100 alpha[0,2,5] <= 100
 obs_face_s0_e3_j5: - obstacle_slack + 100 alpha[0,3,5] <= 100
 obs_alpha_sum_s0_j6: alpha[0,0,6] + alpha[0,1,6] + alpha[0,2,6]
   + alpha[0,3,6] >= 0
 obs_face_s0_e0_j6: - obstacle_slack + 100 alpha[0,0,6] <= 100
 obs_face_s0_e1_j6: - obstacle_slack + 100 alpha[0,1,6] <= 100
 obs_face_s0_e2_j6: - obstacle_slack + 100 alpha[0,2,6] <= 100
 obs_face_s0_e3_j6: - obstacle_slack + 100 alpha[0,3,6] <= 100
 obs_alpha_sum_s0_j7: alpha[0,0,7] + alpha[0,1,7] + alpha[0,2,7]
   + alpha[0,3,7] >= 0
 obs_face_s0_e0_j7: - obstacle_slack + 100 alpha[0,0,7] <= 100
 obs_face_s0_e1_j7: - obstacle_slack + 100 alpha[0,1,7] <= 100
 obs_face_s0_e2_j7: - obstacle_slack + 100 alpha[0,2,7] <= 100
 obs_face_s0_e3_j7: - obstacle_slack + 100 alpha[0,3,7] <= 100
 obs_alpha_sum_s0_j8: alpha[0,0,8] + alpha[0,1,8] + alpha[0,2,8]
   + alpha[0,3,8] >= 0
 obs_face_s0_e0_j8: - obstacle_slack + 100 alpha[0,0,8] <= 100
 obs_face_s0_e1_j8: - obstacle_slack + 100 alpha[0,1,8] <= 100
 obs_face_s0_e2_j8: - obstacle_slack + 100 alpha[0,2,8] <= 100
 obs_face_s0_e3_j8: - obstacle_slack + 100 alpha[0,3,8] <= 100
 obs_alpha_sum_s0_j9: alpha[0,0,9] + alpha[0,1,9] + alpha[0,2,9]
   + alpha[0,3,9] >= 0
 obs_face_s0_e0_j9: - obstacle_slack + 100 alpha[0,0,9] <= 100
 obs_face_s0_e1_j9: - obstacle_slack + 100 alpha[0,1,9] <= 100
 obs_face_s0_e2_j9: - obstacle_slack + 100 alpha[0,2,9] <= 100
 obs_face_s0_e3_j9: - obstacle_slack + 100 alpha[0,3,9] <= 100
 obs_alpha_sum_s0_j10: alpha[0,0,10] + alpha[0,1,10] + alpha[0,2,10]
   + alpha[0,3,10] >= 0
 obs_face_s0_e0_j10: - obstacle_slack + 100 alpha[0,0,10] <= 100
 obs_face_s0_e1_j10: - obstacle_slack + 100 alpha[0,1,10] <= 100
 obs_face_s0_e2_j10: - obstacle_slack + 100 alpha[0,2,10] <= 100
 obs_face_s0_e3_j10: - obstacle_slack + 100 alpha[0,3,10] <= 100
 obs_alpha_sum_s0_j11: alpha[0,0,11] + alpha[0,1,11] + alpha[0,2,11]
   + alpha[0,3,11] >= 0
 obs_face_s0_e0_j11: - obstacle_slack + 100 alpha[0,0,11] <= 100
 obs_face_s0_e1_j11: - obstacle_slack + 100 alpha[0,1,11] <= 100
 obs_face_s0_e2_j11: - obstacle_slack + 100 alpha[0,2,11] <= 100
 obs_face_s0_e3_j11: - obstacle_slack + 100 alpha[0,3,11] <= 100
 obs_alpha_sum_s0_j12: alpha[0,0,12] + alpha[0,1,12] + alpha[0,2,12]
   + alpha[0,3,12] >= 0
 obs_face_s0_e0_j12: - obstacle_slack + 100 alpha[0,0,12] <= 100
 obs_face_s0_e1_j12: - obstacle_slack + 100 alpha[0,1,12] <= 100
 obs_face_s0_e2_j12: - obstacle_slack + 100 alpha[0,2,12] <= 100
 obs_face_s0_e3_j12: - obstacle_slack + 100 alpha[0,3,12] <= 100
 obs_alpha_sum_s0_j13: alpha[0,0,13] + alpha[0,1,13] + alpha[0,2,13]
   + alpha[0,3,13] >= 0
 obs_face_s0_e0_j13: - obstacle_slack + 100 alpha[0,0,13] <= 100
 obs_face_s0_e1_j13: - obstacle_slack + 100 alpha[0,1,13] <= 100
 obs_face_s0_e2_j13: - obstacle_slack + 100 alpha[0,2,13] <= 100
 obs_face_s0_e3_j13: - obstacle_slack + 100 alpha[0,3,13] <= 100
 obs_alpha_sum_s0_j14: alpha[0,0,14] + alpha[0,1,14] + alpha[0,2,14]
   + alpha[0,3,14] >= 0
 obs_face_s0_e0_j14: - obstacle_slack + 100 alpha[0,0,14] <= 100
 obs_face_s0_e1_j14: - obstacle_slack + 100 alpha[0,1,14] <= 100
 obs_face_s0_e2_j14: - obstacle_slack + 100 alpha[0,2,14] <= 100
 obs_face_s0_e3_j14: - obstacle_slack + 100 alpha[0,3,14] <= 100
 obs_alpha_sum_s0_j15: alpha[0,0,15] + alpha[0,1,15] + alpha[0,2,15]
   + alpha[0,3,15] >= 0
 obs_face_s0_e0_j15: - obstacle_slack + 100 alpha[0,0,15] <= 100
 obs_face_s0_e1_j15: - obstacle_slack + 100 alpha[0,1,15] <= 100
 obs_face_s0_e2_j15: - obstacle_slack + 100 alpha[0,2,15] <= 100
 obs_face_s0_e3_j15: - obstacle_slack + 100 alpha[0,3,15] <= 100
 obs_alpha_sum_s0_j16: alpha[0,0,16] + alpha[0,1,16] + alpha[0,2,16]
   + alpha[0,3,16] >= 0
 obs_face_s0_e0_j16: - obstacle_slack + 100 alpha[0,0,16] <= 100
 obs_face_s0_e1_j16: - obstacle_slack + 100 alpha[0,1,16] <= 100
 obs_face_s0_e2_j16: - obstacle_slack + 100 alpha[0,2,16] <= 100
 obs_face_s0_e3_j16: - obstacle_slack + 100 alpha[0,3,16] <= 100
 obs_alpha_sum_s0_j17: alpha[0,0,17] + alpha[0,1,17] + alpha[0,2,17]
   + alpha[0,3,17] >= 0
 obs_face_s0_e0_j17: - obstacle_slack + 100 alpha[0,0,17] <= 100
 obs_face_s0_e1_j17: - obstacle_slack + 100 alpha[0,1,17] <= 100
 obs_face_s0_e2_j17: - obstacle_slack + 100 alpha[0,2,17] <= 100
 obs_face_s0_e3_j17: - obstacle_slack + 100 alpha[0,3,17] <= 100
 obs_alpha_sum_s0_j18: alpha[0,0,18] + alpha[0,1,18] + alpha[0,2,18]
   + alpha[0,3,18] >= 0
 obs_face_s0_e0_j18: - obstacle_slack + 100 alpha[0,0,18] <= 100
 obs_face_s0_e1_j18: - obstacle_slack + 100 alpha[0,1,18] <= 100
 obs_face_s0_e2_j18: - obstacle_slack + 100 alpha[0,2,18] <= 100
 obs_face_s0_e3_j18: - obstacle_slack + 100 alpha[0,3,18] <= 100
 obs_alpha_sum_s0_j19: alpha[0,0,19] + alpha[0,1,19] + alpha[0,2,19]
   + alpha[0,3,19] >= 0
 obs_face_s0_e0_j19: - obstacle_slack + 100 alpha[0,0,19] <= 100
 obs_face_s0_e1_j19: - obstacle_slack + 100 alpha[0,1,19] <= 100
 obs_face_s0_e2_j19: - obstacle_slack + 100 alpha[0,2,19] <= 100
 obs_face_s0_e3_j19: - obstacle_slack + 100 alpha[0,3,19] <= 100
 obs_alpha_sum_s0_j20: alpha[0,0,20] + alpha[0,1,20] + alpha[0,2,20]
   + alpha[0,3,20] >= 0
 obs_face_s0_e0_j20: - obstacle_slack + 100 alpha[0,0,20] <= 100
 obs_face_s0_e1_j20: - obstacle_slack + 100 alpha[0,1,20] <= 100
 obs_face_s0_e2_j20: - obstacle_slack + 100 alpha[0,2,20] <= 100
 obs_face_s0_e3_j20: - obstacle_slack + 100 alpha[0,3,20] <= 100
 obs_alpha_sum_s0_j21: alpha[0,0,21] + alpha[0,1,21] + alpha[0,2,21]
   + alpha[0,3,21] >= 0
 obs_face_s0_e0_j21: - obstacle_slack + 100 alpha[0,0,21] <= 100
 obs_face_s0_e1_j21: - obstacle_slack + 100 alpha[0,1,21] <= 100
 obs_face_s0_e2_j21: - obstacle_slack + 100 alpha[0,2,21] <= 100
 obs_face_s0_e3_j21: - obstacle_slack + 100 alpha[0,3,21] <= 100
 obs_alpha_sum_s0_j22: alpha[0,0,22] + alpha[0,1,22] + alpha[0,2,22]
   + alpha[0,3,22] >= 0
 obs_face_s0_e0_j22: - obstacle_slack + 100 alpha[0,0,22] <= 100
 obs_face_s0_e1_j22: - obstacle_slack + 100 alpha[0,1,22] <= 100
 obs_face_s0_e2_j22: - obstacle_slack + 100 alpha[0,2,22] <= 100
 obs_face_s0_e3_j22: - obstacle_slack + 100 alpha[0,3,22] <= 100
 obs_alpha_sum_s0_j23: alpha[0,0,23] + alpha[0,1,23] + alpha[0,2,23]
   + alpha[0,3,23] >= 0
 obs_face_s0_e0_j23: - obstacle_slack + 100 alpha[0,0,23] <= 100
 obs_face_s0_e1_j23: - obstacle_slack + 100 alpha[0,1,23] <= 100
 obs_face_s0_e2_j23: - obstacle_slack + 100 alpha[0,2,23] <= 100
 obs_face_s0_e3_j23: - obstacle_slack + 100 alpha[0,3,23] <= 100
 obs_alpha_sum_s0_j24: alpha[0,0,24] + alpha[0,1,24] + alpha[0,2,24]
   + alpha[0,3,24] >= 0
 obs_face_s0_e0_j24: - obstacle_slack + 100 alpha[0,0,24] <= 100
 obs_face_s0_e1_j24: - obstacle_slack + 100 alpha[0,1,24] <= 100
 obs_face_s0_e2_j24: - obstacle_slack + 100 alpha[0,2,24] <= 100
 obs_face_s0_e3_j24: - obstacle_slack + 100 alpha[0,3,24] <= 100
 obs_alpha_sum_s0_j25: alpha[0,0,25] + alpha[0,1,25] + alpha[0,2,25]
   + alpha[0,3,25] >= 0
 obs_face_s0_e0_j25: - obstacle_slack + 100 alpha[0,0,25] <= 100
 obs_face_s0_e1_j25: - obstacle_slack + 100 alpha[0,1,25] <= 100
 obs_face_s0_e2_j25: - obstacle_slack + 100 alpha[0,2,25] <= 100
 obs_face_s0_e3_j25: - obstacle_slack + 100 alpha[0,3,25] <= 100
 obs_alpha_sum_s0_j26: alpha[0,0,26] + alpha[0,1,26] + alpha[0,2,26]
   + alpha[0,3,26] >= 0
 obs_face_s0_e0_j26: - obstacle_slack + 100 alpha[0,0,26] <= 100
 obs_face_s0_e1_j26: - obstacle_slack + 100 alpha[0,1,26] <= 100
 obs_face_s0_e2_j26: - obstacle_slack + 100 alpha[0,2,26] <= 100
 obs_face_s0_e3_j26: - obstacle_slack + 100 alpha[0,3,26] <= 100
 obs_alpha_sum_s0_j27: alpha[0,0,27] + alpha[0,1,27] + alpha[0,2,27]
   + alpha[0,3,27] >= 0
 obs_face_s0_e0_j27: - obstacle_slack + 100 alpha[0,0,27] <= 100
 obs_face_s0_e1_j27: - obstacle_slack + 100 alpha[0,1,27] <= 100
 obs_face_s0_e2_j27: - obstacle_slack + 100 alpha[0,2,27] <= 100
 obs_face_s0_e3_j27: - obstacle_slack + 100 alpha[0,3,27] <= 100
 obs_alpha_sum_s0_j28: alpha[0,0,28] + alpha[0,1,28] + alpha[0,2,28]
   + alpha[0,3,28] >= 0
 obs_face_s0_e0_j28: - obstacle_slack + 100 alpha[0,0,28] <= 100
 obs_face_s0_e1_j28: - obstacle_slack + 100 alpha[0,1,28] <= 100
 obs_face_s0_e2_j28: - obstacle_slack + 100 alpha[0,2,28] <= 100
 obs_face_s0_e3_j28: - obstacle_slack + 100 alpha[0,3,28] <= 100
 obs_alpha_sum_s0_j29: alpha[0,0,29] + alpha[0,1,29] + alpha[0,2,29]
   + alpha[0,3,29] >= 0
 obs_face_s0_e0_j29: - obstacle_slack + 100 alpha[0,0,29] <= 100
 obs_face_s0_e1_j29: - obstacle_slack + 100 alpha[0,1,29] <= 100
 obs_face_s0_e2_j29: - obstacle_slack + 100 alpha[0,2,29] <= 100
 obs_face_s0_e3_j29: - obstacle_slack + 100 alpha[0,3,29] <= 100
 obs_alpha_sum_s1_j0: alpha[1,0,0] + alpha[1,1,0] + alpha[1,2,0]
   + alpha[1,3,0] >= 0
 obs_face_s1_e0_j0: - obstacle_slack + 100 alpha[1,0,0] <= 100
 obs_face_s1_e1_j0: - obstacle_slack + 100 alpha[1,1,0] <= 100
 obs_face_s1_e2_j0: - obstacle_slack + 100 alpha[1,2,0] <= 100
 obs_face_s1_e3_j0: - obstacle_slack + 100 alpha[1,3,0] <= 100
 obs_alpha_sum_s1_j1: alpha[1,0,1] + alpha[1,1,1] + alpha[1,2,1]
   + alpha[1,3,1] >= 0
 obs_face_s1_e0_j1: - obstacle_slack + 100 alpha[1,0,1] <= 100
 obs_face_s1_e1_j1: - obstacle_slack + 100 alpha[1,1,1] <= 100
 obs_face_s1_e2_j1: - obstacle_slack + 100 alpha[1,2,1] <= 100
 obs_face_s1_e3_j1: - obstacle_slack + 100 alpha[1,3,1] <= 100
 obs_alpha_sum_s1_j2: alpha[1,0,2] + alpha[1,1,2] + alpha[1,2,2]
   + alpha[1,3,2] >= 0
 obs_face_s1_e0_j2: - obstacle_slack + 100 alpha[1,0,2] <= 100
 obs_face_s1_e1_j2: - obstacle_slack + 100 alpha[1,1,2] <= 100
 obs_face_s1_e2_j2: - obstacle_slack + 100 alpha[1,2,2] <= 100
 obs_face_s1_e3_j2: - obstacle_slack + 100 alpha[1,3,2] <= 100
 obs_alpha_sum_s1_j3: alpha[1,0,3] + alpha[1,1,3] + alpha[1,2,3]
   + alpha[1,3,3] >= 0
 obs_face_s1_e0_j3: - obstacle_slack + 100 alpha[1,0,3] <= 100
 obs_face_s1_e1_j3: - obstacle_slack + 100 alpha[1,1,3] <= 100
 obs_face_s1_e2_j3: - obstacle_slack + 100 alpha[1,2,3] <= 100
 obs_face_s1_e3_j3: - obstacle_slack + 100 alpha[1,3,3] <= 100
 obs_alpha_sum_s1_j4: alpha[1,0,4] + alpha[1,1,4] + alpha[1,2,4]
   + alpha[1,3,4] >= 0
 obs_face_s1_e0_j4: - obstacle_slack + 100 alpha[1,0,4] <= 100
 obs_face_s1_e1_j4: - obstacle_slack + 100 alpha[1,1,4] <= 100
 obs_face_s1_e2_j4: - obstacle_slack + 100 alpha[1,2,4] <= 100
 obs_face_s1_e3_j4: - obstacle_slack + 100 alpha[1,3,4] <= 100
 obs_alpha_sum_s1_j5: alpha[1,0,5] + alpha[1,1,5] + alpha[1,2,5]
   + alpha[1,3,5] >= 0
 obs_face_s1_e0_j5: - obstacle_slack + 100 alpha[1,0,5] <= 100
 obs_face_s1_e1_j5: - obstacle_slack + 100 alpha[1,1,5] <= 100
 obs_face_s1_e2_j5: - obstacle_slack + 100 alpha[1,2,5] <= 100
 obs_face_s1_e3_j5: - obstacle_slack + 100 alpha[1,3,5] <= 100
 obs_alpha_sum_s1_j6: alpha[1,0,6] + alpha[1,1,6] + alpha[1,2,6]
   + alpha[1,3,6] >= 0
 obs_face_s1_e0_j6: - obstacle_slack + 100 alpha[1,0,6] <= 100
 obs_face_s1_e1_j6: - obstacle_slack + 100 alpha[1,1,6] <= 100
 obs_face_s1_e2_j6: - obstacle_slack + 100 alpha[1,2,6] <= 100
 obs_face_s1_e3_j6: - obstacle_slack + 100 alpha[1,3,6] <= 100
 obs_alpha_sum_s1_j7: alpha[1,0,7] + alpha[1,1,7] + alpha[1,2,7]
   + alpha[1,3,7] >= 0
 obs_face_s1_e0_j7: - obstacle_slack + 100 alpha[1,0,7] <= 100
 obs_face_s1_e1_j7: - obstacle_slack + 100 alpha[1,1,7] <= 100
 obs_face_s1_e2_j7: - obstacle_slack + 100 alpha[1,2,7] <= 100
 obs_face_s1_e3_j7: - obstacle_slack + 100 alpha[1,3,7] <= 100
 obs_alpha_sum_s1_j8: alpha[1,0,8] + alpha[1,1,8] + alpha[1,2,8]
   + alpha[1,3,8] >= 0
 obs_face_s1_e0_j8: - obstacle_slack + 100 alpha[1,0,8] <= 100
 obs_face_s1_e1_j8: - obstacle_slack + 100 alpha[1,1,8] <= 100
 obs_face_s1_e2_j8: - obstacle_slack + 100 alpha[1,2,8] <= 100
 obs_face_s1_e3_j8: - obstacle_slack + 100 alpha[1,3,8] <= 100
 obs_alpha_sum_s1_j9: alpha[1,0,9] + alpha[1,1,9] + alpha[1,2,9]
   + alpha[1,3,9] >= 0
 obs_face_s1_e0_j9: - obstacle_slack + 100 alpha[1,0,9] <= 100
 obs_face_s1_e1_j9: - obstacle_slack + 100 alpha[1,1,9] <= 100
 obs_face_s1_e2_j9: - obstacle_slack + 100 alpha[1,2,9] <= 100
 obs_face_s1_e3_j9: - obstacle_slack + 100 alpha[1,3,9] <= 100
 obs_alpha_sum_s1_j10: alpha[1,0,10] + alpha[1,1,10] + alpha[1,2,10]
   + alpha[1,3,10] >= 0
 obs_face_s1_e0_j10: - obstacle_slack + 100 alpha[1,0,10] <= 100
 obs_face_s1_e1_j10: - obstacle_slack + 100 alpha[1,1,10] <= 100
 obs_face_s1_e2_j10: - obstacle_slack + 100 alpha[1,2,10] <= 100
 obs_face_s1_e3_j10: - obstacle_slack + 100 alpha[1,3,10] <= 100
 obs_alpha_sum_s1_j11: alpha[1,0,11] + alpha[1,1,11] + alpha[1,2,11]
   + alpha[1,3,11] >= 0
 obs_face_s1_e0_j11: - obstacle_slack + 100 alpha[1,0,11] <= 100
 obs_face_s1_e1_j11: - obstacle_slack + 100 alpha[1,1,11] <= 100
 obs_face_s1_e2_j11: - obstacle_slack + 100 alpha[1,2,11] <= 100
 obs_face_s1_e3_j11: - obstacle_slack + 100 alpha[1,3,11] <= 100
 obs_alpha_sum_s1_j12: alpha[1,0,12] + alpha[1,1,12] + alpha[1,2,12]
   + alpha[1,3,12] >= 0
 obs_face_s1_e0_j12: - obstacle_slack + 100 alpha[1,0,12] <= 100
 obs_face_s1_e1_j12: - obstacle_slack + 100 alpha[1,1,12] <= 100
 obs_face_s1_e2_j12: - obstacle_slack + 100 alpha[1,2,12] <= 100
 obs_face_s1_e3_j12: - obstacle_slack + 100 alpha[1,3,12] <= 100
 obs_alpha_sum_s1_j13: alpha[1,0,13] + alpha[1,1,13] + alpha[1,2,13]
   + alpha[1,3,13] >= 0
 obs_face_s1_e0_j13: - obstacle_slack + 100 alpha[1,0,13] <= 100
 obs_face_s1_e1_j13: - obstacle_slack + 100 alpha[1,1,13] <= 100
 obs_face_s1_e2_j13: - obstacle_slack + 100 alpha[1,2,13] <= 100
 obs_face_s1_e3_j13: - obstacle_slack + 100 alpha[1,3,13] <= 100
 obs_alpha_sum_s1_j14: alpha[1,0,14] + alpha[1,1,14] + alpha[1,2,14]
   + alpha[1,3,14] >= 0
 obs_face_s1_e0_j14: - obstacle_slack + 100 alpha[1,0,14] <= 100
 obs_face_s1_e1_j14: - obstacle_slack + 100 alpha[1,1,14] <= 100
 obs_face_s1_e2_j14: - obstacle_slack + 100 alpha[1,2,14] <= 100
 obs_face_s1_e3_j14: - obstacle_slack + 100 alpha[1,3,14] <= 100
 obs_alpha_sum_s1_j15: alpha[1,0,15] + alpha[1,1,15] + alpha[1,2,15]
   + alpha[1,3,15] >= 0
 obs_face_s1_e0_j15: - obstacle_slack + 100 alpha[1,0,15] <= 100
 obs_face_s1_e1_j15: - obstacle_slack + 100 alpha[1,1,15] <= 100
 obs_face_s1_e2_j15: - obstacle_slack + 100 alpha[1,2,15] <= 100
 obs_face_s1_e3_j15: - obstacle_slack + 100 alpha[1,3,15] <= 100
 obs_alpha_sum_s1_j16: alpha[1,0,16] + alpha[1,1,16] + alpha[1,2,16]
   + alpha[1,3,16] >= 0
 obs_face_s1_e0_j16: - obstacle_slack + 100 alpha[1,0,16] <= 100
 obs_face_s1_e1_j16: - obstacle_slack + 100 alpha[1,1,16] <= 100
 obs_face_s1_e2_j16: - obstacle_slack + 100 alpha[1,2,16] <= 100
 obs_face_s1_e3_j16: - obstacle_slack + 100 alpha[1,3,16] <= 100
 obs_alpha_sum_s1_j17: alpha[1,0,17] + alpha[1,1,17] + alpha[1,2,17]
   + alpha[1,3,17] >= 0
 obs_face_s1_e0_j17: - obstacle_slack + 100 alpha[1,0,17] <= 100
 obs_face_s1_e1_j17: - obstacle_slack + 100 alpha[1,1,17] <= 100
 obs_face_s1_e2_j17: - obstacle_slack + 100 alpha[1,2,17] <= 100
 obs_face_s1_e3_j17: - obstacle_slack + 100 alpha[1,3,17] <= 100
 obs_alpha_sum_s1_j18: alpha[1,0,18] + alpha[1,1,18] + alpha[1,2,18]
   + alpha[1,3,18] >= 0
 obs_face_s1_e0_j18: - obstacle_slack + 100 alpha[1,0,18] <= 100
 obs_face_s1_e1_j18: - obstacle_slack + 100 alpha[1,1,18] <= 100
 obs_face_s1_e2_j18: - obstacle_slack + 100 alpha[1,2,18] <= 100
 obs_face_s1_e3_j18: - obstacle_slack + 100 alpha[1,3,18] <= 100
 obs_alpha_sum_s1_j19: alpha[1,0,19] + alpha[1,1,19] + alpha[1,2,19]
   + alpha[1,3,19] >= 0
 obs_face_s1_e0_j19: - obstacle_slack + 100 alpha[1,0,19] <= 100
 obs_face_s1_e1_j19: - obstacle_slack + 100 alpha[1,1,19] <= 100
 obs_face_s1_e2_j19: - obstacle_slack + 100 alpha[1,2,19] <= 100
 obs_face_s1_e3_j19: - obstacle_slack + 100 alpha[1,3,19] <= 100
 obs_alpha_sum_s1_j20: alpha[1,0,20] + alpha[1,1,20] + alpha[1,2,20]
   + alpha[1,3,20] >= 0
 obs_face_s1_e0_j20: - obstacle_slack + 100 alpha[1,0,20] <= 100
 obs_face_s1_e1_j20: - obstacle_slack + 100 alpha[1,1,20] <= 100
 obs_face_s1_e2_j20: - obstacle_slack + 100 alpha[1,2,20] <= 100
 obs_face_s1_e3_j20: - obstacle_slack + 100 alpha[1,3,20] <= 100
 obs_alpha_sum_s1_j21: alpha[1,0,21] + alpha[1,1,21] + alpha[1,2,21]
   + alpha[1,3,21] >= 0
 obs_face_s1_e0_j21: - obstacle_slack + 100 alpha[1,0,21] <= 100
 obs_face_s1_e1_j21: - obstacle_slack + 100 alpha[1,1,21] <= 100
 obs_face_s1_e2_j21: - obstacle_slack + 100 alpha[1,2,21] <= 100
 obs_face_s1_e3_j21: - obstacle_slack + 100 alpha[1,3,21] <= 100
 obs_alpha_sum_s1_j22: alpha[1,0,22] + alpha[1,1,22] + alpha[1,2,22]
   + alpha[1,3,22] >= 0
 obs_face_s1_e0_j22: - obstacle_slack + 100 alpha[1,0,22] <= 100
 obs_face_s1_e1_j22: - obstacle_slack + 100 alpha[1,1,22] <= 100
 obs_face_s1_e2_j22: - obstacle_slack + 100 alpha[1,2,22] <= 100
 obs_face_s1_e3_j22: - obstacle_slack + 100 alpha[1,3,22] <= 100
 obs_alpha_sum_s1_j23: alpha[1,0,23] + alpha[1,1,23] + alpha[1,2,23]
   + alpha[1,3,23] >= 0
 obs_face_s1_e0_j23: - obstacle_slack + 100 alpha[1,0,23] <= 100
 obs_face_s1_e1_j23: - obstacle_slack + 100 alpha[1,1,23] <= 100
 obs_face_s1_e2_j23: - obstacle_slack + 100 alpha[1,2,23] <= 100
 obs_face_s1_e3_j23: - obstacle_slack + 100 alpha[1,3,23] <= 100
 obs_alpha_sum_s1_j24: alpha[1,0,24] + alpha[1,1,24] + alpha[1,2,24]
   + alpha[1,3,24] >= 0
 obs_face_s1_e0_j24: - obstacle_slack + 100 alpha[1,0,24] <= 100
 obs_face_s1_e1_j24: - obstacle_slack + 100 alpha[1,1,24] <= 100
 obs_face_s1_e2_j24: - obstacle_slack + 100 alpha[1,2,24] <= 100
 obs_face_s1_e3_j24: - obstacle_slack + 100 alpha[1,3,24] <= 100
 obs_alpha_sum_s1_j25: alpha[1,0,25] + alpha[1,1,25] + alpha[1,2,25]
   + alpha[1,3,25] >= 0
 obs_face_s1_e0_j25: - obstacle_slack + 100 alpha[1,0,25] <= 100
 obs_face_s1_e1_j25: - obstacle_slack + 100 alpha[1,1,25] <= 100
 obs_face_s1_e2_j25: - obstacle_slack + 100 alpha[1,2,25] <= 100
 obs_face_s1_e3_j25: - obstacle_slack + 100 alpha[1,3,25] <= 100
 obs_alpha_sum_s1_j26: alpha[1,0,26] + alpha[1,1,26] + alpha[1,2,26]
   + alpha[1,3,26] >= 0
 obs_face_s1_e0_j26: - obstacle_slack + 100 alpha[1,0,26] <= 100
 obs_face_s1_e1_j26: - obstacle_slack + 100 alpha[1,1,26] <= 100
 obs_face_s1_e2_j26: - obstacle_slack + 100 alpha[1,2,26] <= 100
 obs_face_s1_e3_j26: - obstacle_slack + 100 alpha[1,3,26] <= 100
 obs_alpha_sum_s1_j27: alpha[1,0,27] + alpha[1,1,27] + alpha[1,2,27]
   + alpha[1,3,27] >= 0
 obs_face_s1_e0_j27: - obstacle_slack + 100 alpha[1,0,27] <= 100
 obs_face_s1_e1_j27: - obstacle_slack + 100 alpha[1,1,27] <= 100
 obs_face_s1_e2_j27: - obstacle_slack + 100 alpha[1,2,27] <= 100
 obs_face_s1_e3_j27: - obstacle_slack + 100 alpha[1,3,27] <= 100
 obs_alpha_sum_s1_j28: alpha[1,0,28] + alpha[1,1,28] + alpha[1,2,28]
   + alpha[1,3,28] >= 0
 obs_face_s1_e0_j28: - obstacle_slack + 100 alpha[1,0,28] <= 100
 obs_face_s1_e1_j28: - obstacle_slack + 100 alpha[1,1,28] <= 100
 obs_face_s1_e2_j28: - obstacle_slack + 100 alpha[1,2,28] <= 100
 obs_face_s1_e3_j28: - obstacle_slack + 100 alpha[1,3,28] <= 100
 obs_alpha_sum_s1_j29: alpha[1,0,29] + alpha[1,1,29] + alpha[1,2,29]
   + alpha[1,3,29] >= 0
 obs_face_s1_e0_j29: - obstacle_slack + 100 alpha[1,0,29] <= 100
 obs_face_s1_e1_j29: - obstacle_slack + 100 alpha[1,1,29] <= 100
 obs_face_s1_e2_j29: - obstacle_slack + 100 alpha[1,2,29] <= 100
 obs_face_s1_e3_j29: - obstacle_slack + 100 alpha[1,3,29] <= 100
 obs_alpha_sum_s2_j0: alpha[2,0,0] + alpha[2,1,0] + alpha[2,2,0]
   + alpha[2,3,0] >= 0
 obs_face_s2_e0_j0: - obstacle_slack + 100 alpha[2,0,0] <= 100
 obs_face_s2_e1_j0: - obstacle_slack + 100 alpha[2,1,0] <= 100
 obs_face_s2_e2_j0: - obstacle_slack + 100 alpha[2,2,0] <= 100
 obs_face_s2_e3_j0: - obstacle_slack + 100 alpha[2,3,0] <= 100
 obs_alpha_sum_s2_j1: alpha[2,0,1] + alpha[2,1,1] + alpha[2,2,1]
   + alpha[2,3,1] >= 0
 obs_face_s2_e0_j1: - obstacle_slack + 100 alpha[2,0,1] <= 100
 obs_face_s2_e1_j1: - obstacle_slack + 100 alpha[2,1,1] <= 100
 obs_face_s2_e2_j1: - obstacle_slack + 100 alpha[2,2,1] <= 100
 obs_face_s2_e3_j1: - obstacle_slack + 100 alpha[2,3,1] <= 100
 obs_alpha_sum_s2_j2: alpha[2,0,2] + alpha[2,1,2] + alpha[2,2,2]
   + alpha[2,3,2] >= 0
 obs_face_s2_e0_j2: - obstacle_slack + 100 alpha[2,0,2] <= 100
 obs_face_s2_e1_j2: - obstacle_slack + 100 alpha[2,1,2] <= 100
 obs_face_s2_e2_j2: - obstacle_slack + 100 alpha[2,2,2] <= 100
 obs_face_s2_e3_j2: - obstacle_slack + 100 alpha[2,3,2] <= 100
 obs_alpha_sum_s2_j3: alpha[2,0,3] + alpha[2,1,3] + alpha[2,2,3]
   + alpha[2,3,3] >= 0
 obs_face_s2_e0_j3: - obstacle_slack + 100 alpha[2,0,3] <= 100
 obs_face_s2_e1_j3: - obstacle_slack + 100 alpha[2,1,3] <= 100
 obs_face_s2_e2_j3: - obstacle_slack + 100 alpha[2,2,3] <= 100
 obs_face_s2_e3_j3: - obstacle_slack + 100 alpha[2,3,3] <= 100
 obs_alpha_sum_s2_j4: alpha[2,0,4] + alpha[2,1,4] + alpha[2,2,4]
   + alpha[2,3,4] >= 0
 obs_face_s2_e0_j4: - obstacle_slack + 100 alpha[2,0,4] <= 100
 obs_face_s2_e1_j4: - obstacle_slack + 100 alpha[2,1,4] <= 100
 obs_face_s2_e2_j4: - obstacle_slack + 100 alpha[2,2,4] <= 100
 obs_face_s2_e3_j4: - obstacle_slack + 100 alpha[2,3,4] <= 100
 obs_alpha_sum_s2_j5: alpha[2,0,5] + alpha[2,1,5] + alpha[2,2,5]
   + alpha[2,3,5] >= 0
 obs_face_s2_e0_j5: - obstacle_slack + 100 alpha[2,0,5] <= 100
 obs_face_s2_e1_j5: - obstacle_slack + 100 alpha[2,1,5] <= 100
 obs_face_s2_e2_j5: - obstacle_slack + 100 alpha[2,2,5] <= 100
 obs_face_s2_e3_j5: - obstacle_slack + 100 alpha[2,3,5] <= 100
 obs_alpha_sum_s2_j6: alpha[2,0,6] + alpha[2,1,6] + alpha[2,2,6]
   + alpha[2,3,6] >= 0
 obs_face_s2_e0_j6: - obstacle_slack + 100 alpha[2,0,6] <= 100
 obs_face_s2_e1_j6: - obstacle_slack + 100 alpha[2,1,6] <= 100
 obs_face_s2_e2_j6: - obstacle_slack + 100 alpha[2,2,6] <= 100
 obs_face_s2_e3_j6: - obstacle_slack + 100 alpha[2,3,6] <= 100
 obs_alpha_sum_s2_j7: alpha[2,0,7] + alpha[2,1,7] + alpha[2,2,7]
   + alpha[2,3,7] >= 0
 obs_face_s2_e0_j7: - obstacle_slack + 100 alpha[2,0,7] <= 100
 obs_face_s2_e1_j7: - obstacle_slack + 100 alpha[2,1,7] <= 100
 obs_face_s2_e2_j7: - obstacle_slack + 100 alpha[2,2,7] <= 100
 obs_face_s2_e3_j7: - obstacle_slack + 100 alpha[2,3,7] <= 100
 obs_alpha_sum_s2_j8: alpha[2,0,8] + alpha[2,1,8] + alpha[2,2,8]
   + alpha[2,3,8] >= 0
 obs_face_s2_e0_j8: - obstacle_slack + 100 alpha[2,0,8] <= 100
 obs_face_s2_e1_j8: - obstacle_slack + 100 alpha[2,1,8] <= 100
 obs_face_s2_e2_j8: - obstacle_slack + 100 alpha[2,2,8] <= 100
 obs_face_s2_e3_j8: - obstacle_slack + 100 alpha[2,3,8] <= 100
 obs_alpha_sum_s2_j9: alpha[2,0,9] + alpha[2,1,9] + alpha[2,2,9]
   + alpha[2,3,9] >= 0
 obs_face_s2_e0_j9: - obstacle_slack + 100 alpha[2,0,9] <= 100
 obs_face_s2_e1_j9: - obstacle_slack + 100 alpha[2,1,9] <= 100
 obs_face_s2_e2_j9: - obstacle_slack + 100 alpha[2,2,9] <= 100
 obs_face_s2_e3_j9: - obstacle_slack + 100 alpha[2,3,9] <= 100
 obs_alpha_sum_s2_j10: alpha[2,0,10] + alpha[2,1,10] + alpha[2,2,10]
   + alpha[2,3,10] >= 0
 obs_face_s2_e0_j10: - obstacle_slack + 100 alpha[2,0,10] <= 100
 obs_face_s2_e1_j10: - obstacle_slack + 100 alpha[2,1,10] <= 100
 obs_face_s2_e2_j10: - obstacle_slack + 100 alpha[2,2,10] <= 100
 obs_face_s2_e3_j10: - obstacle_slack + 100 alpha[2,3,10] <= 100
 obs_alpha_sum_s2_j11: alpha[2,0,11] + alpha[2,1,11] + alpha[2,2,11]
   + alpha[2,3,11] >= 0
 obs_face_s2_e0_j11: - obstacle_slack + 100 alpha[2,0,11] <= 100
 obs_face_s2_e1_j11: - obstacle_slack + 100 alpha[2,1,11] <= 100
 obs_face_s2_e2_j11: - obstacle_slack + 100 alpha[2,2,11] <= 100
 obs_face_s2_e3_j11: - obstacle_slack + 100 alpha[2,3,11] <= 100
 obs_alpha_sum_s2_j12: alpha[2,0,12] + alpha[2,1,12] + alpha[2,2,12]
   + alpha[2,3,12] >= 0
 obs_face_s2_e0_j12: - obstacle_slack + 100 alpha[2,0,12] <= 100
 obs_face_s2_e1_j12: - obstacle_slack + 100 alpha[2,1,12] <= 100
 obs_face_s2_e2_j12: - obstacle_slack + 100 alpha[2,2,12] <= 100
 obs_face_s2_e3_j12: - obstacle_slack + 100 alpha[2,3,12] <= 100
 obs_alpha_sum_s2_j13: alpha[2,0,13] + alpha[2,1,13] + alpha[2,2,13]
   + alpha[2,3,13] >= 0
 obs_face_s2_e0_j13: - obstacle_slack + 100 alpha[2,0,13] <= 100
 obs_face_s2_e1_j13: - obstacle_slack + 100 alpha[2,1,13] <= 100
 obs_face_s2_e2_j13: - obstacle_slack + 100 alpha[2,2,13] <= 100
 obs_face_s2_e3_j13: - obstacle_slack + 100 alpha[2,3,13] <= 100
 obs_alpha_sum_s2_j14: alpha[2,0,14] + alpha[2,1,14] + alpha[2,2,14]
   + alpha[2,3,14] >= 0
 obs_face_s2_e0_j14: - obstacle_slack + 100 alpha[2,0,14] <= 100
 obs_face_s2_e1_j14: - obstacle_slack + 100 alpha[2,1,14] <= 100
 obs_face_s2_e2_j14: - obstacle_slack + 100 alpha[2,2,14] <= 100
 obs_face_s2_e3_j14: - obstacle_slack + 100 alpha[2,3,14] <= 100
 obs_alpha_sum_s2_j15: alpha[2,0,15] + alpha[2,1,15] + alpha[2,2,15]
   + alpha[2,3,15] >= 0
 obs_face_s2_e0_j15: - obstacle_slack + 100 alpha[2,0,15] <= 100
 obs_face_s2_e1_j15: - obstacle_slack + 100 alpha[2,1,15] <= 100
 obs_face_s2_e2_j15: - obstacle_slack + 100 alpha[2,2,15] <= 100
 obs_face_s2_e3_j15: - obstacle_slack + 100 alpha[2,3,15] <= 100
 obs_alpha_sum_s2_j16: alpha[2,0,16] + alpha[2,1,16] + alpha[2,2,16]
   + alpha[2,3,16] >= 0
 obs_face_s2_e0_j16: - obstacle_slack + 100 alpha[2,0,16] <= 100
 obs_face_s2_e1_j16: - obstacle_slack + 100 alpha[2,1,16] <= 100
 obs_face_s2_e2_j16: - obstacle_slack + 100 alpha[2,2,16] <= 100
 obs_face_s2_e3_j16: - obstacle_slack + 100 alpha[2,3,16] <= 100
 obs_alpha_sum_s2_j17: alpha[2,0,17] + alpha[2,1,17] + alpha[2,2,17]
   + alpha[2,3,17] >= 0
 obs_face_s2_e0_j17: - obstacle_slack + 100 alpha[2,0,17] <= 100
 obs_face_s2_e1_j17: - obstacle_slack + 100 alpha[2,1,17] <= 100
 obs_face_s2_e2_j17: - obstacle_slack + 100 alpha[2,2,17] <= 100
 obs_face_s2_e3_j17: - obstacle_slack + 100 alpha[2,3,17] <= 100
 obs_alpha_sum_s2_j18: alpha[2,0,18] + alpha[2,1,18] + alpha[2,2,18]
   + alpha[2,3,18] >= 0
 obs_face_s2_e0_j18: - obstacle_slack + 100 alpha[2,0,18] <= 100
 obs_face_s2_e1_j18: - obstacle_slack + 100 alpha[2,1,18] <= 100
 obs_face_s2_e2_j18: - obstacle_slack + 100 alpha[2,2,18] <= 100
 obs_face_s2_e3_j18: - obstacle_slack + 100 alpha[2,3,18] <= 100
 obs_alpha_sum_s2_j19: alpha[2,0,19] + alpha[2,1,19] + alpha[2,2,19]
   + alpha[2,3,19] >= 0
 obs_face_s2_e0_j19: - obstacle_slack + 100 alpha[2,0,19] <= 100
 obs_face_s2_e1_j19: - obstacle_slack + 100 alpha[2,1,19] <= 100
 obs_face_s2_e2_j19: - obstacle_slack + 100 alpha[2,2,19] <= 100
 obs_face_s2_e3_j19: - obstacle_slack + 100 alpha[2,3,19] <= 100
 obs_alpha_sum_s2_j20: alpha[2,0,20] + alpha[2,1,20] + alpha[2,2,20]
   + alpha[2,3,20] >= 0
 obs_face_s2_e0_j20: - obstacle_slack + 100 alpha[2,0,20] <= 100
 obs_face_s2_e1_j20: - obstacle_slack + 100 alpha[2,1,20] <= 100
 obs_face_s2_e2_j20: - obstacle_slack + 100 alpha[2,2,20] <= 100
 obs_face_s2_e3_j20: - obstacle_slack + 100 alpha[2,3,20] <= 100
 obs_alpha_sum_s2_j21: alpha[2,0,21] + alpha[2,1,21] + alpha[2,2,21]
   + alpha[2,3,21] >= 0
 obs_face_s2_e0_j21: - obstacle_slack + 100 alpha[2,0,21] <= 100
 obs_face_s2_e1_j21: - obstacle_slack + 100 alpha[2,1,21] <= 100
 obs_face_s2_e2_j21: - obstacle_slack + 100 alpha[2,2,21] <= 100
 obs_face_s2_e3_j21: - obstacle_slack + 100 alpha[2,3,21] <= 100
 obs_alpha_sum_s2_j22: alpha[2,0,22] + alpha[2,1,22] + alpha[2,2,22]
   + alpha[2,3,22] >= 0
 obs_face_s2_e0_j22: - obstacle_slack + 100 alpha[2,0,22] <= 100
 obs_face_s2_e1_j22: - obstacle_slack + 100 alpha[2,1,22] <= 100
 obs_face_s2_e2_j22: - obstacle_slack + 100 alpha[2,2,22] <= 100
 obs_face_s2_e3_j22: - obstacle_slack + 100 alpha[2,3,22] <= 100
 obs_alpha_sum_s2_j23: alpha[2,0,23] + alpha[2,1,23] + alpha[2,2,23]
   + alpha[2,3,23] >= 0
 obs_face_s2_e0_j23: - obstacle_slack + 100 alpha[2,0,23] <= 100
 obs_face_s2_e1_j23: - obstacle_slack + 100 alpha[2,1,23] <= 100
 obs_face_s2_e2_j23: - obstacle_slack + 100 alpha[2,2,23] <= 100
 obs_face_s2_e3_j23: - obstacle_slack + 100 alpha[2,3,23] <= 100
 obs_alpha_sum_s2_j24: alpha[2,0,24] + alpha[2,1,24] + alpha[2,2,24]
   + alpha[2,3,24] >= 0
 obs_face_s2_e0_j24: - obstacle_slack + 100 alpha[2,0,24] <= 100
 obs_face_s2_e1_j24: - obstacle_slack + 100 alpha[2,1,24] <= 100
 obs_face_s2_e2_j24: - obstacle_slack + 100 alpha[2,2,24] <= 100
 obs_face_s2_e3_j24: - obstacle_slack + 100 alpha[2,3,24] <= 100
 obs_alpha_sum_s2_j25: alpha[2,0,25] + alpha[2,1,25] + alpha[2,2,25]
   + alpha[2,3,25] >= 0
 obs_face_s2_e0_j25: - obstacle_slack + 100 alpha[2,0,25] <= 100
 obs_face_s2_e1_j25: - obstacle_slack + 100 alpha[2,1,25] <= 100
 obs_face_s2_e2_j25: - obstacle_slack + 100 alpha[2,2,25] <= 100
 obs_face_s2_e3_j25: - obstacle_slack + 100 alpha[2,3,25] <= 100
 obs_alpha_sum_s2_j26: alpha[2,0,26] + alpha[2,1,26] + alpha[2,2,26]
   + alpha[2,3,26] >= 0
 obs_face_s2_e0_j26: - obstacle_slack + 100 alpha[2,0,26] <= 100
 obs_face_s2_e1_j26: - obstacle_slack + 100 alpha[2,1,26] <= 100
 obs_face_s2_e2_j26: - obstacle_slack + 100 alpha[2,2,26] <= 100
 obs_face_s2_e3_j26: - obstacle_slack + 100 alpha[2,3,26] <= 100
 obs_alpha_sum_s2_j27: alpha[2,0,27] + alpha[2,1,27] + alpha[2,2,27]
   + alpha[2,3,27] >= 0
 obs_face_s2_e0_j27: - obstacle_slack + 100 alpha[2,0,27] <= 100
 obs_face_s2_e1_j27: - obstacle_slack + 100 alpha[2,1,27] <= 100
 obs_face_s2_e2_j27: - obstacle_slack + 100 alpha[2,2,27] <= 100
 obs_face_s2_e3_j27: - obstacle_slack + 100 alpha[2,3,27] <= 100
 obs_alpha_sum_s2_j28: alpha[2,0,28] + alpha[2,1,28] + alpha[2,2,28]
   + alpha[2,3,28] >= 0
 obs_face_s2_e0_j28: - obstacle_slack + 100 alpha[2,0,28] <= 100
 obs_face_s2_e1_j28: - obstacle_slack + 100 alpha[2,1,28] <= 100
 obs_face_s2_e2_j28: - obstacle_slack + 100 alpha[2,2,28] <= 100
 obs_face_s2_e3_j28: - obstacle_slack + 100 alpha[2,3,28] <= 100
 obs_alpha_sum_s2_j29: alpha[2,0,29] + alpha[2,1,29] + alpha[2,2,29]
   + alpha[2,3,29] >= 0
 obs_face_s2_e0_j29: - obstacle_slack + 100 alpha[2,0,29] <= 100
 obs_face_s2_e1_j29: - obstacle_slack + 100 alpha[2,1,29] <= 100
 obs_face_s2_e2_j29: - obstacle_slack + 100 alpha[2,2,29] <= 100
 obs_face_s2_e3_j29: - obstacle_slack + 100 alpha[2,3,29] <= 100
 obs_alpha_sum_s3_j0: alpha[3,0,0] + alpha[3,1,0] + alpha[3,2,0]
   + alpha[3,3,0] >= 0
 obs_face_s3_e0_j0: - obstacle_slack + 100 alpha[3,0,0] <= 100
 obs_face_s3_e1_j0: - obstacle_slack + 100 alpha[3,1,0] <= 100
 obs_face_s3_e2_j0: - obstacle_slack + 100 alpha[3,2,0] <= 100
 obs_face_s3_e3_j0: - obstacle_slack + 100 alpha[3,3,0] <= 100
 obs_alpha_sum_s3_j1: alpha[3,0,1] + alpha[3,1,1] + alpha[3,2,1]
   + alpha[3,3,1] >= 0
 obs_face_s3_e0_j1: - obstacle_slack + 100 alpha[3,0,1] <= 100
 obs_face_s3_e1_j1: - obstacle_slack + 100 alpha[3,1,1] <= 100
 obs_face_s3_e2_j1: - obstacle_slack + 100 alpha[3,2,1] <= 100
 obs_face_s3_e3_j1: - obstacle_slack + 100 alpha[3,3,1] <= 100
 obs_alpha_sum_s3_j2: alpha[3,0,2] + alpha[3,1,2] + alpha[3,2,2]
   + alpha[3,3,2] >= 0
 obs_face_s3_e0_j2: - obstacle_slack + 100 alpha[3,0,2] <= 100
 obs_face_s3_e1_j2: - obstacle_slack + 100 alpha[3,1,2] <= 100
 obs_face_s3_e2_j2: - obstacle_slack + 100 alpha[3,2,2] <= 100
 obs_face_s3_e3_j2: - obstacle_slack + 100 alpha[3,3,2] <= 100
 obs_alpha_sum_s3_j3: alpha[3,0,3] + alpha[3,1,3] + alpha[3,2,3]
   + alpha[3,3,3] >= 0
 obs_face_s3_e0_j3: - obstacle_slack + 100 alpha[3,0,3] <= 100
 obs_face_s3_e1_j3: - obstacle_slack + 100 alpha[3,1,3] <= 100
 obs_face_s3_e2_j3: - obstacle_slack + 100 alpha[3,2,3] <= 100
 obs_face_s3_e3_j3: - obstacle_slack + 100 alpha[3,3,3] <= 100
 obs_alpha_sum_s3_j4: alpha[3,0,4] + alpha[3,1,4] + alpha[3,2,4]
   + alpha[3,3,4] >= 0
 obs_face_s3_e0_j4: - obstacle_slack + 100 alpha[3,0,4] <= 100
 obs_face_s3_e1_j4: - obstacle_slack + 100 alpha[3,1,4] <= 100
 obs_face_s3_e2_j4: - obstacle_slack + 100 alpha[3,2,4] <= 100
 obs_face_s3_e3_j4: - obstacle_slack + 100 alpha[3,3,4] <= 100
 obs_alpha_sum_s3_j5: alpha[3,0,5] + alpha[3,1,5] + alpha[3,2,5]
   + alpha[3,3,5] >= 0
 obs_face_s3_e0_j5: - obstacle_slack + 100 alpha[3,0,5] <= 100
 obs_face_s3_e1_j5: - obstacle_slack + 100 alpha[3,1,5] <= 100
 obs_face_s3_e2_j5: - obstacle_slack + 100 alpha[3,2,5] <= 100
 obs_face_s3_e3_j5: - obstacle_slack + 100 alpha[3,3,5] <= 100
 obs_alpha_sum_s3_j6: alpha[3,0,6] + alpha[3,1,6] + alpha[3,2,6]
   + alpha[3,3,6] >= 0
 obs_face_s3_e0_j6: - obstacle_slack + 100 alpha[3,0,6] <= 100
 obs_face_s3_e1_j6: - obstacle_slack + 100 alpha[3,1,6] <= 100
 obs_face_s3_e2_j6: - obstacle_slack + 100 alpha[3,2,6] <= 100
 obs_face_s3_e3_j6: - obstacle_slack + 100 alpha[3,3,6] <= 100
 obs_alpha_sum_s3_j7: alpha[3,0,7] + alpha[3,1,7] + alpha[3,2,7]
   + alpha[3,3,7] >= 0
 obs_face_s3_e0_j7: - obstacle_slack + 100 alpha[3,0,7] <= 100
 obs_face_s3_e1_j7: - obstacle_slack + 100 alpha[3,1,7] <= 100
 obs_face_s3_e2_j7: - obstacle_slack + 100 alpha[3,2,7] <= 100
 obs_face_s3_e3_j7: - obstacle_slack + 100 alpha[3,3,7] <= 100
 obs_alpha_sum_s3_j8: alpha[3,0,8] + alpha[3,1,8] + alpha[3,2,8]
   + alpha[3,3,8] >= 0
 obs_face_s3_e0_j8: - obstacle_slack + 100 alpha[3,0,8] <= 100
 obs_face_s3_e1_j8: - obstacle_slack + 100 alpha[3,1,8] <= 100
 obs_face_s3_e2_j8: - obstacle_slack + 100 alpha[3,2,8] <= 100
 obs_face_s3_e3_j8: - obstacle_slack + 100 alpha[3,3,8] <= 100
 obs_alpha_sum_s3_j9: alpha[3,0,9] + alpha[3,1,9] + alpha[3,2,9]
   + alpha[3,3,9] >= 0
 obs_face_s3_e0_j9: - obstacle_slack + 100 alpha[3,0,9] <= 100
 obs_face_s3_e1_j9: - obstacle_slack + 100 alpha[3,1,9] <= 100
 obs_face_s3_e2_j9: - obstacle_slack + 100 alpha[3,2,9] <= 100
 obs_face_s3_e3_j9: - obstacle_slack + 100 alpha[3,3,9] <= 100
 obs_alpha_sum_s3_j10: alpha[3,0,10] + alpha[3,1,10] + alpha[3,2,10]
   + alpha[3,3,10] >= 0
 obs_face_s3_e0_j10: - obstacle_slack + 100 alpha[3,0,10] <= 100
 obs_face_s3_e1_j10: - obstacle_slack + 100 alpha[3,1,10] <= 100
 obs_face_s3_e2_j10: - obstacle_slack + 100 alpha[3,2,10] <= 100
 obs_face_s3_e3_j10: - obstacle_slack + 100 alpha[3,3,10] <= 100
 obs_alpha_sum_s3_j11: alpha[3,0,11] + alpha[3,1,11] + alpha[3,2,11]
   + alpha[3,3,11] >= 0
 obs_face_s3_e0_j11: - obstacle_slack + 100 alpha[3,0,11] <= 100
 obs_face_s3_e1_j11: - obstacle_slack + 100 alpha[3,1,11] <= 100
 obs_face_s3_e2_j11: - obstacle_slack + 100 alpha[3,2,11] <= 100
 obs_face_s3_e3_j11: - obstacle_slack + 100 alpha[3,3,11] <= 100
 obs_alpha_sum_s3_j12: alpha[3,0,12] + alpha[3,1,12] + alpha[3,2,12]
   + alpha[3,3,12] >= 0
 obs_face_s3_e0_j12: - obstacle_slack + 100 alpha[3,0,12] <= 100
 obs_face_s3_e1_j12: - obstacle_slack + 100 alpha[3,1,12] <= 100
 obs_face_s3_e2_j12: - obstacle_slack + 100 alpha[3,2,12] <= 100
 obs_face_s3_e3_j12: - obstacle_slack + 100 alpha[3,3,12] <= 100
 obs_alpha_sum_s3_j13: alpha[3,0,13] + alpha[3,1,13] + alpha[3,2,13]
   + alpha[3,3,13] >= 0
 obs_face_s3_e0_j13: - obstacle_slack + 100 alpha[3,0,13] <= 100
 obs_face_s3_e1_j13: - obstacle_slack + 100 alpha[3,1,13] <= 100
 obs_face_s3_e2_j13: - obstacle_slack + 100 alpha[3,2,13] <= 100
 obs_face_s3_e3_j13: - obstacle_slack + 100 alpha[3,3,13] <= 100
 obs_alpha_sum_s3_j14: alpha[3,0,14] + alpha[3,1,14] + alpha[3,2,14]
   + alpha[3,3,14] >= 0
 obs_face_s3_e0_j14: - obstacle_slack + 100 alpha[3,0,14] <= 100
 obs_face_s3_e1_j14: - obstacle_slack + 100 alpha[3,1,14] <= 100
 obs_face_s3_e2_j14: - obstacle_slack + 100 alpha[3,2,14] <= 100
 obs_face_s3_e3_j14: - obstacle_slack + 100 alpha[3,3,14] <= 100
 obs_alpha_sum_s3_j15: alpha[3,0,15] + alpha[3,1,15] + alpha[3,2,15]
   + alpha[3,3,15] >= 0
 obs_face_s3_e0_j15: - obstacle_slack + 100 alpha[3,0,15] <= 100
 obs_face_s3_e1_j15: - obstacle_slack + 100 alpha[3,1,15] <= 100
 obs_face_s3_e2_j15: - obstacle_slack + 100 alpha[3,2,15] <= 100
 obs_face_s3_e3_j15: - obstacle_slack + 100 alpha[3,3,15] <= 100
 obs_alpha_sum_s3_j16: alpha[3,0,16] + alpha[3,1,16] + alpha[3,2,16]
   + alpha[3,3,16] >= 0
 obs_face_s3_e0_j16: - obstacle_slack + 100 alpha[3,0,16] <= 100
 obs_face_s3_e1_j16: - obstacle_slack + 100 alpha[3,1,16] <= 100
 obs_face_s3_e2_j16: - obstacle_slack + 100 alpha[3,2,16] <= 100
 obs_face_s3_e3_j16: - obstacle_slack + 100 alpha[3,3,16] <= 100
 obs_alpha_sum_s3_j17: alpha[3,0,17] + alpha[3,1,17] + alpha[3,2,17]
   + alpha[3,3,17] >= 0
 obs_face_s3_e0_j17: - obstacle_slack + 100 alpha[3,0,17] <= 100
 obs_face_s3_e1_j17: - obstacle_slack + 100 alpha[3,1,17] <= 100
 obs_face_s3_e2_j17: - obstacle_slack + 100 alpha[3,2,17] <= 100
 obs_face_s3_e3_j17: - obstacle_slack + 100 alpha[3,3,17] <= 100
 obs_alpha_sum_s3_j18: alpha[3,0,18] + alpha[3,1,18] + alpha[3,2,18]
   + alpha[3,3,18] >= 0
 obs_face_s3_e0_j18: - obstacle_slack + 100 alpha[3,0,18] <= 100
 obs_face_s3_e1_j18: - obstacle_slack + 100 alpha[3,1,18] <= 100
 obs_face_s3_e2_j18: - obstacle_slack + 100 alpha[3,2,18] <= 100
 obs_face_s3_e3_j18: - obstacle_slack + 100 alpha[3,3,18] <= 100
 obs_alpha_sum_s3_j19: alpha[3,0,19] + alpha[3,1,19] + alpha[3,2,19]
   + alpha[3,3,19] >= 0
 obs_face_s3_e0_j19: - obstacle_slack + 100 alpha[3,0,19] <= 100
 obs_face_s3_e1_j19: - obstacle_slack + 100 alpha[3,1,19] <= 100
 obs_face_s3_e2_j19: - obstacle_slack + 100 alpha[3,2,19] <= 100
 obs_face_s3_e3_j19: - obstacle_slack + 100 alpha[3,3,19] <= 100
 obs_alpha_sum_s3_j20: alpha[3,0,20] + alpha[3,1,20] + alpha[3,2,20]
   + alpha[3,3,20] >= 0
 obs_face_s3_e0_j20: - obstacle_slack + 100 alpha[3,0,20] <= 100
 obs_face_s3_e1_j20: - obstacle_slack + 100 alpha[3,1,20] <= 100
 obs_face_s3_e2_j20: - obstacle_slack + 100 alpha[3,2,20] <= 100
 obs_face_s3_e3_j20: - obstacle_slack + 100 alpha[3,3,20] <= 100
 obs_alpha_sum_s3_j21: alpha[3,0,21] + alpha[3,1,21] + alpha[3,2,21]
   + alpha[3,3,21] >= 0
 obs_face_s3_e0_j21: - obstacle_slack + 100 alpha[3,0,21] <= 100
 obs_face_s3_e1_j21: - obstacle_slack + 100 alpha[3,1,21] <= 100
 obs_face_s3_e2_j21: - obstacle_slack + 100 alpha[3,2,21] <= 100
 obs_face_s3_e3_j21: - obstacle_slack + 100 alpha[3,3,21] <= 100
 obs_alpha_sum_s3_j22: alpha[3,0,22] + alpha[3,1,22] + alpha[3,2,22]
   + alpha[3,3,22] >= 0
 obs_face_s3_e0_j22: - obstacle_slack + 100 alpha[3,0,22] <= 100
 obs_face_s3_e1_j22: - obstacle_slack + 100 alpha[3,1,22] <= 100
 obs_face_s3_e2_j22: - obstacle_slack + 100 alpha[3,2,22] <= 100
 obs_face_s3_e3_j22: - obstacle_slack + 100 alpha[3,3,22] <= 100
 obs_alpha_sum_s3_j23: alpha[3,0,23] + alpha[3,1,23] + alpha[3,2,23]
   + alpha[3,3,23] >= 0
 obs_face_s3_e0_j23: - obstacle_slack + 100 alpha[3,0,23] <= 100
 obs_face_s3_e1_j23: - obstacle_slack + 100 alpha[3,1,23] <= 100
 obs_face_s3_e2_j23: - obstacle_slack + 100 alpha[3,2,23] <= 100
 obs_face_s3_e3_j23: - obstacle_slack + 100 alpha[3,3,23] <= 100
 obs_alpha_sum_s3_j24: alpha[3,0,24] + alpha[3,1,24] + alpha[3,2,24]
   + alpha[3,3,24] >= 0
 obs_face_s3_e0_j24: - obstacle_slack + 100 alpha[3,0,24] <= 100
 obs_face_s3_e1_j24: - obstacle_slack + 100 alpha[3,1,24] <= 100
 obs_face_s3_e2_j24: - obstacle_slack + 100 alpha[3,2,24] <= 100
 obs_face_s3_e3_j24: - obstacle_slack + 100 alpha[3,3,24] <= 100
 obs_alpha_sum_s3_j25: alpha[3,0,25] + alpha[3,1,25] + alpha[3,2,25]
   + alpha[3,3,25] >= 0
 obs_face_s3_e0_j25: - obstacle_slack + 100 alpha[3,0,25] <= 100
 obs_face_s3_e1_j25: - obstacle_slack + 100 alpha[3,1,25] <= 100
 obs_face_s3_e2_j25: - obstacle_slack + 100 alpha[3,2,25] <= 100
 obs_face_s3_e3_j25: - obstacle_slack + 100 alpha[3,3,25] <= 100
 obs_alpha_sum_s3_j26: alpha[3,0,26] + alpha[3,1,26] + alpha[3,2,26]
   + alpha[3,3,26] >= 0
 obs_face_s3_e0_j26: - obstacle_slack + 100 alpha[3,0,26] <= 100
 obs_face_s3_e1_j26: - obstacle_slack + 100 alpha[3,1,26] <= 100
 obs_face_s3_e2_j26: - obstacle_slack + 100 alpha[3,2,26] <= 100
 obs_face_s3_e3_j26: - obstacle_slack + 100 alpha[3,3,26] <= 100
 obs_alpha_sum_s3_j27: alpha[3,0,27] + alpha[3,1,27] + alpha[3,2,27]
   + alpha[3,3,27] >= 0
 obs_face_s3_e0_j27: - obstacle_slack + 100 alpha[3,0,27] <= 100
 obs_face_s3_e1_j27: - obstacle_slack + 100 alpha[3,1,27] <= 100
 obs_face_s3_e2_j27: - obstacle_slack + 100 alpha[3,2,27] <= 100
 obs_face_s3_e3_j27: - obstacle_slack + 100 alpha[3,3,27] <= 100
 obs_alpha_sum_s3_j28: alpha[3,0,28] + alpha[3,1,28] + alpha[3,2,28]
   + alpha[3,3,28] >= 0
 obs_face_s3_e0_j28: - obstacle_slack + 100 alpha[3,0,28] <= 100
 obs_face_s3_e1_j28: - obstacle_slack + 100 alpha[3,1,28] <= 100
 obs_face_s3_e2_j28: - obstacle_slack + 100 alpha[3,2,28] <= 100
 obs_face_s3_e3_j28: - obstacle_slack + 100 alpha[3,3,28] <= 100
 obs_alpha_sum_s3_j29: alpha[3,0,29] + alpha[3,1,29] + alpha[3,2,29]
   + alpha[3,3,29] >= 0
 obs_face_s3_e0_j29: - obstacle_slack + 100 alpha[3,0,29] <= 100
 obs_face_s3_e1_j29: - obstacle_slack + 100 alpha[3,1,29] <= 100
 obs_face_s3_e2_j29: - obstacle_slack + 100 alpha[3,2,29] <= 100
 obs_face_s3_e3_j29: - obstacle_slack + 100 alpha[3,3,29] <= 100
Bounds
 z[0,0] free
 z[0,1] free
 z[0,2] free
 z[0,3] free
 z[1,0] free
 z[1,1] free
 z[1,2] free
 z[1,3] free
 z[2,0] free
 z[2,1] free
 z[2,2] free
 z[2,3] free
 z[3,0] free
 z[3,1] free
 z[3,2] free
 z[3,3] free
 z[4,0] free
 z[4,1] free
 z[4,2] free
 z[4,3] free
 z[5,0] free
 z[5,1] free
 z[5,2] free
 z[5,3] free
 z[6,0] free
 z[6,1] free
 z[6,2] free
 z[6,3] free
 z[7,0] free
 z[7,1] free
 z[7,2] free
 z[7,3] free
 z[8,0] free
 z[8,1] free
 z[8,2] free
 z[8,3] free
 z[9,0] free
 z[9,1] free
 z[9,2] free
 z[9,3] free
 z[10,0] free
 z[10,1] free
 z[10,2] free
 z[10,3] free
 z[11,0] free
 z[11,1] free
 z[11,2] free
 z[11,3] free
 z[12,0] free
 z[12,1] free
 z[12,2] free
 z[12,3] free
 z[13,0] free
 z[13,1] free
 z[13,2] free
 z[13,3] free
 z[14,0] free
 z[14,1] free
 z[14,2] free
 z[14,3] free
 z[15,0] free
 z[15,1] free
 z[15,2] free
 z[15,3] free
 z[16,0] free
 z[16,1] free
 z[16,2] free
 z[16,3] free
 z[17,0] free
 z[17,1] free
 z[17,2] free
 z[17,3] free
 z[18,0] free
 z[18,1] free
 z[18,2] free
 z[18,3] free
 z[19,0] free
 z[19,1] free
 z[19,2] free
 z[19,3] free
 z[20,0] free
 z[20,1] free
 z[20,2] free
 z[20,3] free
 z[21,0] free
 z[21,1] free
 z[21,2] free
 z[21,3] free
 z[22,0] free
 z[22,1] free
 z[22,2] free
 z[22,3] free
 z[23,0] free
 z[23,1] free
 z[23,2] free
 z[23,3] free
 z[24,0] free
 z[24,1] free
 z[24,2] free
 z[24,3] free
 z[25,0] free
 z[25,1] free
 z[25,2] free
 z[25,3] free
 z[26,0] free
 z[26,1] free
 z[26,2] free
 z[26,3] free
 z[27,0] free
 z[27,1] free
 z[27,2] free
 z[27,3] free
 z[28,0] free
 z[28,1] free
 z[28,2] free
 z[28,3] free
 z[29,0] free
 z[29,1] free
 z[29,2] free
 z[29,3] free
 z[30,0] free
 z[30,1] free
 z[30,2] free
 z[30,3] free
 v[0,0] free
 v[0,1] free
 v[1,0] free
 v[1,1] free
 v[2,0] free
 v[2,1] free
 v[3,0] free
 v[3,1] free
 v[4,0] free
 v[4,1] free
 v[5,0] free
 v[5,1] free
 v[6,0] free
 v[6,1] free
 v[7,0] free
 v[7,1] free
 v[8,0] free
 v[8,1] free
 v[9,0] free
 v[9,1] free
 v[10,0] free
 v[10,1] free
 v[11,0] free
 v[11,1] free
 v[12,0] free
 v[12,1] free
 v[13,0] free
 v[13,1] free
 v[14,0] free
 v[14,1] free
 v[15,0] free
 v[15,1] free
 v[16,0] free
 v[16,1] free
 v[17,0] free
 v[17,1] free
 v[18,0] free
 v[18,1] free
 v[19,0] free
 v[19,1] free
 v[20,0] free
 v[20,1] free
 v[21,0] free
 v[21,1] free
 v[22,0] free
 v[22,1] free
 v[23,0] free
 v[23,1] free
 v[24,0] free
 v[24,1] free
 v[25,0] free
 v[25,1] free
 v[26,0] free
 v[26,1] free
 v[27,0] free
 v[27,1] free
 v[28,0] free
 v[28,1] free
 v[29,0] free
 v[29,1] free
 alpha[0,0,0] = 0
 alpha[0,0,1] = 0
 alpha[0,0,2] = 0
 alpha[0,0,3] = 0
 alpha[0,0,4] = 0
 alpha[0,0,5] = 0
 alpha[0,0,6] = 0
 alpha[0,0,7] = 0
 alpha[0,0,8] = 0
 alpha[0,0,9] = 0
 alpha[0,0,10] = 0
 alpha[0,0,11] = 0
 alpha[0,0,12] = 0
 alpha[0,0,13] = 0
 alpha[0,0,14] = 0
 alpha[0,0,15] = 0
 alpha[0,0,16] = 0
 alpha[0,0,17] = 0
 alpha[0,0,18] = 0
 alpha[0,0,19] = 0
 alpha[0,0,20] = 0
 alpha[0,0,21] = 0
 alpha[0,0,22] = 0
 alpha[0,0,23] = 0
 alpha[0,0,24] = 0
 alpha[0,0,25] = 0
 alpha[0,0,26] = 0
 alpha[0,0,27] = 0
 alpha[0,0,28] = 0
 alpha[0,0,29] = 0
 alpha[0,1,0] = 0
 alpha[0,1,1] = 0
 alpha[0,1,2] = 0
 alpha[0,1,3] = 0
 alpha[0,1,4] = 0
 alpha[0,1,5] = 0
 alpha[0,1,6] = 0
 alpha[0,1,7] = 0
 alpha[0,1,8] = 0
 alpha[0,1,9] = 0
 alpha[0,1,10] = 0
 alpha[0,1,11] = 0
 alpha[0,1,12] = 0
 alpha[0,1,13] = 0
 alpha[0,1,14] = 0
 alpha[0,1,15] = 0
 alpha[0,1,16] = 0
 alpha[0,1,17] = 0
 alpha[0,1,18] = 0
 alpha[0,1,19] = 0
 alpha[0,1,20] = 0
 alpha[0,1,21] = 0
 alpha[0,1,22] = 0
 alpha[0,1,23] = 0
 alpha[0,1,24] = 0
 alpha[0,1,25] = 0
 alpha[0,1,26] = 0
 alpha[0,1,27] = 0
 alpha[0,1,28] = 0
 alpha[0,1,29] = 0
 alpha[0,2,0] = 0
 alpha[0,2,1] = 0
 alpha[0,2,2] = 0
 alpha[0,2,3] = 0
 alpha[0,2,4] = 0
 alpha[0,2,5] = 0
 alpha[0,2,6] = 0
 alpha[0,2,7] = 0
 alpha[0,2,8] = 0
 alpha[0,2,9] = 0
 alpha[0,2,10] = 0
 alpha[0,2,11] = 0
 alpha[0,2,12] = 0
 alpha[0,2,13] = 0
 alpha[0,2,14] = 0
 alpha[0,2,15] = 0
 alpha[0,2,16] = 0
 alpha[0,2,17] = 0
 alpha[0,2,18] = 0
 alpha[0,2,19] = 0
 alpha[0,2,20] = 0
 alpha[0,2,21] = 0
 alpha[0,2,22] = 0
 alpha[0,2,23] = 0
 alpha[0,2,24] = 0
 alpha[0,2,25] = 0
 alpha[0,2,26] = 0
 alpha[0,2,27] = 0
 alpha[0,2,28] = 0
 alpha[0,2,29] = 0
 alpha[0,3,0] = 0
 alpha[0,3,1] = 0
 alpha[0,3,2] = 0
 alpha[0,3,3] = 0
 alpha[0,3,4] = 0
 alpha[0,3,5] = 0
 alpha[0,3,6] = 0
 alpha[0,3,7] = 0
 alpha[0,3,8] = 0
 alpha[0,3,9] = 0
 alpha[0,3,10] = 0
 alpha[0,3,11] = 0
 alpha[0,3,12] = 0
 alpha[0,3,13] = 0
 alpha[0,3,14] = 0
 alpha[0,3,15] = 0
 alpha[0,3,16] = 0
 alpha[0,3,17] = 0
 alpha[0,3,18] = 0
 alpha[0,3,19] = 0
 alpha[0,3,20] = 0
 alpha[0,3,21] = 0
 alpha[0,3,22] = 0
 alpha[0,3,23] = 0
 alpha[0,3,24] = 0
 alpha[0,3,25] = 0
 alpha[0,3,26] = 0
 alpha[0,3,27] = 0
 alpha[0,3,28] = 0
 alpha[0,3,29] = 0
 alpha[1,0,0] = 0
 alpha[1,0,1] = 0
 alpha[1,0,2] = 0
 alpha[1,0,3] = 0
 alpha[1,0,4] = 0
 alpha[1,0,5] = 0
 alpha[1,0,6] = 0
 alpha[1,0,7] = 0
 alpha[1,0,8] = 0
 alpha[1,0,9] = 0
 alpha[1,0,10] = 0
 alpha[1,0,11] = 0
 alpha[1,0,12] = 0
 alpha[1,0,13] = 0
 alpha[1,0,14] = 0
 alpha[1,0,15] = 0
 alpha[1,0,16] = 0
 alpha[1,0,17] = 0
 alpha[1,0,18] = 0
 alpha[1,0,19] = 0
 alpha[1,0,20] = 0
 alpha[1,0,21] = 0
 alpha[1,0,22] = 0
 alpha[1,0,23] = 0
 alpha[1,0,24] = 0
 alpha[1,0,25] = 0
 alpha[1,0,26] = 0
 alpha[1,0,27] = 0
 alpha[1,0,28] = 0
 alpha[1,0,29] = 0
 alpha[1,1,0] = 0
 alpha[1,1,1] = 0
 alpha[1,1,2] = 0
 alpha[1,1,3] = 0
 alpha[1,1,4] = 0
 alpha[1,1,5] = 0
 alpha[1,1,6] = 0
 alpha[1,1,7] = 0
 alpha[1,1,8] = 0
 alpha[1,1,9] = 0
 alpha[1,1,10] = 0
 alpha[1,1,11] = 0
 alpha[1,1,12] = 0
 alpha[1,1,13] = 0
 alpha[1,1,14] = 0
 alpha[1,1,15] = 0
 alpha[1,1,16] = 0
 alpha[1,1,17] = 0
 alpha[1,1,18] = 0
 alpha[1,1,19] = 0
 alpha[1,1,20] = 0
 alpha[1,1,21] = 0
 alpha[1,1,22] = 0
 alpha[1,1,23] = 0
 alpha[1,1,24] = 0
 alpha[1,1,25] = 0
 alpha[1,1,26] = 0
 alpha[1,1,27] = 0
 alpha[1,1,28] = 0
 alpha[1,1,29] = 0
 alpha[1,2,0] = 0
 alpha[1,2,1] = 0
 alpha[1,2,2] = 0
 alpha[1,2,3] = 0
 alpha[1,2,4] = 0
 alpha[1,2,5] = 0
 alpha[1,2,6] = 0
 alpha[1,2,7] = 0
 alpha[1,2,8] = 0
 alpha[1,2,9] = 0
 alpha[1,2,10] = 0
 alpha[1,2,11] = 0
 alpha[1,2,12] = 0
 alpha[1,2,13] = 0
 alpha[1,2,14] = 0
 alpha[1,2,15] = 0
 alpha[1,2,16] = 0
 alpha[1,2,17] = 0
 alpha[1,2,18] = 0
 alpha[1,2,19] = 0
 alpha[1,2,20] = 0
 alpha[1,2,21] = 0
 alpha[1,2,22] = 0
 alpha[1,2,23] = 0
 alpha[1,2,24] = 0
 alpha[1,2,25] = 0
 alpha[1,2,26] = 0
 alpha[1,2,27] = 0
 alpha[1,2,28] = 0
 alpha[1,2,29] = 0
 alpha[1,3,0] = 0
 alpha[1,3,1] = 0
 alpha[1,3,2] = 0
 alpha[1,3,3] = 0
 alpha[1,3,4] = 0
 alpha[1,3,5] = 0
 alpha[1,3,6] = 0
 alpha[1,3,7] = 0
 alpha[1,3,8] = 0
 alpha[1,3,9] = 0
 alpha[1,3,10] = 0
 alpha[1,3,11] = 0
 alpha[1,3,12] = 0
 alpha[1,3,13] = 0
 alpha[1,3,14] = 0
 alpha[1,3,15] = 0
 alpha[1,3,16] = 0
 alpha[1,3,17] = 0
 alpha[1,3,18] = 0
 alpha[1,3,19] = 0
 alpha[1,3,20] = 0
 alpha[1,3,21] = 0
 alpha[1,3,22] = 0
 alpha[1,3,23] = 0
 alpha[1,3,24] = 0
 alpha[1,3,25] = 0
 alpha[1,3,26] = 0
 alpha[1,3,27] = 0
 alpha[1,3,28] = 0
 alpha[1,3,29] = 0
 alpha[2,0,0] = 0
 alpha[2,0,1] = 0
 alpha[2,0,2] = 0
 alpha[2,0,3] = 0
 alpha[2,0,4] = 0
 alpha[2,0,5] = 0
 alpha[2,0,6] = 0
 alpha[2,0,7] = 0
 alpha[2,0,8] = 0
 alpha[2,0,9] = 0
 alpha[2,0,10] = 0
 alpha[2,0,11] = 0
 alpha[2,0,12] = 0
 alpha[2,0,13] = 0
 alpha[2,0,14] = 0
 alpha[2,0,15] = 0
 alpha[2,0,16] = 0
 alpha[2,0,17] = 0
 alpha[2,0,18] = 0
 alpha[2,0,19] = 0
 alpha[2,0,20] = 0
 alpha[2,0,21] = 0
 alpha[2,0,22] = 0
 alpha[2,0,23] = 0
 alpha[2,0,24] = 0
 alpha[2,0,25] = 0
 alpha[2,0,26] = 0
 alpha[2,0,27] = 0
 alpha[2,0,28] = 0
 alpha[2,0,29] = 0
 alpha[2,1,0] = 0
 alpha[2,1,1] = 0
 alpha[2,1,2] = 0
 alpha[2,1,3] = 0
 alpha[2,1,4] = 0
 alpha[2,1,5] = 0
 alpha[2,1,6] = 0
 alpha[2,1,7] = 0
 alpha[2,1,8] = 0
 alpha[2,1,9] = 0
 alpha[2,1,10] = 0
 alpha[2,1,11] = 0
 alpha[2,1,12] = 0
 alpha[2,1,13] = 0
 alpha[2,1,14] = 0
 alpha[2,1,15] = 0
 alpha[2,1,16] = 0
 alpha[2,1,17] = 0
 alpha[2,1,18] = 0
 alpha[2,1,19] = 0
 alpha[2,1,20] = 0
 alpha[2,1,21] = 0
 alpha[2,1,22] = 0
 alpha[2,1,23] = 0
 alpha[2,1,24] = 0
 alpha[2,1,25] = 0
 alpha[2,1,26] = 0
 alpha[2,1,27] = 0
 alpha[2,1,28] = 0
 alpha[2,1,29] = 0
 alpha[2,2,0] = 0
 alpha[2,2,1] = 0
 alpha[2,2,2] = 0
 alpha[2,2,3] = 0
 alpha[2,2,4] = 0
 alpha[2,2,5] = 0
 alpha[2,2,6] = 0
 alpha[2,2,7] = 0
 alpha[2,2,8] = 0
 alpha[2,2,9] = 0
 alpha[2,2,10] = 0
 alpha[2,2,11] = 0
 alpha[2,2,12] = 0
 alpha[2,2,13] = 0
 alpha[2,2,14] = 0
 alpha[2,2,15] = 0
 alpha[2,2,16] = 0
 alpha[2,2,17] = 0
 alpha[2,2,18] = 0
 alpha[2,2,19] = 0
 alpha[2,2,20] = 0
 alpha[2,2,21] = 0
 alpha[2,2,22] = 0
 alpha[2,2,23] = 0
 alpha[2,2,24] = 0
 alpha[2,2,25] = 0
 alpha[2,2,26] = 0
 alpha[2,2,27] = 0
 alpha[2,2,28] = 0
 alpha[2,2,29] = 0
 alpha[2,3,0] = 0
 alpha[2,3,1] = 0
 alpha[2,3,2] = 0
 alpha[2,3,3] = 0
 alpha[2,3,4] = 0
 alpha[2,3,5] = 0
 alpha[2,3,6] = 0
 alpha[2,3,7] = 0
 alpha[2,3,8] = 0
 alpha[2,3,9] = 0
 alpha[2,3,10] = 0
 alpha[2,3,11] = 0
 alpha[2,3,12] = 0
 alpha[2,3,13] = 0
 alpha[2,3,14] = 0
 alpha[2,3,15] = 0
 alpha[2,3,16] = 0
 alpha[2,3,17] = 0
 alpha[2,3,18] = 0
 alpha[2,3,19] = 0
 alpha[2,3,20] = 0
 alpha[2,3,21] = 0
 alpha[2,3,22] = 0
 alpha[2,3,23] = 0
 alpha[2,3,24] = 0
 alpha[2,3,25] = 0
 alpha[2,3,26] = 0
 alpha[2,3,27] = 0
 alpha[2,3,28] = 0
 alpha[2,3,29] = 0
 alpha[3,0,0] = 0
 alpha[3,0,1] = 0
 alpha[3,0,2] = 0
 alpha[3,0,3] = 0
 alpha[3,0,4] = 0
 alpha[3,0,5] = 0
 alpha[3,0,6] = 0
 alpha[3,0,7] = 0
 alpha[3,0,8] = 0
 alpha[3,0,9] = 0
 alpha[3,0,10] = 0
 alpha[3,0,11] = 0
 alpha[3,0,12] = 0
 alpha[3,0,13] = 0
 alpha[3,0,14] = 0
 alpha[3,0,15] = 0
 alpha[3,0,16] = 0
 alpha[3,0,17] = 0
 alpha[3,0,18] = 0
 alpha[3,0,19] = 0
 alpha[3,0,20] = 0
 alpha[3,0,21] = 0
 alpha[3,0,22] = 0
 alpha[3,0,23] = 0
 alpha[3,0,24] = 0
 alpha[3,0,25] = 0
 alpha[3,0,26] = 0
 alpha[3,0,27] = 0
 alpha[3,0,28] = 0
 alpha[3,0,29] = 0
 alpha[3,1,0] = 0
 alpha[3,1,1] = 0
 alpha[3,1,2] = 0
 alpha[3,1,3] = 0
 alpha[3,1,4] = 0
 alpha[3,1,5] = 0
 alpha[3,1,6] = 0
 alpha[3,1,7] = 0
 alpha[3,1,8] = 0
 alpha[3,1,9] = 0
 alpha[3,1,10] = 0
 alpha[3,1,11] = 0
 alpha[3,1,12] = 0
 alpha[3,1,13] = 0
 alpha[3,1,14] = 0
 alpha[3,1,15] = 0
 alpha[3,1,16] = 0
 alpha[3,1,17] = 0
 alpha[3,1,18] = 0
 alpha[3,1,19] = 0
 alpha[3,1,20] = 0
 alpha[3,1,21] = 0
 alpha[3,1,22] = 0
 alpha[3,1,23] = 0
 alpha[3,1,24] = 0
 alpha[3,1,25] = 0
 alpha[3,1,26] = 0
 alpha[3,1,27] = 0
 alpha[3,1,28] = 0
 alpha[3,1,29] = 0
 alpha[3,2,0] = 0
 alpha[3,2,1] = 0
 alpha[3,2,2] = 0
 alpha[3,2,3] = 0
 alpha[3,2,4] = 0
 alpha[3,2,5] = 0
 alpha[3,2,6] = 0
 alpha[3,2,7] = 0
 alpha[3,2,8] = 0
 alpha[3,2,9] = 0
 alpha[3,2,10] = 0
 alpha[3,2,11] = 0
 alpha[3,2,12] = 0
 alpha[3,2,13] = 0
 alpha[3,2,14] = 0
 alpha[3,2,15] = 0
 alpha[3,2,16] = 0
 alpha[3,2,17] = 0
 alpha[3,2,18] = 0
 alpha[3,2,19] = 0
 alpha[3,2,20] = 0
 alpha[3,2,21] = 0
 alpha[3,2,22] = 0
 alpha[3,2,23] = 0
 alpha[3,2,24] = 0
 alpha[3,2,25] = 0
 alpha[3,2,26] = 0
 alpha[3,2,27] = 0
 alpha[3,2,28] = 0
 alpha[3,2,29] = 0
 alpha[3,3,0] = 0
 alpha[3,3,1] = 0
 alpha[3,3,2] = 0
 alpha[3,3,3] = 0
 alpha[3,3,4] = 0
 alpha[3,3,5] = 0
 alpha[3,3,6] = 0
 alpha[3,3,7] = 0
 alpha[3,3,8] = 0
 alpha[3,3,9] = 0
 alpha[3,3,10] = 0
 alpha[3,3,11] = 0
 alpha[3,3,12] = 0
 alpha[3,3,13] = 0
 alpha[3,3,14] = 0
 alpha[3,3,15] = 0
 alpha[3,3,16] = 0
 alpha[3,3,17] = 0
 alpha[3,3,18] = 0
 alpha[3,3,19] = 0
 alpha[3,3,20] = 0
 alpha[3,3,21] = 0
 alpha[3,3,22] = 0
 alpha[3,3,23] = 0
 alpha[3,3,24] = 0
 alpha[3,3,25] = 0
 alpha[3,3,26] = 0
 alpha[3,3,27] = 0
 alpha[3,3,28] = 0
 alpha[3,3,29] = 0
Binaries
 alpha[0,0,0] alpha[0,0,1] alpha[0,0,2] alpha[0,0,3] alpha[0,0,4]
 alpha[0,0,5] alpha[0,0,6] alpha[0,0,7] alpha[0,0,8] alpha[0,0,9]
 alpha[0,0,10] alpha[0,0,11] alpha[0,0,12] alpha[0,0,13] alpha[0,0,14]
 alpha[0,0,15] alpha[0,0,16] alpha[0,0,17] alpha[0,0,18] alpha[0,0,19]
 alpha[0,0,20] alpha[0,0,21] alpha[0,0,22] alpha[0,0,23] alpha[0,0,24]
 alpha[0,0,25] alpha[0,0,26] alpha[0,0,27] alpha[0,0,28] alpha[0,0,29]
 alpha[0,1,0] alpha[0,1,1] alpha[0,1,2] alpha[0,1,3] alpha[0,1,4]
 alpha[0,1,5] alpha[0,1,6] alpha[0,1,7] alpha[0,1,8] alpha[0,1,9]
 alpha[0,1,10] alpha[0,1,11] alpha[0,1,12] alpha[0,1,13] alpha[0,1,14]
 alpha[0,1,15] alpha[0,1,16] alpha[0,1,17] alpha[0,1,18] alpha[0,1,19]
 alpha[0,1,20] alpha[0,1,21] alpha[0,1,22] alpha[0,1,23] alpha[0,1,24]
 alpha[0,1,25] alpha[0,1,26] alpha[0,1,27] alpha[0,1,28] alpha[0,1,29]
 alpha[0,2,0] alpha[0,2,1] alpha[0,2,2] alpha[0,2,3] alpha[0,2,4]
 alpha[0,2,5] alpha[0,2,6] alpha[0,2,7] alpha[0,2,8] alpha[0,2,9]
 alpha[0,2,10] alpha[0,2,11] alpha[0,2,12] alpha[0,2,13] alpha[0,2,14]
 alpha[0,2,15] alpha[0,2,16] alpha[0,2,17] alpha[0,2,18] alpha[0,2,19]
 alpha[0,2,20] alpha[0,2,21] alpha[0,2,22] alpha[0,2,23] alpha[0,2,24]
 alpha[0,2,25] alpha[0,2,26] alpha[0,2,27] alpha[0,2,28] alpha[0,2,29]
 alpha[0,3,0] alpha[0,3,1] alpha[0,3,2] alpha[0,3,3] alpha[0,3,4]
 alpha[0,3,5] alpha[0,3,6] alpha[0,3,7] alpha[0,3,8] alpha[0,3,9]
 alpha[0,3,10] alpha[0,3,11] alpha[0,3,12] alpha[0,3,13] alpha[0,3,14]
 alpha[0,3,15] alpha[0,3,16] alpha[0,3,17] alpha[0,3,18] alpha[0,3,19]
 alpha[0,3,20] alpha[0,3,21] alpha[0,3,22] alpha[0,3,23] alpha[0,3,24]
 alpha[0,3,25] alpha[0,3,26] alpha[0,3,27] alpha[0,3,28] alpha[0,3,29]
 alpha[1,0,0] alpha[1,0,1] alpha[1,0,2] alpha[1,0,3] alpha[1,0,4]
 alpha[1,0,5] alpha[1,0,6] alpha[1,0,7] alpha[1,0,8] alpha[1,0,9]
 alpha[1,0,10] alpha[1,0,11] alpha[1,0,12] alpha[1,0,13] alpha[1,0,14]
 alpha[1,0,15] alpha[1,0,16] alpha[1,0,17] alpha[1,0,18] alpha[1,0,19]
 alpha[1,0,20] alpha[1,0,21] alpha[1,0,22] alpha[1,0,23] alpha[1,0,24]
 alpha[1,0,25] alpha[1,0,26] alpha[1,0,27] alpha[1,0,28] alpha[1,0,29]
 alpha[1,1,0] alpha[1,1,1] alpha[1,1,2] alpha[1,1,3] alpha[1,1,4]
 alpha[1,1,5] alpha[1,1,6] alpha[1,1,7] alpha[1,1,8] alpha[1,1,9]
 alpha[1,1,10] alpha[1,1,11] alpha[1,1,12] alpha[1,1,13] alpha[1,1,14]
 alpha[1,1,15] alpha[1,1,16] alpha[1,1,17] alpha[1,1,18] alpha[1,1,19]
 alpha[1,1,20] alpha[1,1,21] alpha[1,1,22] alpha[1,1,23] alpha[1,1,24]
 alpha[1,1,25] alpha[1,1,26] alpha[1,1,27] alpha[1,1,28] alpha[1,1,29]
 alpha[1,2,0] alpha[1,2,1] alpha[1,2,2] alpha[1,2,3] alpha[1,2,4]
 alpha[1,2,5] alpha[1,2,6] alpha[1,2,7] alpha[1,2,8] alpha[1,2,9]
 alpha[1,2,10] alpha[1,2,11] alpha[1,2,12] alpha[1,2,13] alpha[1,2,14]
 alpha[1,2,15] alpha[1,2,16] alpha[1,2,17] alpha[1,2,18] alpha[1,2,19]
 alpha[1,2,20] alpha[1,2,21] alpha[1,2,22] alpha[1,2,23] alpha[1,2,24]
 alpha[1,2,25] alpha[1,2,26] alpha[1,2,27] alpha[1,2,28] alpha[1,2,29]
 alpha[1,3,0] alpha[1,3,1] alpha[1,3,2] alpha[1,3,3] alpha[1,3,4]
 alpha[1,3,5] alpha[1,3,6] alpha[1,3,7] alpha[1,3,8] alpha[1,3,9]
 alpha[1,3,10] alpha[1,3,11] alpha[1,3,12] alpha[1,3,13] alpha[1,3,14]
 alpha[1,3,15] alpha[1,3,16] alpha[1,3,17] alpha[1,3,18] alpha[1,3,19]
 alpha[1,3,20] alpha[1,3,21] alpha[1,3,22] alpha[1,3,23] alpha[1,3,24]
 alpha[1,3,25] alpha[1,3,26] alpha[1,3,27] alpha[1,3,28] alpha[1,3,29]
 alpha[2,0,0] alpha[2,0,1] alpha[2,0,2] alpha[2,0,3] alpha[2,0,4]
 alpha[2,0,5] alpha[2,0,6] alpha[2,0,7] alpha[2,0,8] alpha[2,0,9]
 alpha[2,0,10] alpha[2,0,11] alpha[2,0,12] alpha[2,0,13] alpha[2,0,14]
 alpha[2,0,15] alpha[2,0,16] alpha[2,0,17] alpha[2,0,18] alpha[2,0,19]
 alpha[2,0,20] alpha[2,0,21] alpha[2,0,22] alpha[2,0,23] alpha[2,0,24]
 alpha[2,0,25] alpha[2,0,26] alpha[2,0,27] alpha[2,0,28] alpha[2,0,29]
 alpha[2,1,0] alpha[2,1,1] alpha[2,1,2] alpha[2,1,3] alpha[2,1,4]
 alpha[2,1,5] alpha[2,1,6] alpha[2,1,7] alpha[2,1,8] alpha[2,1,9]
 alpha[2,1,10] alpha[2,1,11] alpha[2,1,12] alpha[2,1,13] alpha[2,1,14]
 alpha[2,1,15] alpha[2,1,16] alpha[2,1,17] alpha[2,1,18] alpha[2,1,19]
 alpha[2,1,20] alpha[2,1,21] alpha[2,1,22] alpha[2,1,23] alpha[2,1,24]
 alpha[2,1,25] alpha[2,1,26] alpha[2,1,27] alpha[2,1,28] alpha[2,1,29]
 alpha[2,2,0] alpha[2,2,1] alpha[2,2,2] alpha[2,2,3] alpha[2,2,4]
 alpha[2,2,5] alpha[2,2,6] alpha[2,2,7] alpha[2,2,8] alpha[2,2,9]
 alpha[2,2,10] alpha[2,2,11] alpha[2,2,12] alpha[2,2,13] alpha[2,2,14]
 alpha[2,2,15] alpha[2,2,16] alpha[2,2,17] alpha[2,2,18] alpha[2,2,19]
 alpha[2,2,20] alpha[2,2,21] alpha[2,2,22] alpha[2,2,23] alpha[2,2,24]
 alpha[2,2,25] alpha[2,2,26] alpha[2,2,27] alpha[2,2,28] alpha[2,2,29]
 alpha[2,3,0] alpha[2,3,1] alpha[2,3,2] alpha[2,3,3] alpha[2,3,4]
 alpha[2,3,5] alpha[2,3,6] alpha[2,3,7] alpha[2,3,8] alpha[2,3,9]
 alpha[2,3,10] alpha[2,3,11] alpha[2,3,12] alpha[2,3,13] alpha[2,3,14]
 alpha[2,3,15] alpha[2,3,16] alpha[2,3,17] alpha[2,3,18] alpha[2,3,19]
 alpha[2,3,20] alpha[2,3,21] alpha[2,3,22] alpha[2,3,23] alpha[2,3,24]
 alpha[2,3,25] alpha[2,3,26] alpha[2,3,27] alpha[2,3,28] alpha[2,3,29]
 alpha[3,0,0] alpha[3,0,1] alpha[3,0,2] alpha[3,0,3] alpha[3,0,4]
 alpha[3,0,5] alpha[3,0,6] alpha[3,0,7] alpha[3,0,8] alpha[3,0,9]
 alpha[3,0,10] alpha[3,0,11] alpha[3,0,12] alpha[3,0,13] alpha[3,0,14]
 alpha[3,0,15] alpha[3,0,16] alpha[3,0,17] alpha[3,0,18] alpha[3,0,19]
 alpha[3,0,20] alpha[3,0,21] alpha[3,0,22] alpha[3,0,23] alpha[3,0,24]
 alpha[3,0,25] alpha[3,0,26] alpha[3,0,27] alpha[3,0,28] alpha[3,0,29]
 alpha[3,1,0] alpha[3,1,1] alpha[3,1,2] alpha[3,1,3] alpha[3,1,4]
 alpha[3,1,5] alpha[3,1,6] alpha[3,1,7] alpha[3,1,8] alpha[3,1,9]
 alpha[3,1,10] alpha[3,1,11] alpha[3,1,12] alpha[3,1,13] alpha[3,1,14]
 alpha[3,1,15] alpha[3,1,16] alpha[3,1,17] alpha[3,1,18] alpha[3,1,19]
 alpha[3,1,20] alpha[3,1,21] alpha[3,1,22] alpha[3,1,23] alpha[3,1,24]
 alpha[3,1,25] alpha[3,1,26] alpha[3,1,27] alpha[3,1,28] alpha[3,1,29]
 alpha[3,2,0] alpha[3,2,1] alpha[3,2,2] alpha[3,2,3] alpha[3,2,4]
 alpha[3,2,5] alpha[3,2,6] alpha[3,2,7] alpha[3,2,8] alpha[3,2,9]
 alpha[3,2,10] alpha[3,2,11] alpha[3,2,12] alpha[3,2,13] alpha[3,2,14]
 alpha[3,2,15] alpha[3,2,16] alpha[3,2,17] alpha[3,2,18] alpha[3,2,19]
 alpha[3,2,20] alpha[3,2,21] alpha[3,2,22] alpha[3,2,23] alpha[3,2,24]
 alpha[3,2,25] alpha[3,2,26] alpha[3,2,27] alpha[3,2,28] alpha[3,2,29]
 alpha[3,3,0] alpha[3,3,1] alpha[3,3,2] alpha[3,3,3] alpha[3,3,4]
 alpha[3,3,5] alpha[3,3,6] alpha[3,3,7] alpha[3,3,8] alpha[3,3,9]
 alpha[3,3,10] alpha[3,3,11] alpha[3,3,12] alpha[3,3,13] alpha[3,3,14]
 alpha[3,3,15] alpha[3,3,16] alpha[3,3,17] alpha[3,3,18] alpha[3,3,19]
 alpha[3,3,20] alpha[3,3,21] alpha[3,3,22] alpha[3,3,23] alpha[3,3,24]
 alpha[3,3,25] alpha[3,3,26] alpha[3,3,27] alpha[3,3,28] alpha[3,3,29]
End
