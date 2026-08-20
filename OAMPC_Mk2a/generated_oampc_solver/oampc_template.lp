\ Model qcar2_flat_coordinate_oampc_mk2a
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x174dd8da734f7b22
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
 obs_alpha_sum_o0_j0: alpha[0,0,0] + alpha[0,1,0] + alpha[0,2,0]
   + alpha[0,3,0] >= 1
 obs_face_o0_e0_j0: z[1,2] - obstacle_slack + 100 alpha[0,0,0] <= 100.4
 obs_face_o0_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[0,1,0] <= 98.05
 obs_face_o0_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[0,2,0] <= 98.8
 obs_face_o0_e3_j0: z[1,0] - obstacle_slack + 100 alpha[0,3,0] <= 100.45
 obs_alpha_sum_o0_j1: alpha[0,0,1] + alpha[0,1,1] + alpha[0,2,1]
   + alpha[0,3,1] >= 1
 obs_face_o0_e0_j1: z[2,2] - obstacle_slack + 100 alpha[0,0,1] <= 100.4
 obs_face_o0_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[0,1,1] <= 98.05
 obs_face_o0_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[0,2,1] <= 98.8
 obs_face_o0_e3_j1: z[2,0] - obstacle_slack + 100 alpha[0,3,1] <= 100.45
 obs_alpha_sum_o0_j2: alpha[0,0,2] + alpha[0,1,2] + alpha[0,2,2]
   + alpha[0,3,2] >= 1
 obs_face_o0_e0_j2: z[3,2] - obstacle_slack + 100 alpha[0,0,2] <= 100.4
 obs_face_o0_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[0,1,2] <= 98.05
 obs_face_o0_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[0,2,2] <= 98.8
 obs_face_o0_e3_j2: z[3,0] - obstacle_slack + 100 alpha[0,3,2] <= 100.45
 obs_alpha_sum_o0_j3: alpha[0,0,3] + alpha[0,1,3] + alpha[0,2,3]
   + alpha[0,3,3] >= 1
 obs_face_o0_e0_j3: z[4,2] - obstacle_slack + 100 alpha[0,0,3] <= 100.4
 obs_face_o0_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[0,1,3] <= 98.05
 obs_face_o0_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[0,2,3] <= 98.8
 obs_face_o0_e3_j3: z[4,0] - obstacle_slack + 100 alpha[0,3,3] <= 100.45
 obs_alpha_sum_o0_j4: alpha[0,0,4] + alpha[0,1,4] + alpha[0,2,4]
   + alpha[0,3,4] >= 1
 obs_face_o0_e0_j4: z[5,2] - obstacle_slack + 100 alpha[0,0,4] <= 100.4
 obs_face_o0_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[0,1,4] <= 98.05
 obs_face_o0_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[0,2,4] <= 98.8
 obs_face_o0_e3_j4: z[5,0] - obstacle_slack + 100 alpha[0,3,4] <= 100.45
 obs_alpha_sum_o0_j5: alpha[0,0,5] + alpha[0,1,5] + alpha[0,2,5]
   + alpha[0,3,5] >= 1
 obs_face_o0_e0_j5: z[6,2] - obstacle_slack + 100 alpha[0,0,5] <= 100.4
 obs_face_o0_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[0,1,5] <= 98.05
 obs_face_o0_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[0,2,5] <= 98.8
 obs_face_o0_e3_j5: z[6,0] - obstacle_slack + 100 alpha[0,3,5] <= 100.45
 obs_alpha_sum_o0_j6: alpha[0,0,6] + alpha[0,1,6] + alpha[0,2,6]
   + alpha[0,3,6] >= 1
 obs_face_o0_e0_j6: z[7,2] - obstacle_slack + 100 alpha[0,0,6] <= 100.4
 obs_face_o0_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[0,1,6] <= 98.05
 obs_face_o0_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[0,2,6] <= 98.8
 obs_face_o0_e3_j6: z[7,0] - obstacle_slack + 100 alpha[0,3,6] <= 100.45
 obs_alpha_sum_o0_j7: alpha[0,0,7] + alpha[0,1,7] + alpha[0,2,7]
   + alpha[0,3,7] >= 1
 obs_face_o0_e0_j7: z[8,2] - obstacle_slack + 100 alpha[0,0,7] <= 100.4
 obs_face_o0_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[0,1,7] <= 98.05
 obs_face_o0_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[0,2,7] <= 98.8
 obs_face_o0_e3_j7: z[8,0] - obstacle_slack + 100 alpha[0,3,7] <= 100.45
 obs_alpha_sum_o0_j8: alpha[0,0,8] + alpha[0,1,8] + alpha[0,2,8]
   + alpha[0,3,8] >= 1
 obs_face_o0_e0_j8: z[9,2] - obstacle_slack + 100 alpha[0,0,8] <= 100.4
 obs_face_o0_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[0,1,8] <= 98.05
 obs_face_o0_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[0,2,8] <= 98.8
 obs_face_o0_e3_j8: z[9,0] - obstacle_slack + 100 alpha[0,3,8] <= 100.45
 obs_alpha_sum_o0_j9: alpha[0,0,9] + alpha[0,1,9] + alpha[0,2,9]
   + alpha[0,3,9] >= 1
 obs_face_o0_e0_j9: z[10,2] - obstacle_slack + 100 alpha[0,0,9] <= 100.4
 obs_face_o0_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[0,1,9] <= 98.05
 obs_face_o0_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[0,2,9] <= 98.8
 obs_face_o0_e3_j9: z[10,0] - obstacle_slack + 100 alpha[0,3,9] <= 100.45
 obs_alpha_sum_o0_j10: alpha[0,0,10] + alpha[0,1,10] + alpha[0,2,10]
   + alpha[0,3,10] >= 1
 obs_face_o0_e0_j10: z[11,2] - obstacle_slack + 100 alpha[0,0,10] <= 100.4
 obs_face_o0_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[0,1,10]
   <= 98.05
 obs_face_o0_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[0,2,10]
   <= 98.8
 obs_face_o0_e3_j10: z[11,0] - obstacle_slack + 100 alpha[0,3,10]
   <= 100.45
 obs_alpha_sum_o0_j11: alpha[0,0,11] + alpha[0,1,11] + alpha[0,2,11]
   + alpha[0,3,11] >= 1
 obs_face_o0_e0_j11: z[12,2] - obstacle_slack + 100 alpha[0,0,11] <= 100.4
 obs_face_o0_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[0,1,11]
   <= 98.05
 obs_face_o0_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[0,2,11]
   <= 98.8
 obs_face_o0_e3_j11: z[12,0] - obstacle_slack + 100 alpha[0,3,11]
   <= 100.45
 obs_alpha_sum_o0_j12: alpha[0,0,12] + alpha[0,1,12] + alpha[0,2,12]
   + alpha[0,3,12] >= 1
 obs_face_o0_e0_j12: z[13,2] - obstacle_slack + 100 alpha[0,0,12] <= 100.4
 obs_face_o0_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[0,1,12]
   <= 98.05
 obs_face_o0_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[0,2,12]
   <= 98.8
 obs_face_o0_e3_j12: z[13,0] - obstacle_slack + 100 alpha[0,3,12]
   <= 100.45
 obs_alpha_sum_o0_j13: alpha[0,0,13] + alpha[0,1,13] + alpha[0,2,13]
   + alpha[0,3,13] >= 1
 obs_face_o0_e0_j13: z[14,2] - obstacle_slack + 100 alpha[0,0,13] <= 100.4
 obs_face_o0_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[0,1,13]
   <= 98.05
 obs_face_o0_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[0,2,13]
   <= 98.8
 obs_face_o0_e3_j13: z[14,0] - obstacle_slack + 100 alpha[0,3,13]
   <= 100.45
 obs_alpha_sum_o0_j14: alpha[0,0,14] + alpha[0,1,14] + alpha[0,2,14]
   + alpha[0,3,14] >= 1
 obs_face_o0_e0_j14: z[15,2] - obstacle_slack + 100 alpha[0,0,14] <= 100.4
 obs_face_o0_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[0,1,14]
   <= 98.05
 obs_face_o0_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[0,2,14]
   <= 98.8
 obs_face_o0_e3_j14: z[15,0] - obstacle_slack + 100 alpha[0,3,14]
   <= 100.45
 obs_alpha_sum_o0_j15: alpha[0,0,15] + alpha[0,1,15] + alpha[0,2,15]
   + alpha[0,3,15] >= 1
 obs_face_o0_e0_j15: z[16,2] - obstacle_slack + 100 alpha[0,0,15] <= 100.4
 obs_face_o0_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[0,1,15]
   <= 98.05
 obs_face_o0_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[0,2,15]
   <= 98.8
 obs_face_o0_e3_j15: z[16,0] - obstacle_slack + 100 alpha[0,3,15]
   <= 100.45
 obs_alpha_sum_o0_j16: alpha[0,0,16] + alpha[0,1,16] + alpha[0,2,16]
   + alpha[0,3,16] >= 1
 obs_face_o0_e0_j16: z[17,2] - obstacle_slack + 100 alpha[0,0,16] <= 100.4
 obs_face_o0_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[0,1,16]
   <= 98.05
 obs_face_o0_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[0,2,16]
   <= 98.8
 obs_face_o0_e3_j16: z[17,0] - obstacle_slack + 100 alpha[0,3,16]
   <= 100.45
 obs_alpha_sum_o0_j17: alpha[0,0,17] + alpha[0,1,17] + alpha[0,2,17]
   + alpha[0,3,17] >= 1
 obs_face_o0_e0_j17: z[18,2] - obstacle_slack + 100 alpha[0,0,17] <= 100.4
 obs_face_o0_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[0,1,17]
   <= 98.05
 obs_face_o0_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[0,2,17]
   <= 98.8
 obs_face_o0_e3_j17: z[18,0] - obstacle_slack + 100 alpha[0,3,17]
   <= 100.45
 obs_alpha_sum_o0_j18: alpha[0,0,18] + alpha[0,1,18] + alpha[0,2,18]
   + alpha[0,3,18] >= 1
 obs_face_o0_e0_j18: z[19,2] - obstacle_slack + 100 alpha[0,0,18] <= 100.4
 obs_face_o0_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[0,1,18]
   <= 98.05
 obs_face_o0_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[0,2,18]
   <= 98.8
 obs_face_o0_e3_j18: z[19,0] - obstacle_slack + 100 alpha[0,3,18]
   <= 100.45
 obs_alpha_sum_o0_j19: alpha[0,0,19] + alpha[0,1,19] + alpha[0,2,19]
   + alpha[0,3,19] >= 1
 obs_face_o0_e0_j19: z[20,2] - obstacle_slack + 100 alpha[0,0,19] <= 100.4
 obs_face_o0_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[0,1,19]
   <= 98.05
 obs_face_o0_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[0,2,19]
   <= 98.8
 obs_face_o0_e3_j19: z[20,0] - obstacle_slack + 100 alpha[0,3,19]
   <= 100.45
 obs_alpha_sum_o0_j20: alpha[0,0,20] + alpha[0,1,20] + alpha[0,2,20]
   + alpha[0,3,20] >= 1
 obs_face_o0_e0_j20: z[21,2] - obstacle_slack + 100 alpha[0,0,20] <= 100.4
 obs_face_o0_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[0,1,20]
   <= 98.05
 obs_face_o0_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[0,2,20]
   <= 98.8
 obs_face_o0_e3_j20: z[21,0] - obstacle_slack + 100 alpha[0,3,20]
   <= 100.45
 obs_alpha_sum_o0_j21: alpha[0,0,21] + alpha[0,1,21] + alpha[0,2,21]
   + alpha[0,3,21] >= 1
 obs_face_o0_e0_j21: z[22,2] - obstacle_slack + 100 alpha[0,0,21] <= 100.4
 obs_face_o0_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[0,1,21]
   <= 98.05
 obs_face_o0_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[0,2,21]
   <= 98.8
 obs_face_o0_e3_j21: z[22,0] - obstacle_slack + 100 alpha[0,3,21]
   <= 100.45
 obs_alpha_sum_o0_j22: alpha[0,0,22] + alpha[0,1,22] + alpha[0,2,22]
   + alpha[0,3,22] >= 1
 obs_face_o0_e0_j22: z[23,2] - obstacle_slack + 100 alpha[0,0,22] <= 100.4
 obs_face_o0_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[0,1,22]
   <= 98.05
 obs_face_o0_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[0,2,22]
   <= 98.8
 obs_face_o0_e3_j22: z[23,0] - obstacle_slack + 100 alpha[0,3,22]
   <= 100.45
 obs_alpha_sum_o0_j23: alpha[0,0,23] + alpha[0,1,23] + alpha[0,2,23]
   + alpha[0,3,23] >= 1
 obs_face_o0_e0_j23: z[24,2] - obstacle_slack + 100 alpha[0,0,23] <= 100.4
 obs_face_o0_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[0,1,23]
   <= 98.05
 obs_face_o0_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[0,2,23]
   <= 98.8
 obs_face_o0_e3_j23: z[24,0] - obstacle_slack + 100 alpha[0,3,23]
   <= 100.45
 obs_alpha_sum_o0_j24: alpha[0,0,24] + alpha[0,1,24] + alpha[0,2,24]
   + alpha[0,3,24] >= 1
 obs_face_o0_e0_j24: z[25,2] - obstacle_slack + 100 alpha[0,0,24] <= 100.4
 obs_face_o0_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[0,1,24]
   <= 98.05
 obs_face_o0_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[0,2,24]
   <= 98.8
 obs_face_o0_e3_j24: z[25,0] - obstacle_slack + 100 alpha[0,3,24]
   <= 100.45
 obs_alpha_sum_o0_j25: alpha[0,0,25] + alpha[0,1,25] + alpha[0,2,25]
   + alpha[0,3,25] >= 1
 obs_face_o0_e0_j25: z[26,2] - obstacle_slack + 100 alpha[0,0,25] <= 100.4
 obs_face_o0_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[0,1,25]
   <= 98.05
 obs_face_o0_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[0,2,25]
   <= 98.8
 obs_face_o0_e3_j25: z[26,0] - obstacle_slack + 100 alpha[0,3,25]
   <= 100.45
 obs_alpha_sum_o0_j26: alpha[0,0,26] + alpha[0,1,26] + alpha[0,2,26]
   + alpha[0,3,26] >= 1
 obs_face_o0_e0_j26: z[27,2] - obstacle_slack + 100 alpha[0,0,26] <= 100.4
 obs_face_o0_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[0,1,26]
   <= 98.05
 obs_face_o0_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[0,2,26]
   <= 98.8
 obs_face_o0_e3_j26: z[27,0] - obstacle_slack + 100 alpha[0,3,26]
   <= 100.45
 obs_alpha_sum_o0_j27: alpha[0,0,27] + alpha[0,1,27] + alpha[0,2,27]
   + alpha[0,3,27] >= 1
 obs_face_o0_e0_j27: z[28,2] - obstacle_slack + 100 alpha[0,0,27] <= 100.4
 obs_face_o0_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[0,1,27]
   <= 98.05
 obs_face_o0_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[0,2,27]
   <= 98.8
 obs_face_o0_e3_j27: z[28,0] - obstacle_slack + 100 alpha[0,3,27]
   <= 100.45
 obs_alpha_sum_o0_j28: alpha[0,0,28] + alpha[0,1,28] + alpha[0,2,28]
   + alpha[0,3,28] >= 1
 obs_face_o0_e0_j28: z[29,2] - obstacle_slack + 100 alpha[0,0,28] <= 100.4
 obs_face_o0_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[0,1,28]
   <= 98.05
 obs_face_o0_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[0,2,28]
   <= 98.8
 obs_face_o0_e3_j28: z[29,0] - obstacle_slack + 100 alpha[0,3,28]
   <= 100.45
 obs_alpha_sum_o0_j29: alpha[0,0,29] + alpha[0,1,29] + alpha[0,2,29]
   + alpha[0,3,29] >= 1
 obs_face_o0_e0_j29: z[30,2] - obstacle_slack + 100 alpha[0,0,29] <= 100.4
 obs_face_o0_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[0,1,29]
   <= 98.05
 obs_face_o0_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[0,2,29]
   <= 98.8
 obs_face_o0_e3_j29: z[30,0] - obstacle_slack + 100 alpha[0,3,29]
   <= 100.45
 obs_alpha_sum_o1_j0: alpha[1,0,0] + alpha[1,1,0] + alpha[1,2,0]
   + alpha[1,3,0] >= 1
 obs_face_o1_e0_j0: 0.4168708024292109 z[1,0] + 0.9089657496748851 z[1,2]
   - obstacle_slack + 100 alpha[1,0,0] <= 101.187556455878
 obs_face_o1_e1_j0: - 0.9089657496748851 z[1,0] + 0.4168708024292107 z[1,2]
   - obstacle_slack + 100 alpha[1,1,0] <= 97.12770810727031
 obs_face_o1_e2_j0: - 0.4168708024292109 z[1,0] - 0.9089657496748851 z[1,2]
   - obstacle_slack + 100 alpha[1,2,0] <= 98.01244354412204
 obs_face_o1_e3_j0: 0.9089657496748851 z[1,0] - 0.4168708024292107 z[1,2]
   - obstacle_slack + 100 alpha[1,3,0] <= 101.1722918927297
 obs_alpha_sum_o1_j1: alpha[1,0,1] + alpha[1,1,1] + alpha[1,2,1]
   + alpha[1,3,1] >= 1
 obs_face_o1_e0_j1: 0.4168708024292109 z[2,0] + 0.9089657496748851 z[2,2]
   - obstacle_slack + 100 alpha[1,0,1] <= 101.187556455878
 obs_face_o1_e1_j1: - 0.9089657496748851 z[2,0] + 0.4168708024292107 z[2,2]
   - obstacle_slack + 100 alpha[1,1,1] <= 97.12770810727031
 obs_face_o1_e2_j1: - 0.4168708024292109 z[2,0] - 0.9089657496748851 z[2,2]
   - obstacle_slack + 100 alpha[1,2,1] <= 98.01244354412204
 obs_face_o1_e3_j1: 0.9089657496748851 z[2,0] - 0.4168708024292107 z[2,2]
   - obstacle_slack + 100 alpha[1,3,1] <= 101.1722918927297
 obs_alpha_sum_o1_j2: alpha[1,0,2] + alpha[1,1,2] + alpha[1,2,2]
   + alpha[1,3,2] >= 1
 obs_face_o1_e0_j2: 0.4168708024292109 z[3,0] + 0.9089657496748851 z[3,2]
   - obstacle_slack + 100 alpha[1,0,2] <= 101.187556455878
 obs_face_o1_e1_j2: - 0.9089657496748851 z[3,0] + 0.4168708024292107 z[3,2]
   - obstacle_slack + 100 alpha[1,1,2] <= 97.12770810727031
 obs_face_o1_e2_j2: - 0.4168708024292109 z[3,0] - 0.9089657496748851 z[3,2]
   - obstacle_slack + 100 alpha[1,2,2] <= 98.01244354412204
 obs_face_o1_e3_j2: 0.9089657496748851 z[3,0] - 0.4168708024292107 z[3,2]
   - obstacle_slack + 100 alpha[1,3,2] <= 101.1722918927297
 obs_alpha_sum_o1_j3: alpha[1,0,3] + alpha[1,1,3] + alpha[1,2,3]
   + alpha[1,3,3] >= 1
 obs_face_o1_e0_j3: 0.4168708024292109 z[4,0] + 0.9089657496748851 z[4,2]
   - obstacle_slack + 100 alpha[1,0,3] <= 101.187556455878
 obs_face_o1_e1_j3: - 0.9089657496748851 z[4,0] + 0.4168708024292107 z[4,2]
   - obstacle_slack + 100 alpha[1,1,3] <= 97.12770810727031
 obs_face_o1_e2_j3: - 0.4168708024292109 z[4,0] - 0.9089657496748851 z[4,2]
   - obstacle_slack + 100 alpha[1,2,3] <= 98.01244354412204
 obs_face_o1_e3_j3: 0.9089657496748851 z[4,0] - 0.4168708024292107 z[4,2]
   - obstacle_slack + 100 alpha[1,3,3] <= 101.1722918927297
 obs_alpha_sum_o1_j4: alpha[1,0,4] + alpha[1,1,4] + alpha[1,2,4]
   + alpha[1,3,4] >= 1
 obs_face_o1_e0_j4: 0.4168708024292109 z[5,0] + 0.9089657496748851 z[5,2]
   - obstacle_slack + 100 alpha[1,0,4] <= 101.187556455878
 obs_face_o1_e1_j4: - 0.9089657496748851 z[5,0] + 0.4168708024292107 z[5,2]
   - obstacle_slack + 100 alpha[1,1,4] <= 97.12770810727031
 obs_face_o1_e2_j4: - 0.4168708024292109 z[5,0] - 0.9089657496748851 z[5,2]
   - obstacle_slack + 100 alpha[1,2,4] <= 98.01244354412204
 obs_face_o1_e3_j4: 0.9089657496748851 z[5,0] - 0.4168708024292107 z[5,2]
   - obstacle_slack + 100 alpha[1,3,4] <= 101.1722918927297
 obs_alpha_sum_o1_j5: alpha[1,0,5] + alpha[1,1,5] + alpha[1,2,5]
   + alpha[1,3,5] >= 1
 obs_face_o1_e0_j5: 0.4168708024292109 z[6,0] + 0.9089657496748851 z[6,2]
   - obstacle_slack + 100 alpha[1,0,5] <= 101.187556455878
 obs_face_o1_e1_j5: - 0.9089657496748851 z[6,0] + 0.4168708024292107 z[6,2]
   - obstacle_slack + 100 alpha[1,1,5] <= 97.12770810727031
 obs_face_o1_e2_j5: - 0.4168708024292109 z[6,0] - 0.9089657496748851 z[6,2]
   - obstacle_slack + 100 alpha[1,2,5] <= 98.01244354412204
 obs_face_o1_e3_j5: 0.9089657496748851 z[6,0] - 0.4168708024292107 z[6,2]
   - obstacle_slack + 100 alpha[1,3,5] <= 101.1722918927297
 obs_alpha_sum_o1_j6: alpha[1,0,6] + alpha[1,1,6] + alpha[1,2,6]
   + alpha[1,3,6] >= 1
 obs_face_o1_e0_j6: 0.4168708024292109 z[7,0] + 0.9089657496748851 z[7,2]
   - obstacle_slack + 100 alpha[1,0,6] <= 101.187556455878
 obs_face_o1_e1_j6: - 0.9089657496748851 z[7,0] + 0.4168708024292107 z[7,2]
   - obstacle_slack + 100 alpha[1,1,6] <= 97.12770810727031
 obs_face_o1_e2_j6: - 0.4168708024292109 z[7,0] - 0.9089657496748851 z[7,2]
   - obstacle_slack + 100 alpha[1,2,6] <= 98.01244354412204
 obs_face_o1_e3_j6: 0.9089657496748851 z[7,0] - 0.4168708024292107 z[7,2]
   - obstacle_slack + 100 alpha[1,3,6] <= 101.1722918927297
 obs_alpha_sum_o1_j7: alpha[1,0,7] + alpha[1,1,7] + alpha[1,2,7]
   + alpha[1,3,7] >= 1
 obs_face_o1_e0_j7: 0.4168708024292109 z[8,0] + 0.9089657496748851 z[8,2]
   - obstacle_slack + 100 alpha[1,0,7] <= 101.187556455878
 obs_face_o1_e1_j7: - 0.9089657496748851 z[8,0] + 0.4168708024292107 z[8,2]
   - obstacle_slack + 100 alpha[1,1,7] <= 97.12770810727031
 obs_face_o1_e2_j7: - 0.4168708024292109 z[8,0] - 0.9089657496748851 z[8,2]
   - obstacle_slack + 100 alpha[1,2,7] <= 98.01244354412204
 obs_face_o1_e3_j7: 0.9089657496748851 z[8,0] - 0.4168708024292107 z[8,2]
   - obstacle_slack + 100 alpha[1,3,7] <= 101.1722918927297
 obs_alpha_sum_o1_j8: alpha[1,0,8] + alpha[1,1,8] + alpha[1,2,8]
   + alpha[1,3,8] >= 1
 obs_face_o1_e0_j8: 0.4168708024292109 z[9,0] + 0.9089657496748851 z[9,2]
   - obstacle_slack + 100 alpha[1,0,8] <= 101.187556455878
 obs_face_o1_e1_j8: - 0.9089657496748851 z[9,0] + 0.4168708024292107 z[9,2]
   - obstacle_slack + 100 alpha[1,1,8] <= 97.12770810727031
 obs_face_o1_e2_j8: - 0.4168708024292109 z[9,0] - 0.9089657496748851 z[9,2]
   - obstacle_slack + 100 alpha[1,2,8] <= 98.01244354412204
 obs_face_o1_e3_j8: 0.9089657496748851 z[9,0] - 0.4168708024292107 z[9,2]
   - obstacle_slack + 100 alpha[1,3,8] <= 101.1722918927297
 obs_alpha_sum_o1_j9: alpha[1,0,9] + alpha[1,1,9] + alpha[1,2,9]
   + alpha[1,3,9] >= 1
 obs_face_o1_e0_j9: 0.4168708024292109 z[10,0] + 0.9089657496748851 z[10,2]
   - obstacle_slack + 100 alpha[1,0,9] <= 101.187556455878
 obs_face_o1_e1_j9: - 0.9089657496748851 z[10,0]
   + 0.4168708024292107 z[10,2] - obstacle_slack + 100 alpha[1,1,9]
   <= 97.12770810727031
 obs_face_o1_e2_j9: - 0.4168708024292109 z[10,0]
   - 0.9089657496748851 z[10,2] - obstacle_slack + 100 alpha[1,2,9]
   <= 98.01244354412204
 obs_face_o1_e3_j9: 0.9089657496748851 z[10,0] - 0.4168708024292107 z[10,2]
   - obstacle_slack + 100 alpha[1,3,9] <= 101.1722918927297
 obs_alpha_sum_o1_j10: alpha[1,0,10] + alpha[1,1,10] + alpha[1,2,10]
   + alpha[1,3,10] >= 1
 obs_face_o1_e0_j10: 0.4168708024292109 z[11,0]
   + 0.9089657496748851 z[11,2] - obstacle_slack + 100 alpha[1,0,10]
   <= 101.187556455878
 obs_face_o1_e1_j10: - 0.9089657496748851 z[11,0]
   + 0.4168708024292107 z[11,2] - obstacle_slack + 100 alpha[1,1,10]
   <= 97.12770810727031
 obs_face_o1_e2_j10: - 0.4168708024292109 z[11,0]
   - 0.9089657496748851 z[11,2] - obstacle_slack + 100 alpha[1,2,10]
   <= 98.01244354412204
 obs_face_o1_e3_j10: 0.9089657496748851 z[11,0]
   - 0.4168708024292107 z[11,2] - obstacle_slack + 100 alpha[1,3,10]
   <= 101.1722918927297
 obs_alpha_sum_o1_j11: alpha[1,0,11] + alpha[1,1,11] + alpha[1,2,11]
   + alpha[1,3,11] >= 1
 obs_face_o1_e0_j11: 0.4168708024292109 z[12,0]
   + 0.9089657496748851 z[12,2] - obstacle_slack + 100 alpha[1,0,11]
   <= 101.187556455878
 obs_face_o1_e1_j11: - 0.9089657496748851 z[12,0]
   + 0.4168708024292107 z[12,2] - obstacle_slack + 100 alpha[1,1,11]
   <= 97.12770810727031
 obs_face_o1_e2_j11: - 0.4168708024292109 z[12,0]
   - 0.9089657496748851 z[12,2] - obstacle_slack + 100 alpha[1,2,11]
   <= 98.01244354412204
 obs_face_o1_e3_j11: 0.9089657496748851 z[12,0]
   - 0.4168708024292107 z[12,2] - obstacle_slack + 100 alpha[1,3,11]
   <= 101.1722918927297
 obs_alpha_sum_o1_j12: alpha[1,0,12] + alpha[1,1,12] + alpha[1,2,12]
   + alpha[1,3,12] >= 1
 obs_face_o1_e0_j12: 0.4168708024292109 z[13,0]
   + 0.9089657496748851 z[13,2] - obstacle_slack + 100 alpha[1,0,12]
   <= 101.187556455878
 obs_face_o1_e1_j12: - 0.9089657496748851 z[13,0]
   + 0.4168708024292107 z[13,2] - obstacle_slack + 100 alpha[1,1,12]
   <= 97.12770810727031
 obs_face_o1_e2_j12: - 0.4168708024292109 z[13,0]
   - 0.9089657496748851 z[13,2] - obstacle_slack + 100 alpha[1,2,12]
   <= 98.01244354412204
 obs_face_o1_e3_j12: 0.9089657496748851 z[13,0]
   - 0.4168708024292107 z[13,2] - obstacle_slack + 100 alpha[1,3,12]
   <= 101.1722918927297
 obs_alpha_sum_o1_j13: alpha[1,0,13] + alpha[1,1,13] + alpha[1,2,13]
   + alpha[1,3,13] >= 1
 obs_face_o1_e0_j13: 0.4168708024292109 z[14,0]
   + 0.9089657496748851 z[14,2] - obstacle_slack + 100 alpha[1,0,13]
   <= 101.187556455878
 obs_face_o1_e1_j13: - 0.9089657496748851 z[14,0]
   + 0.4168708024292107 z[14,2] - obstacle_slack + 100 alpha[1,1,13]
   <= 97.12770810727031
 obs_face_o1_e2_j13: - 0.4168708024292109 z[14,0]
   - 0.9089657496748851 z[14,2] - obstacle_slack + 100 alpha[1,2,13]
   <= 98.01244354412204
 obs_face_o1_e3_j13: 0.9089657496748851 z[14,0]
   - 0.4168708024292107 z[14,2] - obstacle_slack + 100 alpha[1,3,13]
   <= 101.1722918927297
 obs_alpha_sum_o1_j14: alpha[1,0,14] + alpha[1,1,14] + alpha[1,2,14]
   + alpha[1,3,14] >= 1
 obs_face_o1_e0_j14: 0.4168708024292109 z[15,0]
   + 0.9089657496748851 z[15,2] - obstacle_slack + 100 alpha[1,0,14]
   <= 101.187556455878
 obs_face_o1_e1_j14: - 0.9089657496748851 z[15,0]
   + 0.4168708024292107 z[15,2] - obstacle_slack + 100 alpha[1,1,14]
   <= 97.12770810727031
 obs_face_o1_e2_j14: - 0.4168708024292109 z[15,0]
   - 0.9089657496748851 z[15,2] - obstacle_slack + 100 alpha[1,2,14]
   <= 98.01244354412204
 obs_face_o1_e3_j14: 0.9089657496748851 z[15,0]
   - 0.4168708024292107 z[15,2] - obstacle_slack + 100 alpha[1,3,14]
   <= 101.1722918927297
 obs_alpha_sum_o1_j15: alpha[1,0,15] + alpha[1,1,15] + alpha[1,2,15]
   + alpha[1,3,15] >= 1
 obs_face_o1_e0_j15: 0.4168708024292109 z[16,0]
   + 0.9089657496748851 z[16,2] - obstacle_slack + 100 alpha[1,0,15]
   <= 101.187556455878
 obs_face_o1_e1_j15: - 0.9089657496748851 z[16,0]
   + 0.4168708024292107 z[16,2] - obstacle_slack + 100 alpha[1,1,15]
   <= 97.12770810727031
 obs_face_o1_e2_j15: - 0.4168708024292109 z[16,0]
   - 0.9089657496748851 z[16,2] - obstacle_slack + 100 alpha[1,2,15]
   <= 98.01244354412204
 obs_face_o1_e3_j15: 0.9089657496748851 z[16,0]
   - 0.4168708024292107 z[16,2] - obstacle_slack + 100 alpha[1,3,15]
   <= 101.1722918927297
 obs_alpha_sum_o1_j16: alpha[1,0,16] + alpha[1,1,16] + alpha[1,2,16]
   + alpha[1,3,16] >= 1
 obs_face_o1_e0_j16: 0.4168708024292109 z[17,0]
   + 0.9089657496748851 z[17,2] - obstacle_slack + 100 alpha[1,0,16]
   <= 101.187556455878
 obs_face_o1_e1_j16: - 0.9089657496748851 z[17,0]
   + 0.4168708024292107 z[17,2] - obstacle_slack + 100 alpha[1,1,16]
   <= 97.12770810727031
 obs_face_o1_e2_j16: - 0.4168708024292109 z[17,0]
   - 0.9089657496748851 z[17,2] - obstacle_slack + 100 alpha[1,2,16]
   <= 98.01244354412204
 obs_face_o1_e3_j16: 0.9089657496748851 z[17,0]
   - 0.4168708024292107 z[17,2] - obstacle_slack + 100 alpha[1,3,16]
   <= 101.1722918927297
 obs_alpha_sum_o1_j17: alpha[1,0,17] + alpha[1,1,17] + alpha[1,2,17]
   + alpha[1,3,17] >= 1
 obs_face_o1_e0_j17: 0.4168708024292109 z[18,0]
   + 0.9089657496748851 z[18,2] - obstacle_slack + 100 alpha[1,0,17]
   <= 101.187556455878
 obs_face_o1_e1_j17: - 0.9089657496748851 z[18,0]
   + 0.4168708024292107 z[18,2] - obstacle_slack + 100 alpha[1,1,17]
   <= 97.12770810727031
 obs_face_o1_e2_j17: - 0.4168708024292109 z[18,0]
   - 0.9089657496748851 z[18,2] - obstacle_slack + 100 alpha[1,2,17]
   <= 98.01244354412204
 obs_face_o1_e3_j17: 0.9089657496748851 z[18,0]
   - 0.4168708024292107 z[18,2] - obstacle_slack + 100 alpha[1,3,17]
   <= 101.1722918927297
 obs_alpha_sum_o1_j18: alpha[1,0,18] + alpha[1,1,18] + alpha[1,2,18]
   + alpha[1,3,18] >= 1
 obs_face_o1_e0_j18: 0.4168708024292109 z[19,0]
   + 0.9089657496748851 z[19,2] - obstacle_slack + 100 alpha[1,0,18]
   <= 101.187556455878
 obs_face_o1_e1_j18: - 0.9089657496748851 z[19,0]
   + 0.4168708024292107 z[19,2] - obstacle_slack + 100 alpha[1,1,18]
   <= 97.12770810727031
 obs_face_o1_e2_j18: - 0.4168708024292109 z[19,0]
   - 0.9089657496748851 z[19,2] - obstacle_slack + 100 alpha[1,2,18]
   <= 98.01244354412204
 obs_face_o1_e3_j18: 0.9089657496748851 z[19,0]
   - 0.4168708024292107 z[19,2] - obstacle_slack + 100 alpha[1,3,18]
   <= 101.1722918927297
 obs_alpha_sum_o1_j19: alpha[1,0,19] + alpha[1,1,19] + alpha[1,2,19]
   + alpha[1,3,19] >= 1
 obs_face_o1_e0_j19: 0.4168708024292109 z[20,0]
   + 0.9089657496748851 z[20,2] - obstacle_slack + 100 alpha[1,0,19]
   <= 101.187556455878
 obs_face_o1_e1_j19: - 0.9089657496748851 z[20,0]
   + 0.4168708024292107 z[20,2] - obstacle_slack + 100 alpha[1,1,19]
   <= 97.12770810727031
 obs_face_o1_e2_j19: - 0.4168708024292109 z[20,0]
   - 0.9089657496748851 z[20,2] - obstacle_slack + 100 alpha[1,2,19]
   <= 98.01244354412204
 obs_face_o1_e3_j19: 0.9089657496748851 z[20,0]
   - 0.4168708024292107 z[20,2] - obstacle_slack + 100 alpha[1,3,19]
   <= 101.1722918927297
 obs_alpha_sum_o1_j20: alpha[1,0,20] + alpha[1,1,20] + alpha[1,2,20]
   + alpha[1,3,20] >= 1
 obs_face_o1_e0_j20: 0.4168708024292109 z[21,0]
   + 0.9089657496748851 z[21,2] - obstacle_slack + 100 alpha[1,0,20]
   <= 101.187556455878
 obs_face_o1_e1_j20: - 0.9089657496748851 z[21,0]
   + 0.4168708024292107 z[21,2] - obstacle_slack + 100 alpha[1,1,20]
   <= 97.12770810727031
 obs_face_o1_e2_j20: - 0.4168708024292109 z[21,0]
   - 0.9089657496748851 z[21,2] - obstacle_slack + 100 alpha[1,2,20]
   <= 98.01244354412204
 obs_face_o1_e3_j20: 0.9089657496748851 z[21,0]
   - 0.4168708024292107 z[21,2] - obstacle_slack + 100 alpha[1,3,20]
   <= 101.1722918927297
 obs_alpha_sum_o1_j21: alpha[1,0,21] + alpha[1,1,21] + alpha[1,2,21]
   + alpha[1,3,21] >= 1
 obs_face_o1_e0_j21: 0.4168708024292109 z[22,0]
   + 0.9089657496748851 z[22,2] - obstacle_slack + 100 alpha[1,0,21]
   <= 101.187556455878
 obs_face_o1_e1_j21: - 0.9089657496748851 z[22,0]
   + 0.4168708024292107 z[22,2] - obstacle_slack + 100 alpha[1,1,21]
   <= 97.12770810727031
 obs_face_o1_e2_j21: - 0.4168708024292109 z[22,0]
   - 0.9089657496748851 z[22,2] - obstacle_slack + 100 alpha[1,2,21]
   <= 98.01244354412204
 obs_face_o1_e3_j21: 0.9089657496748851 z[22,0]
   - 0.4168708024292107 z[22,2] - obstacle_slack + 100 alpha[1,3,21]
   <= 101.1722918927297
 obs_alpha_sum_o1_j22: alpha[1,0,22] + alpha[1,1,22] + alpha[1,2,22]
   + alpha[1,3,22] >= 1
 obs_face_o1_e0_j22: 0.4168708024292109 z[23,0]
   + 0.9089657496748851 z[23,2] - obstacle_slack + 100 alpha[1,0,22]
   <= 101.187556455878
 obs_face_o1_e1_j22: - 0.9089657496748851 z[23,0]
   + 0.4168708024292107 z[23,2] - obstacle_slack + 100 alpha[1,1,22]
   <= 97.12770810727031
 obs_face_o1_e2_j22: - 0.4168708024292109 z[23,0]
   - 0.9089657496748851 z[23,2] - obstacle_slack + 100 alpha[1,2,22]
   <= 98.01244354412204
 obs_face_o1_e3_j22: 0.9089657496748851 z[23,0]
   - 0.4168708024292107 z[23,2] - obstacle_slack + 100 alpha[1,3,22]
   <= 101.1722918927297
 obs_alpha_sum_o1_j23: alpha[1,0,23] + alpha[1,1,23] + alpha[1,2,23]
   + alpha[1,3,23] >= 1
 obs_face_o1_e0_j23: 0.4168708024292109 z[24,0]
   + 0.9089657496748851 z[24,2] - obstacle_slack + 100 alpha[1,0,23]
   <= 101.187556455878
 obs_face_o1_e1_j23: - 0.9089657496748851 z[24,0]
   + 0.4168708024292107 z[24,2] - obstacle_slack + 100 alpha[1,1,23]
   <= 97.12770810727031
 obs_face_o1_e2_j23: - 0.4168708024292109 z[24,0]
   - 0.9089657496748851 z[24,2] - obstacle_slack + 100 alpha[1,2,23]
   <= 98.01244354412204
 obs_face_o1_e3_j23: 0.9089657496748851 z[24,0]
   - 0.4168708024292107 z[24,2] - obstacle_slack + 100 alpha[1,3,23]
   <= 101.1722918927297
 obs_alpha_sum_o1_j24: alpha[1,0,24] + alpha[1,1,24] + alpha[1,2,24]
   + alpha[1,3,24] >= 1
 obs_face_o1_e0_j24: 0.4168708024292109 z[25,0]
   + 0.9089657496748851 z[25,2] - obstacle_slack + 100 alpha[1,0,24]
   <= 101.187556455878
 obs_face_o1_e1_j24: - 0.9089657496748851 z[25,0]
   + 0.4168708024292107 z[25,2] - obstacle_slack + 100 alpha[1,1,24]
   <= 97.12770810727031
 obs_face_o1_e2_j24: - 0.4168708024292109 z[25,0]
   - 0.9089657496748851 z[25,2] - obstacle_slack + 100 alpha[1,2,24]
   <= 98.01244354412204
 obs_face_o1_e3_j24: 0.9089657496748851 z[25,0]
   - 0.4168708024292107 z[25,2] - obstacle_slack + 100 alpha[1,3,24]
   <= 101.1722918927297
 obs_alpha_sum_o1_j25: alpha[1,0,25] + alpha[1,1,25] + alpha[1,2,25]
   + alpha[1,3,25] >= 1
 obs_face_o1_e0_j25: 0.4168708024292109 z[26,0]
   + 0.9089657496748851 z[26,2] - obstacle_slack + 100 alpha[1,0,25]
   <= 101.187556455878
 obs_face_o1_e1_j25: - 0.9089657496748851 z[26,0]
   + 0.4168708024292107 z[26,2] - obstacle_slack + 100 alpha[1,1,25]
   <= 97.12770810727031
 obs_face_o1_e2_j25: - 0.4168708024292109 z[26,0]
   - 0.9089657496748851 z[26,2] - obstacle_slack + 100 alpha[1,2,25]
   <= 98.01244354412204
 obs_face_o1_e3_j25: 0.9089657496748851 z[26,0]
   - 0.4168708024292107 z[26,2] - obstacle_slack + 100 alpha[1,3,25]
   <= 101.1722918927297
 obs_alpha_sum_o1_j26: alpha[1,0,26] + alpha[1,1,26] + alpha[1,2,26]
   + alpha[1,3,26] >= 1
 obs_face_o1_e0_j26: 0.4168708024292109 z[27,0]
   + 0.9089657496748851 z[27,2] - obstacle_slack + 100 alpha[1,0,26]
   <= 101.187556455878
 obs_face_o1_e1_j26: - 0.9089657496748851 z[27,0]
   + 0.4168708024292107 z[27,2] - obstacle_slack + 100 alpha[1,1,26]
   <= 97.12770810727031
 obs_face_o1_e2_j26: - 0.4168708024292109 z[27,0]
   - 0.9089657496748851 z[27,2] - obstacle_slack + 100 alpha[1,2,26]
   <= 98.01244354412204
 obs_face_o1_e3_j26: 0.9089657496748851 z[27,0]
   - 0.4168708024292107 z[27,2] - obstacle_slack + 100 alpha[1,3,26]
   <= 101.1722918927297
 obs_alpha_sum_o1_j27: alpha[1,0,27] + alpha[1,1,27] + alpha[1,2,27]
   + alpha[1,3,27] >= 1
 obs_face_o1_e0_j27: 0.4168708024292109 z[28,0]
   + 0.9089657496748851 z[28,2] - obstacle_slack + 100 alpha[1,0,27]
   <= 101.187556455878
 obs_face_o1_e1_j27: - 0.9089657496748851 z[28,0]
   + 0.4168708024292107 z[28,2] - obstacle_slack + 100 alpha[1,1,27]
   <= 97.12770810727031
 obs_face_o1_e2_j27: - 0.4168708024292109 z[28,0]
   - 0.9089657496748851 z[28,2] - obstacle_slack + 100 alpha[1,2,27]
   <= 98.01244354412204
 obs_face_o1_e3_j27: 0.9089657496748851 z[28,0]
   - 0.4168708024292107 z[28,2] - obstacle_slack + 100 alpha[1,3,27]
   <= 101.1722918927297
 obs_alpha_sum_o1_j28: alpha[1,0,28] + alpha[1,1,28] + alpha[1,2,28]
   + alpha[1,3,28] >= 1
 obs_face_o1_e0_j28: 0.4168708024292109 z[29,0]
   + 0.9089657496748851 z[29,2] - obstacle_slack + 100 alpha[1,0,28]
   <= 101.187556455878
 obs_face_o1_e1_j28: - 0.9089657496748851 z[29,0]
   + 0.4168708024292107 z[29,2] - obstacle_slack + 100 alpha[1,1,28]
   <= 97.12770810727031
 obs_face_o1_e2_j28: - 0.4168708024292109 z[29,0]
   - 0.9089657496748851 z[29,2] - obstacle_slack + 100 alpha[1,2,28]
   <= 98.01244354412204
 obs_face_o1_e3_j28: 0.9089657496748851 z[29,0]
   - 0.4168708024292107 z[29,2] - obstacle_slack + 100 alpha[1,3,28]
   <= 101.1722918927297
 obs_alpha_sum_o1_j29: alpha[1,0,29] + alpha[1,1,29] + alpha[1,2,29]
   + alpha[1,3,29] >= 1
 obs_face_o1_e0_j29: 0.4168708024292109 z[30,0]
   + 0.9089657496748851 z[30,2] - obstacle_slack + 100 alpha[1,0,29]
   <= 101.187556455878
 obs_face_o1_e1_j29: - 0.9089657496748851 z[30,0]
   + 0.4168708024292107 z[30,2] - obstacle_slack + 100 alpha[1,1,29]
   <= 97.12770810727031
 obs_face_o1_e2_j29: - 0.4168708024292109 z[30,0]
   - 0.9089657496748851 z[30,2] - obstacle_slack + 100 alpha[1,2,29]
   <= 98.01244354412204
 obs_face_o1_e3_j29: 0.9089657496748851 z[30,0]
   - 0.4168708024292107 z[30,2] - obstacle_slack + 100 alpha[1,3,29]
   <= 101.1722918927297
 obs_alpha_sum_o2_j0: alpha[2,0,0] + alpha[2,1,0] + alpha[2,2,0]
   + alpha[2,3,0] >= 1
 obs_face_o2_e0_j0: 0.2955202066613396 z[1,0] + 0.9553364891256059 z[1,2]
   - obstacle_slack + 100 alpha[2,0,0] <= 99.76559862317798
 obs_face_o2_e1_j0: - 0.9553364891256061 z[1,0] + 0.2955202066613394 z[1,2]
   - obstacle_slack + 100 alpha[2,1,0] <= 97.03434665318917
 obs_face_o2_e2_j0: - 0.2955202066613396 z[1,0] - 0.9553364891256059 z[1,2]
   - obstacle_slack + 100 alpha[2,2,0] <= 99.43440137682201
 obs_face_o2_e3_j0: 0.9553364891256061 z[1,0] - 0.2955202066613394 z[1,2]
   - obstacle_slack + 100 alpha[2,3,0] <= 102.1656533468108
 obs_alpha_sum_o2_j1: alpha[2,0,1] + alpha[2,1,1] + alpha[2,2,1]
   + alpha[2,3,1] >= 1
 obs_face_o2_e0_j1: 0.2955202066613396 z[2,0] + 0.9553364891256059 z[2,2]
   - obstacle_slack + 100 alpha[2,0,1] <= 99.76559862317798
 obs_face_o2_e1_j1: - 0.9553364891256061 z[2,0] + 0.2955202066613394 z[2,2]
   - obstacle_slack + 100 alpha[2,1,1] <= 97.03434665318917
 obs_face_o2_e2_j1: - 0.2955202066613396 z[2,0] - 0.9553364891256059 z[2,2]
   - obstacle_slack + 100 alpha[2,2,1] <= 99.43440137682201
 obs_face_o2_e3_j1: 0.9553364891256061 z[2,0] - 0.2955202066613394 z[2,2]
   - obstacle_slack + 100 alpha[2,3,1] <= 102.1656533468108
 obs_alpha_sum_o2_j2: alpha[2,0,2] + alpha[2,1,2] + alpha[2,2,2]
   + alpha[2,3,2] >= 1
 obs_face_o2_e0_j2: 0.2955202066613396 z[3,0] + 0.9553364891256059 z[3,2]
   - obstacle_slack + 100 alpha[2,0,2] <= 99.76559862317798
 obs_face_o2_e1_j2: - 0.9553364891256061 z[3,0] + 0.2955202066613394 z[3,2]
   - obstacle_slack + 100 alpha[2,1,2] <= 97.03434665318917
 obs_face_o2_e2_j2: - 0.2955202066613396 z[3,0] - 0.9553364891256059 z[3,2]
   - obstacle_slack + 100 alpha[2,2,2] <= 99.43440137682201
 obs_face_o2_e3_j2: 0.9553364891256061 z[3,0] - 0.2955202066613394 z[3,2]
   - obstacle_slack + 100 alpha[2,3,2] <= 102.1656533468108
 obs_alpha_sum_o2_j3: alpha[2,0,3] + alpha[2,1,3] + alpha[2,2,3]
   + alpha[2,3,3] >= 1
 obs_face_o2_e0_j3: 0.2955202066613396 z[4,0] + 0.9553364891256059 z[4,2]
   - obstacle_slack + 100 alpha[2,0,3] <= 99.76559862317798
 obs_face_o2_e1_j3: - 0.9553364891256061 z[4,0] + 0.2955202066613394 z[4,2]
   - obstacle_slack + 100 alpha[2,1,3] <= 97.03434665318917
 obs_face_o2_e2_j3: - 0.2955202066613396 z[4,0] - 0.9553364891256059 z[4,2]
   - obstacle_slack + 100 alpha[2,2,3] <= 99.43440137682201
 obs_face_o2_e3_j3: 0.9553364891256061 z[4,0] - 0.2955202066613394 z[4,2]
   - obstacle_slack + 100 alpha[2,3,3] <= 102.1656533468108
 obs_alpha_sum_o2_j4: alpha[2,0,4] + alpha[2,1,4] + alpha[2,2,4]
   + alpha[2,3,4] >= 1
 obs_face_o2_e0_j4: 0.2955202066613396 z[5,0] + 0.9553364891256059 z[5,2]
   - obstacle_slack + 100 alpha[2,0,4] <= 99.76559862317798
 obs_face_o2_e1_j4: - 0.9553364891256061 z[5,0] + 0.2955202066613394 z[5,2]
   - obstacle_slack + 100 alpha[2,1,4] <= 97.03434665318917
 obs_face_o2_e2_j4: - 0.2955202066613396 z[5,0] - 0.9553364891256059 z[5,2]
   - obstacle_slack + 100 alpha[2,2,4] <= 99.43440137682201
 obs_face_o2_e3_j4: 0.9553364891256061 z[5,0] - 0.2955202066613394 z[5,2]
   - obstacle_slack + 100 alpha[2,3,4] <= 102.1656533468108
 obs_alpha_sum_o2_j5: alpha[2,0,5] + alpha[2,1,5] + alpha[2,2,5]
   + alpha[2,3,5] >= 1
 obs_face_o2_e0_j5: 0.2955202066613396 z[6,0] + 0.9553364891256059 z[6,2]
   - obstacle_slack + 100 alpha[2,0,5] <= 99.76559862317798
 obs_face_o2_e1_j5: - 0.9553364891256061 z[6,0] + 0.2955202066613394 z[6,2]
   - obstacle_slack + 100 alpha[2,1,5] <= 97.03434665318917
 obs_face_o2_e2_j5: - 0.2955202066613396 z[6,0] - 0.9553364891256059 z[6,2]
   - obstacle_slack + 100 alpha[2,2,5] <= 99.43440137682201
 obs_face_o2_e3_j5: 0.9553364891256061 z[6,0] - 0.2955202066613394 z[6,2]
   - obstacle_slack + 100 alpha[2,3,5] <= 102.1656533468108
 obs_alpha_sum_o2_j6: alpha[2,0,6] + alpha[2,1,6] + alpha[2,2,6]
   + alpha[2,3,6] >= 1
 obs_face_o2_e0_j6: 0.2955202066613396 z[7,0] + 0.9553364891256059 z[7,2]
   - obstacle_slack + 100 alpha[2,0,6] <= 99.76559862317798
 obs_face_o2_e1_j6: - 0.9553364891256061 z[7,0] + 0.2955202066613394 z[7,2]
   - obstacle_slack + 100 alpha[2,1,6] <= 97.03434665318917
 obs_face_o2_e2_j6: - 0.2955202066613396 z[7,0] - 0.9553364891256059 z[7,2]
   - obstacle_slack + 100 alpha[2,2,6] <= 99.43440137682201
 obs_face_o2_e3_j6: 0.9553364891256061 z[7,0] - 0.2955202066613394 z[7,2]
   - obstacle_slack + 100 alpha[2,3,6] <= 102.1656533468108
 obs_alpha_sum_o2_j7: alpha[2,0,7] + alpha[2,1,7] + alpha[2,2,7]
   + alpha[2,3,7] >= 1
 obs_face_o2_e0_j7: 0.2955202066613396 z[8,0] + 0.9553364891256059 z[8,2]
   - obstacle_slack + 100 alpha[2,0,7] <= 99.76559862317798
 obs_face_o2_e1_j7: - 0.9553364891256061 z[8,0] + 0.2955202066613394 z[8,2]
   - obstacle_slack + 100 alpha[2,1,7] <= 97.03434665318917
 obs_face_o2_e2_j7: - 0.2955202066613396 z[8,0] - 0.9553364891256059 z[8,2]
   - obstacle_slack + 100 alpha[2,2,7] <= 99.43440137682201
 obs_face_o2_e3_j7: 0.9553364891256061 z[8,0] - 0.2955202066613394 z[8,2]
   - obstacle_slack + 100 alpha[2,3,7] <= 102.1656533468108
 obs_alpha_sum_o2_j8: alpha[2,0,8] + alpha[2,1,8] + alpha[2,2,8]
   + alpha[2,3,8] >= 1
 obs_face_o2_e0_j8: 0.2955202066613396 z[9,0] + 0.9553364891256059 z[9,2]
   - obstacle_slack + 100 alpha[2,0,8] <= 99.76559862317798
 obs_face_o2_e1_j8: - 0.9553364891256061 z[9,0] + 0.2955202066613394 z[9,2]
   - obstacle_slack + 100 alpha[2,1,8] <= 97.03434665318917
 obs_face_o2_e2_j8: - 0.2955202066613396 z[9,0] - 0.9553364891256059 z[9,2]
   - obstacle_slack + 100 alpha[2,2,8] <= 99.43440137682201
 obs_face_o2_e3_j8: 0.9553364891256061 z[9,0] - 0.2955202066613394 z[9,2]
   - obstacle_slack + 100 alpha[2,3,8] <= 102.1656533468108
 obs_alpha_sum_o2_j9: alpha[2,0,9] + alpha[2,1,9] + alpha[2,2,9]
   + alpha[2,3,9] >= 1
 obs_face_o2_e0_j9: 0.2955202066613396 z[10,0] + 0.9553364891256059 z[10,2]
   - obstacle_slack + 100 alpha[2,0,9] <= 99.76559862317798
 obs_face_o2_e1_j9: - 0.9553364891256061 z[10,0]
   + 0.2955202066613394 z[10,2] - obstacle_slack + 100 alpha[2,1,9]
   <= 97.03434665318917
 obs_face_o2_e2_j9: - 0.2955202066613396 z[10,0]
   - 0.9553364891256059 z[10,2] - obstacle_slack + 100 alpha[2,2,9]
   <= 99.43440137682201
 obs_face_o2_e3_j9: 0.9553364891256061 z[10,0] - 0.2955202066613394 z[10,2]
   - obstacle_slack + 100 alpha[2,3,9] <= 102.1656533468108
 obs_alpha_sum_o2_j10: alpha[2,0,10] + alpha[2,1,10] + alpha[2,2,10]
   + alpha[2,3,10] >= 1
 obs_face_o2_e0_j10: 0.2955202066613396 z[11,0]
   + 0.9553364891256059 z[11,2] - obstacle_slack + 100 alpha[2,0,10]
   <= 99.76559862317798
 obs_face_o2_e1_j10: - 0.9553364891256061 z[11,0]
   + 0.2955202066613394 z[11,2] - obstacle_slack + 100 alpha[2,1,10]
   <= 97.03434665318917
 obs_face_o2_e2_j10: - 0.2955202066613396 z[11,0]
   - 0.9553364891256059 z[11,2] - obstacle_slack + 100 alpha[2,2,10]
   <= 99.43440137682201
 obs_face_o2_e3_j10: 0.9553364891256061 z[11,0]
   - 0.2955202066613394 z[11,2] - obstacle_slack + 100 alpha[2,3,10]
   <= 102.1656533468108
 obs_alpha_sum_o2_j11: alpha[2,0,11] + alpha[2,1,11] + alpha[2,2,11]
   + alpha[2,3,11] >= 1
 obs_face_o2_e0_j11: 0.2955202066613396 z[12,0]
   + 0.9553364891256059 z[12,2] - obstacle_slack + 100 alpha[2,0,11]
   <= 99.76559862317798
 obs_face_o2_e1_j11: - 0.9553364891256061 z[12,0]
   + 0.2955202066613394 z[12,2] - obstacle_slack + 100 alpha[2,1,11]
   <= 97.03434665318917
 obs_face_o2_e2_j11: - 0.2955202066613396 z[12,0]
   - 0.9553364891256059 z[12,2] - obstacle_slack + 100 alpha[2,2,11]
   <= 99.43440137682201
 obs_face_o2_e3_j11: 0.9553364891256061 z[12,0]
   - 0.2955202066613394 z[12,2] - obstacle_slack + 100 alpha[2,3,11]
   <= 102.1656533468108
 obs_alpha_sum_o2_j12: alpha[2,0,12] + alpha[2,1,12] + alpha[2,2,12]
   + alpha[2,3,12] >= 1
 obs_face_o2_e0_j12: 0.2955202066613396 z[13,0]
   + 0.9553364891256059 z[13,2] - obstacle_slack + 100 alpha[2,0,12]
   <= 99.76559862317798
 obs_face_o2_e1_j12: - 0.9553364891256061 z[13,0]
   + 0.2955202066613394 z[13,2] - obstacle_slack + 100 alpha[2,1,12]
   <= 97.03434665318917
 obs_face_o2_e2_j12: - 0.2955202066613396 z[13,0]
   - 0.9553364891256059 z[13,2] - obstacle_slack + 100 alpha[2,2,12]
   <= 99.43440137682201
 obs_face_o2_e3_j12: 0.9553364891256061 z[13,0]
   - 0.2955202066613394 z[13,2] - obstacle_slack + 100 alpha[2,3,12]
   <= 102.1656533468108
 obs_alpha_sum_o2_j13: alpha[2,0,13] + alpha[2,1,13] + alpha[2,2,13]
   + alpha[2,3,13] >= 1
 obs_face_o2_e0_j13: 0.2955202066613396 z[14,0]
   + 0.9553364891256059 z[14,2] - obstacle_slack + 100 alpha[2,0,13]
   <= 99.76559862317798
 obs_face_o2_e1_j13: - 0.9553364891256061 z[14,0]
   + 0.2955202066613394 z[14,2] - obstacle_slack + 100 alpha[2,1,13]
   <= 97.03434665318917
 obs_face_o2_e2_j13: - 0.2955202066613396 z[14,0]
   - 0.9553364891256059 z[14,2] - obstacle_slack + 100 alpha[2,2,13]
   <= 99.43440137682201
 obs_face_o2_e3_j13: 0.9553364891256061 z[14,0]
   - 0.2955202066613394 z[14,2] - obstacle_slack + 100 alpha[2,3,13]
   <= 102.1656533468108
 obs_alpha_sum_o2_j14: alpha[2,0,14] + alpha[2,1,14] + alpha[2,2,14]
   + alpha[2,3,14] >= 1
 obs_face_o2_e0_j14: 0.2955202066613396 z[15,0]
   + 0.9553364891256059 z[15,2] - obstacle_slack + 100 alpha[2,0,14]
   <= 99.76559862317798
 obs_face_o2_e1_j14: - 0.9553364891256061 z[15,0]
   + 0.2955202066613394 z[15,2] - obstacle_slack + 100 alpha[2,1,14]
   <= 97.03434665318917
 obs_face_o2_e2_j14: - 0.2955202066613396 z[15,0]
   - 0.9553364891256059 z[15,2] - obstacle_slack + 100 alpha[2,2,14]
   <= 99.43440137682201
 obs_face_o2_e3_j14: 0.9553364891256061 z[15,0]
   - 0.2955202066613394 z[15,2] - obstacle_slack + 100 alpha[2,3,14]
   <= 102.1656533468108
 obs_alpha_sum_o2_j15: alpha[2,0,15] + alpha[2,1,15] + alpha[2,2,15]
   + alpha[2,3,15] >= 1
 obs_face_o2_e0_j15: 0.2955202066613396 z[16,0]
   + 0.9553364891256059 z[16,2] - obstacle_slack + 100 alpha[2,0,15]
   <= 99.76559862317798
 obs_face_o2_e1_j15: - 0.9553364891256061 z[16,0]
   + 0.2955202066613394 z[16,2] - obstacle_slack + 100 alpha[2,1,15]
   <= 97.03434665318917
 obs_face_o2_e2_j15: - 0.2955202066613396 z[16,0]
   - 0.9553364891256059 z[16,2] - obstacle_slack + 100 alpha[2,2,15]
   <= 99.43440137682201
 obs_face_o2_e3_j15: 0.9553364891256061 z[16,0]
   - 0.2955202066613394 z[16,2] - obstacle_slack + 100 alpha[2,3,15]
   <= 102.1656533468108
 obs_alpha_sum_o2_j16: alpha[2,0,16] + alpha[2,1,16] + alpha[2,2,16]
   + alpha[2,3,16] >= 1
 obs_face_o2_e0_j16: 0.2955202066613396 z[17,0]
   + 0.9553364891256059 z[17,2] - obstacle_slack + 100 alpha[2,0,16]
   <= 99.76559862317798
 obs_face_o2_e1_j16: - 0.9553364891256061 z[17,0]
   + 0.2955202066613394 z[17,2] - obstacle_slack + 100 alpha[2,1,16]
   <= 97.03434665318917
 obs_face_o2_e2_j16: - 0.2955202066613396 z[17,0]
   - 0.9553364891256059 z[17,2] - obstacle_slack + 100 alpha[2,2,16]
   <= 99.43440137682201
 obs_face_o2_e3_j16: 0.9553364891256061 z[17,0]
   - 0.2955202066613394 z[17,2] - obstacle_slack + 100 alpha[2,3,16]
   <= 102.1656533468108
 obs_alpha_sum_o2_j17: alpha[2,0,17] + alpha[2,1,17] + alpha[2,2,17]
   + alpha[2,3,17] >= 1
 obs_face_o2_e0_j17: 0.2955202066613396 z[18,0]
   + 0.9553364891256059 z[18,2] - obstacle_slack + 100 alpha[2,0,17]
   <= 99.76559862317798
 obs_face_o2_e1_j17: - 0.9553364891256061 z[18,0]
   + 0.2955202066613394 z[18,2] - obstacle_slack + 100 alpha[2,1,17]
   <= 97.03434665318917
 obs_face_o2_e2_j17: - 0.2955202066613396 z[18,0]
   - 0.9553364891256059 z[18,2] - obstacle_slack + 100 alpha[2,2,17]
   <= 99.43440137682201
 obs_face_o2_e3_j17: 0.9553364891256061 z[18,0]
   - 0.2955202066613394 z[18,2] - obstacle_slack + 100 alpha[2,3,17]
   <= 102.1656533468108
 obs_alpha_sum_o2_j18: alpha[2,0,18] + alpha[2,1,18] + alpha[2,2,18]
   + alpha[2,3,18] >= 1
 obs_face_o2_e0_j18: 0.2955202066613396 z[19,0]
   + 0.9553364891256059 z[19,2] - obstacle_slack + 100 alpha[2,0,18]
   <= 99.76559862317798
 obs_face_o2_e1_j18: - 0.9553364891256061 z[19,0]
   + 0.2955202066613394 z[19,2] - obstacle_slack + 100 alpha[2,1,18]
   <= 97.03434665318917
 obs_face_o2_e2_j18: - 0.2955202066613396 z[19,0]
   - 0.9553364891256059 z[19,2] - obstacle_slack + 100 alpha[2,2,18]
   <= 99.43440137682201
 obs_face_o2_e3_j18: 0.9553364891256061 z[19,0]
   - 0.2955202066613394 z[19,2] - obstacle_slack + 100 alpha[2,3,18]
   <= 102.1656533468108
 obs_alpha_sum_o2_j19: alpha[2,0,19] + alpha[2,1,19] + alpha[2,2,19]
   + alpha[2,3,19] >= 1
 obs_face_o2_e0_j19: 0.2955202066613396 z[20,0]
   + 0.9553364891256059 z[20,2] - obstacle_slack + 100 alpha[2,0,19]
   <= 99.76559862317798
 obs_face_o2_e1_j19: - 0.9553364891256061 z[20,0]
   + 0.2955202066613394 z[20,2] - obstacle_slack + 100 alpha[2,1,19]
   <= 97.03434665318917
 obs_face_o2_e2_j19: - 0.2955202066613396 z[20,0]
   - 0.9553364891256059 z[20,2] - obstacle_slack + 100 alpha[2,2,19]
   <= 99.43440137682201
 obs_face_o2_e3_j19: 0.9553364891256061 z[20,0]
   - 0.2955202066613394 z[20,2] - obstacle_slack + 100 alpha[2,3,19]
   <= 102.1656533468108
 obs_alpha_sum_o2_j20: alpha[2,0,20] + alpha[2,1,20] + alpha[2,2,20]
   + alpha[2,3,20] >= 1
 obs_face_o2_e0_j20: 0.2955202066613396 z[21,0]
   + 0.9553364891256059 z[21,2] - obstacle_slack + 100 alpha[2,0,20]
   <= 99.76559862317798
 obs_face_o2_e1_j20: - 0.9553364891256061 z[21,0]
   + 0.2955202066613394 z[21,2] - obstacle_slack + 100 alpha[2,1,20]
   <= 97.03434665318917
 obs_face_o2_e2_j20: - 0.2955202066613396 z[21,0]
   - 0.9553364891256059 z[21,2] - obstacle_slack + 100 alpha[2,2,20]
   <= 99.43440137682201
 obs_face_o2_e3_j20: 0.9553364891256061 z[21,0]
   - 0.2955202066613394 z[21,2] - obstacle_slack + 100 alpha[2,3,20]
   <= 102.1656533468108
 obs_alpha_sum_o2_j21: alpha[2,0,21] + alpha[2,1,21] + alpha[2,2,21]
   + alpha[2,3,21] >= 1
 obs_face_o2_e0_j21: 0.2955202066613396 z[22,0]
   + 0.9553364891256059 z[22,2] - obstacle_slack + 100 alpha[2,0,21]
   <= 99.76559862317798
 obs_face_o2_e1_j21: - 0.9553364891256061 z[22,0]
   + 0.2955202066613394 z[22,2] - obstacle_slack + 100 alpha[2,1,21]
   <= 97.03434665318917
 obs_face_o2_e2_j21: - 0.2955202066613396 z[22,0]
   - 0.9553364891256059 z[22,2] - obstacle_slack + 100 alpha[2,2,21]
   <= 99.43440137682201
 obs_face_o2_e3_j21: 0.9553364891256061 z[22,0]
   - 0.2955202066613394 z[22,2] - obstacle_slack + 100 alpha[2,3,21]
   <= 102.1656533468108
 obs_alpha_sum_o2_j22: alpha[2,0,22] + alpha[2,1,22] + alpha[2,2,22]
   + alpha[2,3,22] >= 1
 obs_face_o2_e0_j22: 0.2955202066613396 z[23,0]
   + 0.9553364891256059 z[23,2] - obstacle_slack + 100 alpha[2,0,22]
   <= 99.76559862317798
 obs_face_o2_e1_j22: - 0.9553364891256061 z[23,0]
   + 0.2955202066613394 z[23,2] - obstacle_slack + 100 alpha[2,1,22]
   <= 97.03434665318917
 obs_face_o2_e2_j22: - 0.2955202066613396 z[23,0]
   - 0.9553364891256059 z[23,2] - obstacle_slack + 100 alpha[2,2,22]
   <= 99.43440137682201
 obs_face_o2_e3_j22: 0.9553364891256061 z[23,0]
   - 0.2955202066613394 z[23,2] - obstacle_slack + 100 alpha[2,3,22]
   <= 102.1656533468108
 obs_alpha_sum_o2_j23: alpha[2,0,23] + alpha[2,1,23] + alpha[2,2,23]
   + alpha[2,3,23] >= 1
 obs_face_o2_e0_j23: 0.2955202066613396 z[24,0]
   + 0.9553364891256059 z[24,2] - obstacle_slack + 100 alpha[2,0,23]
   <= 99.76559862317798
 obs_face_o2_e1_j23: - 0.9553364891256061 z[24,0]
   + 0.2955202066613394 z[24,2] - obstacle_slack + 100 alpha[2,1,23]
   <= 97.03434665318917
 obs_face_o2_e2_j23: - 0.2955202066613396 z[24,0]
   - 0.9553364891256059 z[24,2] - obstacle_slack + 100 alpha[2,2,23]
   <= 99.43440137682201
 obs_face_o2_e3_j23: 0.9553364891256061 z[24,0]
   - 0.2955202066613394 z[24,2] - obstacle_slack + 100 alpha[2,3,23]
   <= 102.1656533468108
 obs_alpha_sum_o2_j24: alpha[2,0,24] + alpha[2,1,24] + alpha[2,2,24]
   + alpha[2,3,24] >= 1
 obs_face_o2_e0_j24: 0.2955202066613396 z[25,0]
   + 0.9553364891256059 z[25,2] - obstacle_slack + 100 alpha[2,0,24]
   <= 99.76559862317798
 obs_face_o2_e1_j24: - 0.9553364891256061 z[25,0]
   + 0.2955202066613394 z[25,2] - obstacle_slack + 100 alpha[2,1,24]
   <= 97.03434665318917
 obs_face_o2_e2_j24: - 0.2955202066613396 z[25,0]
   - 0.9553364891256059 z[25,2] - obstacle_slack + 100 alpha[2,2,24]
   <= 99.43440137682201
 obs_face_o2_e3_j24: 0.9553364891256061 z[25,0]
   - 0.2955202066613394 z[25,2] - obstacle_slack + 100 alpha[2,3,24]
   <= 102.1656533468108
 obs_alpha_sum_o2_j25: alpha[2,0,25] + alpha[2,1,25] + alpha[2,2,25]
   + alpha[2,3,25] >= 1
 obs_face_o2_e0_j25: 0.2955202066613396 z[26,0]
   + 0.9553364891256059 z[26,2] - obstacle_slack + 100 alpha[2,0,25]
   <= 99.76559862317798
 obs_face_o2_e1_j25: - 0.9553364891256061 z[26,0]
   + 0.2955202066613394 z[26,2] - obstacle_slack + 100 alpha[2,1,25]
   <= 97.03434665318917
 obs_face_o2_e2_j25: - 0.2955202066613396 z[26,0]
   - 0.9553364891256059 z[26,2] - obstacle_slack + 100 alpha[2,2,25]
   <= 99.43440137682201
 obs_face_o2_e3_j25: 0.9553364891256061 z[26,0]
   - 0.2955202066613394 z[26,2] - obstacle_slack + 100 alpha[2,3,25]
   <= 102.1656533468108
 obs_alpha_sum_o2_j26: alpha[2,0,26] + alpha[2,1,26] + alpha[2,2,26]
   + alpha[2,3,26] >= 1
 obs_face_o2_e0_j26: 0.2955202066613396 z[27,0]
   + 0.9553364891256059 z[27,2] - obstacle_slack + 100 alpha[2,0,26]
   <= 99.76559862317798
 obs_face_o2_e1_j26: - 0.9553364891256061 z[27,0]
   + 0.2955202066613394 z[27,2] - obstacle_slack + 100 alpha[2,1,26]
   <= 97.03434665318917
 obs_face_o2_e2_j26: - 0.2955202066613396 z[27,0]
   - 0.9553364891256059 z[27,2] - obstacle_slack + 100 alpha[2,2,26]
   <= 99.43440137682201
 obs_face_o2_e3_j26: 0.9553364891256061 z[27,0]
   - 0.2955202066613394 z[27,2] - obstacle_slack + 100 alpha[2,3,26]
   <= 102.1656533468108
 obs_alpha_sum_o2_j27: alpha[2,0,27] + alpha[2,1,27] + alpha[2,2,27]
   + alpha[2,3,27] >= 1
 obs_face_o2_e0_j27: 0.2955202066613396 z[28,0]
   + 0.9553364891256059 z[28,2] - obstacle_slack + 100 alpha[2,0,27]
   <= 99.76559862317798
 obs_face_o2_e1_j27: - 0.9553364891256061 z[28,0]
   + 0.2955202066613394 z[28,2] - obstacle_slack + 100 alpha[2,1,27]
   <= 97.03434665318917
 obs_face_o2_e2_j27: - 0.2955202066613396 z[28,0]
   - 0.9553364891256059 z[28,2] - obstacle_slack + 100 alpha[2,2,27]
   <= 99.43440137682201
 obs_face_o2_e3_j27: 0.9553364891256061 z[28,0]
   - 0.2955202066613394 z[28,2] - obstacle_slack + 100 alpha[2,3,27]
   <= 102.1656533468108
 obs_alpha_sum_o2_j28: alpha[2,0,28] + alpha[2,1,28] + alpha[2,2,28]
   + alpha[2,3,28] >= 1
 obs_face_o2_e0_j28: 0.2955202066613396 z[29,0]
   + 0.9553364891256059 z[29,2] - obstacle_slack + 100 alpha[2,0,28]
   <= 99.76559862317798
 obs_face_o2_e1_j28: - 0.9553364891256061 z[29,0]
   + 0.2955202066613394 z[29,2] - obstacle_slack + 100 alpha[2,1,28]
   <= 97.03434665318917
 obs_face_o2_e2_j28: - 0.2955202066613396 z[29,0]
   - 0.9553364891256059 z[29,2] - obstacle_slack + 100 alpha[2,2,28]
   <= 99.43440137682201
 obs_face_o2_e3_j28: 0.9553364891256061 z[29,0]
   - 0.2955202066613394 z[29,2] - obstacle_slack + 100 alpha[2,3,28]
   <= 102.1656533468108
 obs_alpha_sum_o2_j29: alpha[2,0,29] + alpha[2,1,29] + alpha[2,2,29]
   + alpha[2,3,29] >= 1
 obs_face_o2_e0_j29: 0.2955202066613396 z[30,0]
   + 0.9553364891256059 z[30,2] - obstacle_slack + 100 alpha[2,0,29]
   <= 99.76559862317798
 obs_face_o2_e1_j29: - 0.9553364891256061 z[30,0]
   + 0.2955202066613394 z[30,2] - obstacle_slack + 100 alpha[2,1,29]
   <= 97.03434665318917
 obs_face_o2_e2_j29: - 0.2955202066613396 z[30,0]
   - 0.9553364891256059 z[30,2] - obstacle_slack + 100 alpha[2,2,29]
   <= 99.43440137682201
 obs_face_o2_e3_j29: 0.9553364891256061 z[30,0]
   - 0.2955202066613394 z[30,2] - obstacle_slack + 100 alpha[2,3,29]
   <= 102.1656533468108
 obs_alpha_sum_o3_j0: alpha[3,0,0] + alpha[3,1,0] + alpha[3,2,0]
   + alpha[3,3,0] >= 1
 obs_face_o3_e0_j0: - 0.7068251811053655 z[1,0] + 0.7073882691672001 z[1,2]
   - obstacle_slack + 100 alpha[3,0,0] <= 95.30792273724414
 obs_face_o3_e1_j0: - 0.7073882691671997 z[1,0] - 0.7068251811053662 z[1,2]
   - obstacle_slack + 100 alpha[3,1,0] <= 98.13409728554193
 obs_face_o3_e2_j0: 0.7068251811053655 z[1,0] - 0.7073882691672001 z[1,2]
   - obstacle_slack + 100 alpha[3,2,0] <= 103.7920772627559
 obs_face_o3_e3_j0: 0.7073882691671997 z[1,0] + 0.7068251811053662 z[1,2]
   - obstacle_slack + 100 alpha[3,3,0] <= 100.9659027144581
 obs_alpha_sum_o3_j1: alpha[3,0,1] + alpha[3,1,1] + alpha[3,2,1]
   + alpha[3,3,1] >= 1
 obs_face_o3_e0_j1: - 0.7068251811053655 z[2,0] + 0.7073882691672001 z[2,2]
   - obstacle_slack + 100 alpha[3,0,1] <= 95.30792273724414
 obs_face_o3_e1_j1: - 0.7073882691671997 z[2,0] - 0.7068251811053662 z[2,2]
   - obstacle_slack + 100 alpha[3,1,1] <= 98.13409728554193
 obs_face_o3_e2_j1: 0.7068251811053655 z[2,0] - 0.7073882691672001 z[2,2]
   - obstacle_slack + 100 alpha[3,2,1] <= 103.7920772627559
 obs_face_o3_e3_j1: 0.7073882691671997 z[2,0] + 0.7068251811053662 z[2,2]
   - obstacle_slack + 100 alpha[3,3,1] <= 100.9659027144581
 obs_alpha_sum_o3_j2: alpha[3,0,2] + alpha[3,1,2] + alpha[3,2,2]
   + alpha[3,3,2] >= 1
 obs_face_o3_e0_j2: - 0.7068251811053655 z[3,0] + 0.7073882691672001 z[3,2]
   - obstacle_slack + 100 alpha[3,0,2] <= 95.30792273724414
 obs_face_o3_e1_j2: - 0.7073882691671997 z[3,0] - 0.7068251811053662 z[3,2]
   - obstacle_slack + 100 alpha[3,1,2] <= 98.13409728554193
 obs_face_o3_e2_j2: 0.7068251811053655 z[3,0] - 0.7073882691672001 z[3,2]
   - obstacle_slack + 100 alpha[3,2,2] <= 103.7920772627559
 obs_face_o3_e3_j2: 0.7073882691671997 z[3,0] + 0.7068251811053662 z[3,2]
   - obstacle_slack + 100 alpha[3,3,2] <= 100.9659027144581
 obs_alpha_sum_o3_j3: alpha[3,0,3] + alpha[3,1,3] + alpha[3,2,3]
   + alpha[3,3,3] >= 1
 obs_face_o3_e0_j3: - 0.7068251811053655 z[4,0] + 0.7073882691672001 z[4,2]
   - obstacle_slack + 100 alpha[3,0,3] <= 95.30792273724414
 obs_face_o3_e1_j3: - 0.7073882691671997 z[4,0] - 0.7068251811053662 z[4,2]
   - obstacle_slack + 100 alpha[3,1,3] <= 98.13409728554193
 obs_face_o3_e2_j3: 0.7068251811053655 z[4,0] - 0.7073882691672001 z[4,2]
   - obstacle_slack + 100 alpha[3,2,3] <= 103.7920772627559
 obs_face_o3_e3_j3: 0.7073882691671997 z[4,0] + 0.7068251811053662 z[4,2]
   - obstacle_slack + 100 alpha[3,3,3] <= 100.9659027144581
 obs_alpha_sum_o3_j4: alpha[3,0,4] + alpha[3,1,4] + alpha[3,2,4]
   + alpha[3,3,4] >= 1
 obs_face_o3_e0_j4: - 0.7068251811053655 z[5,0] + 0.7073882691672001 z[5,2]
   - obstacle_slack + 100 alpha[3,0,4] <= 95.30792273724414
 obs_face_o3_e1_j4: - 0.7073882691671997 z[5,0] - 0.7068251811053662 z[5,2]
   - obstacle_slack + 100 alpha[3,1,4] <= 98.13409728554193
 obs_face_o3_e2_j4: 0.7068251811053655 z[5,0] - 0.7073882691672001 z[5,2]
   - obstacle_slack + 100 alpha[3,2,4] <= 103.7920772627559
 obs_face_o3_e3_j4: 0.7073882691671997 z[5,0] + 0.7068251811053662 z[5,2]
   - obstacle_slack + 100 alpha[3,3,4] <= 100.9659027144581
 obs_alpha_sum_o3_j5: alpha[3,0,5] + alpha[3,1,5] + alpha[3,2,5]
   + alpha[3,3,5] >= 1
 obs_face_o3_e0_j5: - 0.7068251811053655 z[6,0] + 0.7073882691672001 z[6,2]
   - obstacle_slack + 100 alpha[3,0,5] <= 95.30792273724414
 obs_face_o3_e1_j5: - 0.7073882691671997 z[6,0] - 0.7068251811053662 z[6,2]
   - obstacle_slack + 100 alpha[3,1,5] <= 98.13409728554193
 obs_face_o3_e2_j5: 0.7068251811053655 z[6,0] - 0.7073882691672001 z[6,2]
   - obstacle_slack + 100 alpha[3,2,5] <= 103.7920772627559
 obs_face_o3_e3_j5: 0.7073882691671997 z[6,0] + 0.7068251811053662 z[6,2]
   - obstacle_slack + 100 alpha[3,3,5] <= 100.9659027144581
 obs_alpha_sum_o3_j6: alpha[3,0,6] + alpha[3,1,6] + alpha[3,2,6]
   + alpha[3,3,6] >= 1
 obs_face_o3_e0_j6: - 0.7068251811053655 z[7,0] + 0.7073882691672001 z[7,2]
   - obstacle_slack + 100 alpha[3,0,6] <= 95.30792273724414
 obs_face_o3_e1_j6: - 0.7073882691671997 z[7,0] - 0.7068251811053662 z[7,2]
   - obstacle_slack + 100 alpha[3,1,6] <= 98.13409728554193
 obs_face_o3_e2_j6: 0.7068251811053655 z[7,0] - 0.7073882691672001 z[7,2]
   - obstacle_slack + 100 alpha[3,2,6] <= 103.7920772627559
 obs_face_o3_e3_j6: 0.7073882691671997 z[7,0] + 0.7068251811053662 z[7,2]
   - obstacle_slack + 100 alpha[3,3,6] <= 100.9659027144581
 obs_alpha_sum_o3_j7: alpha[3,0,7] + alpha[3,1,7] + alpha[3,2,7]
   + alpha[3,3,7] >= 1
 obs_face_o3_e0_j7: - 0.7068251811053655 z[8,0] + 0.7073882691672001 z[8,2]
   - obstacle_slack + 100 alpha[3,0,7] <= 95.30792273724414
 obs_face_o3_e1_j7: - 0.7073882691671997 z[8,0] - 0.7068251811053662 z[8,2]
   - obstacle_slack + 100 alpha[3,1,7] <= 98.13409728554193
 obs_face_o3_e2_j7: 0.7068251811053655 z[8,0] - 0.7073882691672001 z[8,2]
   - obstacle_slack + 100 alpha[3,2,7] <= 103.7920772627559
 obs_face_o3_e3_j7: 0.7073882691671997 z[8,0] + 0.7068251811053662 z[8,2]
   - obstacle_slack + 100 alpha[3,3,7] <= 100.9659027144581
 obs_alpha_sum_o3_j8: alpha[3,0,8] + alpha[3,1,8] + alpha[3,2,8]
   + alpha[3,3,8] >= 1
 obs_face_o3_e0_j8: - 0.7068251811053655 z[9,0] + 0.7073882691672001 z[9,2]
   - obstacle_slack + 100 alpha[3,0,8] <= 95.30792273724414
 obs_face_o3_e1_j8: - 0.7073882691671997 z[9,0] - 0.7068251811053662 z[9,2]
   - obstacle_slack + 100 alpha[3,1,8] <= 98.13409728554193
 obs_face_o3_e2_j8: 0.7068251811053655 z[9,0] - 0.7073882691672001 z[9,2]
   - obstacle_slack + 100 alpha[3,2,8] <= 103.7920772627559
 obs_face_o3_e3_j8: 0.7073882691671997 z[9,0] + 0.7068251811053662 z[9,2]
   - obstacle_slack + 100 alpha[3,3,8] <= 100.9659027144581
 obs_alpha_sum_o3_j9: alpha[3,0,9] + alpha[3,1,9] + alpha[3,2,9]
   + alpha[3,3,9] >= 1
 obs_face_o3_e0_j9: - 0.7068251811053655 z[10,0]
   + 0.7073882691672001 z[10,2] - obstacle_slack + 100 alpha[3,0,9]
   <= 95.30792273724414
 obs_face_o3_e1_j9: - 0.7073882691671997 z[10,0]
   - 0.7068251811053662 z[10,2] - obstacle_slack + 100 alpha[3,1,9]
   <= 98.13409728554193
 obs_face_o3_e2_j9: 0.7068251811053655 z[10,0] - 0.7073882691672001 z[10,2]
   - obstacle_slack + 100 alpha[3,2,9] <= 103.7920772627559
 obs_face_o3_e3_j9: 0.7073882691671997 z[10,0] + 0.7068251811053662 z[10,2]
   - obstacle_slack + 100 alpha[3,3,9] <= 100.9659027144581
 obs_alpha_sum_o3_j10: alpha[3,0,10] + alpha[3,1,10] + alpha[3,2,10]
   + alpha[3,3,10] >= 1
 obs_face_o3_e0_j10: - 0.7068251811053655 z[11,0]
   + 0.7073882691672001 z[11,2] - obstacle_slack + 100 alpha[3,0,10]
   <= 95.30792273724414
 obs_face_o3_e1_j10: - 0.7073882691671997 z[11,0]
   - 0.7068251811053662 z[11,2] - obstacle_slack + 100 alpha[3,1,10]
   <= 98.13409728554193
 obs_face_o3_e2_j10: 0.7068251811053655 z[11,0]
   - 0.7073882691672001 z[11,2] - obstacle_slack + 100 alpha[3,2,10]
   <= 103.7920772627559
 obs_face_o3_e3_j10: 0.7073882691671997 z[11,0]
   + 0.7068251811053662 z[11,2] - obstacle_slack + 100 alpha[3,3,10]
   <= 100.9659027144581
 obs_alpha_sum_o3_j11: alpha[3,0,11] + alpha[3,1,11] + alpha[3,2,11]
   + alpha[3,3,11] >= 1
 obs_face_o3_e0_j11: - 0.7068251811053655 z[12,0]
   + 0.7073882691672001 z[12,2] - obstacle_slack + 100 alpha[3,0,11]
   <= 95.30792273724414
 obs_face_o3_e1_j11: - 0.7073882691671997 z[12,0]
   - 0.7068251811053662 z[12,2] - obstacle_slack + 100 alpha[3,1,11]
   <= 98.13409728554193
 obs_face_o3_e2_j11: 0.7068251811053655 z[12,0]
   - 0.7073882691672001 z[12,2] - obstacle_slack + 100 alpha[3,2,11]
   <= 103.7920772627559
 obs_face_o3_e3_j11: 0.7073882691671997 z[12,0]
   + 0.7068251811053662 z[12,2] - obstacle_slack + 100 alpha[3,3,11]
   <= 100.9659027144581
 obs_alpha_sum_o3_j12: alpha[3,0,12] + alpha[3,1,12] + alpha[3,2,12]
   + alpha[3,3,12] >= 1
 obs_face_o3_e0_j12: - 0.7068251811053655 z[13,0]
   + 0.7073882691672001 z[13,2] - obstacle_slack + 100 alpha[3,0,12]
   <= 95.30792273724414
 obs_face_o3_e1_j12: - 0.7073882691671997 z[13,0]
   - 0.7068251811053662 z[13,2] - obstacle_slack + 100 alpha[3,1,12]
   <= 98.13409728554193
 obs_face_o3_e2_j12: 0.7068251811053655 z[13,0]
   - 0.7073882691672001 z[13,2] - obstacle_slack + 100 alpha[3,2,12]
   <= 103.7920772627559
 obs_face_o3_e3_j12: 0.7073882691671997 z[13,0]
   + 0.7068251811053662 z[13,2] - obstacle_slack + 100 alpha[3,3,12]
   <= 100.9659027144581
 obs_alpha_sum_o3_j13: alpha[3,0,13] + alpha[3,1,13] + alpha[3,2,13]
   + alpha[3,3,13] >= 1
 obs_face_o3_e0_j13: - 0.7068251811053655 z[14,0]
   + 0.7073882691672001 z[14,2] - obstacle_slack + 100 alpha[3,0,13]
   <= 95.30792273724414
 obs_face_o3_e1_j13: - 0.7073882691671997 z[14,0]
   - 0.7068251811053662 z[14,2] - obstacle_slack + 100 alpha[3,1,13]
   <= 98.13409728554193
 obs_face_o3_e2_j13: 0.7068251811053655 z[14,0]
   - 0.7073882691672001 z[14,2] - obstacle_slack + 100 alpha[3,2,13]
   <= 103.7920772627559
 obs_face_o3_e3_j13: 0.7073882691671997 z[14,0]
   + 0.7068251811053662 z[14,2] - obstacle_slack + 100 alpha[3,3,13]
   <= 100.9659027144581
 obs_alpha_sum_o3_j14: alpha[3,0,14] + alpha[3,1,14] + alpha[3,2,14]
   + alpha[3,3,14] >= 1
 obs_face_o3_e0_j14: - 0.7068251811053655 z[15,0]
   + 0.7073882691672001 z[15,2] - obstacle_slack + 100 alpha[3,0,14]
   <= 95.30792273724414
 obs_face_o3_e1_j14: - 0.7073882691671997 z[15,0]
   - 0.7068251811053662 z[15,2] - obstacle_slack + 100 alpha[3,1,14]
   <= 98.13409728554193
 obs_face_o3_e2_j14: 0.7068251811053655 z[15,0]
   - 0.7073882691672001 z[15,2] - obstacle_slack + 100 alpha[3,2,14]
   <= 103.7920772627559
 obs_face_o3_e3_j14: 0.7073882691671997 z[15,0]
   + 0.7068251811053662 z[15,2] - obstacle_slack + 100 alpha[3,3,14]
   <= 100.9659027144581
 obs_alpha_sum_o3_j15: alpha[3,0,15] + alpha[3,1,15] + alpha[3,2,15]
   + alpha[3,3,15] >= 1
 obs_face_o3_e0_j15: - 0.7068251811053655 z[16,0]
   + 0.7073882691672001 z[16,2] - obstacle_slack + 100 alpha[3,0,15]
   <= 95.30792273724414
 obs_face_o3_e1_j15: - 0.7073882691671997 z[16,0]
   - 0.7068251811053662 z[16,2] - obstacle_slack + 100 alpha[3,1,15]
   <= 98.13409728554193
 obs_face_o3_e2_j15: 0.7068251811053655 z[16,0]
   - 0.7073882691672001 z[16,2] - obstacle_slack + 100 alpha[3,2,15]
   <= 103.7920772627559
 obs_face_o3_e3_j15: 0.7073882691671997 z[16,0]
   + 0.7068251811053662 z[16,2] - obstacle_slack + 100 alpha[3,3,15]
   <= 100.9659027144581
 obs_alpha_sum_o3_j16: alpha[3,0,16] + alpha[3,1,16] + alpha[3,2,16]
   + alpha[3,3,16] >= 1
 obs_face_o3_e0_j16: - 0.7068251811053655 z[17,0]
   + 0.7073882691672001 z[17,2] - obstacle_slack + 100 alpha[3,0,16]
   <= 95.30792273724414
 obs_face_o3_e1_j16: - 0.7073882691671997 z[17,0]
   - 0.7068251811053662 z[17,2] - obstacle_slack + 100 alpha[3,1,16]
   <= 98.13409728554193
 obs_face_o3_e2_j16: 0.7068251811053655 z[17,0]
   - 0.7073882691672001 z[17,2] - obstacle_slack + 100 alpha[3,2,16]
   <= 103.7920772627559
 obs_face_o3_e3_j16: 0.7073882691671997 z[17,0]
   + 0.7068251811053662 z[17,2] - obstacle_slack + 100 alpha[3,3,16]
   <= 100.9659027144581
 obs_alpha_sum_o3_j17: alpha[3,0,17] + alpha[3,1,17] + alpha[3,2,17]
   + alpha[3,3,17] >= 1
 obs_face_o3_e0_j17: - 0.7068251811053655 z[18,0]
   + 0.7073882691672001 z[18,2] - obstacle_slack + 100 alpha[3,0,17]
   <= 95.30792273724414
 obs_face_o3_e1_j17: - 0.7073882691671997 z[18,0]
   - 0.7068251811053662 z[18,2] - obstacle_slack + 100 alpha[3,1,17]
   <= 98.13409728554193
 obs_face_o3_e2_j17: 0.7068251811053655 z[18,0]
   - 0.7073882691672001 z[18,2] - obstacle_slack + 100 alpha[3,2,17]
   <= 103.7920772627559
 obs_face_o3_e3_j17: 0.7073882691671997 z[18,0]
   + 0.7068251811053662 z[18,2] - obstacle_slack + 100 alpha[3,3,17]
   <= 100.9659027144581
 obs_alpha_sum_o3_j18: alpha[3,0,18] + alpha[3,1,18] + alpha[3,2,18]
   + alpha[3,3,18] >= 1
 obs_face_o3_e0_j18: - 0.7068251811053655 z[19,0]
   + 0.7073882691672001 z[19,2] - obstacle_slack + 100 alpha[3,0,18]
   <= 95.30792273724414
 obs_face_o3_e1_j18: - 0.7073882691671997 z[19,0]
   - 0.7068251811053662 z[19,2] - obstacle_slack + 100 alpha[3,1,18]
   <= 98.13409728554193
 obs_face_o3_e2_j18: 0.7068251811053655 z[19,0]
   - 0.7073882691672001 z[19,2] - obstacle_slack + 100 alpha[3,2,18]
   <= 103.7920772627559
 obs_face_o3_e3_j18: 0.7073882691671997 z[19,0]
   + 0.7068251811053662 z[19,2] - obstacle_slack + 100 alpha[3,3,18]
   <= 100.9659027144581
 obs_alpha_sum_o3_j19: alpha[3,0,19] + alpha[3,1,19] + alpha[3,2,19]
   + alpha[3,3,19] >= 1
 obs_face_o3_e0_j19: - 0.7068251811053655 z[20,0]
   + 0.7073882691672001 z[20,2] - obstacle_slack + 100 alpha[3,0,19]
   <= 95.30792273724414
 obs_face_o3_e1_j19: - 0.7073882691671997 z[20,0]
   - 0.7068251811053662 z[20,2] - obstacle_slack + 100 alpha[3,1,19]
   <= 98.13409728554193
 obs_face_o3_e2_j19: 0.7068251811053655 z[20,0]
   - 0.7073882691672001 z[20,2] - obstacle_slack + 100 alpha[3,2,19]
   <= 103.7920772627559
 obs_face_o3_e3_j19: 0.7073882691671997 z[20,0]
   + 0.7068251811053662 z[20,2] - obstacle_slack + 100 alpha[3,3,19]
   <= 100.9659027144581
 obs_alpha_sum_o3_j20: alpha[3,0,20] + alpha[3,1,20] + alpha[3,2,20]
   + alpha[3,3,20] >= 1
 obs_face_o3_e0_j20: - 0.7068251811053655 z[21,0]
   + 0.7073882691672001 z[21,2] - obstacle_slack + 100 alpha[3,0,20]
   <= 95.30792273724414
 obs_face_o3_e1_j20: - 0.7073882691671997 z[21,0]
   - 0.7068251811053662 z[21,2] - obstacle_slack + 100 alpha[3,1,20]
   <= 98.13409728554193
 obs_face_o3_e2_j20: 0.7068251811053655 z[21,0]
   - 0.7073882691672001 z[21,2] - obstacle_slack + 100 alpha[3,2,20]
   <= 103.7920772627559
 obs_face_o3_e3_j20: 0.7073882691671997 z[21,0]
   + 0.7068251811053662 z[21,2] - obstacle_slack + 100 alpha[3,3,20]
   <= 100.9659027144581
 obs_alpha_sum_o3_j21: alpha[3,0,21] + alpha[3,1,21] + alpha[3,2,21]
   + alpha[3,3,21] >= 1
 obs_face_o3_e0_j21: - 0.7068251811053655 z[22,0]
   + 0.7073882691672001 z[22,2] - obstacle_slack + 100 alpha[3,0,21]
   <= 95.30792273724414
 obs_face_o3_e1_j21: - 0.7073882691671997 z[22,0]
   - 0.7068251811053662 z[22,2] - obstacle_slack + 100 alpha[3,1,21]
   <= 98.13409728554193
 obs_face_o3_e2_j21: 0.7068251811053655 z[22,0]
   - 0.7073882691672001 z[22,2] - obstacle_slack + 100 alpha[3,2,21]
   <= 103.7920772627559
 obs_face_o3_e3_j21: 0.7073882691671997 z[22,0]
   + 0.7068251811053662 z[22,2] - obstacle_slack + 100 alpha[3,3,21]
   <= 100.9659027144581
 obs_alpha_sum_o3_j22: alpha[3,0,22] + alpha[3,1,22] + alpha[3,2,22]
   + alpha[3,3,22] >= 1
 obs_face_o3_e0_j22: - 0.7068251811053655 z[23,0]
   + 0.7073882691672001 z[23,2] - obstacle_slack + 100 alpha[3,0,22]
   <= 95.30792273724414
 obs_face_o3_e1_j22: - 0.7073882691671997 z[23,0]
   - 0.7068251811053662 z[23,2] - obstacle_slack + 100 alpha[3,1,22]
   <= 98.13409728554193
 obs_face_o3_e2_j22: 0.7068251811053655 z[23,0]
   - 0.7073882691672001 z[23,2] - obstacle_slack + 100 alpha[3,2,22]
   <= 103.7920772627559
 obs_face_o3_e3_j22: 0.7073882691671997 z[23,0]
   + 0.7068251811053662 z[23,2] - obstacle_slack + 100 alpha[3,3,22]
   <= 100.9659027144581
 obs_alpha_sum_o3_j23: alpha[3,0,23] + alpha[3,1,23] + alpha[3,2,23]
   + alpha[3,3,23] >= 1
 obs_face_o3_e0_j23: - 0.7068251811053655 z[24,0]
   + 0.7073882691672001 z[24,2] - obstacle_slack + 100 alpha[3,0,23]
   <= 95.30792273724414
 obs_face_o3_e1_j23: - 0.7073882691671997 z[24,0]
   - 0.7068251811053662 z[24,2] - obstacle_slack + 100 alpha[3,1,23]
   <= 98.13409728554193
 obs_face_o3_e2_j23: 0.7068251811053655 z[24,0]
   - 0.7073882691672001 z[24,2] - obstacle_slack + 100 alpha[3,2,23]
   <= 103.7920772627559
 obs_face_o3_e3_j23: 0.7073882691671997 z[24,0]
   + 0.7068251811053662 z[24,2] - obstacle_slack + 100 alpha[3,3,23]
   <= 100.9659027144581
 obs_alpha_sum_o3_j24: alpha[3,0,24] + alpha[3,1,24] + alpha[3,2,24]
   + alpha[3,3,24] >= 1
 obs_face_o3_e0_j24: - 0.7068251811053655 z[25,0]
   + 0.7073882691672001 z[25,2] - obstacle_slack + 100 alpha[3,0,24]
   <= 95.30792273724414
 obs_face_o3_e1_j24: - 0.7073882691671997 z[25,0]
   - 0.7068251811053662 z[25,2] - obstacle_slack + 100 alpha[3,1,24]
   <= 98.13409728554193
 obs_face_o3_e2_j24: 0.7068251811053655 z[25,0]
   - 0.7073882691672001 z[25,2] - obstacle_slack + 100 alpha[3,2,24]
   <= 103.7920772627559
 obs_face_o3_e3_j24: 0.7073882691671997 z[25,0]
   + 0.7068251811053662 z[25,2] - obstacle_slack + 100 alpha[3,3,24]
   <= 100.9659027144581
 obs_alpha_sum_o3_j25: alpha[3,0,25] + alpha[3,1,25] + alpha[3,2,25]
   + alpha[3,3,25] >= 1
 obs_face_o3_e0_j25: - 0.7068251811053655 z[26,0]
   + 0.7073882691672001 z[26,2] - obstacle_slack + 100 alpha[3,0,25]
   <= 95.30792273724414
 obs_face_o3_e1_j25: - 0.7073882691671997 z[26,0]
   - 0.7068251811053662 z[26,2] - obstacle_slack + 100 alpha[3,1,25]
   <= 98.13409728554193
 obs_face_o3_e2_j25: 0.7068251811053655 z[26,0]
   - 0.7073882691672001 z[26,2] - obstacle_slack + 100 alpha[3,2,25]
   <= 103.7920772627559
 obs_face_o3_e3_j25: 0.7073882691671997 z[26,0]
   + 0.7068251811053662 z[26,2] - obstacle_slack + 100 alpha[3,3,25]
   <= 100.9659027144581
 obs_alpha_sum_o3_j26: alpha[3,0,26] + alpha[3,1,26] + alpha[3,2,26]
   + alpha[3,3,26] >= 1
 obs_face_o3_e0_j26: - 0.7068251811053655 z[27,0]
   + 0.7073882691672001 z[27,2] - obstacle_slack + 100 alpha[3,0,26]
   <= 95.30792273724414
 obs_face_o3_e1_j26: - 0.7073882691671997 z[27,0]
   - 0.7068251811053662 z[27,2] - obstacle_slack + 100 alpha[3,1,26]
   <= 98.13409728554193
 obs_face_o3_e2_j26: 0.7068251811053655 z[27,0]
   - 0.7073882691672001 z[27,2] - obstacle_slack + 100 alpha[3,2,26]
   <= 103.7920772627559
 obs_face_o3_e3_j26: 0.7073882691671997 z[27,0]
   + 0.7068251811053662 z[27,2] - obstacle_slack + 100 alpha[3,3,26]
   <= 100.9659027144581
 obs_alpha_sum_o3_j27: alpha[3,0,27] + alpha[3,1,27] + alpha[3,2,27]
   + alpha[3,3,27] >= 1
 obs_face_o3_e0_j27: - 0.7068251811053655 z[28,0]
   + 0.7073882691672001 z[28,2] - obstacle_slack + 100 alpha[3,0,27]
   <= 95.30792273724414
 obs_face_o3_e1_j27: - 0.7073882691671997 z[28,0]
   - 0.7068251811053662 z[28,2] - obstacle_slack + 100 alpha[3,1,27]
   <= 98.13409728554193
 obs_face_o3_e2_j27: 0.7068251811053655 z[28,0]
   - 0.7073882691672001 z[28,2] - obstacle_slack + 100 alpha[3,2,27]
   <= 103.7920772627559
 obs_face_o3_e3_j27: 0.7073882691671997 z[28,0]
   + 0.7068251811053662 z[28,2] - obstacle_slack + 100 alpha[3,3,27]
   <= 100.9659027144581
 obs_alpha_sum_o3_j28: alpha[3,0,28] + alpha[3,1,28] + alpha[3,2,28]
   + alpha[3,3,28] >= 1
 obs_face_o3_e0_j28: - 0.7068251811053655 z[29,0]
   + 0.7073882691672001 z[29,2] - obstacle_slack + 100 alpha[3,0,28]
   <= 95.30792273724414
 obs_face_o3_e1_j28: - 0.7073882691671997 z[29,0]
   - 0.7068251811053662 z[29,2] - obstacle_slack + 100 alpha[3,1,28]
   <= 98.13409728554193
 obs_face_o3_e2_j28: 0.7068251811053655 z[29,0]
   - 0.7073882691672001 z[29,2] - obstacle_slack + 100 alpha[3,2,28]
   <= 103.7920772627559
 obs_face_o3_e3_j28: 0.7073882691671997 z[29,0]
   + 0.7068251811053662 z[29,2] - obstacle_slack + 100 alpha[3,3,28]
   <= 100.9659027144581
 obs_alpha_sum_o3_j29: alpha[3,0,29] + alpha[3,1,29] + alpha[3,2,29]
   + alpha[3,3,29] >= 1
 obs_face_o3_e0_j29: - 0.7068251811053655 z[30,0]
   + 0.7073882691672001 z[30,2] - obstacle_slack + 100 alpha[3,0,29]
   <= 95.30792273724414
 obs_face_o3_e1_j29: - 0.7073882691671997 z[30,0]
   - 0.7068251811053662 z[30,2] - obstacle_slack + 100 alpha[3,1,29]
   <= 98.13409728554193
 obs_face_o3_e2_j29: 0.7068251811053655 z[30,0]
   - 0.7073882691672001 z[30,2] - obstacle_slack + 100 alpha[3,2,29]
   <= 103.7920772627559
 obs_face_o3_e3_j29: 0.7073882691671997 z[30,0]
   + 0.7068251811053662 z[30,2] - obstacle_slack + 100 alpha[3,3,29]
   <= 100.9659027144581
 obs_alpha_sum_o4_j0: alpha[4,0,0] + alpha[4,1,0] + alpha[4,2,0]
   + alpha[4,3,0] >= 1
 obs_face_o4_e0_j0: - 0.7068251811053662 z[1,0] + 0.7073882691671997 z[1,2]
   - obstacle_slack + 100 alpha[4,0,0] <= 96.0147479183495
 obs_face_o4_e1_j0: - 0.7073882691671997 z[1,0] - 0.7068251811053662 z[1,2]
   - obstacle_slack + 100 alpha[4,1,0] <= 98.84148555470914
 obs_face_o4_e2_j0: 0.7068251811053662 z[1,0] - 0.7073882691671997 z[1,2]
   - obstacle_slack + 100 alpha[4,2,0] <= 103.0852520816505
 obs_face_o4_e3_j0: 0.7073882691671997 z[1,0] + 0.7068251811053662 z[1,2]
   - obstacle_slack + 100 alpha[4,3,0] <= 100.2585144452909
 obs_alpha_sum_o4_j1: alpha[4,0,1] + alpha[4,1,1] + alpha[4,2,1]
   + alpha[4,3,1] >= 1
 obs_face_o4_e0_j1: - 0.7068251811053662 z[2,0] + 0.7073882691671997 z[2,2]
   - obstacle_slack + 100 alpha[4,0,1] <= 96.0147479183495
 obs_face_o4_e1_j1: - 0.7073882691671997 z[2,0] - 0.7068251811053662 z[2,2]
   - obstacle_slack + 100 alpha[4,1,1] <= 98.84148555470914
 obs_face_o4_e2_j1: 0.7068251811053662 z[2,0] - 0.7073882691671997 z[2,2]
   - obstacle_slack + 100 alpha[4,2,1] <= 103.0852520816505
 obs_face_o4_e3_j1: 0.7073882691671997 z[2,0] + 0.7068251811053662 z[2,2]
   - obstacle_slack + 100 alpha[4,3,1] <= 100.2585144452909
 obs_alpha_sum_o4_j2: alpha[4,0,2] + alpha[4,1,2] + alpha[4,2,2]
   + alpha[4,3,2] >= 1
 obs_face_o4_e0_j2: - 0.7068251811053662 z[3,0] + 0.7073882691671997 z[3,2]
   - obstacle_slack + 100 alpha[4,0,2] <= 96.0147479183495
 obs_face_o4_e1_j2: - 0.7073882691671997 z[3,0] - 0.7068251811053662 z[3,2]
   - obstacle_slack + 100 alpha[4,1,2] <= 98.84148555470914
 obs_face_o4_e2_j2: 0.7068251811053662 z[3,0] - 0.7073882691671997 z[3,2]
   - obstacle_slack + 100 alpha[4,2,2] <= 103.0852520816505
 obs_face_o4_e3_j2: 0.7073882691671997 z[3,0] + 0.7068251811053662 z[3,2]
   - obstacle_slack + 100 alpha[4,3,2] <= 100.2585144452909
 obs_alpha_sum_o4_j3: alpha[4,0,3] + alpha[4,1,3] + alpha[4,2,3]
   + alpha[4,3,3] >= 1
 obs_face_o4_e0_j3: - 0.7068251811053662 z[4,0] + 0.7073882691671997 z[4,2]
   - obstacle_slack + 100 alpha[4,0,3] <= 96.0147479183495
 obs_face_o4_e1_j3: - 0.7073882691671997 z[4,0] - 0.7068251811053662 z[4,2]
   - obstacle_slack + 100 alpha[4,1,3] <= 98.84148555470914
 obs_face_o4_e2_j3: 0.7068251811053662 z[4,0] - 0.7073882691671997 z[4,2]
   - obstacle_slack + 100 alpha[4,2,3] <= 103.0852520816505
 obs_face_o4_e3_j3: 0.7073882691671997 z[4,0] + 0.7068251811053662 z[4,2]
   - obstacle_slack + 100 alpha[4,3,3] <= 100.2585144452909
 obs_alpha_sum_o4_j4: alpha[4,0,4] + alpha[4,1,4] + alpha[4,2,4]
   + alpha[4,3,4] >= 1
 obs_face_o4_e0_j4: - 0.7068251811053662 z[5,0] + 0.7073882691671997 z[5,2]
   - obstacle_slack + 100 alpha[4,0,4] <= 96.0147479183495
 obs_face_o4_e1_j4: - 0.7073882691671997 z[5,0] - 0.7068251811053662 z[5,2]
   - obstacle_slack + 100 alpha[4,1,4] <= 98.84148555470914
 obs_face_o4_e2_j4: 0.7068251811053662 z[5,0] - 0.7073882691671997 z[5,2]
   - obstacle_slack + 100 alpha[4,2,4] <= 103.0852520816505
 obs_face_o4_e3_j4: 0.7073882691671997 z[5,0] + 0.7068251811053662 z[5,2]
   - obstacle_slack + 100 alpha[4,3,4] <= 100.2585144452909
 obs_alpha_sum_o4_j5: alpha[4,0,5] + alpha[4,1,5] + alpha[4,2,5]
   + alpha[4,3,5] >= 1
 obs_face_o4_e0_j5: - 0.7068251811053662 z[6,0] + 0.7073882691671997 z[6,2]
   - obstacle_slack + 100 alpha[4,0,5] <= 96.0147479183495
 obs_face_o4_e1_j5: - 0.7073882691671997 z[6,0] - 0.7068251811053662 z[6,2]
   - obstacle_slack + 100 alpha[4,1,5] <= 98.84148555470914
 obs_face_o4_e2_j5: 0.7068251811053662 z[6,0] - 0.7073882691671997 z[6,2]
   - obstacle_slack + 100 alpha[4,2,5] <= 103.0852520816505
 obs_face_o4_e3_j5: 0.7073882691671997 z[6,0] + 0.7068251811053662 z[6,2]
   - obstacle_slack + 100 alpha[4,3,5] <= 100.2585144452909
 obs_alpha_sum_o4_j6: alpha[4,0,6] + alpha[4,1,6] + alpha[4,2,6]
   + alpha[4,3,6] >= 1
 obs_face_o4_e0_j6: - 0.7068251811053662 z[7,0] + 0.7073882691671997 z[7,2]
   - obstacle_slack + 100 alpha[4,0,6] <= 96.0147479183495
 obs_face_o4_e1_j6: - 0.7073882691671997 z[7,0] - 0.7068251811053662 z[7,2]
   - obstacle_slack + 100 alpha[4,1,6] <= 98.84148555470914
 obs_face_o4_e2_j6: 0.7068251811053662 z[7,0] - 0.7073882691671997 z[7,2]
   - obstacle_slack + 100 alpha[4,2,6] <= 103.0852520816505
 obs_face_o4_e3_j6: 0.7073882691671997 z[7,0] + 0.7068251811053662 z[7,2]
   - obstacle_slack + 100 alpha[4,3,6] <= 100.2585144452909
 obs_alpha_sum_o4_j7: alpha[4,0,7] + alpha[4,1,7] + alpha[4,2,7]
   + alpha[4,3,7] >= 1
 obs_face_o4_e0_j7: - 0.7068251811053662 z[8,0] + 0.7073882691671997 z[8,2]
   - obstacle_slack + 100 alpha[4,0,7] <= 96.0147479183495
 obs_face_o4_e1_j7: - 0.7073882691671997 z[8,0] - 0.7068251811053662 z[8,2]
   - obstacle_slack + 100 alpha[4,1,7] <= 98.84148555470914
 obs_face_o4_e2_j7: 0.7068251811053662 z[8,0] - 0.7073882691671997 z[8,2]
   - obstacle_slack + 100 alpha[4,2,7] <= 103.0852520816505
 obs_face_o4_e3_j7: 0.7073882691671997 z[8,0] + 0.7068251811053662 z[8,2]
   - obstacle_slack + 100 alpha[4,3,7] <= 100.2585144452909
 obs_alpha_sum_o4_j8: alpha[4,0,8] + alpha[4,1,8] + alpha[4,2,8]
   + alpha[4,3,8] >= 1
 obs_face_o4_e0_j8: - 0.7068251811053662 z[9,0] + 0.7073882691671997 z[9,2]
   - obstacle_slack + 100 alpha[4,0,8] <= 96.0147479183495
 obs_face_o4_e1_j8: - 0.7073882691671997 z[9,0] - 0.7068251811053662 z[9,2]
   - obstacle_slack + 100 alpha[4,1,8] <= 98.84148555470914
 obs_face_o4_e2_j8: 0.7068251811053662 z[9,0] - 0.7073882691671997 z[9,2]
   - obstacle_slack + 100 alpha[4,2,8] <= 103.0852520816505
 obs_face_o4_e3_j8: 0.7073882691671997 z[9,0] + 0.7068251811053662 z[9,2]
   - obstacle_slack + 100 alpha[4,3,8] <= 100.2585144452909
 obs_alpha_sum_o4_j9: alpha[4,0,9] + alpha[4,1,9] + alpha[4,2,9]
   + alpha[4,3,9] >= 1
 obs_face_o4_e0_j9: - 0.7068251811053662 z[10,0]
   + 0.7073882691671997 z[10,2] - obstacle_slack + 100 alpha[4,0,9]
   <= 96.0147479183495
 obs_face_o4_e1_j9: - 0.7073882691671997 z[10,0]
   - 0.7068251811053662 z[10,2] - obstacle_slack + 100 alpha[4,1,9]
   <= 98.84148555470914
 obs_face_o4_e2_j9: 0.7068251811053662 z[10,0] - 0.7073882691671997 z[10,2]
   - obstacle_slack + 100 alpha[4,2,9] <= 103.0852520816505
 obs_face_o4_e3_j9: 0.7073882691671997 z[10,0] + 0.7068251811053662 z[10,2]
   - obstacle_slack + 100 alpha[4,3,9] <= 100.2585144452909
 obs_alpha_sum_o4_j10: alpha[4,0,10] + alpha[4,1,10] + alpha[4,2,10]
   + alpha[4,3,10] >= 1
 obs_face_o4_e0_j10: - 0.7068251811053662 z[11,0]
   + 0.7073882691671997 z[11,2] - obstacle_slack + 100 alpha[4,0,10]
   <= 96.0147479183495
 obs_face_o4_e1_j10: - 0.7073882691671997 z[11,0]
   - 0.7068251811053662 z[11,2] - obstacle_slack + 100 alpha[4,1,10]
   <= 98.84148555470914
 obs_face_o4_e2_j10: 0.7068251811053662 z[11,0]
   - 0.7073882691671997 z[11,2] - obstacle_slack + 100 alpha[4,2,10]
   <= 103.0852520816505
 obs_face_o4_e3_j10: 0.7073882691671997 z[11,0]
   + 0.7068251811053662 z[11,2] - obstacle_slack + 100 alpha[4,3,10]
   <= 100.2585144452909
 obs_alpha_sum_o4_j11: alpha[4,0,11] + alpha[4,1,11] + alpha[4,2,11]
   + alpha[4,3,11] >= 1
 obs_face_o4_e0_j11: - 0.7068251811053662 z[12,0]
   + 0.7073882691671997 z[12,2] - obstacle_slack + 100 alpha[4,0,11]
   <= 96.0147479183495
 obs_face_o4_e1_j11: - 0.7073882691671997 z[12,0]
   - 0.7068251811053662 z[12,2] - obstacle_slack + 100 alpha[4,1,11]
   <= 98.84148555470914
 obs_face_o4_e2_j11: 0.7068251811053662 z[12,0]
   - 0.7073882691671997 z[12,2] - obstacle_slack + 100 alpha[4,2,11]
   <= 103.0852520816505
 obs_face_o4_e3_j11: 0.7073882691671997 z[12,0]
   + 0.7068251811053662 z[12,2] - obstacle_slack + 100 alpha[4,3,11]
   <= 100.2585144452909
 obs_alpha_sum_o4_j12: alpha[4,0,12] + alpha[4,1,12] + alpha[4,2,12]
   + alpha[4,3,12] >= 1
 obs_face_o4_e0_j12: - 0.7068251811053662 z[13,0]
   + 0.7073882691671997 z[13,2] - obstacle_slack + 100 alpha[4,0,12]
   <= 96.0147479183495
 obs_face_o4_e1_j12: - 0.7073882691671997 z[13,0]
   - 0.7068251811053662 z[13,2] - obstacle_slack + 100 alpha[4,1,12]
   <= 98.84148555470914
 obs_face_o4_e2_j12: 0.7068251811053662 z[13,0]
   - 0.7073882691671997 z[13,2] - obstacle_slack + 100 alpha[4,2,12]
   <= 103.0852520816505
 obs_face_o4_e3_j12: 0.7073882691671997 z[13,0]
   + 0.7068251811053662 z[13,2] - obstacle_slack + 100 alpha[4,3,12]
   <= 100.2585144452909
 obs_alpha_sum_o4_j13: alpha[4,0,13] + alpha[4,1,13] + alpha[4,2,13]
   + alpha[4,3,13] >= 1
 obs_face_o4_e0_j13: - 0.7068251811053662 z[14,0]
   + 0.7073882691671997 z[14,2] - obstacle_slack + 100 alpha[4,0,13]
   <= 96.0147479183495
 obs_face_o4_e1_j13: - 0.7073882691671997 z[14,0]
   - 0.7068251811053662 z[14,2] - obstacle_slack + 100 alpha[4,1,13]
   <= 98.84148555470914
 obs_face_o4_e2_j13: 0.7068251811053662 z[14,0]
   - 0.7073882691671997 z[14,2] - obstacle_slack + 100 alpha[4,2,13]
   <= 103.0852520816505
 obs_face_o4_e3_j13: 0.7073882691671997 z[14,0]
   + 0.7068251811053662 z[14,2] - obstacle_slack + 100 alpha[4,3,13]
   <= 100.2585144452909
 obs_alpha_sum_o4_j14: alpha[4,0,14] + alpha[4,1,14] + alpha[4,2,14]
   + alpha[4,3,14] >= 1
 obs_face_o4_e0_j14: - 0.7068251811053662 z[15,0]
   + 0.7073882691671997 z[15,2] - obstacle_slack + 100 alpha[4,0,14]
   <= 96.0147479183495
 obs_face_o4_e1_j14: - 0.7073882691671997 z[15,0]
   - 0.7068251811053662 z[15,2] - obstacle_slack + 100 alpha[4,1,14]
   <= 98.84148555470914
 obs_face_o4_e2_j14: 0.7068251811053662 z[15,0]
   - 0.7073882691671997 z[15,2] - obstacle_slack + 100 alpha[4,2,14]
   <= 103.0852520816505
 obs_face_o4_e3_j14: 0.7073882691671997 z[15,0]
   + 0.7068251811053662 z[15,2] - obstacle_slack + 100 alpha[4,3,14]
   <= 100.2585144452909
 obs_alpha_sum_o4_j15: alpha[4,0,15] + alpha[4,1,15] + alpha[4,2,15]
   + alpha[4,3,15] >= 1
 obs_face_o4_e0_j15: - 0.7068251811053662 z[16,0]
   + 0.7073882691671997 z[16,2] - obstacle_slack + 100 alpha[4,0,15]
   <= 96.0147479183495
 obs_face_o4_e1_j15: - 0.7073882691671997 z[16,0]
   - 0.7068251811053662 z[16,2] - obstacle_slack + 100 alpha[4,1,15]
   <= 98.84148555470914
 obs_face_o4_e2_j15: 0.7068251811053662 z[16,0]
   - 0.7073882691671997 z[16,2] - obstacle_slack + 100 alpha[4,2,15]
   <= 103.0852520816505
 obs_face_o4_e3_j15: 0.7073882691671997 z[16,0]
   + 0.7068251811053662 z[16,2] - obstacle_slack + 100 alpha[4,3,15]
   <= 100.2585144452909
 obs_alpha_sum_o4_j16: alpha[4,0,16] + alpha[4,1,16] + alpha[4,2,16]
   + alpha[4,3,16] >= 1
 obs_face_o4_e0_j16: - 0.7068251811053662 z[17,0]
   + 0.7073882691671997 z[17,2] - obstacle_slack + 100 alpha[4,0,16]
   <= 96.0147479183495
 obs_face_o4_e1_j16: - 0.7073882691671997 z[17,0]
   - 0.7068251811053662 z[17,2] - obstacle_slack + 100 alpha[4,1,16]
   <= 98.84148555470914
 obs_face_o4_e2_j16: 0.7068251811053662 z[17,0]
   - 0.7073882691671997 z[17,2] - obstacle_slack + 100 alpha[4,2,16]
   <= 103.0852520816505
 obs_face_o4_e3_j16: 0.7073882691671997 z[17,0]
   + 0.7068251811053662 z[17,2] - obstacle_slack + 100 alpha[4,3,16]
   <= 100.2585144452909
 obs_alpha_sum_o4_j17: alpha[4,0,17] + alpha[4,1,17] + alpha[4,2,17]
   + alpha[4,3,17] >= 1
 obs_face_o4_e0_j17: - 0.7068251811053662 z[18,0]
   + 0.7073882691671997 z[18,2] - obstacle_slack + 100 alpha[4,0,17]
   <= 96.0147479183495
 obs_face_o4_e1_j17: - 0.7073882691671997 z[18,0]
   - 0.7068251811053662 z[18,2] - obstacle_slack + 100 alpha[4,1,17]
   <= 98.84148555470914
 obs_face_o4_e2_j17: 0.7068251811053662 z[18,0]
   - 0.7073882691671997 z[18,2] - obstacle_slack + 100 alpha[4,2,17]
   <= 103.0852520816505
 obs_face_o4_e3_j17: 0.7073882691671997 z[18,0]
   + 0.7068251811053662 z[18,2] - obstacle_slack + 100 alpha[4,3,17]
   <= 100.2585144452909
 obs_alpha_sum_o4_j18: alpha[4,0,18] + alpha[4,1,18] + alpha[4,2,18]
   + alpha[4,3,18] >= 1
 obs_face_o4_e0_j18: - 0.7068251811053662 z[19,0]
   + 0.7073882691671997 z[19,2] - obstacle_slack + 100 alpha[4,0,18]
   <= 96.0147479183495
 obs_face_o4_e1_j18: - 0.7073882691671997 z[19,0]
   - 0.7068251811053662 z[19,2] - obstacle_slack + 100 alpha[4,1,18]
   <= 98.84148555470914
 obs_face_o4_e2_j18: 0.7068251811053662 z[19,0]
   - 0.7073882691671997 z[19,2] - obstacle_slack + 100 alpha[4,2,18]
   <= 103.0852520816505
 obs_face_o4_e3_j18: 0.7073882691671997 z[19,0]
   + 0.7068251811053662 z[19,2] - obstacle_slack + 100 alpha[4,3,18]
   <= 100.2585144452909
 obs_alpha_sum_o4_j19: alpha[4,0,19] + alpha[4,1,19] + alpha[4,2,19]
   + alpha[4,3,19] >= 1
 obs_face_o4_e0_j19: - 0.7068251811053662 z[20,0]
   + 0.7073882691671997 z[20,2] - obstacle_slack + 100 alpha[4,0,19]
   <= 96.0147479183495
 obs_face_o4_e1_j19: - 0.7073882691671997 z[20,0]
   - 0.7068251811053662 z[20,2] - obstacle_slack + 100 alpha[4,1,19]
   <= 98.84148555470914
 obs_face_o4_e2_j19: 0.7068251811053662 z[20,0]
   - 0.7073882691671997 z[20,2] - obstacle_slack + 100 alpha[4,2,19]
   <= 103.0852520816505
 obs_face_o4_e3_j19: 0.7073882691671997 z[20,0]
   + 0.7068251811053662 z[20,2] - obstacle_slack + 100 alpha[4,3,19]
   <= 100.2585144452909
 obs_alpha_sum_o4_j20: alpha[4,0,20] + alpha[4,1,20] + alpha[4,2,20]
   + alpha[4,3,20] >= 1
 obs_face_o4_e0_j20: - 0.7068251811053662 z[21,0]
   + 0.7073882691671997 z[21,2] - obstacle_slack + 100 alpha[4,0,20]
   <= 96.0147479183495
 obs_face_o4_e1_j20: - 0.7073882691671997 z[21,0]
   - 0.7068251811053662 z[21,2] - obstacle_slack + 100 alpha[4,1,20]
   <= 98.84148555470914
 obs_face_o4_e2_j20: 0.7068251811053662 z[21,0]
   - 0.7073882691671997 z[21,2] - obstacle_slack + 100 alpha[4,2,20]
   <= 103.0852520816505
 obs_face_o4_e3_j20: 0.7073882691671997 z[21,0]
   + 0.7068251811053662 z[21,2] - obstacle_slack + 100 alpha[4,3,20]
   <= 100.2585144452909
 obs_alpha_sum_o4_j21: alpha[4,0,21] + alpha[4,1,21] + alpha[4,2,21]
   + alpha[4,3,21] >= 1
 obs_face_o4_e0_j21: - 0.7068251811053662 z[22,0]
   + 0.7073882691671997 z[22,2] - obstacle_slack + 100 alpha[4,0,21]
   <= 96.0147479183495
 obs_face_o4_e1_j21: - 0.7073882691671997 z[22,0]
   - 0.7068251811053662 z[22,2] - obstacle_slack + 100 alpha[4,1,21]
   <= 98.84148555470914
 obs_face_o4_e2_j21: 0.7068251811053662 z[22,0]
   - 0.7073882691671997 z[22,2] - obstacle_slack + 100 alpha[4,2,21]
   <= 103.0852520816505
 obs_face_o4_e3_j21: 0.7073882691671997 z[22,0]
   + 0.7068251811053662 z[22,2] - obstacle_slack + 100 alpha[4,3,21]
   <= 100.2585144452909
 obs_alpha_sum_o4_j22: alpha[4,0,22] + alpha[4,1,22] + alpha[4,2,22]
   + alpha[4,3,22] >= 1
 obs_face_o4_e0_j22: - 0.7068251811053662 z[23,0]
   + 0.7073882691671997 z[23,2] - obstacle_slack + 100 alpha[4,0,22]
   <= 96.0147479183495
 obs_face_o4_e1_j22: - 0.7073882691671997 z[23,0]
   - 0.7068251811053662 z[23,2] - obstacle_slack + 100 alpha[4,1,22]
   <= 98.84148555470914
 obs_face_o4_e2_j22: 0.7068251811053662 z[23,0]
   - 0.7073882691671997 z[23,2] - obstacle_slack + 100 alpha[4,2,22]
   <= 103.0852520816505
 obs_face_o4_e3_j22: 0.7073882691671997 z[23,0]
   + 0.7068251811053662 z[23,2] - obstacle_slack + 100 alpha[4,3,22]
   <= 100.2585144452909
 obs_alpha_sum_o4_j23: alpha[4,0,23] + alpha[4,1,23] + alpha[4,2,23]
   + alpha[4,3,23] >= 1
 obs_face_o4_e0_j23: - 0.7068251811053662 z[24,0]
   + 0.7073882691671997 z[24,2] - obstacle_slack + 100 alpha[4,0,23]
   <= 96.0147479183495
 obs_face_o4_e1_j23: - 0.7073882691671997 z[24,0]
   - 0.7068251811053662 z[24,2] - obstacle_slack + 100 alpha[4,1,23]
   <= 98.84148555470914
 obs_face_o4_e2_j23: 0.7068251811053662 z[24,0]
   - 0.7073882691671997 z[24,2] - obstacle_slack + 100 alpha[4,2,23]
   <= 103.0852520816505
 obs_face_o4_e3_j23: 0.7073882691671997 z[24,0]
   + 0.7068251811053662 z[24,2] - obstacle_slack + 100 alpha[4,3,23]
   <= 100.2585144452909
 obs_alpha_sum_o4_j24: alpha[4,0,24] + alpha[4,1,24] + alpha[4,2,24]
   + alpha[4,3,24] >= 1
 obs_face_o4_e0_j24: - 0.7068251811053662 z[25,0]
   + 0.7073882691671997 z[25,2] - obstacle_slack + 100 alpha[4,0,24]
   <= 96.0147479183495
 obs_face_o4_e1_j24: - 0.7073882691671997 z[25,0]
   - 0.7068251811053662 z[25,2] - obstacle_slack + 100 alpha[4,1,24]
   <= 98.84148555470914
 obs_face_o4_e2_j24: 0.7068251811053662 z[25,0]
   - 0.7073882691671997 z[25,2] - obstacle_slack + 100 alpha[4,2,24]
   <= 103.0852520816505
 obs_face_o4_e3_j24: 0.7073882691671997 z[25,0]
   + 0.7068251811053662 z[25,2] - obstacle_slack + 100 alpha[4,3,24]
   <= 100.2585144452909
 obs_alpha_sum_o4_j25: alpha[4,0,25] + alpha[4,1,25] + alpha[4,2,25]
   + alpha[4,3,25] >= 1
 obs_face_o4_e0_j25: - 0.7068251811053662 z[26,0]
   + 0.7073882691671997 z[26,2] - obstacle_slack + 100 alpha[4,0,25]
   <= 96.0147479183495
 obs_face_o4_e1_j25: - 0.7073882691671997 z[26,0]
   - 0.7068251811053662 z[26,2] - obstacle_slack + 100 alpha[4,1,25]
   <= 98.84148555470914
 obs_face_o4_e2_j25: 0.7068251811053662 z[26,0]
   - 0.7073882691671997 z[26,2] - obstacle_slack + 100 alpha[4,2,25]
   <= 103.0852520816505
 obs_face_o4_e3_j25: 0.7073882691671997 z[26,0]
   + 0.7068251811053662 z[26,2] - obstacle_slack + 100 alpha[4,3,25]
   <= 100.2585144452909
 obs_alpha_sum_o4_j26: alpha[4,0,26] + alpha[4,1,26] + alpha[4,2,26]
   + alpha[4,3,26] >= 1
 obs_face_o4_e0_j26: - 0.7068251811053662 z[27,0]
   + 0.7073882691671997 z[27,2] - obstacle_slack + 100 alpha[4,0,26]
   <= 96.0147479183495
 obs_face_o4_e1_j26: - 0.7073882691671997 z[27,0]
   - 0.7068251811053662 z[27,2] - obstacle_slack + 100 alpha[4,1,26]
   <= 98.84148555470914
 obs_face_o4_e2_j26: 0.7068251811053662 z[27,0]
   - 0.7073882691671997 z[27,2] - obstacle_slack + 100 alpha[4,2,26]
   <= 103.0852520816505
 obs_face_o4_e3_j26: 0.7073882691671997 z[27,0]
   + 0.7068251811053662 z[27,2] - obstacle_slack + 100 alpha[4,3,26]
   <= 100.2585144452909
 obs_alpha_sum_o4_j27: alpha[4,0,27] + alpha[4,1,27] + alpha[4,2,27]
   + alpha[4,3,27] >= 1
 obs_face_o4_e0_j27: - 0.7068251811053662 z[28,0]
   + 0.7073882691671997 z[28,2] - obstacle_slack + 100 alpha[4,0,27]
   <= 96.0147479183495
 obs_face_o4_e1_j27: - 0.7073882691671997 z[28,0]
   - 0.7068251811053662 z[28,2] - obstacle_slack + 100 alpha[4,1,27]
   <= 98.84148555470914
 obs_face_o4_e2_j27: 0.7068251811053662 z[28,0]
   - 0.7073882691671997 z[28,2] - obstacle_slack + 100 alpha[4,2,27]
   <= 103.0852520816505
 obs_face_o4_e3_j27: 0.7073882691671997 z[28,0]
   + 0.7068251811053662 z[28,2] - obstacle_slack + 100 alpha[4,3,27]
   <= 100.2585144452909
 obs_alpha_sum_o4_j28: alpha[4,0,28] + alpha[4,1,28] + alpha[4,2,28]
   + alpha[4,3,28] >= 1
 obs_face_o4_e0_j28: - 0.7068251811053662 z[29,0]
   + 0.7073882691671997 z[29,2] - obstacle_slack + 100 alpha[4,0,28]
   <= 96.0147479183495
 obs_face_o4_e1_j28: - 0.7073882691671997 z[29,0]
   - 0.7068251811053662 z[29,2] - obstacle_slack + 100 alpha[4,1,28]
   <= 98.84148555470914
 obs_face_o4_e2_j28: 0.7068251811053662 z[29,0]
   - 0.7073882691671997 z[29,2] - obstacle_slack + 100 alpha[4,2,28]
   <= 103.0852520816505
 obs_face_o4_e3_j28: 0.7073882691671997 z[29,0]
   + 0.7068251811053662 z[29,2] - obstacle_slack + 100 alpha[4,3,28]
   <= 100.2585144452909
 obs_alpha_sum_o4_j29: alpha[4,0,29] + alpha[4,1,29] + alpha[4,2,29]
   + alpha[4,3,29] >= 1
 obs_face_o4_e0_j29: - 0.7068251811053662 z[30,0]
   + 0.7073882691671997 z[30,2] - obstacle_slack + 100 alpha[4,0,29]
   <= 96.0147479183495
 obs_face_o4_e1_j29: - 0.7073882691671997 z[30,0]
   - 0.7068251811053662 z[30,2] - obstacle_slack + 100 alpha[4,1,29]
   <= 98.84148555470914
 obs_face_o4_e2_j29: 0.7068251811053662 z[30,0]
   - 0.7073882691671997 z[30,2] - obstacle_slack + 100 alpha[4,2,29]
   <= 103.0852520816505
 obs_face_o4_e3_j29: 0.7073882691671997 z[30,0]
   + 0.7068251811053662 z[30,2] - obstacle_slack + 100 alpha[4,3,29]
   <= 100.2585144452909
 obs_alpha_sum_o5_j0: alpha[5,0,0] + alpha[5,1,0] + alpha[5,2,0]
   + alpha[5,3,0] >= 1
 obs_face_o5_e0_j0: - 0.4968801378437369 z[1,0] + 0.8678191796776499 z[1,2]
   - obstacle_slack + 100 alpha[5,0,0] <= 95.86387054126484
 obs_face_o5_e1_j0: - 0.8678191796776491 z[1,0] - 0.4968801378437382 z[1,2]
   - obstacle_slack + 100 alpha[5,1,0] <= 95.35622430837736
 obs_face_o5_e2_j0: 0.4968801378437369 z[1,0] - 0.8678191796776499 z[1,2]
   - obstacle_slack + 100 alpha[5,2,0] <= 103.4361294587352
 obs_face_o5_e3_j0: 0.8678191796776491 z[1,0] + 0.4968801378437382 z[1,2]
   - obstacle_slack + 100 alpha[5,3,0] <= 102.5437756916226
 obs_alpha_sum_o5_j1: alpha[5,0,1] + alpha[5,1,1] + alpha[5,2,1]
   + alpha[5,3,1] >= 1
 obs_face_o5_e0_j1: - 0.4968801378437369 z[2,0] + 0.8678191796776499 z[2,2]
   - obstacle_slack + 100 alpha[5,0,1] <= 95.86387054126484
 obs_face_o5_e1_j1: - 0.8678191796776491 z[2,0] - 0.4968801378437382 z[2,2]
   - obstacle_slack + 100 alpha[5,1,1] <= 95.35622430837736
 obs_face_o5_e2_j1: 0.4968801378437369 z[2,0] - 0.8678191796776499 z[2,2]
   - obstacle_slack + 100 alpha[5,2,1] <= 103.4361294587352
 obs_face_o5_e3_j1: 0.8678191796776491 z[2,0] + 0.4968801378437382 z[2,2]
   - obstacle_slack + 100 alpha[5,3,1] <= 102.5437756916226
 obs_alpha_sum_o5_j2: alpha[5,0,2] + alpha[5,1,2] + alpha[5,2,2]
   + alpha[5,3,2] >= 1
 obs_face_o5_e0_j2: - 0.4968801378437369 z[3,0] + 0.8678191796776499 z[3,2]
   - obstacle_slack + 100 alpha[5,0,2] <= 95.86387054126484
 obs_face_o5_e1_j2: - 0.8678191796776491 z[3,0] - 0.4968801378437382 z[3,2]
   - obstacle_slack + 100 alpha[5,1,2] <= 95.35622430837736
 obs_face_o5_e2_j2: 0.4968801378437369 z[3,0] - 0.8678191796776499 z[3,2]
   - obstacle_slack + 100 alpha[5,2,2] <= 103.4361294587352
 obs_face_o5_e3_j2: 0.8678191796776491 z[3,0] + 0.4968801378437382 z[3,2]
   - obstacle_slack + 100 alpha[5,3,2] <= 102.5437756916226
 obs_alpha_sum_o5_j3: alpha[5,0,3] + alpha[5,1,3] + alpha[5,2,3]
   + alpha[5,3,3] >= 1
 obs_face_o5_e0_j3: - 0.4968801378437369 z[4,0] + 0.8678191796776499 z[4,2]
   - obstacle_slack + 100 alpha[5,0,3] <= 95.86387054126484
 obs_face_o5_e1_j3: - 0.8678191796776491 z[4,0] - 0.4968801378437382 z[4,2]
   - obstacle_slack + 100 alpha[5,1,3] <= 95.35622430837736
 obs_face_o5_e2_j3: 0.4968801378437369 z[4,0] - 0.8678191796776499 z[4,2]
   - obstacle_slack + 100 alpha[5,2,3] <= 103.4361294587352
 obs_face_o5_e3_j3: 0.8678191796776491 z[4,0] + 0.4968801378437382 z[4,2]
   - obstacle_slack + 100 alpha[5,3,3] <= 102.5437756916226
 obs_alpha_sum_o5_j4: alpha[5,0,4] + alpha[5,1,4] + alpha[5,2,4]
   + alpha[5,3,4] >= 1
 obs_face_o5_e0_j4: - 0.4968801378437369 z[5,0] + 0.8678191796776499 z[5,2]
   - obstacle_slack + 100 alpha[5,0,4] <= 95.86387054126484
 obs_face_o5_e1_j4: - 0.8678191796776491 z[5,0] - 0.4968801378437382 z[5,2]
   - obstacle_slack + 100 alpha[5,1,4] <= 95.35622430837736
 obs_face_o5_e2_j4: 0.4968801378437369 z[5,0] - 0.8678191796776499 z[5,2]
   - obstacle_slack + 100 alpha[5,2,4] <= 103.4361294587352
 obs_face_o5_e3_j4: 0.8678191796776491 z[5,0] + 0.4968801378437382 z[5,2]
   - obstacle_slack + 100 alpha[5,3,4] <= 102.5437756916226
 obs_alpha_sum_o5_j5: alpha[5,0,5] + alpha[5,1,5] + alpha[5,2,5]
   + alpha[5,3,5] >= 1
 obs_face_o5_e0_j5: - 0.4968801378437369 z[6,0] + 0.8678191796776499 z[6,2]
   - obstacle_slack + 100 alpha[5,0,5] <= 95.86387054126484
 obs_face_o5_e1_j5: - 0.8678191796776491 z[6,0] - 0.4968801378437382 z[6,2]
   - obstacle_slack + 100 alpha[5,1,5] <= 95.35622430837736
 obs_face_o5_e2_j5: 0.4968801378437369 z[6,0] - 0.8678191796776499 z[6,2]
   - obstacle_slack + 100 alpha[5,2,5] <= 103.4361294587352
 obs_face_o5_e3_j5: 0.8678191796776491 z[6,0] + 0.4968801378437382 z[6,2]
   - obstacle_slack + 100 alpha[5,3,5] <= 102.5437756916226
 obs_alpha_sum_o5_j6: alpha[5,0,6] + alpha[5,1,6] + alpha[5,2,6]
   + alpha[5,3,6] >= 1
 obs_face_o5_e0_j6: - 0.4968801378437369 z[7,0] + 0.8678191796776499 z[7,2]
   - obstacle_slack + 100 alpha[5,0,6] <= 95.86387054126484
 obs_face_o5_e1_j6: - 0.8678191796776491 z[7,0] - 0.4968801378437382 z[7,2]
   - obstacle_slack + 100 alpha[5,1,6] <= 95.35622430837736
 obs_face_o5_e2_j6: 0.4968801378437369 z[7,0] - 0.8678191796776499 z[7,2]
   - obstacle_slack + 100 alpha[5,2,6] <= 103.4361294587352
 obs_face_o5_e3_j6: 0.8678191796776491 z[7,0] + 0.4968801378437382 z[7,2]
   - obstacle_slack + 100 alpha[5,3,6] <= 102.5437756916226
 obs_alpha_sum_o5_j7: alpha[5,0,7] + alpha[5,1,7] + alpha[5,2,7]
   + alpha[5,3,7] >= 1
 obs_face_o5_e0_j7: - 0.4968801378437369 z[8,0] + 0.8678191796776499 z[8,2]
   - obstacle_slack + 100 alpha[5,0,7] <= 95.86387054126484
 obs_face_o5_e1_j7: - 0.8678191796776491 z[8,0] - 0.4968801378437382 z[8,2]
   - obstacle_slack + 100 alpha[5,1,7] <= 95.35622430837736
 obs_face_o5_e2_j7: 0.4968801378437369 z[8,0] - 0.8678191796776499 z[8,2]
   - obstacle_slack + 100 alpha[5,2,7] <= 103.4361294587352
 obs_face_o5_e3_j7: 0.8678191796776491 z[8,0] + 0.4968801378437382 z[8,2]
   - obstacle_slack + 100 alpha[5,3,7] <= 102.5437756916226
 obs_alpha_sum_o5_j8: alpha[5,0,8] + alpha[5,1,8] + alpha[5,2,8]
   + alpha[5,3,8] >= 1
 obs_face_o5_e0_j8: - 0.4968801378437369 z[9,0] + 0.8678191796776499 z[9,2]
   - obstacle_slack + 100 alpha[5,0,8] <= 95.86387054126484
 obs_face_o5_e1_j8: - 0.8678191796776491 z[9,0] - 0.4968801378437382 z[9,2]
   - obstacle_slack + 100 alpha[5,1,8] <= 95.35622430837736
 obs_face_o5_e2_j8: 0.4968801378437369 z[9,0] - 0.8678191796776499 z[9,2]
   - obstacle_slack + 100 alpha[5,2,8] <= 103.4361294587352
 obs_face_o5_e3_j8: 0.8678191796776491 z[9,0] + 0.4968801378437382 z[9,2]
   - obstacle_slack + 100 alpha[5,3,8] <= 102.5437756916226
 obs_alpha_sum_o5_j9: alpha[5,0,9] + alpha[5,1,9] + alpha[5,2,9]
   + alpha[5,3,9] >= 1
 obs_face_o5_e0_j9: - 0.4968801378437369 z[10,0]
   + 0.8678191796776499 z[10,2] - obstacle_slack + 100 alpha[5,0,9]
   <= 95.86387054126484
 obs_face_o5_e1_j9: - 0.8678191796776491 z[10,0]
   - 0.4968801378437382 z[10,2] - obstacle_slack + 100 alpha[5,1,9]
   <= 95.35622430837736
 obs_face_o5_e2_j9: 0.4968801378437369 z[10,0] - 0.8678191796776499 z[10,2]
   - obstacle_slack + 100 alpha[5,2,9] <= 103.4361294587352
 obs_face_o5_e3_j9: 0.8678191796776491 z[10,0] + 0.4968801378437382 z[10,2]
   - obstacle_slack + 100 alpha[5,3,9] <= 102.5437756916226
 obs_alpha_sum_o5_j10: alpha[5,0,10] + alpha[5,1,10] + alpha[5,2,10]
   + alpha[5,3,10] >= 1
 obs_face_o5_e0_j10: - 0.4968801378437369 z[11,0]
   + 0.8678191796776499 z[11,2] - obstacle_slack + 100 alpha[5,0,10]
   <= 95.86387054126484
 obs_face_o5_e1_j10: - 0.8678191796776491 z[11,0]
   - 0.4968801378437382 z[11,2] - obstacle_slack + 100 alpha[5,1,10]
   <= 95.35622430837736
 obs_face_o5_e2_j10: 0.4968801378437369 z[11,0]
   - 0.8678191796776499 z[11,2] - obstacle_slack + 100 alpha[5,2,10]
   <= 103.4361294587352
 obs_face_o5_e3_j10: 0.8678191796776491 z[11,0]
   + 0.4968801378437382 z[11,2] - obstacle_slack + 100 alpha[5,3,10]
   <= 102.5437756916226
 obs_alpha_sum_o5_j11: alpha[5,0,11] + alpha[5,1,11] + alpha[5,2,11]
   + alpha[5,3,11] >= 1
 obs_face_o5_e0_j11: - 0.4968801378437369 z[12,0]
   + 0.8678191796776499 z[12,2] - obstacle_slack + 100 alpha[5,0,11]
   <= 95.86387054126484
 obs_face_o5_e1_j11: - 0.8678191796776491 z[12,0]
   - 0.4968801378437382 z[12,2] - obstacle_slack + 100 alpha[5,1,11]
   <= 95.35622430837736
 obs_face_o5_e2_j11: 0.4968801378437369 z[12,0]
   - 0.8678191796776499 z[12,2] - obstacle_slack + 100 alpha[5,2,11]
   <= 103.4361294587352
 obs_face_o5_e3_j11: 0.8678191796776491 z[12,0]
   + 0.4968801378437382 z[12,2] - obstacle_slack + 100 alpha[5,3,11]
   <= 102.5437756916226
 obs_alpha_sum_o5_j12: alpha[5,0,12] + alpha[5,1,12] + alpha[5,2,12]
   + alpha[5,3,12] >= 1
 obs_face_o5_e0_j12: - 0.4968801378437369 z[13,0]
   + 0.8678191796776499 z[13,2] - obstacle_slack + 100 alpha[5,0,12]
   <= 95.86387054126484
 obs_face_o5_e1_j12: - 0.8678191796776491 z[13,0]
   - 0.4968801378437382 z[13,2] - obstacle_slack + 100 alpha[5,1,12]
   <= 95.35622430837736
 obs_face_o5_e2_j12: 0.4968801378437369 z[13,0]
   - 0.8678191796776499 z[13,2] - obstacle_slack + 100 alpha[5,2,12]
   <= 103.4361294587352
 obs_face_o5_e3_j12: 0.8678191796776491 z[13,0]
   + 0.4968801378437382 z[13,2] - obstacle_slack + 100 alpha[5,3,12]
   <= 102.5437756916226
 obs_alpha_sum_o5_j13: alpha[5,0,13] + alpha[5,1,13] + alpha[5,2,13]
   + alpha[5,3,13] >= 1
 obs_face_o5_e0_j13: - 0.4968801378437369 z[14,0]
   + 0.8678191796776499 z[14,2] - obstacle_slack + 100 alpha[5,0,13]
   <= 95.86387054126484
 obs_face_o5_e1_j13: - 0.8678191796776491 z[14,0]
   - 0.4968801378437382 z[14,2] - obstacle_slack + 100 alpha[5,1,13]
   <= 95.35622430837736
 obs_face_o5_e2_j13: 0.4968801378437369 z[14,0]
   - 0.8678191796776499 z[14,2] - obstacle_slack + 100 alpha[5,2,13]
   <= 103.4361294587352
 obs_face_o5_e3_j13: 0.8678191796776491 z[14,0]
   + 0.4968801378437382 z[14,2] - obstacle_slack + 100 alpha[5,3,13]
   <= 102.5437756916226
 obs_alpha_sum_o5_j14: alpha[5,0,14] + alpha[5,1,14] + alpha[5,2,14]
   + alpha[5,3,14] >= 1
 obs_face_o5_e0_j14: - 0.4968801378437369 z[15,0]
   + 0.8678191796776499 z[15,2] - obstacle_slack + 100 alpha[5,0,14]
   <= 95.86387054126484
 obs_face_o5_e1_j14: - 0.8678191796776491 z[15,0]
   - 0.4968801378437382 z[15,2] - obstacle_slack + 100 alpha[5,1,14]
   <= 95.35622430837736
 obs_face_o5_e2_j14: 0.4968801378437369 z[15,0]
   - 0.8678191796776499 z[15,2] - obstacle_slack + 100 alpha[5,2,14]
   <= 103.4361294587352
 obs_face_o5_e3_j14: 0.8678191796776491 z[15,0]
   + 0.4968801378437382 z[15,2] - obstacle_slack + 100 alpha[5,3,14]
   <= 102.5437756916226
 obs_alpha_sum_o5_j15: alpha[5,0,15] + alpha[5,1,15] + alpha[5,2,15]
   + alpha[5,3,15] >= 1
 obs_face_o5_e0_j15: - 0.4968801378437369 z[16,0]
   + 0.8678191796776499 z[16,2] - obstacle_slack + 100 alpha[5,0,15]
   <= 95.86387054126484
 obs_face_o5_e1_j15: - 0.8678191796776491 z[16,0]
   - 0.4968801378437382 z[16,2] - obstacle_slack + 100 alpha[5,1,15]
   <= 95.35622430837736
 obs_face_o5_e2_j15: 0.4968801378437369 z[16,0]
   - 0.8678191796776499 z[16,2] - obstacle_slack + 100 alpha[5,2,15]
   <= 103.4361294587352
 obs_face_o5_e3_j15: 0.8678191796776491 z[16,0]
   + 0.4968801378437382 z[16,2] - obstacle_slack + 100 alpha[5,3,15]
   <= 102.5437756916226
 obs_alpha_sum_o5_j16: alpha[5,0,16] + alpha[5,1,16] + alpha[5,2,16]
   + alpha[5,3,16] >= 1
 obs_face_o5_e0_j16: - 0.4968801378437369 z[17,0]
   + 0.8678191796776499 z[17,2] - obstacle_slack + 100 alpha[5,0,16]
   <= 95.86387054126484
 obs_face_o5_e1_j16: - 0.8678191796776491 z[17,0]
   - 0.4968801378437382 z[17,2] - obstacle_slack + 100 alpha[5,1,16]
   <= 95.35622430837736
 obs_face_o5_e2_j16: 0.4968801378437369 z[17,0]
   - 0.8678191796776499 z[17,2] - obstacle_slack + 100 alpha[5,2,16]
   <= 103.4361294587352
 obs_face_o5_e3_j16: 0.8678191796776491 z[17,0]
   + 0.4968801378437382 z[17,2] - obstacle_slack + 100 alpha[5,3,16]
   <= 102.5437756916226
 obs_alpha_sum_o5_j17: alpha[5,0,17] + alpha[5,1,17] + alpha[5,2,17]
   + alpha[5,3,17] >= 1
 obs_face_o5_e0_j17: - 0.4968801378437369 z[18,0]
   + 0.8678191796776499 z[18,2] - obstacle_slack + 100 alpha[5,0,17]
   <= 95.86387054126484
 obs_face_o5_e1_j17: - 0.8678191796776491 z[18,0]
   - 0.4968801378437382 z[18,2] - obstacle_slack + 100 alpha[5,1,17]
   <= 95.35622430837736
 obs_face_o5_e2_j17: 0.4968801378437369 z[18,0]
   - 0.8678191796776499 z[18,2] - obstacle_slack + 100 alpha[5,2,17]
   <= 103.4361294587352
 obs_face_o5_e3_j17: 0.8678191796776491 z[18,0]
   + 0.4968801378437382 z[18,2] - obstacle_slack + 100 alpha[5,3,17]
   <= 102.5437756916226
 obs_alpha_sum_o5_j18: alpha[5,0,18] + alpha[5,1,18] + alpha[5,2,18]
   + alpha[5,3,18] >= 1
 obs_face_o5_e0_j18: - 0.4968801378437369 z[19,0]
   + 0.8678191796776499 z[19,2] - obstacle_slack + 100 alpha[5,0,18]
   <= 95.86387054126484
 obs_face_o5_e1_j18: - 0.8678191796776491 z[19,0]
   - 0.4968801378437382 z[19,2] - obstacle_slack + 100 alpha[5,1,18]
   <= 95.35622430837736
 obs_face_o5_e2_j18: 0.4968801378437369 z[19,0]
   - 0.8678191796776499 z[19,2] - obstacle_slack + 100 alpha[5,2,18]
   <= 103.4361294587352
 obs_face_o5_e3_j18: 0.8678191796776491 z[19,0]
   + 0.4968801378437382 z[19,2] - obstacle_slack + 100 alpha[5,3,18]
   <= 102.5437756916226
 obs_alpha_sum_o5_j19: alpha[5,0,19] + alpha[5,1,19] + alpha[5,2,19]
   + alpha[5,3,19] >= 1
 obs_face_o5_e0_j19: - 0.4968801378437369 z[20,0]
   + 0.8678191796776499 z[20,2] - obstacle_slack + 100 alpha[5,0,19]
   <= 95.86387054126484
 obs_face_o5_e1_j19: - 0.8678191796776491 z[20,0]
   - 0.4968801378437382 z[20,2] - obstacle_slack + 100 alpha[5,1,19]
   <= 95.35622430837736
 obs_face_o5_e2_j19: 0.4968801378437369 z[20,0]
   - 0.8678191796776499 z[20,2] - obstacle_slack + 100 alpha[5,2,19]
   <= 103.4361294587352
 obs_face_o5_e3_j19: 0.8678191796776491 z[20,0]
   + 0.4968801378437382 z[20,2] - obstacle_slack + 100 alpha[5,3,19]
   <= 102.5437756916226
 obs_alpha_sum_o5_j20: alpha[5,0,20] + alpha[5,1,20] + alpha[5,2,20]
   + alpha[5,3,20] >= 1
 obs_face_o5_e0_j20: - 0.4968801378437369 z[21,0]
   + 0.8678191796776499 z[21,2] - obstacle_slack + 100 alpha[5,0,20]
   <= 95.86387054126484
 obs_face_o5_e1_j20: - 0.8678191796776491 z[21,0]
   - 0.4968801378437382 z[21,2] - obstacle_slack + 100 alpha[5,1,20]
   <= 95.35622430837736
 obs_face_o5_e2_j20: 0.4968801378437369 z[21,0]
   - 0.8678191796776499 z[21,2] - obstacle_slack + 100 alpha[5,2,20]
   <= 103.4361294587352
 obs_face_o5_e3_j20: 0.8678191796776491 z[21,0]
   + 0.4968801378437382 z[21,2] - obstacle_slack + 100 alpha[5,3,20]
   <= 102.5437756916226
 obs_alpha_sum_o5_j21: alpha[5,0,21] + alpha[5,1,21] + alpha[5,2,21]
   + alpha[5,3,21] >= 1
 obs_face_o5_e0_j21: - 0.4968801378437369 z[22,0]
   + 0.8678191796776499 z[22,2] - obstacle_slack + 100 alpha[5,0,21]
   <= 95.86387054126484
 obs_face_o5_e1_j21: - 0.8678191796776491 z[22,0]
   - 0.4968801378437382 z[22,2] - obstacle_slack + 100 alpha[5,1,21]
   <= 95.35622430837736
 obs_face_o5_e2_j21: 0.4968801378437369 z[22,0]
   - 0.8678191796776499 z[22,2] - obstacle_slack + 100 alpha[5,2,21]
   <= 103.4361294587352
 obs_face_o5_e3_j21: 0.8678191796776491 z[22,0]
   + 0.4968801378437382 z[22,2] - obstacle_slack + 100 alpha[5,3,21]
   <= 102.5437756916226
 obs_alpha_sum_o5_j22: alpha[5,0,22] + alpha[5,1,22] + alpha[5,2,22]
   + alpha[5,3,22] >= 1
 obs_face_o5_e0_j22: - 0.4968801378437369 z[23,0]
   + 0.8678191796776499 z[23,2] - obstacle_slack + 100 alpha[5,0,22]
   <= 95.86387054126484
 obs_face_o5_e1_j22: - 0.8678191796776491 z[23,0]
   - 0.4968801378437382 z[23,2] - obstacle_slack + 100 alpha[5,1,22]
   <= 95.35622430837736
 obs_face_o5_e2_j22: 0.4968801378437369 z[23,0]
   - 0.8678191796776499 z[23,2] - obstacle_slack + 100 alpha[5,2,22]
   <= 103.4361294587352
 obs_face_o5_e3_j22: 0.8678191796776491 z[23,0]
   + 0.4968801378437382 z[23,2] - obstacle_slack + 100 alpha[5,3,22]
   <= 102.5437756916226
 obs_alpha_sum_o5_j23: alpha[5,0,23] + alpha[5,1,23] + alpha[5,2,23]
   + alpha[5,3,23] >= 1
 obs_face_o5_e0_j23: - 0.4968801378437369 z[24,0]
   + 0.8678191796776499 z[24,2] - obstacle_slack + 100 alpha[5,0,23]
   <= 95.86387054126484
 obs_face_o5_e1_j23: - 0.8678191796776491 z[24,0]
   - 0.4968801378437382 z[24,2] - obstacle_slack + 100 alpha[5,1,23]
   <= 95.35622430837736
 obs_face_o5_e2_j23: 0.4968801378437369 z[24,0]
   - 0.8678191796776499 z[24,2] - obstacle_slack + 100 alpha[5,2,23]
   <= 103.4361294587352
 obs_face_o5_e3_j23: 0.8678191796776491 z[24,0]
   + 0.4968801378437382 z[24,2] - obstacle_slack + 100 alpha[5,3,23]
   <= 102.5437756916226
 obs_alpha_sum_o5_j24: alpha[5,0,24] + alpha[5,1,24] + alpha[5,2,24]
   + alpha[5,3,24] >= 1
 obs_face_o5_e0_j24: - 0.4968801378437369 z[25,0]
   + 0.8678191796776499 z[25,2] - obstacle_slack + 100 alpha[5,0,24]
   <= 95.86387054126484
 obs_face_o5_e1_j24: - 0.8678191796776491 z[25,0]
   - 0.4968801378437382 z[25,2] - obstacle_slack + 100 alpha[5,1,24]
   <= 95.35622430837736
 obs_face_o5_e2_j24: 0.4968801378437369 z[25,0]
   - 0.8678191796776499 z[25,2] - obstacle_slack + 100 alpha[5,2,24]
   <= 103.4361294587352
 obs_face_o5_e3_j24: 0.8678191796776491 z[25,0]
   + 0.4968801378437382 z[25,2] - obstacle_slack + 100 alpha[5,3,24]
   <= 102.5437756916226
 obs_alpha_sum_o5_j25: alpha[5,0,25] + alpha[5,1,25] + alpha[5,2,25]
   + alpha[5,3,25] >= 1
 obs_face_o5_e0_j25: - 0.4968801378437369 z[26,0]
   + 0.8678191796776499 z[26,2] - obstacle_slack + 100 alpha[5,0,25]
   <= 95.86387054126484
 obs_face_o5_e1_j25: - 0.8678191796776491 z[26,0]
   - 0.4968801378437382 z[26,2] - obstacle_slack + 100 alpha[5,1,25]
   <= 95.35622430837736
 obs_face_o5_e2_j25: 0.4968801378437369 z[26,0]
   - 0.8678191796776499 z[26,2] - obstacle_slack + 100 alpha[5,2,25]
   <= 103.4361294587352
 obs_face_o5_e3_j25: 0.8678191796776491 z[26,0]
   + 0.4968801378437382 z[26,2] - obstacle_slack + 100 alpha[5,3,25]
   <= 102.5437756916226
 obs_alpha_sum_o5_j26: alpha[5,0,26] + alpha[5,1,26] + alpha[5,2,26]
   + alpha[5,3,26] >= 1
 obs_face_o5_e0_j26: - 0.4968801378437369 z[27,0]
   + 0.8678191796776499 z[27,2] - obstacle_slack + 100 alpha[5,0,26]
   <= 95.86387054126484
 obs_face_o5_e1_j26: - 0.8678191796776491 z[27,0]
   - 0.4968801378437382 z[27,2] - obstacle_slack + 100 alpha[5,1,26]
   <= 95.35622430837736
 obs_face_o5_e2_j26: 0.4968801378437369 z[27,0]
   - 0.8678191796776499 z[27,2] - obstacle_slack + 100 alpha[5,2,26]
   <= 103.4361294587352
 obs_face_o5_e3_j26: 0.8678191796776491 z[27,0]
   + 0.4968801378437382 z[27,2] - obstacle_slack + 100 alpha[5,3,26]
   <= 102.5437756916226
 obs_alpha_sum_o5_j27: alpha[5,0,27] + alpha[5,1,27] + alpha[5,2,27]
   + alpha[5,3,27] >= 1
 obs_face_o5_e0_j27: - 0.4968801378437369 z[28,0]
   + 0.8678191796776499 z[28,2] - obstacle_slack + 100 alpha[5,0,27]
   <= 95.86387054126484
 obs_face_o5_e1_j27: - 0.8678191796776491 z[28,0]
   - 0.4968801378437382 z[28,2] - obstacle_slack + 100 alpha[5,1,27]
   <= 95.35622430837736
 obs_face_o5_e2_j27: 0.4968801378437369 z[28,0]
   - 0.8678191796776499 z[28,2] - obstacle_slack + 100 alpha[5,2,27]
   <= 103.4361294587352
 obs_face_o5_e3_j27: 0.8678191796776491 z[28,0]
   + 0.4968801378437382 z[28,2] - obstacle_slack + 100 alpha[5,3,27]
   <= 102.5437756916226
 obs_alpha_sum_o5_j28: alpha[5,0,28] + alpha[5,1,28] + alpha[5,2,28]
   + alpha[5,3,28] >= 1
 obs_face_o5_e0_j28: - 0.4968801378437369 z[29,0]
   + 0.8678191796776499 z[29,2] - obstacle_slack + 100 alpha[5,0,28]
   <= 95.86387054126484
 obs_face_o5_e1_j28: - 0.8678191796776491 z[29,0]
   - 0.4968801378437382 z[29,2] - obstacle_slack + 100 alpha[5,1,28]
   <= 95.35622430837736
 obs_face_o5_e2_j28: 0.4968801378437369 z[29,0]
   - 0.8678191796776499 z[29,2] - obstacle_slack + 100 alpha[5,2,28]
   <= 103.4361294587352
 obs_face_o5_e3_j28: 0.8678191796776491 z[29,0]
   + 0.4968801378437382 z[29,2] - obstacle_slack + 100 alpha[5,3,28]
   <= 102.5437756916226
 obs_alpha_sum_o5_j29: alpha[5,0,29] + alpha[5,1,29] + alpha[5,2,29]
   + alpha[5,3,29] >= 1
 obs_face_o5_e0_j29: - 0.4968801378437369 z[30,0]
   + 0.8678191796776499 z[30,2] - obstacle_slack + 100 alpha[5,0,29]
   <= 95.86387054126484
 obs_face_o5_e1_j29: - 0.8678191796776491 z[30,0]
   - 0.4968801378437382 z[30,2] - obstacle_slack + 100 alpha[5,1,29]
   <= 95.35622430837736
 obs_face_o5_e2_j29: 0.4968801378437369 z[30,0]
   - 0.8678191796776499 z[30,2] - obstacle_slack + 100 alpha[5,2,29]
   <= 103.4361294587352
 obs_face_o5_e3_j29: 0.8678191796776491 z[30,0]
   + 0.4968801378437382 z[30,2] - obstacle_slack + 100 alpha[5,3,29]
   <= 102.5437756916226
 obs_alpha_sum_o6_j0: alpha[6,0,0] + alpha[6,1,0] + alpha[6,2,0]
   + alpha[6,3,0] >= 1
 obs_face_o6_e0_j0: z[1,2] - obstacle_slack + 100 alpha[6,0,0] <= 99.6
 obs_face_o6_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[6,1,0] <= 93.6
 obs_face_o6_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[6,2,0] <= 99.6
 obs_face_o6_e3_j0: z[1,0] - obstacle_slack + 100 alpha[6,3,0] <= 105.6
 obs_alpha_sum_o6_j1: alpha[6,0,1] + alpha[6,1,1] + alpha[6,2,1]
   + alpha[6,3,1] >= 1
 obs_face_o6_e0_j1: z[2,2] - obstacle_slack + 100 alpha[6,0,1] <= 99.6
 obs_face_o6_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[6,1,1] <= 93.6
 obs_face_o6_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[6,2,1] <= 99.6
 obs_face_o6_e3_j1: z[2,0] - obstacle_slack + 100 alpha[6,3,1] <= 105.6
 obs_alpha_sum_o6_j2: alpha[6,0,2] + alpha[6,1,2] + alpha[6,2,2]
   + alpha[6,3,2] >= 1
 obs_face_o6_e0_j2: z[3,2] - obstacle_slack + 100 alpha[6,0,2] <= 99.6
 obs_face_o6_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[6,1,2] <= 93.6
 obs_face_o6_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[6,2,2] <= 99.6
 obs_face_o6_e3_j2: z[3,0] - obstacle_slack + 100 alpha[6,3,2] <= 105.6
 obs_alpha_sum_o6_j3: alpha[6,0,3] + alpha[6,1,3] + alpha[6,2,3]
   + alpha[6,3,3] >= 1
 obs_face_o6_e0_j3: z[4,2] - obstacle_slack + 100 alpha[6,0,3] <= 99.6
 obs_face_o6_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[6,1,3] <= 93.6
 obs_face_o6_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[6,2,3] <= 99.6
 obs_face_o6_e3_j3: z[4,0] - obstacle_slack + 100 alpha[6,3,3] <= 105.6
 obs_alpha_sum_o6_j4: alpha[6,0,4] + alpha[6,1,4] + alpha[6,2,4]
   + alpha[6,3,4] >= 1
 obs_face_o6_e0_j4: z[5,2] - obstacle_slack + 100 alpha[6,0,4] <= 99.6
 obs_face_o6_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[6,1,4] <= 93.6
 obs_face_o6_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[6,2,4] <= 99.6
 obs_face_o6_e3_j4: z[5,0] - obstacle_slack + 100 alpha[6,3,4] <= 105.6
 obs_alpha_sum_o6_j5: alpha[6,0,5] + alpha[6,1,5] + alpha[6,2,5]
   + alpha[6,3,5] >= 1
 obs_face_o6_e0_j5: z[6,2] - obstacle_slack + 100 alpha[6,0,5] <= 99.6
 obs_face_o6_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[6,1,5] <= 93.6
 obs_face_o6_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[6,2,5] <= 99.6
 obs_face_o6_e3_j5: z[6,0] - obstacle_slack + 100 alpha[6,3,5] <= 105.6
 obs_alpha_sum_o6_j6: alpha[6,0,6] + alpha[6,1,6] + alpha[6,2,6]
   + alpha[6,3,6] >= 1
 obs_face_o6_e0_j6: z[7,2] - obstacle_slack + 100 alpha[6,0,6] <= 99.6
 obs_face_o6_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[6,1,6] <= 93.6
 obs_face_o6_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[6,2,6] <= 99.6
 obs_face_o6_e3_j6: z[7,0] - obstacle_slack + 100 alpha[6,3,6] <= 105.6
 obs_alpha_sum_o6_j7: alpha[6,0,7] + alpha[6,1,7] + alpha[6,2,7]
   + alpha[6,3,7] >= 1
 obs_face_o6_e0_j7: z[8,2] - obstacle_slack + 100 alpha[6,0,7] <= 99.6
 obs_face_o6_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[6,1,7] <= 93.6
 obs_face_o6_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[6,2,7] <= 99.6
 obs_face_o6_e3_j7: z[8,0] - obstacle_slack + 100 alpha[6,3,7] <= 105.6
 obs_alpha_sum_o6_j8: alpha[6,0,8] + alpha[6,1,8] + alpha[6,2,8]
   + alpha[6,3,8] >= 1
 obs_face_o6_e0_j8: z[9,2] - obstacle_slack + 100 alpha[6,0,8] <= 99.6
 obs_face_o6_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[6,1,8] <= 93.6
 obs_face_o6_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[6,2,8] <= 99.6
 obs_face_o6_e3_j8: z[9,0] - obstacle_slack + 100 alpha[6,3,8] <= 105.6
 obs_alpha_sum_o6_j9: alpha[6,0,9] + alpha[6,1,9] + alpha[6,2,9]
   + alpha[6,3,9] >= 1
 obs_face_o6_e0_j9: z[10,2] - obstacle_slack + 100 alpha[6,0,9] <= 99.6
 obs_face_o6_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[6,1,9] <= 93.6
 obs_face_o6_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[6,2,9] <= 99.6
 obs_face_o6_e3_j9: z[10,0] - obstacle_slack + 100 alpha[6,3,9] <= 105.6
 obs_alpha_sum_o6_j10: alpha[6,0,10] + alpha[6,1,10] + alpha[6,2,10]
   + alpha[6,3,10] >= 1
 obs_face_o6_e0_j10: z[11,2] - obstacle_slack + 100 alpha[6,0,10] <= 99.6
 obs_face_o6_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[6,1,10]
   <= 93.6
 obs_face_o6_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[6,2,10]
   <= 99.6
 obs_face_o6_e3_j10: z[11,0] - obstacle_slack + 100 alpha[6,3,10] <= 105.6
 obs_alpha_sum_o6_j11: alpha[6,0,11] + alpha[6,1,11] + alpha[6,2,11]
   + alpha[6,3,11] >= 1
 obs_face_o6_e0_j11: z[12,2] - obstacle_slack + 100 alpha[6,0,11] <= 99.6
 obs_face_o6_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[6,1,11]
   <= 93.6
 obs_face_o6_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[6,2,11]
   <= 99.6
 obs_face_o6_e3_j11: z[12,0] - obstacle_slack + 100 alpha[6,3,11] <= 105.6
 obs_alpha_sum_o6_j12: alpha[6,0,12] + alpha[6,1,12] + alpha[6,2,12]
   + alpha[6,3,12] >= 1
 obs_face_o6_e0_j12: z[13,2] - obstacle_slack + 100 alpha[6,0,12] <= 99.6
 obs_face_o6_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[6,1,12]
   <= 93.6
 obs_face_o6_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[6,2,12]
   <= 99.6
 obs_face_o6_e3_j12: z[13,0] - obstacle_slack + 100 alpha[6,3,12] <= 105.6
 obs_alpha_sum_o6_j13: alpha[6,0,13] + alpha[6,1,13] + alpha[6,2,13]
   + alpha[6,3,13] >= 1
 obs_face_o6_e0_j13: z[14,2] - obstacle_slack + 100 alpha[6,0,13] <= 99.6
 obs_face_o6_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[6,1,13]
   <= 93.6
 obs_face_o6_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[6,2,13]
   <= 99.6
 obs_face_o6_e3_j13: z[14,0] - obstacle_slack + 100 alpha[6,3,13] <= 105.6
 obs_alpha_sum_o6_j14: alpha[6,0,14] + alpha[6,1,14] + alpha[6,2,14]
   + alpha[6,3,14] >= 1
 obs_face_o6_e0_j14: z[15,2] - obstacle_slack + 100 alpha[6,0,14] <= 99.6
 obs_face_o6_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[6,1,14]
   <= 93.6
 obs_face_o6_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[6,2,14]
   <= 99.6
 obs_face_o6_e3_j14: z[15,0] - obstacle_slack + 100 alpha[6,3,14] <= 105.6
 obs_alpha_sum_o6_j15: alpha[6,0,15] + alpha[6,1,15] + alpha[6,2,15]
   + alpha[6,3,15] >= 1
 obs_face_o6_e0_j15: z[16,2] - obstacle_slack + 100 alpha[6,0,15] <= 99.6
 obs_face_o6_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[6,1,15]
   <= 93.6
 obs_face_o6_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[6,2,15]
   <= 99.6
 obs_face_o6_e3_j15: z[16,0] - obstacle_slack + 100 alpha[6,3,15] <= 105.6
 obs_alpha_sum_o6_j16: alpha[6,0,16] + alpha[6,1,16] + alpha[6,2,16]
   + alpha[6,3,16] >= 1
 obs_face_o6_e0_j16: z[17,2] - obstacle_slack + 100 alpha[6,0,16] <= 99.6
 obs_face_o6_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[6,1,16]
   <= 93.6
 obs_face_o6_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[6,2,16]
   <= 99.6
 obs_face_o6_e3_j16: z[17,0] - obstacle_slack + 100 alpha[6,3,16] <= 105.6
 obs_alpha_sum_o6_j17: alpha[6,0,17] + alpha[6,1,17] + alpha[6,2,17]
   + alpha[6,3,17] >= 1
 obs_face_o6_e0_j17: z[18,2] - obstacle_slack + 100 alpha[6,0,17] <= 99.6
 obs_face_o6_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[6,1,17]
   <= 93.6
 obs_face_o6_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[6,2,17]
   <= 99.6
 obs_face_o6_e3_j17: z[18,0] - obstacle_slack + 100 alpha[6,3,17] <= 105.6
 obs_alpha_sum_o6_j18: alpha[6,0,18] + alpha[6,1,18] + alpha[6,2,18]
   + alpha[6,3,18] >= 1
 obs_face_o6_e0_j18: z[19,2] - obstacle_slack + 100 alpha[6,0,18] <= 99.6
 obs_face_o6_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[6,1,18]
   <= 93.6
 obs_face_o6_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[6,2,18]
   <= 99.6
 obs_face_o6_e3_j18: z[19,0] - obstacle_slack + 100 alpha[6,3,18] <= 105.6
 obs_alpha_sum_o6_j19: alpha[6,0,19] + alpha[6,1,19] + alpha[6,2,19]
   + alpha[6,3,19] >= 1
 obs_face_o6_e0_j19: z[20,2] - obstacle_slack + 100 alpha[6,0,19] <= 99.6
 obs_face_o6_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[6,1,19]
   <= 93.6
 obs_face_o6_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[6,2,19]
   <= 99.6
 obs_face_o6_e3_j19: z[20,0] - obstacle_slack + 100 alpha[6,3,19] <= 105.6
 obs_alpha_sum_o6_j20: alpha[6,0,20] + alpha[6,1,20] + alpha[6,2,20]
   + alpha[6,3,20] >= 1
 obs_face_o6_e0_j20: z[21,2] - obstacle_slack + 100 alpha[6,0,20] <= 99.6
 obs_face_o6_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[6,1,20]
   <= 93.6
 obs_face_o6_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[6,2,20]
   <= 99.6
 obs_face_o6_e3_j20: z[21,0] - obstacle_slack + 100 alpha[6,3,20] <= 105.6
 obs_alpha_sum_o6_j21: alpha[6,0,21] + alpha[6,1,21] + alpha[6,2,21]
   + alpha[6,3,21] >= 1
 obs_face_o6_e0_j21: z[22,2] - obstacle_slack + 100 alpha[6,0,21] <= 99.6
 obs_face_o6_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[6,1,21]
   <= 93.6
 obs_face_o6_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[6,2,21]
   <= 99.6
 obs_face_o6_e3_j21: z[22,0] - obstacle_slack + 100 alpha[6,3,21] <= 105.6
 obs_alpha_sum_o6_j22: alpha[6,0,22] + alpha[6,1,22] + alpha[6,2,22]
   + alpha[6,3,22] >= 1
 obs_face_o6_e0_j22: z[23,2] - obstacle_slack + 100 alpha[6,0,22] <= 99.6
 obs_face_o6_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[6,1,22]
   <= 93.6
 obs_face_o6_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[6,2,22]
   <= 99.6
 obs_face_o6_e3_j22: z[23,0] - obstacle_slack + 100 alpha[6,3,22] <= 105.6
 obs_alpha_sum_o6_j23: alpha[6,0,23] + alpha[6,1,23] + alpha[6,2,23]
   + alpha[6,3,23] >= 1
 obs_face_o6_e0_j23: z[24,2] - obstacle_slack + 100 alpha[6,0,23] <= 99.6
 obs_face_o6_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[6,1,23]
   <= 93.6
 obs_face_o6_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[6,2,23]
   <= 99.6
 obs_face_o6_e3_j23: z[24,0] - obstacle_slack + 100 alpha[6,3,23] <= 105.6
 obs_alpha_sum_o6_j24: alpha[6,0,24] + alpha[6,1,24] + alpha[6,2,24]
   + alpha[6,3,24] >= 1
 obs_face_o6_e0_j24: z[25,2] - obstacle_slack + 100 alpha[6,0,24] <= 99.6
 obs_face_o6_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[6,1,24]
   <= 93.6
 obs_face_o6_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[6,2,24]
   <= 99.6
 obs_face_o6_e3_j24: z[25,0] - obstacle_slack + 100 alpha[6,3,24] <= 105.6
 obs_alpha_sum_o6_j25: alpha[6,0,25] + alpha[6,1,25] + alpha[6,2,25]
   + alpha[6,3,25] >= 1
 obs_face_o6_e0_j25: z[26,2] - obstacle_slack + 100 alpha[6,0,25] <= 99.6
 obs_face_o6_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[6,1,25]
   <= 93.6
 obs_face_o6_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[6,2,25]
   <= 99.6
 obs_face_o6_e3_j25: z[26,0] - obstacle_slack + 100 alpha[6,3,25] <= 105.6
 obs_alpha_sum_o6_j26: alpha[6,0,26] + alpha[6,1,26] + alpha[6,2,26]
   + alpha[6,3,26] >= 1
 obs_face_o6_e0_j26: z[27,2] - obstacle_slack + 100 alpha[6,0,26] <= 99.6
 obs_face_o6_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[6,1,26]
   <= 93.6
 obs_face_o6_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[6,2,26]
   <= 99.6
 obs_face_o6_e3_j26: z[27,0] - obstacle_slack + 100 alpha[6,3,26] <= 105.6
 obs_alpha_sum_o6_j27: alpha[6,0,27] + alpha[6,1,27] + alpha[6,2,27]
   + alpha[6,3,27] >= 1
 obs_face_o6_e0_j27: z[28,2] - obstacle_slack + 100 alpha[6,0,27] <= 99.6
 obs_face_o6_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[6,1,27]
   <= 93.6
 obs_face_o6_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[6,2,27]
   <= 99.6
 obs_face_o6_e3_j27: z[28,0] - obstacle_slack + 100 alpha[6,3,27] <= 105.6
 obs_alpha_sum_o6_j28: alpha[6,0,28] + alpha[6,1,28] + alpha[6,2,28]
   + alpha[6,3,28] >= 1
 obs_face_o6_e0_j28: z[29,2] - obstacle_slack + 100 alpha[6,0,28] <= 99.6
 obs_face_o6_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[6,1,28]
   <= 93.6
 obs_face_o6_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[6,2,28]
   <= 99.6
 obs_face_o6_e3_j28: z[29,0] - obstacle_slack + 100 alpha[6,3,28] <= 105.6
 obs_alpha_sum_o6_j29: alpha[6,0,29] + alpha[6,1,29] + alpha[6,2,29]
   + alpha[6,3,29] >= 1
 obs_face_o6_e0_j29: z[30,2] - obstacle_slack + 100 alpha[6,0,29] <= 99.6
 obs_face_o6_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[6,1,29]
   <= 93.6
 obs_face_o6_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[6,2,29]
   <= 99.6
 obs_face_o6_e3_j29: z[30,0] - obstacle_slack + 100 alpha[6,3,29] <= 105.6
 obs_alpha_sum_o7_j0: alpha[7,0,0] + alpha[7,1,0] + alpha[7,2,0]
   + alpha[7,3,0] >= 1
 obs_face_o7_e0_j0: - 0.7068251811053667 z[1,0] + 0.7073882691671989 z[1,2]
   - obstacle_slack + 100 alpha[7,0,0] <= 94.15744610548867
 obs_face_o7_e1_j0: - 0.7073882691671993 z[1,0] - 0.7068251811053663 z[1,2]
   - obstacle_slack + 100 alpha[7,1,0] <= 94.15311032741256
 obs_face_o7_e2_j0: 0.7068251811053667 z[1,0] - 0.7073882691671989 z[1,2]
   - obstacle_slack + 100 alpha[7,2,0] <= 105.0425538945113
 obs_face_o7_e3_j0: 0.7073882691671993 z[1,0] + 0.7068251811053663 z[1,2]
   - obstacle_slack + 100 alpha[7,3,0] <= 105.0468896725874
 obs_alpha_sum_o7_j1: alpha[7,0,1] + alpha[7,1,1] + alpha[7,2,1]
   + alpha[7,3,1] >= 1
 obs_face_o7_e0_j1: - 0.7068251811053667 z[2,0] + 0.7073882691671989 z[2,2]
   - obstacle_slack + 100 alpha[7,0,1] <= 94.15744610548867
 obs_face_o7_e1_j1: - 0.7073882691671993 z[2,0] - 0.7068251811053663 z[2,2]
   - obstacle_slack + 100 alpha[7,1,1] <= 94.15311032741256
 obs_face_o7_e2_j1: 0.7068251811053667 z[2,0] - 0.7073882691671989 z[2,2]
   - obstacle_slack + 100 alpha[7,2,1] <= 105.0425538945113
 obs_face_o7_e3_j1: 0.7073882691671993 z[2,0] + 0.7068251811053663 z[2,2]
   - obstacle_slack + 100 alpha[7,3,1] <= 105.0468896725874
 obs_alpha_sum_o7_j2: alpha[7,0,2] + alpha[7,1,2] + alpha[7,2,2]
   + alpha[7,3,2] >= 1
 obs_face_o7_e0_j2: - 0.7068251811053667 z[3,0] + 0.7073882691671989 z[3,2]
   - obstacle_slack + 100 alpha[7,0,2] <= 94.15744610548867
 obs_face_o7_e1_j2: - 0.7073882691671993 z[3,0] - 0.7068251811053663 z[3,2]
   - obstacle_slack + 100 alpha[7,1,2] <= 94.15311032741256
 obs_face_o7_e2_j2: 0.7068251811053667 z[3,0] - 0.7073882691671989 z[3,2]
   - obstacle_slack + 100 alpha[7,2,2] <= 105.0425538945113
 obs_face_o7_e3_j2: 0.7073882691671993 z[3,0] + 0.7068251811053663 z[3,2]
   - obstacle_slack + 100 alpha[7,3,2] <= 105.0468896725874
 obs_alpha_sum_o7_j3: alpha[7,0,3] + alpha[7,1,3] + alpha[7,2,3]
   + alpha[7,3,3] >= 1
 obs_face_o7_e0_j3: - 0.7068251811053667 z[4,0] + 0.7073882691671989 z[4,2]
   - obstacle_slack + 100 alpha[7,0,3] <= 94.15744610548867
 obs_face_o7_e1_j3: - 0.7073882691671993 z[4,0] - 0.7068251811053663 z[4,2]
   - obstacle_slack + 100 alpha[7,1,3] <= 94.15311032741256
 obs_face_o7_e2_j3: 0.7068251811053667 z[4,0] - 0.7073882691671989 z[4,2]
   - obstacle_slack + 100 alpha[7,2,3] <= 105.0425538945113
 obs_face_o7_e3_j3: 0.7073882691671993 z[4,0] + 0.7068251811053663 z[4,2]
   - obstacle_slack + 100 alpha[7,3,3] <= 105.0468896725874
 obs_alpha_sum_o7_j4: alpha[7,0,4] + alpha[7,1,4] + alpha[7,2,4]
   + alpha[7,3,4] >= 1
 obs_face_o7_e0_j4: - 0.7068251811053667 z[5,0] + 0.7073882691671989 z[5,2]
   - obstacle_slack + 100 alpha[7,0,4] <= 94.15744610548867
 obs_face_o7_e1_j4: - 0.7073882691671993 z[5,0] - 0.7068251811053663 z[5,2]
   - obstacle_slack + 100 alpha[7,1,4] <= 94.15311032741256
 obs_face_o7_e2_j4: 0.7068251811053667 z[5,0] - 0.7073882691671989 z[5,2]
   - obstacle_slack + 100 alpha[7,2,4] <= 105.0425538945113
 obs_face_o7_e3_j4: 0.7073882691671993 z[5,0] + 0.7068251811053663 z[5,2]
   - obstacle_slack + 100 alpha[7,3,4] <= 105.0468896725874
 obs_alpha_sum_o7_j5: alpha[7,0,5] + alpha[7,1,5] + alpha[7,2,5]
   + alpha[7,3,5] >= 1
 obs_face_o7_e0_j5: - 0.7068251811053667 z[6,0] + 0.7073882691671989 z[6,2]
   - obstacle_slack + 100 alpha[7,0,5] <= 94.15744610548867
 obs_face_o7_e1_j5: - 0.7073882691671993 z[6,0] - 0.7068251811053663 z[6,2]
   - obstacle_slack + 100 alpha[7,1,5] <= 94.15311032741256
 obs_face_o7_e2_j5: 0.7068251811053667 z[6,0] - 0.7073882691671989 z[6,2]
   - obstacle_slack + 100 alpha[7,2,5] <= 105.0425538945113
 obs_face_o7_e3_j5: 0.7073882691671993 z[6,0] + 0.7068251811053663 z[6,2]
   - obstacle_slack + 100 alpha[7,3,5] <= 105.0468896725874
 obs_alpha_sum_o7_j6: alpha[7,0,6] + alpha[7,1,6] + alpha[7,2,6]
   + alpha[7,3,6] >= 1
 obs_face_o7_e0_j6: - 0.7068251811053667 z[7,0] + 0.7073882691671989 z[7,2]
   - obstacle_slack + 100 alpha[7,0,6] <= 94.15744610548867
 obs_face_o7_e1_j6: - 0.7073882691671993 z[7,0] - 0.7068251811053663 z[7,2]
   - obstacle_slack + 100 alpha[7,1,6] <= 94.15311032741256
 obs_face_o7_e2_j6: 0.7068251811053667 z[7,0] - 0.7073882691671989 z[7,2]
   - obstacle_slack + 100 alpha[7,2,6] <= 105.0425538945113
 obs_face_o7_e3_j6: 0.7073882691671993 z[7,0] + 0.7068251811053663 z[7,2]
   - obstacle_slack + 100 alpha[7,3,6] <= 105.0468896725874
 obs_alpha_sum_o7_j7: alpha[7,0,7] + alpha[7,1,7] + alpha[7,2,7]
   + alpha[7,3,7] >= 1
 obs_face_o7_e0_j7: - 0.7068251811053667 z[8,0] + 0.7073882691671989 z[8,2]
   - obstacle_slack + 100 alpha[7,0,7] <= 94.15744610548867
 obs_face_o7_e1_j7: - 0.7073882691671993 z[8,0] - 0.7068251811053663 z[8,2]
   - obstacle_slack + 100 alpha[7,1,7] <= 94.15311032741256
 obs_face_o7_e2_j7: 0.7068251811053667 z[8,0] - 0.7073882691671989 z[8,2]
   - obstacle_slack + 100 alpha[7,2,7] <= 105.0425538945113
 obs_face_o7_e3_j7: 0.7073882691671993 z[8,0] + 0.7068251811053663 z[8,2]
   - obstacle_slack + 100 alpha[7,3,7] <= 105.0468896725874
 obs_alpha_sum_o7_j8: alpha[7,0,8] + alpha[7,1,8] + alpha[7,2,8]
   + alpha[7,3,8] >= 1
 obs_face_o7_e0_j8: - 0.7068251811053667 z[9,0] + 0.7073882691671989 z[9,2]
   - obstacle_slack + 100 alpha[7,0,8] <= 94.15744610548867
 obs_face_o7_e1_j8: - 0.7073882691671993 z[9,0] - 0.7068251811053663 z[9,2]
   - obstacle_slack + 100 alpha[7,1,8] <= 94.15311032741256
 obs_face_o7_e2_j8: 0.7068251811053667 z[9,0] - 0.7073882691671989 z[9,2]
   - obstacle_slack + 100 alpha[7,2,8] <= 105.0425538945113
 obs_face_o7_e3_j8: 0.7073882691671993 z[9,0] + 0.7068251811053663 z[9,2]
   - obstacle_slack + 100 alpha[7,3,8] <= 105.0468896725874
 obs_alpha_sum_o7_j9: alpha[7,0,9] + alpha[7,1,9] + alpha[7,2,9]
   + alpha[7,3,9] >= 1
 obs_face_o7_e0_j9: - 0.7068251811053667 z[10,0]
   + 0.7073882691671989 z[10,2] - obstacle_slack + 100 alpha[7,0,9]
   <= 94.15744610548867
 obs_face_o7_e1_j9: - 0.7073882691671993 z[10,0]
   - 0.7068251811053663 z[10,2] - obstacle_slack + 100 alpha[7,1,9]
   <= 94.15311032741256
 obs_face_o7_e2_j9: 0.7068251811053667 z[10,0] - 0.7073882691671989 z[10,2]
   - obstacle_slack + 100 alpha[7,2,9] <= 105.0425538945113
 obs_face_o7_e3_j9: 0.7073882691671993 z[10,0] + 0.7068251811053663 z[10,2]
   - obstacle_slack + 100 alpha[7,3,9] <= 105.0468896725874
 obs_alpha_sum_o7_j10: alpha[7,0,10] + alpha[7,1,10] + alpha[7,2,10]
   + alpha[7,3,10] >= 1
 obs_face_o7_e0_j10: - 0.7068251811053667 z[11,0]
   + 0.7073882691671989 z[11,2] - obstacle_slack + 100 alpha[7,0,10]
   <= 94.15744610548867
 obs_face_o7_e1_j10: - 0.7073882691671993 z[11,0]
   - 0.7068251811053663 z[11,2] - obstacle_slack + 100 alpha[7,1,10]
   <= 94.15311032741256
 obs_face_o7_e2_j10: 0.7068251811053667 z[11,0]
   - 0.7073882691671989 z[11,2] - obstacle_slack + 100 alpha[7,2,10]
   <= 105.0425538945113
 obs_face_o7_e3_j10: 0.7073882691671993 z[11,0]
   + 0.7068251811053663 z[11,2] - obstacle_slack + 100 alpha[7,3,10]
   <= 105.0468896725874
 obs_alpha_sum_o7_j11: alpha[7,0,11] + alpha[7,1,11] + alpha[7,2,11]
   + alpha[7,3,11] >= 1
 obs_face_o7_e0_j11: - 0.7068251811053667 z[12,0]
   + 0.7073882691671989 z[12,2] - obstacle_slack + 100 alpha[7,0,11]
   <= 94.15744610548867
 obs_face_o7_e1_j11: - 0.7073882691671993 z[12,0]
   - 0.7068251811053663 z[12,2] - obstacle_slack + 100 alpha[7,1,11]
   <= 94.15311032741256
 obs_face_o7_e2_j11: 0.7068251811053667 z[12,0]
   - 0.7073882691671989 z[12,2] - obstacle_slack + 100 alpha[7,2,11]
   <= 105.0425538945113
 obs_face_o7_e3_j11: 0.7073882691671993 z[12,0]
   + 0.7068251811053663 z[12,2] - obstacle_slack + 100 alpha[7,3,11]
   <= 105.0468896725874
 obs_alpha_sum_o7_j12: alpha[7,0,12] + alpha[7,1,12] + alpha[7,2,12]
   + alpha[7,3,12] >= 1
 obs_face_o7_e0_j12: - 0.7068251811053667 z[13,0]
   + 0.7073882691671989 z[13,2] - obstacle_slack + 100 alpha[7,0,12]
   <= 94.15744610548867
 obs_face_o7_e1_j12: - 0.7073882691671993 z[13,0]
   - 0.7068251811053663 z[13,2] - obstacle_slack + 100 alpha[7,1,12]
   <= 94.15311032741256
 obs_face_o7_e2_j12: 0.7068251811053667 z[13,0]
   - 0.7073882691671989 z[13,2] - obstacle_slack + 100 alpha[7,2,12]
   <= 105.0425538945113
 obs_face_o7_e3_j12: 0.7073882691671993 z[13,0]
   + 0.7068251811053663 z[13,2] - obstacle_slack + 100 alpha[7,3,12]
   <= 105.0468896725874
 obs_alpha_sum_o7_j13: alpha[7,0,13] + alpha[7,1,13] + alpha[7,2,13]
   + alpha[7,3,13] >= 1
 obs_face_o7_e0_j13: - 0.7068251811053667 z[14,0]
   + 0.7073882691671989 z[14,2] - obstacle_slack + 100 alpha[7,0,13]
   <= 94.15744610548867
 obs_face_o7_e1_j13: - 0.7073882691671993 z[14,0]
   - 0.7068251811053663 z[14,2] - obstacle_slack + 100 alpha[7,1,13]
   <= 94.15311032741256
 obs_face_o7_e2_j13: 0.7068251811053667 z[14,0]
   - 0.7073882691671989 z[14,2] - obstacle_slack + 100 alpha[7,2,13]
   <= 105.0425538945113
 obs_face_o7_e3_j13: 0.7073882691671993 z[14,0]
   + 0.7068251811053663 z[14,2] - obstacle_slack + 100 alpha[7,3,13]
   <= 105.0468896725874
 obs_alpha_sum_o7_j14: alpha[7,0,14] + alpha[7,1,14] + alpha[7,2,14]
   + alpha[7,3,14] >= 1
 obs_face_o7_e0_j14: - 0.7068251811053667 z[15,0]
   + 0.7073882691671989 z[15,2] - obstacle_slack + 100 alpha[7,0,14]
   <= 94.15744610548867
 obs_face_o7_e1_j14: - 0.7073882691671993 z[15,0]
   - 0.7068251811053663 z[15,2] - obstacle_slack + 100 alpha[7,1,14]
   <= 94.15311032741256
 obs_face_o7_e2_j14: 0.7068251811053667 z[15,0]
   - 0.7073882691671989 z[15,2] - obstacle_slack + 100 alpha[7,2,14]
   <= 105.0425538945113
 obs_face_o7_e3_j14: 0.7073882691671993 z[15,0]
   + 0.7068251811053663 z[15,2] - obstacle_slack + 100 alpha[7,3,14]
   <= 105.0468896725874
 obs_alpha_sum_o7_j15: alpha[7,0,15] + alpha[7,1,15] + alpha[7,2,15]
   + alpha[7,3,15] >= 1
 obs_face_o7_e0_j15: - 0.7068251811053667 z[16,0]
   + 0.7073882691671989 z[16,2] - obstacle_slack + 100 alpha[7,0,15]
   <= 94.15744610548867
 obs_face_o7_e1_j15: - 0.7073882691671993 z[16,0]
   - 0.7068251811053663 z[16,2] - obstacle_slack + 100 alpha[7,1,15]
   <= 94.15311032741256
 obs_face_o7_e2_j15: 0.7068251811053667 z[16,0]
   - 0.7073882691671989 z[16,2] - obstacle_slack + 100 alpha[7,2,15]
   <= 105.0425538945113
 obs_face_o7_e3_j15: 0.7073882691671993 z[16,0]
   + 0.7068251811053663 z[16,2] - obstacle_slack + 100 alpha[7,3,15]
   <= 105.0468896725874
 obs_alpha_sum_o7_j16: alpha[7,0,16] + alpha[7,1,16] + alpha[7,2,16]
   + alpha[7,3,16] >= 1
 obs_face_o7_e0_j16: - 0.7068251811053667 z[17,0]
   + 0.7073882691671989 z[17,2] - obstacle_slack + 100 alpha[7,0,16]
   <= 94.15744610548867
 obs_face_o7_e1_j16: - 0.7073882691671993 z[17,0]
   - 0.7068251811053663 z[17,2] - obstacle_slack + 100 alpha[7,1,16]
   <= 94.15311032741256
 obs_face_o7_e2_j16: 0.7068251811053667 z[17,0]
   - 0.7073882691671989 z[17,2] - obstacle_slack + 100 alpha[7,2,16]
   <= 105.0425538945113
 obs_face_o7_e3_j16: 0.7073882691671993 z[17,0]
   + 0.7068251811053663 z[17,2] - obstacle_slack + 100 alpha[7,3,16]
   <= 105.0468896725874
 obs_alpha_sum_o7_j17: alpha[7,0,17] + alpha[7,1,17] + alpha[7,2,17]
   + alpha[7,3,17] >= 1
 obs_face_o7_e0_j17: - 0.7068251811053667 z[18,0]
   + 0.7073882691671989 z[18,2] - obstacle_slack + 100 alpha[7,0,17]
   <= 94.15744610548867
 obs_face_o7_e1_j17: - 0.7073882691671993 z[18,0]
   - 0.7068251811053663 z[18,2] - obstacle_slack + 100 alpha[7,1,17]
   <= 94.15311032741256
 obs_face_o7_e2_j17: 0.7068251811053667 z[18,0]
   - 0.7073882691671989 z[18,2] - obstacle_slack + 100 alpha[7,2,17]
   <= 105.0425538945113
 obs_face_o7_e3_j17: 0.7073882691671993 z[18,0]
   + 0.7068251811053663 z[18,2] - obstacle_slack + 100 alpha[7,3,17]
   <= 105.0468896725874
 obs_alpha_sum_o7_j18: alpha[7,0,18] + alpha[7,1,18] + alpha[7,2,18]
   + alpha[7,3,18] >= 1
 obs_face_o7_e0_j18: - 0.7068251811053667 z[19,0]
   + 0.7073882691671989 z[19,2] - obstacle_slack + 100 alpha[7,0,18]
   <= 94.15744610548867
 obs_face_o7_e1_j18: - 0.7073882691671993 z[19,0]
   - 0.7068251811053663 z[19,2] - obstacle_slack + 100 alpha[7,1,18]
   <= 94.15311032741256
 obs_face_o7_e2_j18: 0.7068251811053667 z[19,0]
   - 0.7073882691671989 z[19,2] - obstacle_slack + 100 alpha[7,2,18]
   <= 105.0425538945113
 obs_face_o7_e3_j18: 0.7073882691671993 z[19,0]
   + 0.7068251811053663 z[19,2] - obstacle_slack + 100 alpha[7,3,18]
   <= 105.0468896725874
 obs_alpha_sum_o7_j19: alpha[7,0,19] + alpha[7,1,19] + alpha[7,2,19]
   + alpha[7,3,19] >= 1
 obs_face_o7_e0_j19: - 0.7068251811053667 z[20,0]
   + 0.7073882691671989 z[20,2] - obstacle_slack + 100 alpha[7,0,19]
   <= 94.15744610548867
 obs_face_o7_e1_j19: - 0.7073882691671993 z[20,0]
   - 0.7068251811053663 z[20,2] - obstacle_slack + 100 alpha[7,1,19]
   <= 94.15311032741256
 obs_face_o7_e2_j19: 0.7068251811053667 z[20,0]
   - 0.7073882691671989 z[20,2] - obstacle_slack + 100 alpha[7,2,19]
   <= 105.0425538945113
 obs_face_o7_e3_j19: 0.7073882691671993 z[20,0]
   + 0.7068251811053663 z[20,2] - obstacle_slack + 100 alpha[7,3,19]
   <= 105.0468896725874
 obs_alpha_sum_o7_j20: alpha[7,0,20] + alpha[7,1,20] + alpha[7,2,20]
   + alpha[7,3,20] >= 1
 obs_face_o7_e0_j20: - 0.7068251811053667 z[21,0]
   + 0.7073882691671989 z[21,2] - obstacle_slack + 100 alpha[7,0,20]
   <= 94.15744610548867
 obs_face_o7_e1_j20: - 0.7073882691671993 z[21,0]
   - 0.7068251811053663 z[21,2] - obstacle_slack + 100 alpha[7,1,20]
   <= 94.15311032741256
 obs_face_o7_e2_j20: 0.7068251811053667 z[21,0]
   - 0.7073882691671989 z[21,2] - obstacle_slack + 100 alpha[7,2,20]
   <= 105.0425538945113
 obs_face_o7_e3_j20: 0.7073882691671993 z[21,0]
   + 0.7068251811053663 z[21,2] - obstacle_slack + 100 alpha[7,3,20]
   <= 105.0468896725874
 obs_alpha_sum_o7_j21: alpha[7,0,21] + alpha[7,1,21] + alpha[7,2,21]
   + alpha[7,3,21] >= 1
 obs_face_o7_e0_j21: - 0.7068251811053667 z[22,0]
   + 0.7073882691671989 z[22,2] - obstacle_slack + 100 alpha[7,0,21]
   <= 94.15744610548867
 obs_face_o7_e1_j21: - 0.7073882691671993 z[22,0]
   - 0.7068251811053663 z[22,2] - obstacle_slack + 100 alpha[7,1,21]
   <= 94.15311032741256
 obs_face_o7_e2_j21: 0.7068251811053667 z[22,0]
   - 0.7073882691671989 z[22,2] - obstacle_slack + 100 alpha[7,2,21]
   <= 105.0425538945113
 obs_face_o7_e3_j21: 0.7073882691671993 z[22,0]
   + 0.7068251811053663 z[22,2] - obstacle_slack + 100 alpha[7,3,21]
   <= 105.0468896725874
 obs_alpha_sum_o7_j22: alpha[7,0,22] + alpha[7,1,22] + alpha[7,2,22]
   + alpha[7,3,22] >= 1
 obs_face_o7_e0_j22: - 0.7068251811053667 z[23,0]
   + 0.7073882691671989 z[23,2] - obstacle_slack + 100 alpha[7,0,22]
   <= 94.15744610548867
 obs_face_o7_e1_j22: - 0.7073882691671993 z[23,0]
   - 0.7068251811053663 z[23,2] - obstacle_slack + 100 alpha[7,1,22]
   <= 94.15311032741256
 obs_face_o7_e2_j22: 0.7068251811053667 z[23,0]
   - 0.7073882691671989 z[23,2] - obstacle_slack + 100 alpha[7,2,22]
   <= 105.0425538945113
 obs_face_o7_e3_j22: 0.7073882691671993 z[23,0]
   + 0.7068251811053663 z[23,2] - obstacle_slack + 100 alpha[7,3,22]
   <= 105.0468896725874
 obs_alpha_sum_o7_j23: alpha[7,0,23] + alpha[7,1,23] + alpha[7,2,23]
   + alpha[7,3,23] >= 1
 obs_face_o7_e0_j23: - 0.7068251811053667 z[24,0]
   + 0.7073882691671989 z[24,2] - obstacle_slack + 100 alpha[7,0,23]
   <= 94.15744610548867
 obs_face_o7_e1_j23: - 0.7073882691671993 z[24,0]
   - 0.7068251811053663 z[24,2] - obstacle_slack + 100 alpha[7,1,23]
   <= 94.15311032741256
 obs_face_o7_e2_j23: 0.7068251811053667 z[24,0]
   - 0.7073882691671989 z[24,2] - obstacle_slack + 100 alpha[7,2,23]
   <= 105.0425538945113
 obs_face_o7_e3_j23: 0.7073882691671993 z[24,0]
   + 0.7068251811053663 z[24,2] - obstacle_slack + 100 alpha[7,3,23]
   <= 105.0468896725874
 obs_alpha_sum_o7_j24: alpha[7,0,24] + alpha[7,1,24] + alpha[7,2,24]
   + alpha[7,3,24] >= 1
 obs_face_o7_e0_j24: - 0.7068251811053667 z[25,0]
   + 0.7073882691671989 z[25,2] - obstacle_slack + 100 alpha[7,0,24]
   <= 94.15744610548867
 obs_face_o7_e1_j24: - 0.7073882691671993 z[25,0]
   - 0.7068251811053663 z[25,2] - obstacle_slack + 100 alpha[7,1,24]
   <= 94.15311032741256
 obs_face_o7_e2_j24: 0.7068251811053667 z[25,0]
   - 0.7073882691671989 z[25,2] - obstacle_slack + 100 alpha[7,2,24]
   <= 105.0425538945113
 obs_face_o7_e3_j24: 0.7073882691671993 z[25,0]
   + 0.7068251811053663 z[25,2] - obstacle_slack + 100 alpha[7,3,24]
   <= 105.0468896725874
 obs_alpha_sum_o7_j25: alpha[7,0,25] + alpha[7,1,25] + alpha[7,2,25]
   + alpha[7,3,25] >= 1
 obs_face_o7_e0_j25: - 0.7068251811053667 z[26,0]
   + 0.7073882691671989 z[26,2] - obstacle_slack + 100 alpha[7,0,25]
   <= 94.15744610548867
 obs_face_o7_e1_j25: - 0.7073882691671993 z[26,0]
   - 0.7068251811053663 z[26,2] - obstacle_slack + 100 alpha[7,1,25]
   <= 94.15311032741256
 obs_face_o7_e2_j25: 0.7068251811053667 z[26,0]
   - 0.7073882691671989 z[26,2] - obstacle_slack + 100 alpha[7,2,25]
   <= 105.0425538945113
 obs_face_o7_e3_j25: 0.7073882691671993 z[26,0]
   + 0.7068251811053663 z[26,2] - obstacle_slack + 100 alpha[7,3,25]
   <= 105.0468896725874
 obs_alpha_sum_o7_j26: alpha[7,0,26] + alpha[7,1,26] + alpha[7,2,26]
   + alpha[7,3,26] >= 1
 obs_face_o7_e0_j26: - 0.7068251811053667 z[27,0]
   + 0.7073882691671989 z[27,2] - obstacle_slack + 100 alpha[7,0,26]
   <= 94.15744610548867
 obs_face_o7_e1_j26: - 0.7073882691671993 z[27,0]
   - 0.7068251811053663 z[27,2] - obstacle_slack + 100 alpha[7,1,26]
   <= 94.15311032741256
 obs_face_o7_e2_j26: 0.7068251811053667 z[27,0]
   - 0.7073882691671989 z[27,2] - obstacle_slack + 100 alpha[7,2,26]
   <= 105.0425538945113
 obs_face_o7_e3_j26: 0.7073882691671993 z[27,0]
   + 0.7068251811053663 z[27,2] - obstacle_slack + 100 alpha[7,3,26]
   <= 105.0468896725874
 obs_alpha_sum_o7_j27: alpha[7,0,27] + alpha[7,1,27] + alpha[7,2,27]
   + alpha[7,3,27] >= 1
 obs_face_o7_e0_j27: - 0.7068251811053667 z[28,0]
   + 0.7073882691671989 z[28,2] - obstacle_slack + 100 alpha[7,0,27]
   <= 94.15744610548867
 obs_face_o7_e1_j27: - 0.7073882691671993 z[28,0]
   - 0.7068251811053663 z[28,2] - obstacle_slack + 100 alpha[7,1,27]
   <= 94.15311032741256
 obs_face_o7_e2_j27: 0.7068251811053667 z[28,0]
   - 0.7073882691671989 z[28,2] - obstacle_slack + 100 alpha[7,2,27]
   <= 105.0425538945113
 obs_face_o7_e3_j27: 0.7073882691671993 z[28,0]
   + 0.7068251811053663 z[28,2] - obstacle_slack + 100 alpha[7,3,27]
   <= 105.0468896725874
 obs_alpha_sum_o7_j28: alpha[7,0,28] + alpha[7,1,28] + alpha[7,2,28]
   + alpha[7,3,28] >= 1
 obs_face_o7_e0_j28: - 0.7068251811053667 z[29,0]
   + 0.7073882691671989 z[29,2] - obstacle_slack + 100 alpha[7,0,28]
   <= 94.15744610548867
 obs_face_o7_e1_j28: - 0.7073882691671993 z[29,0]
   - 0.7068251811053663 z[29,2] - obstacle_slack + 100 alpha[7,1,28]
   <= 94.15311032741256
 obs_face_o7_e2_j28: 0.7068251811053667 z[29,0]
   - 0.7073882691671989 z[29,2] - obstacle_slack + 100 alpha[7,2,28]
   <= 105.0425538945113
 obs_face_o7_e3_j28: 0.7073882691671993 z[29,0]
   + 0.7068251811053663 z[29,2] - obstacle_slack + 100 alpha[7,3,28]
   <= 105.0468896725874
 obs_alpha_sum_o7_j29: alpha[7,0,29] + alpha[7,1,29] + alpha[7,2,29]
   + alpha[7,3,29] >= 1
 obs_face_o7_e0_j29: - 0.7068251811053667 z[30,0]
   + 0.7073882691671989 z[30,2] - obstacle_slack + 100 alpha[7,0,29]
   <= 94.15744610548867
 obs_face_o7_e1_j29: - 0.7073882691671993 z[30,0]
   - 0.7068251811053663 z[30,2] - obstacle_slack + 100 alpha[7,1,29]
   <= 94.15311032741256
 obs_face_o7_e2_j29: 0.7068251811053667 z[30,0]
   - 0.7073882691671989 z[30,2] - obstacle_slack + 100 alpha[7,2,29]
   <= 105.0425538945113
 obs_face_o7_e3_j29: 0.7073882691671993 z[30,0]
   + 0.7068251811053663 z[30,2] - obstacle_slack + 100 alpha[7,3,29]
   <= 105.0468896725874
 obs_alpha_sum_o8_j0: alpha[8,0,0] + alpha[8,1,0] + alpha[8,2,0]
   + alpha[8,3,0] >= 1
 obs_face_o8_e0_j0: z[1,2] - obstacle_slack + 100 alpha[8,0,0] <= 100
 obs_face_o8_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[8,1,0] <= 94.5
 obs_face_o8_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[8,2,0] <= 99
 obs_face_o8_e3_j0: z[1,0] - obstacle_slack + 100 alpha[8,3,0] <= 104.5
 obs_alpha_sum_o8_j1: alpha[8,0,1] + alpha[8,1,1] + alpha[8,2,1]
   + alpha[8,3,1] >= 1
 obs_face_o8_e0_j1: z[2,2] - obstacle_slack + 100 alpha[8,0,1] <= 100
 obs_face_o8_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[8,1,1] <= 94.5
 obs_face_o8_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[8,2,1] <= 99
 obs_face_o8_e3_j1: z[2,0] - obstacle_slack + 100 alpha[8,3,1] <= 104.5
 obs_alpha_sum_o8_j2: alpha[8,0,2] + alpha[8,1,2] + alpha[8,2,2]
   + alpha[8,3,2] >= 1
 obs_face_o8_e0_j2: z[3,2] - obstacle_slack + 100 alpha[8,0,2] <= 100
 obs_face_o8_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[8,1,2] <= 94.5
 obs_face_o8_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[8,2,2] <= 99
 obs_face_o8_e3_j2: z[3,0] - obstacle_slack + 100 alpha[8,3,2] <= 104.5
 obs_alpha_sum_o8_j3: alpha[8,0,3] + alpha[8,1,3] + alpha[8,2,3]
   + alpha[8,3,3] >= 1
 obs_face_o8_e0_j3: z[4,2] - obstacle_slack + 100 alpha[8,0,3] <= 100
 obs_face_o8_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[8,1,3] <= 94.5
 obs_face_o8_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[8,2,3] <= 99
 obs_face_o8_e3_j3: z[4,0] - obstacle_slack + 100 alpha[8,3,3] <= 104.5
 obs_alpha_sum_o8_j4: alpha[8,0,4] + alpha[8,1,4] + alpha[8,2,4]
   + alpha[8,3,4] >= 1
 obs_face_o8_e0_j4: z[5,2] - obstacle_slack + 100 alpha[8,0,4] <= 100
 obs_face_o8_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[8,1,4] <= 94.5
 obs_face_o8_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[8,2,4] <= 99
 obs_face_o8_e3_j4: z[5,0] - obstacle_slack + 100 alpha[8,3,4] <= 104.5
 obs_alpha_sum_o8_j5: alpha[8,0,5] + alpha[8,1,5] + alpha[8,2,5]
   + alpha[8,3,5] >= 1
 obs_face_o8_e0_j5: z[6,2] - obstacle_slack + 100 alpha[8,0,5] <= 100
 obs_face_o8_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[8,1,5] <= 94.5
 obs_face_o8_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[8,2,5] <= 99
 obs_face_o8_e3_j5: z[6,0] - obstacle_slack + 100 alpha[8,3,5] <= 104.5
 obs_alpha_sum_o8_j6: alpha[8,0,6] + alpha[8,1,6] + alpha[8,2,6]
   + alpha[8,3,6] >= 1
 obs_face_o8_e0_j6: z[7,2] - obstacle_slack + 100 alpha[8,0,6] <= 100
 obs_face_o8_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[8,1,6] <= 94.5
 obs_face_o8_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[8,2,6] <= 99
 obs_face_o8_e3_j6: z[7,0] - obstacle_slack + 100 alpha[8,3,6] <= 104.5
 obs_alpha_sum_o8_j7: alpha[8,0,7] + alpha[8,1,7] + alpha[8,2,7]
   + alpha[8,3,7] >= 1
 obs_face_o8_e0_j7: z[8,2] - obstacle_slack + 100 alpha[8,0,7] <= 100
 obs_face_o8_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[8,1,7] <= 94.5
 obs_face_o8_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[8,2,7] <= 99
 obs_face_o8_e3_j7: z[8,0] - obstacle_slack + 100 alpha[8,3,7] <= 104.5
 obs_alpha_sum_o8_j8: alpha[8,0,8] + alpha[8,1,8] + alpha[8,2,8]
   + alpha[8,3,8] >= 1
 obs_face_o8_e0_j8: z[9,2] - obstacle_slack + 100 alpha[8,0,8] <= 100
 obs_face_o8_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[8,1,8] <= 94.5
 obs_face_o8_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[8,2,8] <= 99
 obs_face_o8_e3_j8: z[9,0] - obstacle_slack + 100 alpha[8,3,8] <= 104.5
 obs_alpha_sum_o8_j9: alpha[8,0,9] + alpha[8,1,9] + alpha[8,2,9]
   + alpha[8,3,9] >= 1
 obs_face_o8_e0_j9: z[10,2] - obstacle_slack + 100 alpha[8,0,9] <= 100
 obs_face_o8_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[8,1,9] <= 94.5
 obs_face_o8_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[8,2,9] <= 99
 obs_face_o8_e3_j9: z[10,0] - obstacle_slack + 100 alpha[8,3,9] <= 104.5
 obs_alpha_sum_o8_j10: alpha[8,0,10] + alpha[8,1,10] + alpha[8,2,10]
   + alpha[8,3,10] >= 1
 obs_face_o8_e0_j10: z[11,2] - obstacle_slack + 100 alpha[8,0,10] <= 100
 obs_face_o8_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[8,1,10]
   <= 94.5
 obs_face_o8_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[8,2,10] <= 99
 obs_face_o8_e3_j10: z[11,0] - obstacle_slack + 100 alpha[8,3,10] <= 104.5
 obs_alpha_sum_o8_j11: alpha[8,0,11] + alpha[8,1,11] + alpha[8,2,11]
   + alpha[8,3,11] >= 1
 obs_face_o8_e0_j11: z[12,2] - obstacle_slack + 100 alpha[8,0,11] <= 100
 obs_face_o8_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[8,1,11]
   <= 94.5
 obs_face_o8_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[8,2,11] <= 99
 obs_face_o8_e3_j11: z[12,0] - obstacle_slack + 100 alpha[8,3,11] <= 104.5
 obs_alpha_sum_o8_j12: alpha[8,0,12] + alpha[8,1,12] + alpha[8,2,12]
   + alpha[8,3,12] >= 1
 obs_face_o8_e0_j12: z[13,2] - obstacle_slack + 100 alpha[8,0,12] <= 100
 obs_face_o8_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[8,1,12]
   <= 94.5
 obs_face_o8_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[8,2,12] <= 99
 obs_face_o8_e3_j12: z[13,0] - obstacle_slack + 100 alpha[8,3,12] <= 104.5
 obs_alpha_sum_o8_j13: alpha[8,0,13] + alpha[8,1,13] + alpha[8,2,13]
   + alpha[8,3,13] >= 1
 obs_face_o8_e0_j13: z[14,2] - obstacle_slack + 100 alpha[8,0,13] <= 100
 obs_face_o8_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[8,1,13]
   <= 94.5
 obs_face_o8_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[8,2,13] <= 99
 obs_face_o8_e3_j13: z[14,0] - obstacle_slack + 100 alpha[8,3,13] <= 104.5
 obs_alpha_sum_o8_j14: alpha[8,0,14] + alpha[8,1,14] + alpha[8,2,14]
   + alpha[8,3,14] >= 1
 obs_face_o8_e0_j14: z[15,2] - obstacle_slack + 100 alpha[8,0,14] <= 100
 obs_face_o8_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[8,1,14]
   <= 94.5
 obs_face_o8_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[8,2,14] <= 99
 obs_face_o8_e3_j14: z[15,0] - obstacle_slack + 100 alpha[8,3,14] <= 104.5
 obs_alpha_sum_o8_j15: alpha[8,0,15] + alpha[8,1,15] + alpha[8,2,15]
   + alpha[8,3,15] >= 1
 obs_face_o8_e0_j15: z[16,2] - obstacle_slack + 100 alpha[8,0,15] <= 100
 obs_face_o8_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[8,1,15]
   <= 94.5
 obs_face_o8_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[8,2,15] <= 99
 obs_face_o8_e3_j15: z[16,0] - obstacle_slack + 100 alpha[8,3,15] <= 104.5
 obs_alpha_sum_o8_j16: alpha[8,0,16] + alpha[8,1,16] + alpha[8,2,16]
   + alpha[8,3,16] >= 1
 obs_face_o8_e0_j16: z[17,2] - obstacle_slack + 100 alpha[8,0,16] <= 100
 obs_face_o8_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[8,1,16]
   <= 94.5
 obs_face_o8_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[8,2,16] <= 99
 obs_face_o8_e3_j16: z[17,0] - obstacle_slack + 100 alpha[8,3,16] <= 104.5
 obs_alpha_sum_o8_j17: alpha[8,0,17] + alpha[8,1,17] + alpha[8,2,17]
   + alpha[8,3,17] >= 1
 obs_face_o8_e0_j17: z[18,2] - obstacle_slack + 100 alpha[8,0,17] <= 100
 obs_face_o8_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[8,1,17]
   <= 94.5
 obs_face_o8_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[8,2,17] <= 99
 obs_face_o8_e3_j17: z[18,0] - obstacle_slack + 100 alpha[8,3,17] <= 104.5
 obs_alpha_sum_o8_j18: alpha[8,0,18] + alpha[8,1,18] + alpha[8,2,18]
   + alpha[8,3,18] >= 1
 obs_face_o8_e0_j18: z[19,2] - obstacle_slack + 100 alpha[8,0,18] <= 100
 obs_face_o8_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[8,1,18]
   <= 94.5
 obs_face_o8_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[8,2,18] <= 99
 obs_face_o8_e3_j18: z[19,0] - obstacle_slack + 100 alpha[8,3,18] <= 104.5
 obs_alpha_sum_o8_j19: alpha[8,0,19] + alpha[8,1,19] + alpha[8,2,19]
   + alpha[8,3,19] >= 1
 obs_face_o8_e0_j19: z[20,2] - obstacle_slack + 100 alpha[8,0,19] <= 100
 obs_face_o8_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[8,1,19]
   <= 94.5
 obs_face_o8_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[8,2,19] <= 99
 obs_face_o8_e3_j19: z[20,0] - obstacle_slack + 100 alpha[8,3,19] <= 104.5
 obs_alpha_sum_o8_j20: alpha[8,0,20] + alpha[8,1,20] + alpha[8,2,20]
   + alpha[8,3,20] >= 1
 obs_face_o8_e0_j20: z[21,2] - obstacle_slack + 100 alpha[8,0,20] <= 100
 obs_face_o8_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[8,1,20]
   <= 94.5
 obs_face_o8_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[8,2,20] <= 99
 obs_face_o8_e3_j20: z[21,0] - obstacle_slack + 100 alpha[8,3,20] <= 104.5
 obs_alpha_sum_o8_j21: alpha[8,0,21] + alpha[8,1,21] + alpha[8,2,21]
   + alpha[8,3,21] >= 1
 obs_face_o8_e0_j21: z[22,2] - obstacle_slack + 100 alpha[8,0,21] <= 100
 obs_face_o8_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[8,1,21]
   <= 94.5
 obs_face_o8_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[8,2,21] <= 99
 obs_face_o8_e3_j21: z[22,0] - obstacle_slack + 100 alpha[8,3,21] <= 104.5
 obs_alpha_sum_o8_j22: alpha[8,0,22] + alpha[8,1,22] + alpha[8,2,22]
   + alpha[8,3,22] >= 1
 obs_face_o8_e0_j22: z[23,2] - obstacle_slack + 100 alpha[8,0,22] <= 100
 obs_face_o8_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[8,1,22]
   <= 94.5
 obs_face_o8_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[8,2,22] <= 99
 obs_face_o8_e3_j22: z[23,0] - obstacle_slack + 100 alpha[8,3,22] <= 104.5
 obs_alpha_sum_o8_j23: alpha[8,0,23] + alpha[8,1,23] + alpha[8,2,23]
   + alpha[8,3,23] >= 1
 obs_face_o8_e0_j23: z[24,2] - obstacle_slack + 100 alpha[8,0,23] <= 100
 obs_face_o8_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[8,1,23]
   <= 94.5
 obs_face_o8_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[8,2,23] <= 99
 obs_face_o8_e3_j23: z[24,0] - obstacle_slack + 100 alpha[8,3,23] <= 104.5
 obs_alpha_sum_o8_j24: alpha[8,0,24] + alpha[8,1,24] + alpha[8,2,24]
   + alpha[8,3,24] >= 1
 obs_face_o8_e0_j24: z[25,2] - obstacle_slack + 100 alpha[8,0,24] <= 100
 obs_face_o8_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[8,1,24]
   <= 94.5
 obs_face_o8_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[8,2,24] <= 99
 obs_face_o8_e3_j24: z[25,0] - obstacle_slack + 100 alpha[8,3,24] <= 104.5
 obs_alpha_sum_o8_j25: alpha[8,0,25] + alpha[8,1,25] + alpha[8,2,25]
   + alpha[8,3,25] >= 1
 obs_face_o8_e0_j25: z[26,2] - obstacle_slack + 100 alpha[8,0,25] <= 100
 obs_face_o8_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[8,1,25]
   <= 94.5
 obs_face_o8_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[8,2,25] <= 99
 obs_face_o8_e3_j25: z[26,0] - obstacle_slack + 100 alpha[8,3,25] <= 104.5
 obs_alpha_sum_o8_j26: alpha[8,0,26] + alpha[8,1,26] + alpha[8,2,26]
   + alpha[8,3,26] >= 1
 obs_face_o8_e0_j26: z[27,2] - obstacle_slack + 100 alpha[8,0,26] <= 100
 obs_face_o8_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[8,1,26]
   <= 94.5
 obs_face_o8_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[8,2,26] <= 99
 obs_face_o8_e3_j26: z[27,0] - obstacle_slack + 100 alpha[8,3,26] <= 104.5
 obs_alpha_sum_o8_j27: alpha[8,0,27] + alpha[8,1,27] + alpha[8,2,27]
   + alpha[8,3,27] >= 1
 obs_face_o8_e0_j27: z[28,2] - obstacle_slack + 100 alpha[8,0,27] <= 100
 obs_face_o8_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[8,1,27]
   <= 94.5
 obs_face_o8_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[8,2,27] <= 99
 obs_face_o8_e3_j27: z[28,0] - obstacle_slack + 100 alpha[8,3,27] <= 104.5
 obs_alpha_sum_o8_j28: alpha[8,0,28] + alpha[8,1,28] + alpha[8,2,28]
   + alpha[8,3,28] >= 1
 obs_face_o8_e0_j28: z[29,2] - obstacle_slack + 100 alpha[8,0,28] <= 100
 obs_face_o8_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[8,1,28]
   <= 94.5
 obs_face_o8_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[8,2,28] <= 99
 obs_face_o8_e3_j28: z[29,0] - obstacle_slack + 100 alpha[8,3,28] <= 104.5
 obs_alpha_sum_o8_j29: alpha[8,0,29] + alpha[8,1,29] + alpha[8,2,29]
   + alpha[8,3,29] >= 1
 obs_face_o8_e0_j29: z[30,2] - obstacle_slack + 100 alpha[8,0,29] <= 100
 obs_face_o8_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[8,1,29]
   <= 94.5
 obs_face_o8_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[8,2,29] <= 99
 obs_face_o8_e3_j29: z[30,0] - obstacle_slack + 100 alpha[8,3,29] <= 104.5
 obs_alpha_sum_o9_j0: alpha[9,0,0] + alpha[9,1,0] + alpha[9,2,0]
   + alpha[9,3,0] >= 1
 obs_face_o9_e0_j0: z[1,2] - obstacle_slack + 100 alpha[9,0,0] <= 101.25
 obs_face_o9_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[9,1,0] <= 96.8
 obs_face_o9_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[9,2,0] <= 96.25
 obs_face_o9_e3_j0: z[1,0] - obstacle_slack + 100 alpha[9,3,0] <= 102.4
 obs_alpha_sum_o9_j1: alpha[9,0,1] + alpha[9,1,1] + alpha[9,2,1]
   + alpha[9,3,1] >= 1
 obs_face_o9_e0_j1: z[2,2] - obstacle_slack + 100 alpha[9,0,1] <= 101.25
 obs_face_o9_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[9,1,1] <= 96.8
 obs_face_o9_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[9,2,1] <= 96.25
 obs_face_o9_e3_j1: z[2,0] - obstacle_slack + 100 alpha[9,3,1] <= 102.4
 obs_alpha_sum_o9_j2: alpha[9,0,2] + alpha[9,1,2] + alpha[9,2,2]
   + alpha[9,3,2] >= 1
 obs_face_o9_e0_j2: z[3,2] - obstacle_slack + 100 alpha[9,0,2] <= 101.25
 obs_face_o9_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[9,1,2] <= 96.8
 obs_face_o9_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[9,2,2] <= 96.25
 obs_face_o9_e3_j2: z[3,0] - obstacle_slack + 100 alpha[9,3,2] <= 102.4
 obs_alpha_sum_o9_j3: alpha[9,0,3] + alpha[9,1,3] + alpha[9,2,3]
   + alpha[9,3,3] >= 1
 obs_face_o9_e0_j3: z[4,2] - obstacle_slack + 100 alpha[9,0,3] <= 101.25
 obs_face_o9_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[9,1,3] <= 96.8
 obs_face_o9_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[9,2,3] <= 96.25
 obs_face_o9_e3_j3: z[4,0] - obstacle_slack + 100 alpha[9,3,3] <= 102.4
 obs_alpha_sum_o9_j4: alpha[9,0,4] + alpha[9,1,4] + alpha[9,2,4]
   + alpha[9,3,4] >= 1
 obs_face_o9_e0_j4: z[5,2] - obstacle_slack + 100 alpha[9,0,4] <= 101.25
 obs_face_o9_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[9,1,4] <= 96.8
 obs_face_o9_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[9,2,4] <= 96.25
 obs_face_o9_e3_j4: z[5,0] - obstacle_slack + 100 alpha[9,3,4] <= 102.4
 obs_alpha_sum_o9_j5: alpha[9,0,5] + alpha[9,1,5] + alpha[9,2,5]
   + alpha[9,3,5] >= 1
 obs_face_o9_e0_j5: z[6,2] - obstacle_slack + 100 alpha[9,0,5] <= 101.25
 obs_face_o9_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[9,1,5] <= 96.8
 obs_face_o9_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[9,2,5] <= 96.25
 obs_face_o9_e3_j5: z[6,0] - obstacle_slack + 100 alpha[9,3,5] <= 102.4
 obs_alpha_sum_o9_j6: alpha[9,0,6] + alpha[9,1,6] + alpha[9,2,6]
   + alpha[9,3,6] >= 1
 obs_face_o9_e0_j6: z[7,2] - obstacle_slack + 100 alpha[9,0,6] <= 101.25
 obs_face_o9_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[9,1,6] <= 96.8
 obs_face_o9_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[9,2,6] <= 96.25
 obs_face_o9_e3_j6: z[7,0] - obstacle_slack + 100 alpha[9,3,6] <= 102.4
 obs_alpha_sum_o9_j7: alpha[9,0,7] + alpha[9,1,7] + alpha[9,2,7]
   + alpha[9,3,7] >= 1
 obs_face_o9_e0_j7: z[8,2] - obstacle_slack + 100 alpha[9,0,7] <= 101.25
 obs_face_o9_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[9,1,7] <= 96.8
 obs_face_o9_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[9,2,7] <= 96.25
 obs_face_o9_e3_j7: z[8,0] - obstacle_slack + 100 alpha[9,3,7] <= 102.4
 obs_alpha_sum_o9_j8: alpha[9,0,8] + alpha[9,1,8] + alpha[9,2,8]
   + alpha[9,3,8] >= 1
 obs_face_o9_e0_j8: z[9,2] - obstacle_slack + 100 alpha[9,0,8] <= 101.25
 obs_face_o9_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[9,1,8] <= 96.8
 obs_face_o9_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[9,2,8] <= 96.25
 obs_face_o9_e3_j8: z[9,0] - obstacle_slack + 100 alpha[9,3,8] <= 102.4
 obs_alpha_sum_o9_j9: alpha[9,0,9] + alpha[9,1,9] + alpha[9,2,9]
   + alpha[9,3,9] >= 1
 obs_face_o9_e0_j9: z[10,2] - obstacle_slack + 100 alpha[9,0,9] <= 101.25
 obs_face_o9_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[9,1,9] <= 96.8
 obs_face_o9_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[9,2,9] <= 96.25
 obs_face_o9_e3_j9: z[10,0] - obstacle_slack + 100 alpha[9,3,9] <= 102.4
 obs_alpha_sum_o9_j10: alpha[9,0,10] + alpha[9,1,10] + alpha[9,2,10]
   + alpha[9,3,10] >= 1
 obs_face_o9_e0_j10: z[11,2] - obstacle_slack + 100 alpha[9,0,10]
   <= 101.25
 obs_face_o9_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[9,1,10]
   <= 96.8
 obs_face_o9_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[9,2,10]
   <= 96.25
 obs_face_o9_e3_j10: z[11,0] - obstacle_slack + 100 alpha[9,3,10] <= 102.4
 obs_alpha_sum_o9_j11: alpha[9,0,11] + alpha[9,1,11] + alpha[9,2,11]
   + alpha[9,3,11] >= 1
 obs_face_o9_e0_j11: z[12,2] - obstacle_slack + 100 alpha[9,0,11]
   <= 101.25
 obs_face_o9_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[9,1,11]
   <= 96.8
 obs_face_o9_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[9,2,11]
   <= 96.25
 obs_face_o9_e3_j11: z[12,0] - obstacle_slack + 100 alpha[9,3,11] <= 102.4
 obs_alpha_sum_o9_j12: alpha[9,0,12] + alpha[9,1,12] + alpha[9,2,12]
   + alpha[9,3,12] >= 1
 obs_face_o9_e0_j12: z[13,2] - obstacle_slack + 100 alpha[9,0,12]
   <= 101.25
 obs_face_o9_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[9,1,12]
   <= 96.8
 obs_face_o9_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[9,2,12]
   <= 96.25
 obs_face_o9_e3_j12: z[13,0] - obstacle_slack + 100 alpha[9,3,12] <= 102.4
 obs_alpha_sum_o9_j13: alpha[9,0,13] + alpha[9,1,13] + alpha[9,2,13]
   + alpha[9,3,13] >= 1
 obs_face_o9_e0_j13: z[14,2] - obstacle_slack + 100 alpha[9,0,13]
   <= 101.25
 obs_face_o9_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[9,1,13]
   <= 96.8
 obs_face_o9_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[9,2,13]
   <= 96.25
 obs_face_o9_e3_j13: z[14,0] - obstacle_slack + 100 alpha[9,3,13] <= 102.4
 obs_alpha_sum_o9_j14: alpha[9,0,14] + alpha[9,1,14] + alpha[9,2,14]
   + alpha[9,3,14] >= 1
 obs_face_o9_e0_j14: z[15,2] - obstacle_slack + 100 alpha[9,0,14]
   <= 101.25
 obs_face_o9_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[9,1,14]
   <= 96.8
 obs_face_o9_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[9,2,14]
   <= 96.25
 obs_face_o9_e3_j14: z[15,0] - obstacle_slack + 100 alpha[9,3,14] <= 102.4
 obs_alpha_sum_o9_j15: alpha[9,0,15] + alpha[9,1,15] + alpha[9,2,15]
   + alpha[9,3,15] >= 1
 obs_face_o9_e0_j15: z[16,2] - obstacle_slack + 100 alpha[9,0,15]
   <= 101.25
 obs_face_o9_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[9,1,15]
   <= 96.8
 obs_face_o9_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[9,2,15]
   <= 96.25
 obs_face_o9_e3_j15: z[16,0] - obstacle_slack + 100 alpha[9,3,15] <= 102.4
 obs_alpha_sum_o9_j16: alpha[9,0,16] + alpha[9,1,16] + alpha[9,2,16]
   + alpha[9,3,16] >= 1
 obs_face_o9_e0_j16: z[17,2] - obstacle_slack + 100 alpha[9,0,16]
   <= 101.25
 obs_face_o9_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[9,1,16]
   <= 96.8
 obs_face_o9_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[9,2,16]
   <= 96.25
 obs_face_o9_e3_j16: z[17,0] - obstacle_slack + 100 alpha[9,3,16] <= 102.4
 obs_alpha_sum_o9_j17: alpha[9,0,17] + alpha[9,1,17] + alpha[9,2,17]
   + alpha[9,3,17] >= 1
 obs_face_o9_e0_j17: z[18,2] - obstacle_slack + 100 alpha[9,0,17]
   <= 101.25
 obs_face_o9_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[9,1,17]
   <= 96.8
 obs_face_o9_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[9,2,17]
   <= 96.25
 obs_face_o9_e3_j17: z[18,0] - obstacle_slack + 100 alpha[9,3,17] <= 102.4
 obs_alpha_sum_o9_j18: alpha[9,0,18] + alpha[9,1,18] + alpha[9,2,18]
   + alpha[9,3,18] >= 1
 obs_face_o9_e0_j18: z[19,2] - obstacle_slack + 100 alpha[9,0,18]
   <= 101.25
 obs_face_o9_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[9,1,18]
   <= 96.8
 obs_face_o9_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[9,2,18]
   <= 96.25
 obs_face_o9_e3_j18: z[19,0] - obstacle_slack + 100 alpha[9,3,18] <= 102.4
 obs_alpha_sum_o9_j19: alpha[9,0,19] + alpha[9,1,19] + alpha[9,2,19]
   + alpha[9,3,19] >= 1
 obs_face_o9_e0_j19: z[20,2] - obstacle_slack + 100 alpha[9,0,19]
   <= 101.25
 obs_face_o9_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[9,1,19]
   <= 96.8
 obs_face_o9_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[9,2,19]
   <= 96.25
 obs_face_o9_e3_j19: z[20,0] - obstacle_slack + 100 alpha[9,3,19] <= 102.4
 obs_alpha_sum_o9_j20: alpha[9,0,20] + alpha[9,1,20] + alpha[9,2,20]
   + alpha[9,3,20] >= 1
 obs_face_o9_e0_j20: z[21,2] - obstacle_slack + 100 alpha[9,0,20]
   <= 101.25
 obs_face_o9_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[9,1,20]
   <= 96.8
 obs_face_o9_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[9,2,20]
   <= 96.25
 obs_face_o9_e3_j20: z[21,0] - obstacle_slack + 100 alpha[9,3,20] <= 102.4
 obs_alpha_sum_o9_j21: alpha[9,0,21] + alpha[9,1,21] + alpha[9,2,21]
   + alpha[9,3,21] >= 1
 obs_face_o9_e0_j21: z[22,2] - obstacle_slack + 100 alpha[9,0,21]
   <= 101.25
 obs_face_o9_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[9,1,21]
   <= 96.8
 obs_face_o9_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[9,2,21]
   <= 96.25
 obs_face_o9_e3_j21: z[22,0] - obstacle_slack + 100 alpha[9,3,21] <= 102.4
 obs_alpha_sum_o9_j22: alpha[9,0,22] + alpha[9,1,22] + alpha[9,2,22]
   + alpha[9,3,22] >= 1
 obs_face_o9_e0_j22: z[23,2] - obstacle_slack + 100 alpha[9,0,22]
   <= 101.25
 obs_face_o9_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[9,1,22]
   <= 96.8
 obs_face_o9_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[9,2,22]
   <= 96.25
 obs_face_o9_e3_j22: z[23,0] - obstacle_slack + 100 alpha[9,3,22] <= 102.4
 obs_alpha_sum_o9_j23: alpha[9,0,23] + alpha[9,1,23] + alpha[9,2,23]
   + alpha[9,3,23] >= 1
 obs_face_o9_e0_j23: z[24,2] - obstacle_slack + 100 alpha[9,0,23]
   <= 101.25
 obs_face_o9_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[9,1,23]
   <= 96.8
 obs_face_o9_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[9,2,23]
   <= 96.25
 obs_face_o9_e3_j23: z[24,0] - obstacle_slack + 100 alpha[9,3,23] <= 102.4
 obs_alpha_sum_o9_j24: alpha[9,0,24] + alpha[9,1,24] + alpha[9,2,24]
   + alpha[9,3,24] >= 1
 obs_face_o9_e0_j24: z[25,2] - obstacle_slack + 100 alpha[9,0,24]
   <= 101.25
 obs_face_o9_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[9,1,24]
   <= 96.8
 obs_face_o9_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[9,2,24]
   <= 96.25
 obs_face_o9_e3_j24: z[25,0] - obstacle_slack + 100 alpha[9,3,24] <= 102.4
 obs_alpha_sum_o9_j25: alpha[9,0,25] + alpha[9,1,25] + alpha[9,2,25]
   + alpha[9,3,25] >= 1
 obs_face_o9_e0_j25: z[26,2] - obstacle_slack + 100 alpha[9,0,25]
   <= 101.25
 obs_face_o9_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[9,1,25]
   <= 96.8
 obs_face_o9_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[9,2,25]
   <= 96.25
 obs_face_o9_e3_j25: z[26,0] - obstacle_slack + 100 alpha[9,3,25] <= 102.4
 obs_alpha_sum_o9_j26: alpha[9,0,26] + alpha[9,1,26] + alpha[9,2,26]
   + alpha[9,3,26] >= 1
 obs_face_o9_e0_j26: z[27,2] - obstacle_slack + 100 alpha[9,0,26]
   <= 101.25
 obs_face_o9_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[9,1,26]
   <= 96.8
 obs_face_o9_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[9,2,26]
   <= 96.25
 obs_face_o9_e3_j26: z[27,0] - obstacle_slack + 100 alpha[9,3,26] <= 102.4
 obs_alpha_sum_o9_j27: alpha[9,0,27] + alpha[9,1,27] + alpha[9,2,27]
   + alpha[9,3,27] >= 1
 obs_face_o9_e0_j27: z[28,2] - obstacle_slack + 100 alpha[9,0,27]
   <= 101.25
 obs_face_o9_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[9,1,27]
   <= 96.8
 obs_face_o9_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[9,2,27]
   <= 96.25
 obs_face_o9_e3_j27: z[28,0] - obstacle_slack + 100 alpha[9,3,27] <= 102.4
 obs_alpha_sum_o9_j28: alpha[9,0,28] + alpha[9,1,28] + alpha[9,2,28]
   + alpha[9,3,28] >= 1
 obs_face_o9_e0_j28: z[29,2] - obstacle_slack + 100 alpha[9,0,28]
   <= 101.25
 obs_face_o9_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[9,1,28]
   <= 96.8
 obs_face_o9_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[9,2,28]
   <= 96.25
 obs_face_o9_e3_j28: z[29,0] - obstacle_slack + 100 alpha[9,3,28] <= 102.4
 obs_alpha_sum_o9_j29: alpha[9,0,29] + alpha[9,1,29] + alpha[9,2,29]
   + alpha[9,3,29] >= 1
 obs_face_o9_e0_j29: z[30,2] - obstacle_slack + 100 alpha[9,0,29]
   <= 101.25
 obs_face_o9_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[9,1,29]
   <= 96.8
 obs_face_o9_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[9,2,29]
   <= 96.25
 obs_face_o9_e3_j29: z[30,0] - obstacle_slack + 100 alpha[9,3,29] <= 102.4
 obs_alpha_sum_o10_j0: alpha[10,0,0] + alpha[10,1,0] + alpha[10,2,0]
   + alpha[10,3,0] >= 1
 obs_face_o10_e0_j0: - 0.7068251811053651 z[1,0]
   + 0.7073882691672008 z[1,2] - obstacle_slack + 100 alpha[10,0,0]
   <= 98.4920145805893
 obs_face_o10_e1_j0: - 0.7073882691672001 z[1,0]
   - 0.7068251811053655 z[1,2] - obstacle_slack + 100 alpha[10,1,0]
   <= 92.83206379515894
 obs_face_o10_e2_j0: 0.7068251811053651 z[1,0] - 0.7073882691672008 z[1,2]
   - obstacle_slack + 100 alpha[10,2,0] <= 100.6079854194107
 obs_face_o10_e3_j0: 0.7073882691672001 z[1,0] + 0.7068251811053655 z[1,2]
   - obstacle_slack + 100 alpha[10,3,0] <= 106.2679362048411
 obs_alpha_sum_o10_j1: alpha[10,0,1] + alpha[10,1,1] + alpha[10,2,1]
   + alpha[10,3,1] >= 1
 obs_face_o10_e0_j1: - 0.7068251811053651 z[2,0]
   + 0.7073882691672008 z[2,2] - obstacle_slack + 100 alpha[10,0,1]
   <= 98.4920145805893
 obs_face_o10_e1_j1: - 0.7073882691672001 z[2,0]
   - 0.7068251811053655 z[2,2] - obstacle_slack + 100 alpha[10,1,1]
   <= 92.83206379515894
 obs_face_o10_e2_j1: 0.7068251811053651 z[2,0] - 0.7073882691672008 z[2,2]
   - obstacle_slack + 100 alpha[10,2,1] <= 100.6079854194107
 obs_face_o10_e3_j1: 0.7073882691672001 z[2,0] + 0.7068251811053655 z[2,2]
   - obstacle_slack + 100 alpha[10,3,1] <= 106.2679362048411
 obs_alpha_sum_o10_j2: alpha[10,0,2] + alpha[10,1,2] + alpha[10,2,2]
   + alpha[10,3,2] >= 1
 obs_face_o10_e0_j2: - 0.7068251811053651 z[3,0]
   + 0.7073882691672008 z[3,2] - obstacle_slack + 100 alpha[10,0,2]
   <= 98.4920145805893
 obs_face_o10_e1_j2: - 0.7073882691672001 z[3,0]
   - 0.7068251811053655 z[3,2] - obstacle_slack + 100 alpha[10,1,2]
   <= 92.83206379515894
 obs_face_o10_e2_j2: 0.7068251811053651 z[3,0] - 0.7073882691672008 z[3,2]
   - obstacle_slack + 100 alpha[10,2,2] <= 100.6079854194107
 obs_face_o10_e3_j2: 0.7073882691672001 z[3,0] + 0.7068251811053655 z[3,2]
   - obstacle_slack + 100 alpha[10,3,2] <= 106.2679362048411
 obs_alpha_sum_o10_j3: alpha[10,0,3] + alpha[10,1,3] + alpha[10,2,3]
   + alpha[10,3,3] >= 1
 obs_face_o10_e0_j3: - 0.7068251811053651 z[4,0]
   + 0.7073882691672008 z[4,2] - obstacle_slack + 100 alpha[10,0,3]
   <= 98.4920145805893
 obs_face_o10_e1_j3: - 0.7073882691672001 z[4,0]
   - 0.7068251811053655 z[4,2] - obstacle_slack + 100 alpha[10,1,3]
   <= 92.83206379515894
 obs_face_o10_e2_j3: 0.7068251811053651 z[4,0] - 0.7073882691672008 z[4,2]
   - obstacle_slack + 100 alpha[10,2,3] <= 100.6079854194107
 obs_face_o10_e3_j3: 0.7073882691672001 z[4,0] + 0.7068251811053655 z[4,2]
   - obstacle_slack + 100 alpha[10,3,3] <= 106.2679362048411
 obs_alpha_sum_o10_j4: alpha[10,0,4] + alpha[10,1,4] + alpha[10,2,4]
   + alpha[10,3,4] >= 1
 obs_face_o10_e0_j4: - 0.7068251811053651 z[5,0]
   + 0.7073882691672008 z[5,2] - obstacle_slack + 100 alpha[10,0,4]
   <= 98.4920145805893
 obs_face_o10_e1_j4: - 0.7073882691672001 z[5,0]
   - 0.7068251811053655 z[5,2] - obstacle_slack + 100 alpha[10,1,4]
   <= 92.83206379515894
 obs_face_o10_e2_j4: 0.7068251811053651 z[5,0] - 0.7073882691672008 z[5,2]
   - obstacle_slack + 100 alpha[10,2,4] <= 100.6079854194107
 obs_face_o10_e3_j4: 0.7073882691672001 z[5,0] + 0.7068251811053655 z[5,2]
   - obstacle_slack + 100 alpha[10,3,4] <= 106.2679362048411
 obs_alpha_sum_o10_j5: alpha[10,0,5] + alpha[10,1,5] + alpha[10,2,5]
   + alpha[10,3,5] >= 1
 obs_face_o10_e0_j5: - 0.7068251811053651 z[6,0]
   + 0.7073882691672008 z[6,2] - obstacle_slack + 100 alpha[10,0,5]
   <= 98.4920145805893
 obs_face_o10_e1_j5: - 0.7073882691672001 z[6,0]
   - 0.7068251811053655 z[6,2] - obstacle_slack + 100 alpha[10,1,5]
   <= 92.83206379515894
 obs_face_o10_e2_j5: 0.7068251811053651 z[6,0] - 0.7073882691672008 z[6,2]
   - obstacle_slack + 100 alpha[10,2,5] <= 100.6079854194107
 obs_face_o10_e3_j5: 0.7073882691672001 z[6,0] + 0.7068251811053655 z[6,2]
   - obstacle_slack + 100 alpha[10,3,5] <= 106.2679362048411
 obs_alpha_sum_o10_j6: alpha[10,0,6] + alpha[10,1,6] + alpha[10,2,6]
   + alpha[10,3,6] >= 1
 obs_face_o10_e0_j6: - 0.7068251811053651 z[7,0]
   + 0.7073882691672008 z[7,2] - obstacle_slack + 100 alpha[10,0,6]
   <= 98.4920145805893
 obs_face_o10_e1_j6: - 0.7073882691672001 z[7,0]
   - 0.7068251811053655 z[7,2] - obstacle_slack + 100 alpha[10,1,6]
   <= 92.83206379515894
 obs_face_o10_e2_j6: 0.7068251811053651 z[7,0] - 0.7073882691672008 z[7,2]
   - obstacle_slack + 100 alpha[10,2,6] <= 100.6079854194107
 obs_face_o10_e3_j6: 0.7073882691672001 z[7,0] + 0.7068251811053655 z[7,2]
   - obstacle_slack + 100 alpha[10,3,6] <= 106.2679362048411
 obs_alpha_sum_o10_j7: alpha[10,0,7] + alpha[10,1,7] + alpha[10,2,7]
   + alpha[10,3,7] >= 1
 obs_face_o10_e0_j7: - 0.7068251811053651 z[8,0]
   + 0.7073882691672008 z[8,2] - obstacle_slack + 100 alpha[10,0,7]
   <= 98.4920145805893
 obs_face_o10_e1_j7: - 0.7073882691672001 z[8,0]
   - 0.7068251811053655 z[8,2] - obstacle_slack + 100 alpha[10,1,7]
   <= 92.83206379515894
 obs_face_o10_e2_j7: 0.7068251811053651 z[8,0] - 0.7073882691672008 z[8,2]
   - obstacle_slack + 100 alpha[10,2,7] <= 100.6079854194107
 obs_face_o10_e3_j7: 0.7073882691672001 z[8,0] + 0.7068251811053655 z[8,2]
   - obstacle_slack + 100 alpha[10,3,7] <= 106.2679362048411
 obs_alpha_sum_o10_j8: alpha[10,0,8] + alpha[10,1,8] + alpha[10,2,8]
   + alpha[10,3,8] >= 1
 obs_face_o10_e0_j8: - 0.7068251811053651 z[9,0]
   + 0.7073882691672008 z[9,2] - obstacle_slack + 100 alpha[10,0,8]
   <= 98.4920145805893
 obs_face_o10_e1_j8: - 0.7073882691672001 z[9,0]
   - 0.7068251811053655 z[9,2] - obstacle_slack + 100 alpha[10,1,8]
   <= 92.83206379515894
 obs_face_o10_e2_j8: 0.7068251811053651 z[9,0] - 0.7073882691672008 z[9,2]
   - obstacle_slack + 100 alpha[10,2,8] <= 100.6079854194107
 obs_face_o10_e3_j8: 0.7073882691672001 z[9,0] + 0.7068251811053655 z[9,2]
   - obstacle_slack + 100 alpha[10,3,8] <= 106.2679362048411
 obs_alpha_sum_o10_j9: alpha[10,0,9] + alpha[10,1,9] + alpha[10,2,9]
   + alpha[10,3,9] >= 1
 obs_face_o10_e0_j9: - 0.7068251811053651 z[10,0]
   + 0.7073882691672008 z[10,2] - obstacle_slack + 100 alpha[10,0,9]
   <= 98.4920145805893
 obs_face_o10_e1_j9: - 0.7073882691672001 z[10,0]
   - 0.7068251811053655 z[10,2] - obstacle_slack + 100 alpha[10,1,9]
   <= 92.83206379515894
 obs_face_o10_e2_j9: 0.7068251811053651 z[10,0]
   - 0.7073882691672008 z[10,2] - obstacle_slack + 100 alpha[10,2,9]
   <= 100.6079854194107
 obs_face_o10_e3_j9: 0.7073882691672001 z[10,0]
   + 0.7068251811053655 z[10,2] - obstacle_slack + 100 alpha[10,3,9]
   <= 106.2679362048411
 obs_alpha_sum_o10_j10: alpha[10,0,10] + alpha[10,1,10] + alpha[10,2,10]
   + alpha[10,3,10] >= 1
 obs_face_o10_e0_j10: - 0.7068251811053651 z[11,0]
   + 0.7073882691672008 z[11,2] - obstacle_slack + 100 alpha[10,0,10]
   <= 98.4920145805893
 obs_face_o10_e1_j10: - 0.7073882691672001 z[11,0]
   - 0.7068251811053655 z[11,2] - obstacle_slack + 100 alpha[10,1,10]
   <= 92.83206379515894
 obs_face_o10_e2_j10: 0.7068251811053651 z[11,0]
   - 0.7073882691672008 z[11,2] - obstacle_slack + 100 alpha[10,2,10]
   <= 100.6079854194107
 obs_face_o10_e3_j10: 0.7073882691672001 z[11,0]
   + 0.7068251811053655 z[11,2] - obstacle_slack + 100 alpha[10,3,10]
   <= 106.2679362048411
 obs_alpha_sum_o10_j11: alpha[10,0,11] + alpha[10,1,11] + alpha[10,2,11]
   + alpha[10,3,11] >= 1
 obs_face_o10_e0_j11: - 0.7068251811053651 z[12,0]
   + 0.7073882691672008 z[12,2] - obstacle_slack + 100 alpha[10,0,11]
   <= 98.4920145805893
 obs_face_o10_e1_j11: - 0.7073882691672001 z[12,0]
   - 0.7068251811053655 z[12,2] - obstacle_slack + 100 alpha[10,1,11]
   <= 92.83206379515894
 obs_face_o10_e2_j11: 0.7068251811053651 z[12,0]
   - 0.7073882691672008 z[12,2] - obstacle_slack + 100 alpha[10,2,11]
   <= 100.6079854194107
 obs_face_o10_e3_j11: 0.7073882691672001 z[12,0]
   + 0.7068251811053655 z[12,2] - obstacle_slack + 100 alpha[10,3,11]
   <= 106.2679362048411
 obs_alpha_sum_o10_j12: alpha[10,0,12] + alpha[10,1,12] + alpha[10,2,12]
   + alpha[10,3,12] >= 1
 obs_face_o10_e0_j12: - 0.7068251811053651 z[13,0]
   + 0.7073882691672008 z[13,2] - obstacle_slack + 100 alpha[10,0,12]
   <= 98.4920145805893
 obs_face_o10_e1_j12: - 0.7073882691672001 z[13,0]
   - 0.7068251811053655 z[13,2] - obstacle_slack + 100 alpha[10,1,12]
   <= 92.83206379515894
 obs_face_o10_e2_j12: 0.7068251811053651 z[13,0]
   - 0.7073882691672008 z[13,2] - obstacle_slack + 100 alpha[10,2,12]
   <= 100.6079854194107
 obs_face_o10_e3_j12: 0.7073882691672001 z[13,0]
   + 0.7068251811053655 z[13,2] - obstacle_slack + 100 alpha[10,3,12]
   <= 106.2679362048411
 obs_alpha_sum_o10_j13: alpha[10,0,13] + alpha[10,1,13] + alpha[10,2,13]
   + alpha[10,3,13] >= 1
 obs_face_o10_e0_j13: - 0.7068251811053651 z[14,0]
   + 0.7073882691672008 z[14,2] - obstacle_slack + 100 alpha[10,0,13]
   <= 98.4920145805893
 obs_face_o10_e1_j13: - 0.7073882691672001 z[14,0]
   - 0.7068251811053655 z[14,2] - obstacle_slack + 100 alpha[10,1,13]
   <= 92.83206379515894
 obs_face_o10_e2_j13: 0.7068251811053651 z[14,0]
   - 0.7073882691672008 z[14,2] - obstacle_slack + 100 alpha[10,2,13]
   <= 100.6079854194107
 obs_face_o10_e3_j13: 0.7073882691672001 z[14,0]
   + 0.7068251811053655 z[14,2] - obstacle_slack + 100 alpha[10,3,13]
   <= 106.2679362048411
 obs_alpha_sum_o10_j14: alpha[10,0,14] + alpha[10,1,14] + alpha[10,2,14]
   + alpha[10,3,14] >= 1
 obs_face_o10_e0_j14: - 0.7068251811053651 z[15,0]
   + 0.7073882691672008 z[15,2] - obstacle_slack + 100 alpha[10,0,14]
   <= 98.4920145805893
 obs_face_o10_e1_j14: - 0.7073882691672001 z[15,0]
   - 0.7068251811053655 z[15,2] - obstacle_slack + 100 alpha[10,1,14]
   <= 92.83206379515894
 obs_face_o10_e2_j14: 0.7068251811053651 z[15,0]
   - 0.7073882691672008 z[15,2] - obstacle_slack + 100 alpha[10,2,14]
   <= 100.6079854194107
 obs_face_o10_e3_j14: 0.7073882691672001 z[15,0]
   + 0.7068251811053655 z[15,2] - obstacle_slack + 100 alpha[10,3,14]
   <= 106.2679362048411
 obs_alpha_sum_o10_j15: alpha[10,0,15] + alpha[10,1,15] + alpha[10,2,15]
   + alpha[10,3,15] >= 1
 obs_face_o10_e0_j15: - 0.7068251811053651 z[16,0]
   + 0.7073882691672008 z[16,2] - obstacle_slack + 100 alpha[10,0,15]
   <= 98.4920145805893
 obs_face_o10_e1_j15: - 0.7073882691672001 z[16,0]
   - 0.7068251811053655 z[16,2] - obstacle_slack + 100 alpha[10,1,15]
   <= 92.83206379515894
 obs_face_o10_e2_j15: 0.7068251811053651 z[16,0]
   - 0.7073882691672008 z[16,2] - obstacle_slack + 100 alpha[10,2,15]
   <= 100.6079854194107
 obs_face_o10_e3_j15: 0.7073882691672001 z[16,0]
   + 0.7068251811053655 z[16,2] - obstacle_slack + 100 alpha[10,3,15]
   <= 106.2679362048411
 obs_alpha_sum_o10_j16: alpha[10,0,16] + alpha[10,1,16] + alpha[10,2,16]
   + alpha[10,3,16] >= 1
 obs_face_o10_e0_j16: - 0.7068251811053651 z[17,0]
   + 0.7073882691672008 z[17,2] - obstacle_slack + 100 alpha[10,0,16]
   <= 98.4920145805893
 obs_face_o10_e1_j16: - 0.7073882691672001 z[17,0]
   - 0.7068251811053655 z[17,2] - obstacle_slack + 100 alpha[10,1,16]
   <= 92.83206379515894
 obs_face_o10_e2_j16: 0.7068251811053651 z[17,0]
   - 0.7073882691672008 z[17,2] - obstacle_slack + 100 alpha[10,2,16]
   <= 100.6079854194107
 obs_face_o10_e3_j16: 0.7073882691672001 z[17,0]
   + 0.7068251811053655 z[17,2] - obstacle_slack + 100 alpha[10,3,16]
   <= 106.2679362048411
 obs_alpha_sum_o10_j17: alpha[10,0,17] + alpha[10,1,17] + alpha[10,2,17]
   + alpha[10,3,17] >= 1
 obs_face_o10_e0_j17: - 0.7068251811053651 z[18,0]
   + 0.7073882691672008 z[18,2] - obstacle_slack + 100 alpha[10,0,17]
   <= 98.4920145805893
 obs_face_o10_e1_j17: - 0.7073882691672001 z[18,0]
   - 0.7068251811053655 z[18,2] - obstacle_slack + 100 alpha[10,1,17]
   <= 92.83206379515894
 obs_face_o10_e2_j17: 0.7068251811053651 z[18,0]
   - 0.7073882691672008 z[18,2] - obstacle_slack + 100 alpha[10,2,17]
   <= 100.6079854194107
 obs_face_o10_e3_j17: 0.7073882691672001 z[18,0]
   + 0.7068251811053655 z[18,2] - obstacle_slack + 100 alpha[10,3,17]
   <= 106.2679362048411
 obs_alpha_sum_o10_j18: alpha[10,0,18] + alpha[10,1,18] + alpha[10,2,18]
   + alpha[10,3,18] >= 1
 obs_face_o10_e0_j18: - 0.7068251811053651 z[19,0]
   + 0.7073882691672008 z[19,2] - obstacle_slack + 100 alpha[10,0,18]
   <= 98.4920145805893
 obs_face_o10_e1_j18: - 0.7073882691672001 z[19,0]
   - 0.7068251811053655 z[19,2] - obstacle_slack + 100 alpha[10,1,18]
   <= 92.83206379515894
 obs_face_o10_e2_j18: 0.7068251811053651 z[19,0]
   - 0.7073882691672008 z[19,2] - obstacle_slack + 100 alpha[10,2,18]
   <= 100.6079854194107
 obs_face_o10_e3_j18: 0.7073882691672001 z[19,0]
   + 0.7068251811053655 z[19,2] - obstacle_slack + 100 alpha[10,3,18]
   <= 106.2679362048411
 obs_alpha_sum_o10_j19: alpha[10,0,19] + alpha[10,1,19] + alpha[10,2,19]
   + alpha[10,3,19] >= 1
 obs_face_o10_e0_j19: - 0.7068251811053651 z[20,0]
   + 0.7073882691672008 z[20,2] - obstacle_slack + 100 alpha[10,0,19]
   <= 98.4920145805893
 obs_face_o10_e1_j19: - 0.7073882691672001 z[20,0]
   - 0.7068251811053655 z[20,2] - obstacle_slack + 100 alpha[10,1,19]
   <= 92.83206379515894
 obs_face_o10_e2_j19: 0.7068251811053651 z[20,0]
   - 0.7073882691672008 z[20,2] - obstacle_slack + 100 alpha[10,2,19]
   <= 100.6079854194107
 obs_face_o10_e3_j19: 0.7073882691672001 z[20,0]
   + 0.7068251811053655 z[20,2] - obstacle_slack + 100 alpha[10,3,19]
   <= 106.2679362048411
 obs_alpha_sum_o10_j20: alpha[10,0,20] + alpha[10,1,20] + alpha[10,2,20]
   + alpha[10,3,20] >= 1
 obs_face_o10_e0_j20: - 0.7068251811053651 z[21,0]
   + 0.7073882691672008 z[21,2] - obstacle_slack + 100 alpha[10,0,20]
   <= 98.4920145805893
 obs_face_o10_e1_j20: - 0.7073882691672001 z[21,0]
   - 0.7068251811053655 z[21,2] - obstacle_slack + 100 alpha[10,1,20]
   <= 92.83206379515894
 obs_face_o10_e2_j20: 0.7068251811053651 z[21,0]
   - 0.7073882691672008 z[21,2] - obstacle_slack + 100 alpha[10,2,20]
   <= 100.6079854194107
 obs_face_o10_e3_j20: 0.7073882691672001 z[21,0]
   + 0.7068251811053655 z[21,2] - obstacle_slack + 100 alpha[10,3,20]
   <= 106.2679362048411
 obs_alpha_sum_o10_j21: alpha[10,0,21] + alpha[10,1,21] + alpha[10,2,21]
   + alpha[10,3,21] >= 1
 obs_face_o10_e0_j21: - 0.7068251811053651 z[22,0]
   + 0.7073882691672008 z[22,2] - obstacle_slack + 100 alpha[10,0,21]
   <= 98.4920145805893
 obs_face_o10_e1_j21: - 0.7073882691672001 z[22,0]
   - 0.7068251811053655 z[22,2] - obstacle_slack + 100 alpha[10,1,21]
   <= 92.83206379515894
 obs_face_o10_e2_j21: 0.7068251811053651 z[22,0]
   - 0.7073882691672008 z[22,2] - obstacle_slack + 100 alpha[10,2,21]
   <= 100.6079854194107
 obs_face_o10_e3_j21: 0.7073882691672001 z[22,0]
   + 0.7068251811053655 z[22,2] - obstacle_slack + 100 alpha[10,3,21]
   <= 106.2679362048411
 obs_alpha_sum_o10_j22: alpha[10,0,22] + alpha[10,1,22] + alpha[10,2,22]
   + alpha[10,3,22] >= 1
 obs_face_o10_e0_j22: - 0.7068251811053651 z[23,0]
   + 0.7073882691672008 z[23,2] - obstacle_slack + 100 alpha[10,0,22]
   <= 98.4920145805893
 obs_face_o10_e1_j22: - 0.7073882691672001 z[23,0]
   - 0.7068251811053655 z[23,2] - obstacle_slack + 100 alpha[10,1,22]
   <= 92.83206379515894
 obs_face_o10_e2_j22: 0.7068251811053651 z[23,0]
   - 0.7073882691672008 z[23,2] - obstacle_slack + 100 alpha[10,2,22]
   <= 100.6079854194107
 obs_face_o10_e3_j22: 0.7073882691672001 z[23,0]
   + 0.7068251811053655 z[23,2] - obstacle_slack + 100 alpha[10,3,22]
   <= 106.2679362048411
 obs_alpha_sum_o10_j23: alpha[10,0,23] + alpha[10,1,23] + alpha[10,2,23]
   + alpha[10,3,23] >= 1
 obs_face_o10_e0_j23: - 0.7068251811053651 z[24,0]
   + 0.7073882691672008 z[24,2] - obstacle_slack + 100 alpha[10,0,23]
   <= 98.4920145805893
 obs_face_o10_e1_j23: - 0.7073882691672001 z[24,0]
   - 0.7068251811053655 z[24,2] - obstacle_slack + 100 alpha[10,1,23]
   <= 92.83206379515894
 obs_face_o10_e2_j23: 0.7068251811053651 z[24,0]
   - 0.7073882691672008 z[24,2] - obstacle_slack + 100 alpha[10,2,23]
   <= 100.6079854194107
 obs_face_o10_e3_j23: 0.7073882691672001 z[24,0]
   + 0.7068251811053655 z[24,2] - obstacle_slack + 100 alpha[10,3,23]
   <= 106.2679362048411
 obs_alpha_sum_o10_j24: alpha[10,0,24] + alpha[10,1,24] + alpha[10,2,24]
   + alpha[10,3,24] >= 1
 obs_face_o10_e0_j24: - 0.7068251811053651 z[25,0]
   + 0.7073882691672008 z[25,2] - obstacle_slack + 100 alpha[10,0,24]
   <= 98.4920145805893
 obs_face_o10_e1_j24: - 0.7073882691672001 z[25,0]
   - 0.7068251811053655 z[25,2] - obstacle_slack + 100 alpha[10,1,24]
   <= 92.83206379515894
 obs_face_o10_e2_j24: 0.7068251811053651 z[25,0]
   - 0.7073882691672008 z[25,2] - obstacle_slack + 100 alpha[10,2,24]
   <= 100.6079854194107
 obs_face_o10_e3_j24: 0.7073882691672001 z[25,0]
   + 0.7068251811053655 z[25,2] - obstacle_slack + 100 alpha[10,3,24]
   <= 106.2679362048411
 obs_alpha_sum_o10_j25: alpha[10,0,25] + alpha[10,1,25] + alpha[10,2,25]
   + alpha[10,3,25] >= 1
 obs_face_o10_e0_j25: - 0.7068251811053651 z[26,0]
   + 0.7073882691672008 z[26,2] - obstacle_slack + 100 alpha[10,0,25]
   <= 98.4920145805893
 obs_face_o10_e1_j25: - 0.7073882691672001 z[26,0]
   - 0.7068251811053655 z[26,2] - obstacle_slack + 100 alpha[10,1,25]
   <= 92.83206379515894
 obs_face_o10_e2_j25: 0.7068251811053651 z[26,0]
   - 0.7073882691672008 z[26,2] - obstacle_slack + 100 alpha[10,2,25]
   <= 100.6079854194107
 obs_face_o10_e3_j25: 0.7073882691672001 z[26,0]
   + 0.7068251811053655 z[26,2] - obstacle_slack + 100 alpha[10,3,25]
   <= 106.2679362048411
 obs_alpha_sum_o10_j26: alpha[10,0,26] + alpha[10,1,26] + alpha[10,2,26]
   + alpha[10,3,26] >= 1
 obs_face_o10_e0_j26: - 0.7068251811053651 z[27,0]
   + 0.7073882691672008 z[27,2] - obstacle_slack + 100 alpha[10,0,26]
   <= 98.4920145805893
 obs_face_o10_e1_j26: - 0.7073882691672001 z[27,0]
   - 0.7068251811053655 z[27,2] - obstacle_slack + 100 alpha[10,1,26]
   <= 92.83206379515894
 obs_face_o10_e2_j26: 0.7068251811053651 z[27,0]
   - 0.7073882691672008 z[27,2] - obstacle_slack + 100 alpha[10,2,26]
   <= 100.6079854194107
 obs_face_o10_e3_j26: 0.7073882691672001 z[27,0]
   + 0.7068251811053655 z[27,2] - obstacle_slack + 100 alpha[10,3,26]
   <= 106.2679362048411
 obs_alpha_sum_o10_j27: alpha[10,0,27] + alpha[10,1,27] + alpha[10,2,27]
   + alpha[10,3,27] >= 1
 obs_face_o10_e0_j27: - 0.7068251811053651 z[28,0]
   + 0.7073882691672008 z[28,2] - obstacle_slack + 100 alpha[10,0,27]
   <= 98.4920145805893
 obs_face_o10_e1_j27: - 0.7073882691672001 z[28,0]
   - 0.7068251811053655 z[28,2] - obstacle_slack + 100 alpha[10,1,27]
   <= 92.83206379515894
 obs_face_o10_e2_j27: 0.7068251811053651 z[28,0]
   - 0.7073882691672008 z[28,2] - obstacle_slack + 100 alpha[10,2,27]
   <= 100.6079854194107
 obs_face_o10_e3_j27: 0.7073882691672001 z[28,0]
   + 0.7068251811053655 z[28,2] - obstacle_slack + 100 alpha[10,3,27]
   <= 106.2679362048411
 obs_alpha_sum_o10_j28: alpha[10,0,28] + alpha[10,1,28] + alpha[10,2,28]
   + alpha[10,3,28] >= 1
 obs_face_o10_e0_j28: - 0.7068251811053651 z[29,0]
   + 0.7073882691672008 z[29,2] - obstacle_slack + 100 alpha[10,0,28]
   <= 98.4920145805893
 obs_face_o10_e1_j28: - 0.7073882691672001 z[29,0]
   - 0.7068251811053655 z[29,2] - obstacle_slack + 100 alpha[10,1,28]
   <= 92.83206379515894
 obs_face_o10_e2_j28: 0.7068251811053651 z[29,0]
   - 0.7073882691672008 z[29,2] - obstacle_slack + 100 alpha[10,2,28]
   <= 100.6079854194107
 obs_face_o10_e3_j28: 0.7073882691672001 z[29,0]
   + 0.7068251811053655 z[29,2] - obstacle_slack + 100 alpha[10,3,28]
   <= 106.2679362048411
 obs_alpha_sum_o10_j29: alpha[10,0,29] + alpha[10,1,29] + alpha[10,2,29]
   + alpha[10,3,29] >= 1
 obs_face_o10_e0_j29: - 0.7068251811053651 z[30,0]
   + 0.7073882691672008 z[30,2] - obstacle_slack + 100 alpha[10,0,29]
   <= 98.4920145805893
 obs_face_o10_e1_j29: - 0.7073882691672001 z[30,0]
   - 0.7068251811053655 z[30,2] - obstacle_slack + 100 alpha[10,1,29]
   <= 92.83206379515894
 obs_face_o10_e2_j29: 0.7068251811053651 z[30,0]
   - 0.7073882691672008 z[30,2] - obstacle_slack + 100 alpha[10,2,29]
   <= 100.6079854194107
 obs_face_o10_e3_j29: 0.7073882691672001 z[30,0]
   + 0.7068251811053655 z[30,2] - obstacle_slack + 100 alpha[10,3,29]
   <= 106.2679362048411
 obs_alpha_sum_o11_j0: alpha[11,0,0] + alpha[11,1,0] + alpha[11,2,0]
   + alpha[11,3,0] >= 1
 obs_face_o11_e0_j0: - 0.8624042272433381 z[1,0]
   + 0.5062202572327787 z[1,2] - obstacle_slack + 100 alpha[11,0,0]
   <= 95.10684932460607
 obs_face_o11_e1_j0: - 0.5062202572327787 z[1,0]
   - 0.8624042272433381 z[1,2] - obstacle_slack + 100 alpha[11,1,0]
   <= 92.3037311617808
 obs_face_o11_e2_j0: 0.8624042272433381 z[1,0] - 0.5062202572327787 z[1,2]
   - obstacle_slack + 100 alpha[11,2,0] <= 103.9931506753939
 obs_face_o11_e3_j0: 0.5062202572327787 z[1,0] + 0.8624042272433381 z[1,2]
   - obstacle_slack + 100 alpha[11,3,0] <= 106.7962688382192
 obs_alpha_sum_o11_j1: alpha[11,0,1] + alpha[11,1,1] + alpha[11,2,1]
   + alpha[11,3,1] >= 1
 obs_face_o11_e0_j1: - 0.8624042272433381 z[2,0]
   + 0.5062202572327787 z[2,2] - obstacle_slack + 100 alpha[11,0,1]
   <= 95.10684932460607
 obs_face_o11_e1_j1: - 0.5062202572327787 z[2,0]
   - 0.8624042272433381 z[2,2] - obstacle_slack + 100 alpha[11,1,1]
   <= 92.3037311617808
 obs_face_o11_e2_j1: 0.8624042272433381 z[2,0] - 0.5062202572327787 z[2,2]
   - obstacle_slack + 100 alpha[11,2,1] <= 103.9931506753939
 obs_face_o11_e3_j1: 0.5062202572327787 z[2,0] + 0.8624042272433381 z[2,2]
   - obstacle_slack + 100 alpha[11,3,1] <= 106.7962688382192
 obs_alpha_sum_o11_j2: alpha[11,0,2] + alpha[11,1,2] + alpha[11,2,2]
   + alpha[11,3,2] >= 1
 obs_face_o11_e0_j2: - 0.8624042272433381 z[3,0]
   + 0.5062202572327787 z[3,2] - obstacle_slack + 100 alpha[11,0,2]
   <= 95.10684932460607
 obs_face_o11_e1_j2: - 0.5062202572327787 z[3,0]
   - 0.8624042272433381 z[3,2] - obstacle_slack + 100 alpha[11,1,2]
   <= 92.3037311617808
 obs_face_o11_e2_j2: 0.8624042272433381 z[3,0] - 0.5062202572327787 z[3,2]
   - obstacle_slack + 100 alpha[11,2,2] <= 103.9931506753939
 obs_face_o11_e3_j2: 0.5062202572327787 z[3,0] + 0.8624042272433381 z[3,2]
   - obstacle_slack + 100 alpha[11,3,2] <= 106.7962688382192
 obs_alpha_sum_o11_j3: alpha[11,0,3] + alpha[11,1,3] + alpha[11,2,3]
   + alpha[11,3,3] >= 1
 obs_face_o11_e0_j3: - 0.8624042272433381 z[4,0]
   + 0.5062202572327787 z[4,2] - obstacle_slack + 100 alpha[11,0,3]
   <= 95.10684932460607
 obs_face_o11_e1_j3: - 0.5062202572327787 z[4,0]
   - 0.8624042272433381 z[4,2] - obstacle_slack + 100 alpha[11,1,3]
   <= 92.3037311617808
 obs_face_o11_e2_j3: 0.8624042272433381 z[4,0] - 0.5062202572327787 z[4,2]
   - obstacle_slack + 100 alpha[11,2,3] <= 103.9931506753939
 obs_face_o11_e3_j3: 0.5062202572327787 z[4,0] + 0.8624042272433381 z[4,2]
   - obstacle_slack + 100 alpha[11,3,3] <= 106.7962688382192
 obs_alpha_sum_o11_j4: alpha[11,0,4] + alpha[11,1,4] + alpha[11,2,4]
   + alpha[11,3,4] >= 1
 obs_face_o11_e0_j4: - 0.8624042272433381 z[5,0]
   + 0.5062202572327787 z[5,2] - obstacle_slack + 100 alpha[11,0,4]
   <= 95.10684932460607
 obs_face_o11_e1_j4: - 0.5062202572327787 z[5,0]
   - 0.8624042272433381 z[5,2] - obstacle_slack + 100 alpha[11,1,4]
   <= 92.3037311617808
 obs_face_o11_e2_j4: 0.8624042272433381 z[5,0] - 0.5062202572327787 z[5,2]
   - obstacle_slack + 100 alpha[11,2,4] <= 103.9931506753939
 obs_face_o11_e3_j4: 0.5062202572327787 z[5,0] + 0.8624042272433381 z[5,2]
   - obstacle_slack + 100 alpha[11,3,4] <= 106.7962688382192
 obs_alpha_sum_o11_j5: alpha[11,0,5] + alpha[11,1,5] + alpha[11,2,5]
   + alpha[11,3,5] >= 1
 obs_face_o11_e0_j5: - 0.8624042272433381 z[6,0]
   + 0.5062202572327787 z[6,2] - obstacle_slack + 100 alpha[11,0,5]
   <= 95.10684932460607
 obs_face_o11_e1_j5: - 0.5062202572327787 z[6,0]
   - 0.8624042272433381 z[6,2] - obstacle_slack + 100 alpha[11,1,5]
   <= 92.3037311617808
 obs_face_o11_e2_j5: 0.8624042272433381 z[6,0] - 0.5062202572327787 z[6,2]
   - obstacle_slack + 100 alpha[11,2,5] <= 103.9931506753939
 obs_face_o11_e3_j5: 0.5062202572327787 z[6,0] + 0.8624042272433381 z[6,2]
   - obstacle_slack + 100 alpha[11,3,5] <= 106.7962688382192
 obs_alpha_sum_o11_j6: alpha[11,0,6] + alpha[11,1,6] + alpha[11,2,6]
   + alpha[11,3,6] >= 1
 obs_face_o11_e0_j6: - 0.8624042272433381 z[7,0]
   + 0.5062202572327787 z[7,2] - obstacle_slack + 100 alpha[11,0,6]
   <= 95.10684932460607
 obs_face_o11_e1_j6: - 0.5062202572327787 z[7,0]
   - 0.8624042272433381 z[7,2] - obstacle_slack + 100 alpha[11,1,6]
   <= 92.3037311617808
 obs_face_o11_e2_j6: 0.8624042272433381 z[7,0] - 0.5062202572327787 z[7,2]
   - obstacle_slack + 100 alpha[11,2,6] <= 103.9931506753939
 obs_face_o11_e3_j6: 0.5062202572327787 z[7,0] + 0.8624042272433381 z[7,2]
   - obstacle_slack + 100 alpha[11,3,6] <= 106.7962688382192
 obs_alpha_sum_o11_j7: alpha[11,0,7] + alpha[11,1,7] + alpha[11,2,7]
   + alpha[11,3,7] >= 1
 obs_face_o11_e0_j7: - 0.8624042272433381 z[8,0]
   + 0.5062202572327787 z[8,2] - obstacle_slack + 100 alpha[11,0,7]
   <= 95.10684932460607
 obs_face_o11_e1_j7: - 0.5062202572327787 z[8,0]
   - 0.8624042272433381 z[8,2] - obstacle_slack + 100 alpha[11,1,7]
   <= 92.3037311617808
 obs_face_o11_e2_j7: 0.8624042272433381 z[8,0] - 0.5062202572327787 z[8,2]
   - obstacle_slack + 100 alpha[11,2,7] <= 103.9931506753939
 obs_face_o11_e3_j7: 0.5062202572327787 z[8,0] + 0.8624042272433381 z[8,2]
   - obstacle_slack + 100 alpha[11,3,7] <= 106.7962688382192
 obs_alpha_sum_o11_j8: alpha[11,0,8] + alpha[11,1,8] + alpha[11,2,8]
   + alpha[11,3,8] >= 1
 obs_face_o11_e0_j8: - 0.8624042272433381 z[9,0]
   + 0.5062202572327787 z[9,2] - obstacle_slack + 100 alpha[11,0,8]
   <= 95.10684932460607
 obs_face_o11_e1_j8: - 0.5062202572327787 z[9,0]
   - 0.8624042272433381 z[9,2] - obstacle_slack + 100 alpha[11,1,8]
   <= 92.3037311617808
 obs_face_o11_e2_j8: 0.8624042272433381 z[9,0] - 0.5062202572327787 z[9,2]
   - obstacle_slack + 100 alpha[11,2,8] <= 103.9931506753939
 obs_face_o11_e3_j8: 0.5062202572327787 z[9,0] + 0.8624042272433381 z[9,2]
   - obstacle_slack + 100 alpha[11,3,8] <= 106.7962688382192
 obs_alpha_sum_o11_j9: alpha[11,0,9] + alpha[11,1,9] + alpha[11,2,9]
   + alpha[11,3,9] >= 1
 obs_face_o11_e0_j9: - 0.8624042272433381 z[10,0]
   + 0.5062202572327787 z[10,2] - obstacle_slack + 100 alpha[11,0,9]
   <= 95.10684932460607
 obs_face_o11_e1_j9: - 0.5062202572327787 z[10,0]
   - 0.8624042272433381 z[10,2] - obstacle_slack + 100 alpha[11,1,9]
   <= 92.3037311617808
 obs_face_o11_e2_j9: 0.8624042272433381 z[10,0]
   - 0.5062202572327787 z[10,2] - obstacle_slack + 100 alpha[11,2,9]
   <= 103.9931506753939
 obs_face_o11_e3_j9: 0.5062202572327787 z[10,0]
   + 0.8624042272433381 z[10,2] - obstacle_slack + 100 alpha[11,3,9]
   <= 106.7962688382192
 obs_alpha_sum_o11_j10: alpha[11,0,10] + alpha[11,1,10] + alpha[11,2,10]
   + alpha[11,3,10] >= 1
 obs_face_o11_e0_j10: - 0.8624042272433381 z[11,0]
   + 0.5062202572327787 z[11,2] - obstacle_slack + 100 alpha[11,0,10]
   <= 95.10684932460607
 obs_face_o11_e1_j10: - 0.5062202572327787 z[11,0]
   - 0.8624042272433381 z[11,2] - obstacle_slack + 100 alpha[11,1,10]
   <= 92.3037311617808
 obs_face_o11_e2_j10: 0.8624042272433381 z[11,0]
   - 0.5062202572327787 z[11,2] - obstacle_slack + 100 alpha[11,2,10]
   <= 103.9931506753939
 obs_face_o11_e3_j10: 0.5062202572327787 z[11,0]
   + 0.8624042272433381 z[11,2] - obstacle_slack + 100 alpha[11,3,10]
   <= 106.7962688382192
 obs_alpha_sum_o11_j11: alpha[11,0,11] + alpha[11,1,11] + alpha[11,2,11]
   + alpha[11,3,11] >= 1
 obs_face_o11_e0_j11: - 0.8624042272433381 z[12,0]
   + 0.5062202572327787 z[12,2] - obstacle_slack + 100 alpha[11,0,11]
   <= 95.10684932460607
 obs_face_o11_e1_j11: - 0.5062202572327787 z[12,0]
   - 0.8624042272433381 z[12,2] - obstacle_slack + 100 alpha[11,1,11]
   <= 92.3037311617808
 obs_face_o11_e2_j11: 0.8624042272433381 z[12,0]
   - 0.5062202572327787 z[12,2] - obstacle_slack + 100 alpha[11,2,11]
   <= 103.9931506753939
 obs_face_o11_e3_j11: 0.5062202572327787 z[12,0]
   + 0.8624042272433381 z[12,2] - obstacle_slack + 100 alpha[11,3,11]
   <= 106.7962688382192
 obs_alpha_sum_o11_j12: alpha[11,0,12] + alpha[11,1,12] + alpha[11,2,12]
   + alpha[11,3,12] >= 1
 obs_face_o11_e0_j12: - 0.8624042272433381 z[13,0]
   + 0.5062202572327787 z[13,2] - obstacle_slack + 100 alpha[11,0,12]
   <= 95.10684932460607
 obs_face_o11_e1_j12: - 0.5062202572327787 z[13,0]
   - 0.8624042272433381 z[13,2] - obstacle_slack + 100 alpha[11,1,12]
   <= 92.3037311617808
 obs_face_o11_e2_j12: 0.8624042272433381 z[13,0]
   - 0.5062202572327787 z[13,2] - obstacle_slack + 100 alpha[11,2,12]
   <= 103.9931506753939
 obs_face_o11_e3_j12: 0.5062202572327787 z[13,0]
   + 0.8624042272433381 z[13,2] - obstacle_slack + 100 alpha[11,3,12]
   <= 106.7962688382192
 obs_alpha_sum_o11_j13: alpha[11,0,13] + alpha[11,1,13] + alpha[11,2,13]
   + alpha[11,3,13] >= 1
 obs_face_o11_e0_j13: - 0.8624042272433381 z[14,0]
   + 0.5062202572327787 z[14,2] - obstacle_slack + 100 alpha[11,0,13]
   <= 95.10684932460607
 obs_face_o11_e1_j13: - 0.5062202572327787 z[14,0]
   - 0.8624042272433381 z[14,2] - obstacle_slack + 100 alpha[11,1,13]
   <= 92.3037311617808
 obs_face_o11_e2_j13: 0.8624042272433381 z[14,0]
   - 0.5062202572327787 z[14,2] - obstacle_slack + 100 alpha[11,2,13]
   <= 103.9931506753939
 obs_face_o11_e3_j13: 0.5062202572327787 z[14,0]
   + 0.8624042272433381 z[14,2] - obstacle_slack + 100 alpha[11,3,13]
   <= 106.7962688382192
 obs_alpha_sum_o11_j14: alpha[11,0,14] + alpha[11,1,14] + alpha[11,2,14]
   + alpha[11,3,14] >= 1
 obs_face_o11_e0_j14: - 0.8624042272433381 z[15,0]
   + 0.5062202572327787 z[15,2] - obstacle_slack + 100 alpha[11,0,14]
   <= 95.10684932460607
 obs_face_o11_e1_j14: - 0.5062202572327787 z[15,0]
   - 0.8624042272433381 z[15,2] - obstacle_slack + 100 alpha[11,1,14]
   <= 92.3037311617808
 obs_face_o11_e2_j14: 0.8624042272433381 z[15,0]
   - 0.5062202572327787 z[15,2] - obstacle_slack + 100 alpha[11,2,14]
   <= 103.9931506753939
 obs_face_o11_e3_j14: 0.5062202572327787 z[15,0]
   + 0.8624042272433381 z[15,2] - obstacle_slack + 100 alpha[11,3,14]
   <= 106.7962688382192
 obs_alpha_sum_o11_j15: alpha[11,0,15] + alpha[11,1,15] + alpha[11,2,15]
   + alpha[11,3,15] >= 1
 obs_face_o11_e0_j15: - 0.8624042272433381 z[16,0]
   + 0.5062202572327787 z[16,2] - obstacle_slack + 100 alpha[11,0,15]
   <= 95.10684932460607
 obs_face_o11_e1_j15: - 0.5062202572327787 z[16,0]
   - 0.8624042272433381 z[16,2] - obstacle_slack + 100 alpha[11,1,15]
   <= 92.3037311617808
 obs_face_o11_e2_j15: 0.8624042272433381 z[16,0]
   - 0.5062202572327787 z[16,2] - obstacle_slack + 100 alpha[11,2,15]
   <= 103.9931506753939
 obs_face_o11_e3_j15: 0.5062202572327787 z[16,0]
   + 0.8624042272433381 z[16,2] - obstacle_slack + 100 alpha[11,3,15]
   <= 106.7962688382192
 obs_alpha_sum_o11_j16: alpha[11,0,16] + alpha[11,1,16] + alpha[11,2,16]
   + alpha[11,3,16] >= 1
 obs_face_o11_e0_j16: - 0.8624042272433381 z[17,0]
   + 0.5062202572327787 z[17,2] - obstacle_slack + 100 alpha[11,0,16]
   <= 95.10684932460607
 obs_face_o11_e1_j16: - 0.5062202572327787 z[17,0]
   - 0.8624042272433381 z[17,2] - obstacle_slack + 100 alpha[11,1,16]
   <= 92.3037311617808
 obs_face_o11_e2_j16: 0.8624042272433381 z[17,0]
   - 0.5062202572327787 z[17,2] - obstacle_slack + 100 alpha[11,2,16]
   <= 103.9931506753939
 obs_face_o11_e3_j16: 0.5062202572327787 z[17,0]
   + 0.8624042272433381 z[17,2] - obstacle_slack + 100 alpha[11,3,16]
   <= 106.7962688382192
 obs_alpha_sum_o11_j17: alpha[11,0,17] + alpha[11,1,17] + alpha[11,2,17]
   + alpha[11,3,17] >= 1
 obs_face_o11_e0_j17: - 0.8624042272433381 z[18,0]
   + 0.5062202572327787 z[18,2] - obstacle_slack + 100 alpha[11,0,17]
   <= 95.10684932460607
 obs_face_o11_e1_j17: - 0.5062202572327787 z[18,0]
   - 0.8624042272433381 z[18,2] - obstacle_slack + 100 alpha[11,1,17]
   <= 92.3037311617808
 obs_face_o11_e2_j17: 0.8624042272433381 z[18,0]
   - 0.5062202572327787 z[18,2] - obstacle_slack + 100 alpha[11,2,17]
   <= 103.9931506753939
 obs_face_o11_e3_j17: 0.5062202572327787 z[18,0]
   + 0.8624042272433381 z[18,2] - obstacle_slack + 100 alpha[11,3,17]
   <= 106.7962688382192
 obs_alpha_sum_o11_j18: alpha[11,0,18] + alpha[11,1,18] + alpha[11,2,18]
   + alpha[11,3,18] >= 1
 obs_face_o11_e0_j18: - 0.8624042272433381 z[19,0]
   + 0.5062202572327787 z[19,2] - obstacle_slack + 100 alpha[11,0,18]
   <= 95.10684932460607
 obs_face_o11_e1_j18: - 0.5062202572327787 z[19,0]
   - 0.8624042272433381 z[19,2] - obstacle_slack + 100 alpha[11,1,18]
   <= 92.3037311617808
 obs_face_o11_e2_j18: 0.8624042272433381 z[19,0]
   - 0.5062202572327787 z[19,2] - obstacle_slack + 100 alpha[11,2,18]
   <= 103.9931506753939
 obs_face_o11_e3_j18: 0.5062202572327787 z[19,0]
   + 0.8624042272433381 z[19,2] - obstacle_slack + 100 alpha[11,3,18]
   <= 106.7962688382192
 obs_alpha_sum_o11_j19: alpha[11,0,19] + alpha[11,1,19] + alpha[11,2,19]
   + alpha[11,3,19] >= 1
 obs_face_o11_e0_j19: - 0.8624042272433381 z[20,0]
   + 0.5062202572327787 z[20,2] - obstacle_slack + 100 alpha[11,0,19]
   <= 95.10684932460607
 obs_face_o11_e1_j19: - 0.5062202572327787 z[20,0]
   - 0.8624042272433381 z[20,2] - obstacle_slack + 100 alpha[11,1,19]
   <= 92.3037311617808
 obs_face_o11_e2_j19: 0.8624042272433381 z[20,0]
   - 0.5062202572327787 z[20,2] - obstacle_slack + 100 alpha[11,2,19]
   <= 103.9931506753939
 obs_face_o11_e3_j19: 0.5062202572327787 z[20,0]
   + 0.8624042272433381 z[20,2] - obstacle_slack + 100 alpha[11,3,19]
   <= 106.7962688382192
 obs_alpha_sum_o11_j20: alpha[11,0,20] + alpha[11,1,20] + alpha[11,2,20]
   + alpha[11,3,20] >= 1
 obs_face_o11_e0_j20: - 0.8624042272433381 z[21,0]
   + 0.5062202572327787 z[21,2] - obstacle_slack + 100 alpha[11,0,20]
   <= 95.10684932460607
 obs_face_o11_e1_j20: - 0.5062202572327787 z[21,0]
   - 0.8624042272433381 z[21,2] - obstacle_slack + 100 alpha[11,1,20]
   <= 92.3037311617808
 obs_face_o11_e2_j20: 0.8624042272433381 z[21,0]
   - 0.5062202572327787 z[21,2] - obstacle_slack + 100 alpha[11,2,20]
   <= 103.9931506753939
 obs_face_o11_e3_j20: 0.5062202572327787 z[21,0]
   + 0.8624042272433381 z[21,2] - obstacle_slack + 100 alpha[11,3,20]
   <= 106.7962688382192
 obs_alpha_sum_o11_j21: alpha[11,0,21] + alpha[11,1,21] + alpha[11,2,21]
   + alpha[11,3,21] >= 1
 obs_face_o11_e0_j21: - 0.8624042272433381 z[22,0]
   + 0.5062202572327787 z[22,2] - obstacle_slack + 100 alpha[11,0,21]
   <= 95.10684932460607
 obs_face_o11_e1_j21: - 0.5062202572327787 z[22,0]
   - 0.8624042272433381 z[22,2] - obstacle_slack + 100 alpha[11,1,21]
   <= 92.3037311617808
 obs_face_o11_e2_j21: 0.8624042272433381 z[22,0]
   - 0.5062202572327787 z[22,2] - obstacle_slack + 100 alpha[11,2,21]
   <= 103.9931506753939
 obs_face_o11_e3_j21: 0.5062202572327787 z[22,0]
   + 0.8624042272433381 z[22,2] - obstacle_slack + 100 alpha[11,3,21]
   <= 106.7962688382192
 obs_alpha_sum_o11_j22: alpha[11,0,22] + alpha[11,1,22] + alpha[11,2,22]
   + alpha[11,3,22] >= 1
 obs_face_o11_e0_j22: - 0.8624042272433381 z[23,0]
   + 0.5062202572327787 z[23,2] - obstacle_slack + 100 alpha[11,0,22]
   <= 95.10684932460607
 obs_face_o11_e1_j22: - 0.5062202572327787 z[23,0]
   - 0.8624042272433381 z[23,2] - obstacle_slack + 100 alpha[11,1,22]
   <= 92.3037311617808
 obs_face_o11_e2_j22: 0.8624042272433381 z[23,0]
   - 0.5062202572327787 z[23,2] - obstacle_slack + 100 alpha[11,2,22]
   <= 103.9931506753939
 obs_face_o11_e3_j22: 0.5062202572327787 z[23,0]
   + 0.8624042272433381 z[23,2] - obstacle_slack + 100 alpha[11,3,22]
   <= 106.7962688382192
 obs_alpha_sum_o11_j23: alpha[11,0,23] + alpha[11,1,23] + alpha[11,2,23]
   + alpha[11,3,23] >= 1
 obs_face_o11_e0_j23: - 0.8624042272433381 z[24,0]
   + 0.5062202572327787 z[24,2] - obstacle_slack + 100 alpha[11,0,23]
   <= 95.10684932460607
 obs_face_o11_e1_j23: - 0.5062202572327787 z[24,0]
   - 0.8624042272433381 z[24,2] - obstacle_slack + 100 alpha[11,1,23]
   <= 92.3037311617808
 obs_face_o11_e2_j23: 0.8624042272433381 z[24,0]
   - 0.5062202572327787 z[24,2] - obstacle_slack + 100 alpha[11,2,23]
   <= 103.9931506753939
 obs_face_o11_e3_j23: 0.5062202572327787 z[24,0]
   + 0.8624042272433381 z[24,2] - obstacle_slack + 100 alpha[11,3,23]
   <= 106.7962688382192
 obs_alpha_sum_o11_j24: alpha[11,0,24] + alpha[11,1,24] + alpha[11,2,24]
   + alpha[11,3,24] >= 1
 obs_face_o11_e0_j24: - 0.8624042272433381 z[25,0]
   + 0.5062202572327787 z[25,2] - obstacle_slack + 100 alpha[11,0,24]
   <= 95.10684932460607
 obs_face_o11_e1_j24: - 0.5062202572327787 z[25,0]
   - 0.8624042272433381 z[25,2] - obstacle_slack + 100 alpha[11,1,24]
   <= 92.3037311617808
 obs_face_o11_e2_j24: 0.8624042272433381 z[25,0]
   - 0.5062202572327787 z[25,2] - obstacle_slack + 100 alpha[11,2,24]
   <= 103.9931506753939
 obs_face_o11_e3_j24: 0.5062202572327787 z[25,0]
   + 0.8624042272433381 z[25,2] - obstacle_slack + 100 alpha[11,3,24]
   <= 106.7962688382192
 obs_alpha_sum_o11_j25: alpha[11,0,25] + alpha[11,1,25] + alpha[11,2,25]
   + alpha[11,3,25] >= 1
 obs_face_o11_e0_j25: - 0.8624042272433381 z[26,0]
   + 0.5062202572327787 z[26,2] - obstacle_slack + 100 alpha[11,0,25]
   <= 95.10684932460607
 obs_face_o11_e1_j25: - 0.5062202572327787 z[26,0]
   - 0.8624042272433381 z[26,2] - obstacle_slack + 100 alpha[11,1,25]
   <= 92.3037311617808
 obs_face_o11_e2_j25: 0.8624042272433381 z[26,0]
   - 0.5062202572327787 z[26,2] - obstacle_slack + 100 alpha[11,2,25]
   <= 103.9931506753939
 obs_face_o11_e3_j25: 0.5062202572327787 z[26,0]
   + 0.8624042272433381 z[26,2] - obstacle_slack + 100 alpha[11,3,25]
   <= 106.7962688382192
 obs_alpha_sum_o11_j26: alpha[11,0,26] + alpha[11,1,26] + alpha[11,2,26]
   + alpha[11,3,26] >= 1
 obs_face_o11_e0_j26: - 0.8624042272433381 z[27,0]
   + 0.5062202572327787 z[27,2] - obstacle_slack + 100 alpha[11,0,26]
   <= 95.10684932460607
 obs_face_o11_e1_j26: - 0.5062202572327787 z[27,0]
   - 0.8624042272433381 z[27,2] - obstacle_slack + 100 alpha[11,1,26]
   <= 92.3037311617808
 obs_face_o11_e2_j26: 0.8624042272433381 z[27,0]
   - 0.5062202572327787 z[27,2] - obstacle_slack + 100 alpha[11,2,26]
   <= 103.9931506753939
 obs_face_o11_e3_j26: 0.5062202572327787 z[27,0]
   + 0.8624042272433381 z[27,2] - obstacle_slack + 100 alpha[11,3,26]
   <= 106.7962688382192
 obs_alpha_sum_o11_j27: alpha[11,0,27] + alpha[11,1,27] + alpha[11,2,27]
   + alpha[11,3,27] >= 1
 obs_face_o11_e0_j27: - 0.8624042272433381 z[28,0]
   + 0.5062202572327787 z[28,2] - obstacle_slack + 100 alpha[11,0,27]
   <= 95.10684932460607
 obs_face_o11_e1_j27: - 0.5062202572327787 z[28,0]
   - 0.8624042272433381 z[28,2] - obstacle_slack + 100 alpha[11,1,27]
   <= 92.3037311617808
 obs_face_o11_e2_j27: 0.8624042272433381 z[28,0]
   - 0.5062202572327787 z[28,2] - obstacle_slack + 100 alpha[11,2,27]
   <= 103.9931506753939
 obs_face_o11_e3_j27: 0.5062202572327787 z[28,0]
   + 0.8624042272433381 z[28,2] - obstacle_slack + 100 alpha[11,3,27]
   <= 106.7962688382192
 obs_alpha_sum_o11_j28: alpha[11,0,28] + alpha[11,1,28] + alpha[11,2,28]
   + alpha[11,3,28] >= 1
 obs_face_o11_e0_j28: - 0.8624042272433381 z[29,0]
   + 0.5062202572327787 z[29,2] - obstacle_slack + 100 alpha[11,0,28]
   <= 95.10684932460607
 obs_face_o11_e1_j28: - 0.5062202572327787 z[29,0]
   - 0.8624042272433381 z[29,2] - obstacle_slack + 100 alpha[11,1,28]
   <= 92.3037311617808
 obs_face_o11_e2_j28: 0.8624042272433381 z[29,0]
   - 0.5062202572327787 z[29,2] - obstacle_slack + 100 alpha[11,2,28]
   <= 103.9931506753939
 obs_face_o11_e3_j28: 0.5062202572327787 z[29,0]
   + 0.8624042272433381 z[29,2] - obstacle_slack + 100 alpha[11,3,28]
   <= 106.7962688382192
 obs_alpha_sum_o11_j29: alpha[11,0,29] + alpha[11,1,29] + alpha[11,2,29]
   + alpha[11,3,29] >= 1
 obs_face_o11_e0_j29: - 0.8624042272433381 z[30,0]
   + 0.5062202572327787 z[30,2] - obstacle_slack + 100 alpha[11,0,29]
   <= 95.10684932460607
 obs_face_o11_e1_j29: - 0.5062202572327787 z[30,0]
   - 0.8624042272433381 z[30,2] - obstacle_slack + 100 alpha[11,1,29]
   <= 92.3037311617808
 obs_face_o11_e2_j29: 0.8624042272433381 z[30,0]
   - 0.5062202572327787 z[30,2] - obstacle_slack + 100 alpha[11,2,29]
   <= 103.9931506753939
 obs_face_o11_e3_j29: 0.5062202572327787 z[30,0]
   + 0.8624042272433381 z[30,2] - obstacle_slack + 100 alpha[11,3,29]
   <= 106.7962688382192
 obs_alpha_sum_o12_j0: alpha[12,0,0] + alpha[12,1,0] + alpha[12,2,0]
   + alpha[12,3,0] >= 1
 obs_face_o12_e0_j0: z[1,2] - obstacle_slack + 100 alpha[12,0,0] <= 105.35
 obs_face_o12_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[12,1,0]
   <= 91.25
 obs_face_o12_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[12,2,0]
   <= 93.95
 obs_face_o12_e3_j0: z[1,0] - obstacle_slack + 100 alpha[12,3,0] <= 104.25
 obs_alpha_sum_o12_j1: alpha[12,0,1] + alpha[12,1,1] + alpha[12,2,1]
   + alpha[12,3,1] >= 1
 obs_face_o12_e0_j1: z[2,2] - obstacle_slack + 100 alpha[12,0,1] <= 105.35
 obs_face_o12_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[12,1,1]
   <= 91.25
 obs_face_o12_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[12,2,1]
   <= 93.95
 obs_face_o12_e3_j1: z[2,0] - obstacle_slack + 100 alpha[12,3,1] <= 104.25
 obs_alpha_sum_o12_j2: alpha[12,0,2] + alpha[12,1,2] + alpha[12,2,2]
   + alpha[12,3,2] >= 1
 obs_face_o12_e0_j2: z[3,2] - obstacle_slack + 100 alpha[12,0,2] <= 105.35
 obs_face_o12_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[12,1,2]
   <= 91.25
 obs_face_o12_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[12,2,2]
   <= 93.95
 obs_face_o12_e3_j2: z[3,0] - obstacle_slack + 100 alpha[12,3,2] <= 104.25
 obs_alpha_sum_o12_j3: alpha[12,0,3] + alpha[12,1,3] + alpha[12,2,3]
   + alpha[12,3,3] >= 1
 obs_face_o12_e0_j3: z[4,2] - obstacle_slack + 100 alpha[12,0,3] <= 105.35
 obs_face_o12_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[12,1,3]
   <= 91.25
 obs_face_o12_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[12,2,3]
   <= 93.95
 obs_face_o12_e3_j3: z[4,0] - obstacle_slack + 100 alpha[12,3,3] <= 104.25
 obs_alpha_sum_o12_j4: alpha[12,0,4] + alpha[12,1,4] + alpha[12,2,4]
   + alpha[12,3,4] >= 1
 obs_face_o12_e0_j4: z[5,2] - obstacle_slack + 100 alpha[12,0,4] <= 105.35
 obs_face_o12_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[12,1,4]
   <= 91.25
 obs_face_o12_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[12,2,4]
   <= 93.95
 obs_face_o12_e3_j4: z[5,0] - obstacle_slack + 100 alpha[12,3,4] <= 104.25
 obs_alpha_sum_o12_j5: alpha[12,0,5] + alpha[12,1,5] + alpha[12,2,5]
   + alpha[12,3,5] >= 1
 obs_face_o12_e0_j5: z[6,2] - obstacle_slack + 100 alpha[12,0,5] <= 105.35
 obs_face_o12_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[12,1,5]
   <= 91.25
 obs_face_o12_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[12,2,5]
   <= 93.95
 obs_face_o12_e3_j5: z[6,0] - obstacle_slack + 100 alpha[12,3,5] <= 104.25
 obs_alpha_sum_o12_j6: alpha[12,0,6] + alpha[12,1,6] + alpha[12,2,6]
   + alpha[12,3,6] >= 1
 obs_face_o12_e0_j6: z[7,2] - obstacle_slack + 100 alpha[12,0,6] <= 105.35
 obs_face_o12_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[12,1,6]
   <= 91.25
 obs_face_o12_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[12,2,6]
   <= 93.95
 obs_face_o12_e3_j6: z[7,0] - obstacle_slack + 100 alpha[12,3,6] <= 104.25
 obs_alpha_sum_o12_j7: alpha[12,0,7] + alpha[12,1,7] + alpha[12,2,7]
   + alpha[12,3,7] >= 1
 obs_face_o12_e0_j7: z[8,2] - obstacle_slack + 100 alpha[12,0,7] <= 105.35
 obs_face_o12_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[12,1,7]
   <= 91.25
 obs_face_o12_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[12,2,7]
   <= 93.95
 obs_face_o12_e3_j7: z[8,0] - obstacle_slack + 100 alpha[12,3,7] <= 104.25
 obs_alpha_sum_o12_j8: alpha[12,0,8] + alpha[12,1,8] + alpha[12,2,8]
   + alpha[12,3,8] >= 1
 obs_face_o12_e0_j8: z[9,2] - obstacle_slack + 100 alpha[12,0,8] <= 105.35
 obs_face_o12_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[12,1,8]
   <= 91.25
 obs_face_o12_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[12,2,8]
   <= 93.95
 obs_face_o12_e3_j8: z[9,0] - obstacle_slack + 100 alpha[12,3,8] <= 104.25
 obs_alpha_sum_o12_j9: alpha[12,0,9] + alpha[12,1,9] + alpha[12,2,9]
   + alpha[12,3,9] >= 1
 obs_face_o12_e0_j9: z[10,2] - obstacle_slack + 100 alpha[12,0,9]
   <= 105.35
 obs_face_o12_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[12,1,9]
   <= 91.25
 obs_face_o12_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[12,2,9]
   <= 93.95
 obs_face_o12_e3_j9: z[10,0] - obstacle_slack + 100 alpha[12,3,9]
   <= 104.25
 obs_alpha_sum_o12_j10: alpha[12,0,10] + alpha[12,1,10] + alpha[12,2,10]
   + alpha[12,3,10] >= 1
 obs_face_o12_e0_j10: z[11,2] - obstacle_slack + 100 alpha[12,0,10]
   <= 105.35
 obs_face_o12_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[12,1,10]
   <= 91.25
 obs_face_o12_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[12,2,10]
   <= 93.95
 obs_face_o12_e3_j10: z[11,0] - obstacle_slack + 100 alpha[12,3,10]
   <= 104.25
 obs_alpha_sum_o12_j11: alpha[12,0,11] + alpha[12,1,11] + alpha[12,2,11]
   + alpha[12,3,11] >= 1
 obs_face_o12_e0_j11: z[12,2] - obstacle_slack + 100 alpha[12,0,11]
   <= 105.35
 obs_face_o12_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[12,1,11]
   <= 91.25
 obs_face_o12_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[12,2,11]
   <= 93.95
 obs_face_o12_e3_j11: z[12,0] - obstacle_slack + 100 alpha[12,3,11]
   <= 104.25
 obs_alpha_sum_o12_j12: alpha[12,0,12] + alpha[12,1,12] + alpha[12,2,12]
   + alpha[12,3,12] >= 1
 obs_face_o12_e0_j12: z[13,2] - obstacle_slack + 100 alpha[12,0,12]
   <= 105.35
 obs_face_o12_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[12,1,12]
   <= 91.25
 obs_face_o12_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[12,2,12]
   <= 93.95
 obs_face_o12_e3_j12: z[13,0] - obstacle_slack + 100 alpha[12,3,12]
   <= 104.25
 obs_alpha_sum_o12_j13: alpha[12,0,13] + alpha[12,1,13] + alpha[12,2,13]
   + alpha[12,3,13] >= 1
 obs_face_o12_e0_j13: z[14,2] - obstacle_slack + 100 alpha[12,0,13]
   <= 105.35
 obs_face_o12_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[12,1,13]
   <= 91.25
 obs_face_o12_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[12,2,13]
   <= 93.95
 obs_face_o12_e3_j13: z[14,0] - obstacle_slack + 100 alpha[12,3,13]
   <= 104.25
 obs_alpha_sum_o12_j14: alpha[12,0,14] + alpha[12,1,14] + alpha[12,2,14]
   + alpha[12,3,14] >= 1
 obs_face_o12_e0_j14: z[15,2] - obstacle_slack + 100 alpha[12,0,14]
   <= 105.35
 obs_face_o12_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[12,1,14]
   <= 91.25
 obs_face_o12_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[12,2,14]
   <= 93.95
 obs_face_o12_e3_j14: z[15,0] - obstacle_slack + 100 alpha[12,3,14]
   <= 104.25
 obs_alpha_sum_o12_j15: alpha[12,0,15] + alpha[12,1,15] + alpha[12,2,15]
   + alpha[12,3,15] >= 1
 obs_face_o12_e0_j15: z[16,2] - obstacle_slack + 100 alpha[12,0,15]
   <= 105.35
 obs_face_o12_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[12,1,15]
   <= 91.25
 obs_face_o12_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[12,2,15]
   <= 93.95
 obs_face_o12_e3_j15: z[16,0] - obstacle_slack + 100 alpha[12,3,15]
   <= 104.25
 obs_alpha_sum_o12_j16: alpha[12,0,16] + alpha[12,1,16] + alpha[12,2,16]
   + alpha[12,3,16] >= 1
 obs_face_o12_e0_j16: z[17,2] - obstacle_slack + 100 alpha[12,0,16]
   <= 105.35
 obs_face_o12_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[12,1,16]
   <= 91.25
 obs_face_o12_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[12,2,16]
   <= 93.95
 obs_face_o12_e3_j16: z[17,0] - obstacle_slack + 100 alpha[12,3,16]
   <= 104.25
 obs_alpha_sum_o12_j17: alpha[12,0,17] + alpha[12,1,17] + alpha[12,2,17]
   + alpha[12,3,17] >= 1
 obs_face_o12_e0_j17: z[18,2] - obstacle_slack + 100 alpha[12,0,17]
   <= 105.35
 obs_face_o12_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[12,1,17]
   <= 91.25
 obs_face_o12_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[12,2,17]
   <= 93.95
 obs_face_o12_e3_j17: z[18,0] - obstacle_slack + 100 alpha[12,3,17]
   <= 104.25
 obs_alpha_sum_o12_j18: alpha[12,0,18] + alpha[12,1,18] + alpha[12,2,18]
   + alpha[12,3,18] >= 1
 obs_face_o12_e0_j18: z[19,2] - obstacle_slack + 100 alpha[12,0,18]
   <= 105.35
 obs_face_o12_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[12,1,18]
   <= 91.25
 obs_face_o12_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[12,2,18]
   <= 93.95
 obs_face_o12_e3_j18: z[19,0] - obstacle_slack + 100 alpha[12,3,18]
   <= 104.25
 obs_alpha_sum_o12_j19: alpha[12,0,19] + alpha[12,1,19] + alpha[12,2,19]
   + alpha[12,3,19] >= 1
 obs_face_o12_e0_j19: z[20,2] - obstacle_slack + 100 alpha[12,0,19]
   <= 105.35
 obs_face_o12_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[12,1,19]
   <= 91.25
 obs_face_o12_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[12,2,19]
   <= 93.95
 obs_face_o12_e3_j19: z[20,0] - obstacle_slack + 100 alpha[12,3,19]
   <= 104.25
 obs_alpha_sum_o12_j20: alpha[12,0,20] + alpha[12,1,20] + alpha[12,2,20]
   + alpha[12,3,20] >= 1
 obs_face_o12_e0_j20: z[21,2] - obstacle_slack + 100 alpha[12,0,20]
   <= 105.35
 obs_face_o12_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[12,1,20]
   <= 91.25
 obs_face_o12_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[12,2,20]
   <= 93.95
 obs_face_o12_e3_j20: z[21,0] - obstacle_slack + 100 alpha[12,3,20]
   <= 104.25
 obs_alpha_sum_o12_j21: alpha[12,0,21] + alpha[12,1,21] + alpha[12,2,21]
   + alpha[12,3,21] >= 1
 obs_face_o12_e0_j21: z[22,2] - obstacle_slack + 100 alpha[12,0,21]
   <= 105.35
 obs_face_o12_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[12,1,21]
   <= 91.25
 obs_face_o12_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[12,2,21]
   <= 93.95
 obs_face_o12_e3_j21: z[22,0] - obstacle_slack + 100 alpha[12,3,21]
   <= 104.25
 obs_alpha_sum_o12_j22: alpha[12,0,22] + alpha[12,1,22] + alpha[12,2,22]
   + alpha[12,3,22] >= 1
 obs_face_o12_e0_j22: z[23,2] - obstacle_slack + 100 alpha[12,0,22]
   <= 105.35
 obs_face_o12_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[12,1,22]
   <= 91.25
 obs_face_o12_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[12,2,22]
   <= 93.95
 obs_face_o12_e3_j22: z[23,0] - obstacle_slack + 100 alpha[12,3,22]
   <= 104.25
 obs_alpha_sum_o12_j23: alpha[12,0,23] + alpha[12,1,23] + alpha[12,2,23]
   + alpha[12,3,23] >= 1
 obs_face_o12_e0_j23: z[24,2] - obstacle_slack + 100 alpha[12,0,23]
   <= 105.35
 obs_face_o12_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[12,1,23]
   <= 91.25
 obs_face_o12_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[12,2,23]
   <= 93.95
 obs_face_o12_e3_j23: z[24,0] - obstacle_slack + 100 alpha[12,3,23]
   <= 104.25
 obs_alpha_sum_o12_j24: alpha[12,0,24] + alpha[12,1,24] + alpha[12,2,24]
   + alpha[12,3,24] >= 1
 obs_face_o12_e0_j24: z[25,2] - obstacle_slack + 100 alpha[12,0,24]
   <= 105.35
 obs_face_o12_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[12,1,24]
   <= 91.25
 obs_face_o12_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[12,2,24]
   <= 93.95
 obs_face_o12_e3_j24: z[25,0] - obstacle_slack + 100 alpha[12,3,24]
   <= 104.25
 obs_alpha_sum_o12_j25: alpha[12,0,25] + alpha[12,1,25] + alpha[12,2,25]
   + alpha[12,3,25] >= 1
 obs_face_o12_e0_j25: z[26,2] - obstacle_slack + 100 alpha[12,0,25]
   <= 105.35
 obs_face_o12_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[12,1,25]
   <= 91.25
 obs_face_o12_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[12,2,25]
   <= 93.95
 obs_face_o12_e3_j25: z[26,0] - obstacle_slack + 100 alpha[12,3,25]
   <= 104.25
 obs_alpha_sum_o12_j26: alpha[12,0,26] + alpha[12,1,26] + alpha[12,2,26]
   + alpha[12,3,26] >= 1
 obs_face_o12_e0_j26: z[27,2] - obstacle_slack + 100 alpha[12,0,26]
   <= 105.35
 obs_face_o12_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[12,1,26]
   <= 91.25
 obs_face_o12_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[12,2,26]
   <= 93.95
 obs_face_o12_e3_j26: z[27,0] - obstacle_slack + 100 alpha[12,3,26]
   <= 104.25
 obs_alpha_sum_o12_j27: alpha[12,0,27] + alpha[12,1,27] + alpha[12,2,27]
   + alpha[12,3,27] >= 1
 obs_face_o12_e0_j27: z[28,2] - obstacle_slack + 100 alpha[12,0,27]
   <= 105.35
 obs_face_o12_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[12,1,27]
   <= 91.25
 obs_face_o12_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[12,2,27]
   <= 93.95
 obs_face_o12_e3_j27: z[28,0] - obstacle_slack + 100 alpha[12,3,27]
   <= 104.25
 obs_alpha_sum_o12_j28: alpha[12,0,28] + alpha[12,1,28] + alpha[12,2,28]
   + alpha[12,3,28] >= 1
 obs_face_o12_e0_j28: z[29,2] - obstacle_slack + 100 alpha[12,0,28]
   <= 105.35
 obs_face_o12_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[12,1,28]
   <= 91.25
 obs_face_o12_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[12,2,28]
   <= 93.95
 obs_face_o12_e3_j28: z[29,0] - obstacle_slack + 100 alpha[12,3,28]
   <= 104.25
 obs_alpha_sum_o12_j29: alpha[12,0,29] + alpha[12,1,29] + alpha[12,2,29]
   + alpha[12,3,29] >= 1
 obs_face_o12_e0_j29: z[30,2] - obstacle_slack + 100 alpha[12,0,29]
   <= 105.35
 obs_face_o12_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[12,1,29]
   <= 91.25
 obs_face_o12_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[12,2,29]
   <= 93.95
 obs_face_o12_e3_j29: z[30,0] - obstacle_slack + 100 alpha[12,3,29]
   <= 104.25
 obs_alpha_sum_o13_j0: alpha[13,0,0] + alpha[13,1,0] + alpha[13,2,0]
   + alpha[13,3,0] >= 1
 obs_face_o13_e0_j0: z[1,2] - obstacle_slack + 100 alpha[13,0,0] <= 103.7
 obs_face_o13_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[13,1,0] <= 89.3
 obs_face_o13_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[13,2,0] <= 95.3
 obs_face_o13_e3_j0: z[1,0] - obstacle_slack + 100 alpha[13,3,0] <= 109.7
 obs_alpha_sum_o13_j1: alpha[13,0,1] + alpha[13,1,1] + alpha[13,2,1]
   + alpha[13,3,1] >= 1
 obs_face_o13_e0_j1: z[2,2] - obstacle_slack + 100 alpha[13,0,1] <= 103.7
 obs_face_o13_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[13,1,1] <= 89.3
 obs_face_o13_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[13,2,1] <= 95.3
 obs_face_o13_e3_j1: z[2,0] - obstacle_slack + 100 alpha[13,3,1] <= 109.7
 obs_alpha_sum_o13_j2: alpha[13,0,2] + alpha[13,1,2] + alpha[13,2,2]
   + alpha[13,3,2] >= 1
 obs_face_o13_e0_j2: z[3,2] - obstacle_slack + 100 alpha[13,0,2] <= 103.7
 obs_face_o13_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[13,1,2] <= 89.3
 obs_face_o13_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[13,2,2] <= 95.3
 obs_face_o13_e3_j2: z[3,0] - obstacle_slack + 100 alpha[13,3,2] <= 109.7
 obs_alpha_sum_o13_j3: alpha[13,0,3] + alpha[13,1,3] + alpha[13,2,3]
   + alpha[13,3,3] >= 1
 obs_face_o13_e0_j3: z[4,2] - obstacle_slack + 100 alpha[13,0,3] <= 103.7
 obs_face_o13_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[13,1,3] <= 89.3
 obs_face_o13_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[13,2,3] <= 95.3
 obs_face_o13_e3_j3: z[4,0] - obstacle_slack + 100 alpha[13,3,3] <= 109.7
 obs_alpha_sum_o13_j4: alpha[13,0,4] + alpha[13,1,4] + alpha[13,2,4]
   + alpha[13,3,4] >= 1
 obs_face_o13_e0_j4: z[5,2] - obstacle_slack + 100 alpha[13,0,4] <= 103.7
 obs_face_o13_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[13,1,4] <= 89.3
 obs_face_o13_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[13,2,4] <= 95.3
 obs_face_o13_e3_j4: z[5,0] - obstacle_slack + 100 alpha[13,3,4] <= 109.7
 obs_alpha_sum_o13_j5: alpha[13,0,5] + alpha[13,1,5] + alpha[13,2,5]
   + alpha[13,3,5] >= 1
 obs_face_o13_e0_j5: z[6,2] - obstacle_slack + 100 alpha[13,0,5] <= 103.7
 obs_face_o13_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[13,1,5] <= 89.3
 obs_face_o13_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[13,2,5] <= 95.3
 obs_face_o13_e3_j5: z[6,0] - obstacle_slack + 100 alpha[13,3,5] <= 109.7
 obs_alpha_sum_o13_j6: alpha[13,0,6] + alpha[13,1,6] + alpha[13,2,6]
   + alpha[13,3,6] >= 1
 obs_face_o13_e0_j6: z[7,2] - obstacle_slack + 100 alpha[13,0,6] <= 103.7
 obs_face_o13_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[13,1,6] <= 89.3
 obs_face_o13_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[13,2,6] <= 95.3
 obs_face_o13_e3_j6: z[7,0] - obstacle_slack + 100 alpha[13,3,6] <= 109.7
 obs_alpha_sum_o13_j7: alpha[13,0,7] + alpha[13,1,7] + alpha[13,2,7]
   + alpha[13,3,7] >= 1
 obs_face_o13_e0_j7: z[8,2] - obstacle_slack + 100 alpha[13,0,7] <= 103.7
 obs_face_o13_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[13,1,7] <= 89.3
 obs_face_o13_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[13,2,7] <= 95.3
 obs_face_o13_e3_j7: z[8,0] - obstacle_slack + 100 alpha[13,3,7] <= 109.7
 obs_alpha_sum_o13_j8: alpha[13,0,8] + alpha[13,1,8] + alpha[13,2,8]
   + alpha[13,3,8] >= 1
 obs_face_o13_e0_j8: z[9,2] - obstacle_slack + 100 alpha[13,0,8] <= 103.7
 obs_face_o13_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[13,1,8] <= 89.3
 obs_face_o13_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[13,2,8] <= 95.3
 obs_face_o13_e3_j8: z[9,0] - obstacle_slack + 100 alpha[13,3,8] <= 109.7
 obs_alpha_sum_o13_j9: alpha[13,0,9] + alpha[13,1,9] + alpha[13,2,9]
   + alpha[13,3,9] >= 1
 obs_face_o13_e0_j9: z[10,2] - obstacle_slack + 100 alpha[13,0,9] <= 103.7
 obs_face_o13_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[13,1,9]
   <= 89.3
 obs_face_o13_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[13,2,9]
   <= 95.3
 obs_face_o13_e3_j9: z[10,0] - obstacle_slack + 100 alpha[13,3,9] <= 109.7
 obs_alpha_sum_o13_j10: alpha[13,0,10] + alpha[13,1,10] + alpha[13,2,10]
   + alpha[13,3,10] >= 1
 obs_face_o13_e0_j10: z[11,2] - obstacle_slack + 100 alpha[13,0,10]
   <= 103.7
 obs_face_o13_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[13,1,10]
   <= 89.3
 obs_face_o13_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[13,2,10]
   <= 95.3
 obs_face_o13_e3_j10: z[11,0] - obstacle_slack + 100 alpha[13,3,10]
   <= 109.7
 obs_alpha_sum_o13_j11: alpha[13,0,11] + alpha[13,1,11] + alpha[13,2,11]
   + alpha[13,3,11] >= 1
 obs_face_o13_e0_j11: z[12,2] - obstacle_slack + 100 alpha[13,0,11]
   <= 103.7
 obs_face_o13_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[13,1,11]
   <= 89.3
 obs_face_o13_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[13,2,11]
   <= 95.3
 obs_face_o13_e3_j11: z[12,0] - obstacle_slack + 100 alpha[13,3,11]
   <= 109.7
 obs_alpha_sum_o13_j12: alpha[13,0,12] + alpha[13,1,12] + alpha[13,2,12]
   + alpha[13,3,12] >= 1
 obs_face_o13_e0_j12: z[13,2] - obstacle_slack + 100 alpha[13,0,12]
   <= 103.7
 obs_face_o13_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[13,1,12]
   <= 89.3
 obs_face_o13_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[13,2,12]
   <= 95.3
 obs_face_o13_e3_j12: z[13,0] - obstacle_slack + 100 alpha[13,3,12]
   <= 109.7
 obs_alpha_sum_o13_j13: alpha[13,0,13] + alpha[13,1,13] + alpha[13,2,13]
   + alpha[13,3,13] >= 1
 obs_face_o13_e0_j13: z[14,2] - obstacle_slack + 100 alpha[13,0,13]
   <= 103.7
 obs_face_o13_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[13,1,13]
   <= 89.3
 obs_face_o13_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[13,2,13]
   <= 95.3
 obs_face_o13_e3_j13: z[14,0] - obstacle_slack + 100 alpha[13,3,13]
   <= 109.7
 obs_alpha_sum_o13_j14: alpha[13,0,14] + alpha[13,1,14] + alpha[13,2,14]
   + alpha[13,3,14] >= 1
 obs_face_o13_e0_j14: z[15,2] - obstacle_slack + 100 alpha[13,0,14]
   <= 103.7
 obs_face_o13_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[13,1,14]
   <= 89.3
 obs_face_o13_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[13,2,14]
   <= 95.3
 obs_face_o13_e3_j14: z[15,0] - obstacle_slack + 100 alpha[13,3,14]
   <= 109.7
 obs_alpha_sum_o13_j15: alpha[13,0,15] + alpha[13,1,15] + alpha[13,2,15]
   + alpha[13,3,15] >= 1
 obs_face_o13_e0_j15: z[16,2] - obstacle_slack + 100 alpha[13,0,15]
   <= 103.7
 obs_face_o13_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[13,1,15]
   <= 89.3
 obs_face_o13_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[13,2,15]
   <= 95.3
 obs_face_o13_e3_j15: z[16,0] - obstacle_slack + 100 alpha[13,3,15]
   <= 109.7
 obs_alpha_sum_o13_j16: alpha[13,0,16] + alpha[13,1,16] + alpha[13,2,16]
   + alpha[13,3,16] >= 1
 obs_face_o13_e0_j16: z[17,2] - obstacle_slack + 100 alpha[13,0,16]
   <= 103.7
 obs_face_o13_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[13,1,16]
   <= 89.3
 obs_face_o13_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[13,2,16]
   <= 95.3
 obs_face_o13_e3_j16: z[17,0] - obstacle_slack + 100 alpha[13,3,16]
   <= 109.7
 obs_alpha_sum_o13_j17: alpha[13,0,17] + alpha[13,1,17] + alpha[13,2,17]
   + alpha[13,3,17] >= 1
 obs_face_o13_e0_j17: z[18,2] - obstacle_slack + 100 alpha[13,0,17]
   <= 103.7
 obs_face_o13_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[13,1,17]
   <= 89.3
 obs_face_o13_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[13,2,17]
   <= 95.3
 obs_face_o13_e3_j17: z[18,0] - obstacle_slack + 100 alpha[13,3,17]
   <= 109.7
 obs_alpha_sum_o13_j18: alpha[13,0,18] + alpha[13,1,18] + alpha[13,2,18]
   + alpha[13,3,18] >= 1
 obs_face_o13_e0_j18: z[19,2] - obstacle_slack + 100 alpha[13,0,18]
   <= 103.7
 obs_face_o13_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[13,1,18]
   <= 89.3
 obs_face_o13_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[13,2,18]
   <= 95.3
 obs_face_o13_e3_j18: z[19,0] - obstacle_slack + 100 alpha[13,3,18]
   <= 109.7
 obs_alpha_sum_o13_j19: alpha[13,0,19] + alpha[13,1,19] + alpha[13,2,19]
   + alpha[13,3,19] >= 1
 obs_face_o13_e0_j19: z[20,2] - obstacle_slack + 100 alpha[13,0,19]
   <= 103.7
 obs_face_o13_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[13,1,19]
   <= 89.3
 obs_face_o13_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[13,2,19]
   <= 95.3
 obs_face_o13_e3_j19: z[20,0] - obstacle_slack + 100 alpha[13,3,19]
   <= 109.7
 obs_alpha_sum_o13_j20: alpha[13,0,20] + alpha[13,1,20] + alpha[13,2,20]
   + alpha[13,3,20] >= 1
 obs_face_o13_e0_j20: z[21,2] - obstacle_slack + 100 alpha[13,0,20]
   <= 103.7
 obs_face_o13_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[13,1,20]
   <= 89.3
 obs_face_o13_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[13,2,20]
   <= 95.3
 obs_face_o13_e3_j20: z[21,0] - obstacle_slack + 100 alpha[13,3,20]
   <= 109.7
 obs_alpha_sum_o13_j21: alpha[13,0,21] + alpha[13,1,21] + alpha[13,2,21]
   + alpha[13,3,21] >= 1
 obs_face_o13_e0_j21: z[22,2] - obstacle_slack + 100 alpha[13,0,21]
   <= 103.7
 obs_face_o13_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[13,1,21]
   <= 89.3
 obs_face_o13_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[13,2,21]
   <= 95.3
 obs_face_o13_e3_j21: z[22,0] - obstacle_slack + 100 alpha[13,3,21]
   <= 109.7
 obs_alpha_sum_o13_j22: alpha[13,0,22] + alpha[13,1,22] + alpha[13,2,22]
   + alpha[13,3,22] >= 1
 obs_face_o13_e0_j22: z[23,2] - obstacle_slack + 100 alpha[13,0,22]
   <= 103.7
 obs_face_o13_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[13,1,22]
   <= 89.3
 obs_face_o13_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[13,2,22]
   <= 95.3
 obs_face_o13_e3_j22: z[23,0] - obstacle_slack + 100 alpha[13,3,22]
   <= 109.7
 obs_alpha_sum_o13_j23: alpha[13,0,23] + alpha[13,1,23] + alpha[13,2,23]
   + alpha[13,3,23] >= 1
 obs_face_o13_e0_j23: z[24,2] - obstacle_slack + 100 alpha[13,0,23]
   <= 103.7
 obs_face_o13_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[13,1,23]
   <= 89.3
 obs_face_o13_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[13,2,23]
   <= 95.3
 obs_face_o13_e3_j23: z[24,0] - obstacle_slack + 100 alpha[13,3,23]
   <= 109.7
 obs_alpha_sum_o13_j24: alpha[13,0,24] + alpha[13,1,24] + alpha[13,2,24]
   + alpha[13,3,24] >= 1
 obs_face_o13_e0_j24: z[25,2] - obstacle_slack + 100 alpha[13,0,24]
   <= 103.7
 obs_face_o13_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[13,1,24]
   <= 89.3
 obs_face_o13_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[13,2,24]
   <= 95.3
 obs_face_o13_e3_j24: z[25,0] - obstacle_slack + 100 alpha[13,3,24]
   <= 109.7
 obs_alpha_sum_o13_j25: alpha[13,0,25] + alpha[13,1,25] + alpha[13,2,25]
   + alpha[13,3,25] >= 1
 obs_face_o13_e0_j25: z[26,2] - obstacle_slack + 100 alpha[13,0,25]
   <= 103.7
 obs_face_o13_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[13,1,25]
   <= 89.3
 obs_face_o13_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[13,2,25]
   <= 95.3
 obs_face_o13_e3_j25: z[26,0] - obstacle_slack + 100 alpha[13,3,25]
   <= 109.7
 obs_alpha_sum_o13_j26: alpha[13,0,26] + alpha[13,1,26] + alpha[13,2,26]
   + alpha[13,3,26] >= 1
 obs_face_o13_e0_j26: z[27,2] - obstacle_slack + 100 alpha[13,0,26]
   <= 103.7
 obs_face_o13_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[13,1,26]
   <= 89.3
 obs_face_o13_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[13,2,26]
   <= 95.3
 obs_face_o13_e3_j26: z[27,0] - obstacle_slack + 100 alpha[13,3,26]
   <= 109.7
 obs_alpha_sum_o13_j27: alpha[13,0,27] + alpha[13,1,27] + alpha[13,2,27]
   + alpha[13,3,27] >= 1
 obs_face_o13_e0_j27: z[28,2] - obstacle_slack + 100 alpha[13,0,27]
   <= 103.7
 obs_face_o13_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[13,1,27]
   <= 89.3
 obs_face_o13_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[13,2,27]
   <= 95.3
 obs_face_o13_e3_j27: z[28,0] - obstacle_slack + 100 alpha[13,3,27]
   <= 109.7
 obs_alpha_sum_o13_j28: alpha[13,0,28] + alpha[13,1,28] + alpha[13,2,28]
   + alpha[13,3,28] >= 1
 obs_face_o13_e0_j28: z[29,2] - obstacle_slack + 100 alpha[13,0,28]
   <= 103.7
 obs_face_o13_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[13,1,28]
   <= 89.3
 obs_face_o13_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[13,2,28]
   <= 95.3
 obs_face_o13_e3_j28: z[29,0] - obstacle_slack + 100 alpha[13,3,28]
   <= 109.7
 obs_alpha_sum_o13_j29: alpha[13,0,29] + alpha[13,1,29] + alpha[13,2,29]
   + alpha[13,3,29] >= 1
 obs_face_o13_e0_j29: z[30,2] - obstacle_slack + 100 alpha[13,0,29]
   <= 103.7
 obs_face_o13_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[13,1,29]
   <= 89.3
 obs_face_o13_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[13,2,29]
   <= 95.3
 obs_face_o13_e3_j29: z[30,0] - obstacle_slack + 100 alpha[13,3,29]
   <= 109.7
 obs_alpha_sum_o14_j0: alpha[14,0,0] + alpha[14,1,0] + alpha[14,2,0]
   + alpha[14,3,0] >= 1
 obs_face_o14_e0_j0: - 0.7068251811053664 z[1,0]
   + 0.7073882691671991 z[1,2] - obstacle_slack + 100 alpha[14,0,0]
   <= 93.31913645811353
 obs_face_o14_e1_j0: - 0.707388269167204 z[1,0] - 0.7068251811053617 z[1,2]
   - obstacle_slack + 100 alpha[14,1,0] <= 91.89929212722259
 obs_face_o14_e2_j0: 0.7068251811053661 z[1,0] - 0.7073882691671995 z[1,2]
   - obstacle_slack + 100 alpha[14,2,0] <= 106.0408635418865
 obs_face_o14_e3_j0: 0.7073882691672043 z[1,0] + 0.7068251811053614 z[1,2]
   - obstacle_slack + 100 alpha[14,3,0] <= 107.4607078727774
 obs_alpha_sum_o14_j1: alpha[14,0,1] + alpha[14,1,1] + alpha[14,2,1]
   + alpha[14,3,1] >= 1
 obs_face_o14_e0_j1: - 0.7068251811053664 z[2,0]
   + 0.7073882691671991 z[2,2] - obstacle_slack + 100 alpha[14,0,1]
   <= 93.31913645811353
 obs_face_o14_e1_j1: - 0.707388269167204 z[2,0] - 0.7068251811053617 z[2,2]
   - obstacle_slack + 100 alpha[14,1,1] <= 91.89929212722259
 obs_face_o14_e2_j1: 0.7068251811053661 z[2,0] - 0.7073882691671995 z[2,2]
   - obstacle_slack + 100 alpha[14,2,1] <= 106.0408635418865
 obs_face_o14_e3_j1: 0.7073882691672043 z[2,0] + 0.7068251811053614 z[2,2]
   - obstacle_slack + 100 alpha[14,3,1] <= 107.4607078727774
 obs_alpha_sum_o14_j2: alpha[14,0,2] + alpha[14,1,2] + alpha[14,2,2]
   + alpha[14,3,2] >= 1
 obs_face_o14_e0_j2: - 0.7068251811053664 z[3,0]
   + 0.7073882691671991 z[3,2] - obstacle_slack + 100 alpha[14,0,2]
   <= 93.31913645811353
 obs_face_o14_e1_j2: - 0.707388269167204 z[3,0] - 0.7068251811053617 z[3,2]
   - obstacle_slack + 100 alpha[14,1,2] <= 91.89929212722259
 obs_face_o14_e2_j2: 0.7068251811053661 z[3,0] - 0.7073882691671995 z[3,2]
   - obstacle_slack + 100 alpha[14,2,2] <= 106.0408635418865
 obs_face_o14_e3_j2: 0.7073882691672043 z[3,0] + 0.7068251811053614 z[3,2]
   - obstacle_slack + 100 alpha[14,3,2] <= 107.4607078727774
 obs_alpha_sum_o14_j3: alpha[14,0,3] + alpha[14,1,3] + alpha[14,2,3]
   + alpha[14,3,3] >= 1
 obs_face_o14_e0_j3: - 0.7068251811053664 z[4,0]
   + 0.7073882691671991 z[4,2] - obstacle_slack + 100 alpha[14,0,3]
   <= 93.31913645811353
 obs_face_o14_e1_j3: - 0.707388269167204 z[4,0] - 0.7068251811053617 z[4,2]
   - obstacle_slack + 100 alpha[14,1,3] <= 91.89929212722259
 obs_face_o14_e2_j3: 0.7068251811053661 z[4,0] - 0.7073882691671995 z[4,2]
   - obstacle_slack + 100 alpha[14,2,3] <= 106.0408635418865
 obs_face_o14_e3_j3: 0.7073882691672043 z[4,0] + 0.7068251811053614 z[4,2]
   - obstacle_slack + 100 alpha[14,3,3] <= 107.4607078727774
 obs_alpha_sum_o14_j4: alpha[14,0,4] + alpha[14,1,4] + alpha[14,2,4]
   + alpha[14,3,4] >= 1
 obs_face_o14_e0_j4: - 0.7068251811053664 z[5,0]
   + 0.7073882691671991 z[5,2] - obstacle_slack + 100 alpha[14,0,4]
   <= 93.31913645811353
 obs_face_o14_e1_j4: - 0.707388269167204 z[5,0] - 0.7068251811053617 z[5,2]
   - obstacle_slack + 100 alpha[14,1,4] <= 91.89929212722259
 obs_face_o14_e2_j4: 0.7068251811053661 z[5,0] - 0.7073882691671995 z[5,2]
   - obstacle_slack + 100 alpha[14,2,4] <= 106.0408635418865
 obs_face_o14_e3_j4: 0.7073882691672043 z[5,0] + 0.7068251811053614 z[5,2]
   - obstacle_slack + 100 alpha[14,3,4] <= 107.4607078727774
 obs_alpha_sum_o14_j5: alpha[14,0,5] + alpha[14,1,5] + alpha[14,2,5]
   + alpha[14,3,5] >= 1
 obs_face_o14_e0_j5: - 0.7068251811053664 z[6,0]
   + 0.7073882691671991 z[6,2] - obstacle_slack + 100 alpha[14,0,5]
   <= 93.31913645811353
 obs_face_o14_e1_j5: - 0.707388269167204 z[6,0] - 0.7068251811053617 z[6,2]
   - obstacle_slack + 100 alpha[14,1,5] <= 91.89929212722259
 obs_face_o14_e2_j5: 0.7068251811053661 z[6,0] - 0.7073882691671995 z[6,2]
   - obstacle_slack + 100 alpha[14,2,5] <= 106.0408635418865
 obs_face_o14_e3_j5: 0.7073882691672043 z[6,0] + 0.7068251811053614 z[6,2]
   - obstacle_slack + 100 alpha[14,3,5] <= 107.4607078727774
 obs_alpha_sum_o14_j6: alpha[14,0,6] + alpha[14,1,6] + alpha[14,2,6]
   + alpha[14,3,6] >= 1
 obs_face_o14_e0_j6: - 0.7068251811053664 z[7,0]
   + 0.7073882691671991 z[7,2] - obstacle_slack + 100 alpha[14,0,6]
   <= 93.31913645811353
 obs_face_o14_e1_j6: - 0.707388269167204 z[7,0] - 0.7068251811053617 z[7,2]
   - obstacle_slack + 100 alpha[14,1,6] <= 91.89929212722259
 obs_face_o14_e2_j6: 0.7068251811053661 z[7,0] - 0.7073882691671995 z[7,2]
   - obstacle_slack + 100 alpha[14,2,6] <= 106.0408635418865
 obs_face_o14_e3_j6: 0.7073882691672043 z[7,0] + 0.7068251811053614 z[7,2]
   - obstacle_slack + 100 alpha[14,3,6] <= 107.4607078727774
 obs_alpha_sum_o14_j7: alpha[14,0,7] + alpha[14,1,7] + alpha[14,2,7]
   + alpha[14,3,7] >= 1
 obs_face_o14_e0_j7: - 0.7068251811053664 z[8,0]
   + 0.7073882691671991 z[8,2] - obstacle_slack + 100 alpha[14,0,7]
   <= 93.31913645811353
 obs_face_o14_e1_j7: - 0.707388269167204 z[8,0] - 0.7068251811053617 z[8,2]
   - obstacle_slack + 100 alpha[14,1,7] <= 91.89929212722259
 obs_face_o14_e2_j7: 0.7068251811053661 z[8,0] - 0.7073882691671995 z[8,2]
   - obstacle_slack + 100 alpha[14,2,7] <= 106.0408635418865
 obs_face_o14_e3_j7: 0.7073882691672043 z[8,0] + 0.7068251811053614 z[8,2]
   - obstacle_slack + 100 alpha[14,3,7] <= 107.4607078727774
 obs_alpha_sum_o14_j8: alpha[14,0,8] + alpha[14,1,8] + alpha[14,2,8]
   + alpha[14,3,8] >= 1
 obs_face_o14_e0_j8: - 0.7068251811053664 z[9,0]
   + 0.7073882691671991 z[9,2] - obstacle_slack + 100 alpha[14,0,8]
   <= 93.31913645811353
 obs_face_o14_e1_j8: - 0.707388269167204 z[9,0] - 0.7068251811053617 z[9,2]
   - obstacle_slack + 100 alpha[14,1,8] <= 91.89929212722259
 obs_face_o14_e2_j8: 0.7068251811053661 z[9,0] - 0.7073882691671995 z[9,2]
   - obstacle_slack + 100 alpha[14,2,8] <= 106.0408635418865
 obs_face_o14_e3_j8: 0.7073882691672043 z[9,0] + 0.7068251811053614 z[9,2]
   - obstacle_slack + 100 alpha[14,3,8] <= 107.4607078727774
 obs_alpha_sum_o14_j9: alpha[14,0,9] + alpha[14,1,9] + alpha[14,2,9]
   + alpha[14,3,9] >= 1
 obs_face_o14_e0_j9: - 0.7068251811053664 z[10,0]
   + 0.7073882691671991 z[10,2] - obstacle_slack + 100 alpha[14,0,9]
   <= 93.31913645811353
 obs_face_o14_e1_j9: - 0.707388269167204 z[10,0]
   - 0.7068251811053617 z[10,2] - obstacle_slack + 100 alpha[14,1,9]
   <= 91.89929212722259
 obs_face_o14_e2_j9: 0.7068251811053661 z[10,0]
   - 0.7073882691671995 z[10,2] - obstacle_slack + 100 alpha[14,2,9]
   <= 106.0408635418865
 obs_face_o14_e3_j9: 0.7073882691672043 z[10,0]
   + 0.7068251811053614 z[10,2] - obstacle_slack + 100 alpha[14,3,9]
   <= 107.4607078727774
 obs_alpha_sum_o14_j10: alpha[14,0,10] + alpha[14,1,10] + alpha[14,2,10]
   + alpha[14,3,10] >= 1
 obs_face_o14_e0_j10: - 0.7068251811053664 z[11,0]
   + 0.7073882691671991 z[11,2] - obstacle_slack + 100 alpha[14,0,10]
   <= 93.31913645811353
 obs_face_o14_e1_j10: - 0.707388269167204 z[11,0]
   - 0.7068251811053617 z[11,2] - obstacle_slack + 100 alpha[14,1,10]
   <= 91.89929212722259
 obs_face_o14_e2_j10: 0.7068251811053661 z[11,0]
   - 0.7073882691671995 z[11,2] - obstacle_slack + 100 alpha[14,2,10]
   <= 106.0408635418865
 obs_face_o14_e3_j10: 0.7073882691672043 z[11,0]
   + 0.7068251811053614 z[11,2] - obstacle_slack + 100 alpha[14,3,10]
   <= 107.4607078727774
 obs_alpha_sum_o14_j11: alpha[14,0,11] + alpha[14,1,11] + alpha[14,2,11]
   + alpha[14,3,11] >= 1
 obs_face_o14_e0_j11: - 0.7068251811053664 z[12,0]
   + 0.7073882691671991 z[12,2] - obstacle_slack + 100 alpha[14,0,11]
   <= 93.31913645811353
 obs_face_o14_e1_j11: - 0.707388269167204 z[12,0]
   - 0.7068251811053617 z[12,2] - obstacle_slack + 100 alpha[14,1,11]
   <= 91.89929212722259
 obs_face_o14_e2_j11: 0.7068251811053661 z[12,0]
   - 0.7073882691671995 z[12,2] - obstacle_slack + 100 alpha[14,2,11]
   <= 106.0408635418865
 obs_face_o14_e3_j11: 0.7073882691672043 z[12,0]
   + 0.7068251811053614 z[12,2] - obstacle_slack + 100 alpha[14,3,11]
   <= 107.4607078727774
 obs_alpha_sum_o14_j12: alpha[14,0,12] + alpha[14,1,12] + alpha[14,2,12]
   + alpha[14,3,12] >= 1
 obs_face_o14_e0_j12: - 0.7068251811053664 z[13,0]
   + 0.7073882691671991 z[13,2] - obstacle_slack + 100 alpha[14,0,12]
   <= 93.31913645811353
 obs_face_o14_e1_j12: - 0.707388269167204 z[13,0]
   - 0.7068251811053617 z[13,2] - obstacle_slack + 100 alpha[14,1,12]
   <= 91.89929212722259
 obs_face_o14_e2_j12: 0.7068251811053661 z[13,0]
   - 0.7073882691671995 z[13,2] - obstacle_slack + 100 alpha[14,2,12]
   <= 106.0408635418865
 obs_face_o14_e3_j12: 0.7073882691672043 z[13,0]
   + 0.7068251811053614 z[13,2] - obstacle_slack + 100 alpha[14,3,12]
   <= 107.4607078727774
 obs_alpha_sum_o14_j13: alpha[14,0,13] + alpha[14,1,13] + alpha[14,2,13]
   + alpha[14,3,13] >= 1
 obs_face_o14_e0_j13: - 0.7068251811053664 z[14,0]
   + 0.7073882691671991 z[14,2] - obstacle_slack + 100 alpha[14,0,13]
   <= 93.31913645811353
 obs_face_o14_e1_j13: - 0.707388269167204 z[14,0]
   - 0.7068251811053617 z[14,2] - obstacle_slack + 100 alpha[14,1,13]
   <= 91.89929212722259
 obs_face_o14_e2_j13: 0.7068251811053661 z[14,0]
   - 0.7073882691671995 z[14,2] - obstacle_slack + 100 alpha[14,2,13]
   <= 106.0408635418865
 obs_face_o14_e3_j13: 0.7073882691672043 z[14,0]
   + 0.7068251811053614 z[14,2] - obstacle_slack + 100 alpha[14,3,13]
   <= 107.4607078727774
 obs_alpha_sum_o14_j14: alpha[14,0,14] + alpha[14,1,14] + alpha[14,2,14]
   + alpha[14,3,14] >= 1
 obs_face_o14_e0_j14: - 0.7068251811053664 z[15,0]
   + 0.7073882691671991 z[15,2] - obstacle_slack + 100 alpha[14,0,14]
   <= 93.31913645811353
 obs_face_o14_e1_j14: - 0.707388269167204 z[15,0]
   - 0.7068251811053617 z[15,2] - obstacle_slack + 100 alpha[14,1,14]
   <= 91.89929212722259
 obs_face_o14_e2_j14: 0.7068251811053661 z[15,0]
   - 0.7073882691671995 z[15,2] - obstacle_slack + 100 alpha[14,2,14]
   <= 106.0408635418865
 obs_face_o14_e3_j14: 0.7073882691672043 z[15,0]
   + 0.7068251811053614 z[15,2] - obstacle_slack + 100 alpha[14,3,14]
   <= 107.4607078727774
 obs_alpha_sum_o14_j15: alpha[14,0,15] + alpha[14,1,15] + alpha[14,2,15]
   + alpha[14,3,15] >= 1
 obs_face_o14_e0_j15: - 0.7068251811053664 z[16,0]
   + 0.7073882691671991 z[16,2] - obstacle_slack + 100 alpha[14,0,15]
   <= 93.31913645811353
 obs_face_o14_e1_j15: - 0.707388269167204 z[16,0]
   - 0.7068251811053617 z[16,2] - obstacle_slack + 100 alpha[14,1,15]
   <= 91.89929212722259
 obs_face_o14_e2_j15: 0.7068251811053661 z[16,0]
   - 0.7073882691671995 z[16,2] - obstacle_slack + 100 alpha[14,2,15]
   <= 106.0408635418865
 obs_face_o14_e3_j15: 0.7073882691672043 z[16,0]
   + 0.7068251811053614 z[16,2] - obstacle_slack + 100 alpha[14,3,15]
   <= 107.4607078727774
 obs_alpha_sum_o14_j16: alpha[14,0,16] + alpha[14,1,16] + alpha[14,2,16]
   + alpha[14,3,16] >= 1
 obs_face_o14_e0_j16: - 0.7068251811053664 z[17,0]
   + 0.7073882691671991 z[17,2] - obstacle_slack + 100 alpha[14,0,16]
   <= 93.31913645811353
 obs_face_o14_e1_j16: - 0.707388269167204 z[17,0]
   - 0.7068251811053617 z[17,2] - obstacle_slack + 100 alpha[14,1,16]
   <= 91.89929212722259
 obs_face_o14_e2_j16: 0.7068251811053661 z[17,0]
   - 0.7073882691671995 z[17,2] - obstacle_slack + 100 alpha[14,2,16]
   <= 106.0408635418865
 obs_face_o14_e3_j16: 0.7073882691672043 z[17,0]
   + 0.7068251811053614 z[17,2] - obstacle_slack + 100 alpha[14,3,16]
   <= 107.4607078727774
 obs_alpha_sum_o14_j17: alpha[14,0,17] + alpha[14,1,17] + alpha[14,2,17]
   + alpha[14,3,17] >= 1
 obs_face_o14_e0_j17: - 0.7068251811053664 z[18,0]
   + 0.7073882691671991 z[18,2] - obstacle_slack + 100 alpha[14,0,17]
   <= 93.31913645811353
 obs_face_o14_e1_j17: - 0.707388269167204 z[18,0]
   - 0.7068251811053617 z[18,2] - obstacle_slack + 100 alpha[14,1,17]
   <= 91.89929212722259
 obs_face_o14_e2_j17: 0.7068251811053661 z[18,0]
   - 0.7073882691671995 z[18,2] - obstacle_slack + 100 alpha[14,2,17]
   <= 106.0408635418865
 obs_face_o14_e3_j17: 0.7073882691672043 z[18,0]
   + 0.7068251811053614 z[18,2] - obstacle_slack + 100 alpha[14,3,17]
   <= 107.4607078727774
 obs_alpha_sum_o14_j18: alpha[14,0,18] + alpha[14,1,18] + alpha[14,2,18]
   + alpha[14,3,18] >= 1
 obs_face_o14_e0_j18: - 0.7068251811053664 z[19,0]
   + 0.7073882691671991 z[19,2] - obstacle_slack + 100 alpha[14,0,18]
   <= 93.31913645811353
 obs_face_o14_e1_j18: - 0.707388269167204 z[19,0]
   - 0.7068251811053617 z[19,2] - obstacle_slack + 100 alpha[14,1,18]
   <= 91.89929212722259
 obs_face_o14_e2_j18: 0.7068251811053661 z[19,0]
   - 0.7073882691671995 z[19,2] - obstacle_slack + 100 alpha[14,2,18]
   <= 106.0408635418865
 obs_face_o14_e3_j18: 0.7073882691672043 z[19,0]
   + 0.7068251811053614 z[19,2] - obstacle_slack + 100 alpha[14,3,18]
   <= 107.4607078727774
 obs_alpha_sum_o14_j19: alpha[14,0,19] + alpha[14,1,19] + alpha[14,2,19]
   + alpha[14,3,19] >= 1
 obs_face_o14_e0_j19: - 0.7068251811053664 z[20,0]
   + 0.7073882691671991 z[20,2] - obstacle_slack + 100 alpha[14,0,19]
   <= 93.31913645811353
 obs_face_o14_e1_j19: - 0.707388269167204 z[20,0]
   - 0.7068251811053617 z[20,2] - obstacle_slack + 100 alpha[14,1,19]
   <= 91.89929212722259
 obs_face_o14_e2_j19: 0.7068251811053661 z[20,0]
   - 0.7073882691671995 z[20,2] - obstacle_slack + 100 alpha[14,2,19]
   <= 106.0408635418865
 obs_face_o14_e3_j19: 0.7073882691672043 z[20,0]
   + 0.7068251811053614 z[20,2] - obstacle_slack + 100 alpha[14,3,19]
   <= 107.4607078727774
 obs_alpha_sum_o14_j20: alpha[14,0,20] + alpha[14,1,20] + alpha[14,2,20]
   + alpha[14,3,20] >= 1
 obs_face_o14_e0_j20: - 0.7068251811053664 z[21,0]
   + 0.7073882691671991 z[21,2] - obstacle_slack + 100 alpha[14,0,20]
   <= 93.31913645811353
 obs_face_o14_e1_j20: - 0.707388269167204 z[21,0]
   - 0.7068251811053617 z[21,2] - obstacle_slack + 100 alpha[14,1,20]
   <= 91.89929212722259
 obs_face_o14_e2_j20: 0.7068251811053661 z[21,0]
   - 0.7073882691671995 z[21,2] - obstacle_slack + 100 alpha[14,2,20]
   <= 106.0408635418865
 obs_face_o14_e3_j20: 0.7073882691672043 z[21,0]
   + 0.7068251811053614 z[21,2] - obstacle_slack + 100 alpha[14,3,20]
   <= 107.4607078727774
 obs_alpha_sum_o14_j21: alpha[14,0,21] + alpha[14,1,21] + alpha[14,2,21]
   + alpha[14,3,21] >= 1
 obs_face_o14_e0_j21: - 0.7068251811053664 z[22,0]
   + 0.7073882691671991 z[22,2] - obstacle_slack + 100 alpha[14,0,21]
   <= 93.31913645811353
 obs_face_o14_e1_j21: - 0.707388269167204 z[22,0]
   - 0.7068251811053617 z[22,2] - obstacle_slack + 100 alpha[14,1,21]
   <= 91.89929212722259
 obs_face_o14_e2_j21: 0.7068251811053661 z[22,0]
   - 0.7073882691671995 z[22,2] - obstacle_slack + 100 alpha[14,2,21]
   <= 106.0408635418865
 obs_face_o14_e3_j21: 0.7073882691672043 z[22,0]
   + 0.7068251811053614 z[22,2] - obstacle_slack + 100 alpha[14,3,21]
   <= 107.4607078727774
 obs_alpha_sum_o14_j22: alpha[14,0,22] + alpha[14,1,22] + alpha[14,2,22]
   + alpha[14,3,22] >= 1
 obs_face_o14_e0_j22: - 0.7068251811053664 z[23,0]
   + 0.7073882691671991 z[23,2] - obstacle_slack + 100 alpha[14,0,22]
   <= 93.31913645811353
 obs_face_o14_e1_j22: - 0.707388269167204 z[23,0]
   - 0.7068251811053617 z[23,2] - obstacle_slack + 100 alpha[14,1,22]
   <= 91.89929212722259
 obs_face_o14_e2_j22: 0.7068251811053661 z[23,0]
   - 0.7073882691671995 z[23,2] - obstacle_slack + 100 alpha[14,2,22]
   <= 106.0408635418865
 obs_face_o14_e3_j22: 0.7073882691672043 z[23,0]
   + 0.7068251811053614 z[23,2] - obstacle_slack + 100 alpha[14,3,22]
   <= 107.4607078727774
 obs_alpha_sum_o14_j23: alpha[14,0,23] + alpha[14,1,23] + alpha[14,2,23]
   + alpha[14,3,23] >= 1
 obs_face_o14_e0_j23: - 0.7068251811053664 z[24,0]
   + 0.7073882691671991 z[24,2] - obstacle_slack + 100 alpha[14,0,23]
   <= 93.31913645811353
 obs_face_o14_e1_j23: - 0.707388269167204 z[24,0]
   - 0.7068251811053617 z[24,2] - obstacle_slack + 100 alpha[14,1,23]
   <= 91.89929212722259
 obs_face_o14_e2_j23: 0.7068251811053661 z[24,0]
   - 0.7073882691671995 z[24,2] - obstacle_slack + 100 alpha[14,2,23]
   <= 106.0408635418865
 obs_face_o14_e3_j23: 0.7073882691672043 z[24,0]
   + 0.7068251811053614 z[24,2] - obstacle_slack + 100 alpha[14,3,23]
   <= 107.4607078727774
 obs_alpha_sum_o14_j24: alpha[14,0,24] + alpha[14,1,24] + alpha[14,2,24]
   + alpha[14,3,24] >= 1
 obs_face_o14_e0_j24: - 0.7068251811053664 z[25,0]
   + 0.7073882691671991 z[25,2] - obstacle_slack + 100 alpha[14,0,24]
   <= 93.31913645811353
 obs_face_o14_e1_j24: - 0.707388269167204 z[25,0]
   - 0.7068251811053617 z[25,2] - obstacle_slack + 100 alpha[14,1,24]
   <= 91.89929212722259
 obs_face_o14_e2_j24: 0.7068251811053661 z[25,0]
   - 0.7073882691671995 z[25,2] - obstacle_slack + 100 alpha[14,2,24]
   <= 106.0408635418865
 obs_face_o14_e3_j24: 0.7073882691672043 z[25,0]
   + 0.7068251811053614 z[25,2] - obstacle_slack + 100 alpha[14,3,24]
   <= 107.4607078727774
 obs_alpha_sum_o14_j25: alpha[14,0,25] + alpha[14,1,25] + alpha[14,2,25]
   + alpha[14,3,25] >= 1
 obs_face_o14_e0_j25: - 0.7068251811053664 z[26,0]
   + 0.7073882691671991 z[26,2] - obstacle_slack + 100 alpha[14,0,25]
   <= 93.31913645811353
 obs_face_o14_e1_j25: - 0.707388269167204 z[26,0]
   - 0.7068251811053617 z[26,2] - obstacle_slack + 100 alpha[14,1,25]
   <= 91.89929212722259
 obs_face_o14_e2_j25: 0.7068251811053661 z[26,0]
   - 0.7073882691671995 z[26,2] - obstacle_slack + 100 alpha[14,2,25]
   <= 106.0408635418865
 obs_face_o14_e3_j25: 0.7073882691672043 z[26,0]
   + 0.7068251811053614 z[26,2] - obstacle_slack + 100 alpha[14,3,25]
   <= 107.4607078727774
 obs_alpha_sum_o14_j26: alpha[14,0,26] + alpha[14,1,26] + alpha[14,2,26]
   + alpha[14,3,26] >= 1
 obs_face_o14_e0_j26: - 0.7068251811053664 z[27,0]
   + 0.7073882691671991 z[27,2] - obstacle_slack + 100 alpha[14,0,26]
   <= 93.31913645811353
 obs_face_o14_e1_j26: - 0.707388269167204 z[27,0]
   - 0.7068251811053617 z[27,2] - obstacle_slack + 100 alpha[14,1,26]
   <= 91.89929212722259
 obs_face_o14_e2_j26: 0.7068251811053661 z[27,0]
   - 0.7073882691671995 z[27,2] - obstacle_slack + 100 alpha[14,2,26]
   <= 106.0408635418865
 obs_face_o14_e3_j26: 0.7073882691672043 z[27,0]
   + 0.7068251811053614 z[27,2] - obstacle_slack + 100 alpha[14,3,26]
   <= 107.4607078727774
 obs_alpha_sum_o14_j27: alpha[14,0,27] + alpha[14,1,27] + alpha[14,2,27]
   + alpha[14,3,27] >= 1
 obs_face_o14_e0_j27: - 0.7068251811053664 z[28,0]
   + 0.7073882691671991 z[28,2] - obstacle_slack + 100 alpha[14,0,27]
   <= 93.31913645811353
 obs_face_o14_e1_j27: - 0.707388269167204 z[28,0]
   - 0.7068251811053617 z[28,2] - obstacle_slack + 100 alpha[14,1,27]
   <= 91.89929212722259
 obs_face_o14_e2_j27: 0.7068251811053661 z[28,0]
   - 0.7073882691671995 z[28,2] - obstacle_slack + 100 alpha[14,2,27]
   <= 106.0408635418865
 obs_face_o14_e3_j27: 0.7073882691672043 z[28,0]
   + 0.7068251811053614 z[28,2] - obstacle_slack + 100 alpha[14,3,27]
   <= 107.4607078727774
 obs_alpha_sum_o14_j28: alpha[14,0,28] + alpha[14,1,28] + alpha[14,2,28]
   + alpha[14,3,28] >= 1
 obs_face_o14_e0_j28: - 0.7068251811053664 z[29,0]
   + 0.7073882691671991 z[29,2] - obstacle_slack + 100 alpha[14,0,28]
   <= 93.31913645811353
 obs_face_o14_e1_j28: - 0.707388269167204 z[29,0]
   - 0.7068251811053617 z[29,2] - obstacle_slack + 100 alpha[14,1,28]
   <= 91.89929212722259
 obs_face_o14_e2_j28: 0.7068251811053661 z[29,0]
   - 0.7073882691671995 z[29,2] - obstacle_slack + 100 alpha[14,2,28]
   <= 106.0408635418865
 obs_face_o14_e3_j28: 0.7073882691672043 z[29,0]
   + 0.7068251811053614 z[29,2] - obstacle_slack + 100 alpha[14,3,28]
   <= 107.4607078727774
 obs_alpha_sum_o14_j29: alpha[14,0,29] + alpha[14,1,29] + alpha[14,2,29]
   + alpha[14,3,29] >= 1
 obs_face_o14_e0_j29: - 0.7068251811053664 z[30,0]
   + 0.7073882691671991 z[30,2] - obstacle_slack + 100 alpha[14,0,29]
   <= 93.31913645811353
 obs_face_o14_e1_j29: - 0.707388269167204 z[30,0]
   - 0.7068251811053617 z[30,2] - obstacle_slack + 100 alpha[14,1,29]
   <= 91.89929212722259
 obs_face_o14_e2_j29: 0.7068251811053661 z[30,0]
   - 0.7073882691671995 z[30,2] - obstacle_slack + 100 alpha[14,2,29]
   <= 106.0408635418865
 obs_face_o14_e3_j29: 0.7073882691672043 z[30,0]
   + 0.7068251811053614 z[30,2] - obstacle_slack + 100 alpha[14,3,29]
   <= 107.4607078727774
 obs_alpha_sum_o15_j0: alpha[15,0,0] + alpha[15,1,0] + alpha[15,2,0]
   + alpha[15,3,0] >= 1
 obs_face_o15_e0_j0: z[1,2] - obstacle_slack + 100 alpha[15,0,0] <= 98.75
 obs_face_o15_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[15,1,0]
   <= 89.65
 obs_face_o15_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[15,2,0]
   <= 98.75
 obs_face_o15_e3_j0: z[1,0] - obstacle_slack + 100 alpha[15,3,0] <= 109.65
 obs_alpha_sum_o15_j1: alpha[15,0,1] + alpha[15,1,1] + alpha[15,2,1]
   + alpha[15,3,1] >= 1
 obs_face_o15_e0_j1: z[2,2] - obstacle_slack + 100 alpha[15,0,1] <= 98.75
 obs_face_o15_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[15,1,1]
   <= 89.65
 obs_face_o15_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[15,2,1]
   <= 98.75
 obs_face_o15_e3_j1: z[2,0] - obstacle_slack + 100 alpha[15,3,1] <= 109.65
 obs_alpha_sum_o15_j2: alpha[15,0,2] + alpha[15,1,2] + alpha[15,2,2]
   + alpha[15,3,2] >= 1
 obs_face_o15_e0_j2: z[3,2] - obstacle_slack + 100 alpha[15,0,2] <= 98.75
 obs_face_o15_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[15,1,2]
   <= 89.65
 obs_face_o15_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[15,2,2]
   <= 98.75
 obs_face_o15_e3_j2: z[3,0] - obstacle_slack + 100 alpha[15,3,2] <= 109.65
 obs_alpha_sum_o15_j3: alpha[15,0,3] + alpha[15,1,3] + alpha[15,2,3]
   + alpha[15,3,3] >= 1
 obs_face_o15_e0_j3: z[4,2] - obstacle_slack + 100 alpha[15,0,3] <= 98.75
 obs_face_o15_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[15,1,3]
   <= 89.65
 obs_face_o15_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[15,2,3]
   <= 98.75
 obs_face_o15_e3_j3: z[4,0] - obstacle_slack + 100 alpha[15,3,3] <= 109.65
 obs_alpha_sum_o15_j4: alpha[15,0,4] + alpha[15,1,4] + alpha[15,2,4]
   + alpha[15,3,4] >= 1
 obs_face_o15_e0_j4: z[5,2] - obstacle_slack + 100 alpha[15,0,4] <= 98.75
 obs_face_o15_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[15,1,4]
   <= 89.65
 obs_face_o15_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[15,2,4]
   <= 98.75
 obs_face_o15_e3_j4: z[5,0] - obstacle_slack + 100 alpha[15,3,4] <= 109.65
 obs_alpha_sum_o15_j5: alpha[15,0,5] + alpha[15,1,5] + alpha[15,2,5]
   + alpha[15,3,5] >= 1
 obs_face_o15_e0_j5: z[6,2] - obstacle_slack + 100 alpha[15,0,5] <= 98.75
 obs_face_o15_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[15,1,5]
   <= 89.65
 obs_face_o15_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[15,2,5]
   <= 98.75
 obs_face_o15_e3_j5: z[6,0] - obstacle_slack + 100 alpha[15,3,5] <= 109.65
 obs_alpha_sum_o15_j6: alpha[15,0,6] + alpha[15,1,6] + alpha[15,2,6]
   + alpha[15,3,6] >= 1
 obs_face_o15_e0_j6: z[7,2] - obstacle_slack + 100 alpha[15,0,6] <= 98.75
 obs_face_o15_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[15,1,6]
   <= 89.65
 obs_face_o15_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[15,2,6]
   <= 98.75
 obs_face_o15_e3_j6: z[7,0] - obstacle_slack + 100 alpha[15,3,6] <= 109.65
 obs_alpha_sum_o15_j7: alpha[15,0,7] + alpha[15,1,7] + alpha[15,2,7]
   + alpha[15,3,7] >= 1
 obs_face_o15_e0_j7: z[8,2] - obstacle_slack + 100 alpha[15,0,7] <= 98.75
 obs_face_o15_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[15,1,7]
   <= 89.65
 obs_face_o15_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[15,2,7]
   <= 98.75
 obs_face_o15_e3_j7: z[8,0] - obstacle_slack + 100 alpha[15,3,7] <= 109.65
 obs_alpha_sum_o15_j8: alpha[15,0,8] + alpha[15,1,8] + alpha[15,2,8]
   + alpha[15,3,8] >= 1
 obs_face_o15_e0_j8: z[9,2] - obstacle_slack + 100 alpha[15,0,8] <= 98.75
 obs_face_o15_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[15,1,8]
   <= 89.65
 obs_face_o15_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[15,2,8]
   <= 98.75
 obs_face_o15_e3_j8: z[9,0] - obstacle_slack + 100 alpha[15,3,8] <= 109.65
 obs_alpha_sum_o15_j9: alpha[15,0,9] + alpha[15,1,9] + alpha[15,2,9]
   + alpha[15,3,9] >= 1
 obs_face_o15_e0_j9: z[10,2] - obstacle_slack + 100 alpha[15,0,9] <= 98.75
 obs_face_o15_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[15,1,9]
   <= 89.65
 obs_face_o15_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[15,2,9]
   <= 98.75
 obs_face_o15_e3_j9: z[10,0] - obstacle_slack + 100 alpha[15,3,9]
   <= 109.65
 obs_alpha_sum_o15_j10: alpha[15,0,10] + alpha[15,1,10] + alpha[15,2,10]
   + alpha[15,3,10] >= 1
 obs_face_o15_e0_j10: z[11,2] - obstacle_slack + 100 alpha[15,0,10]
   <= 98.75
 obs_face_o15_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[15,1,10]
   <= 89.65
 obs_face_o15_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[15,2,10]
   <= 98.75
 obs_face_o15_e3_j10: z[11,0] - obstacle_slack + 100 alpha[15,3,10]
   <= 109.65
 obs_alpha_sum_o15_j11: alpha[15,0,11] + alpha[15,1,11] + alpha[15,2,11]
   + alpha[15,3,11] >= 1
 obs_face_o15_e0_j11: z[12,2] - obstacle_slack + 100 alpha[15,0,11]
   <= 98.75
 obs_face_o15_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[15,1,11]
   <= 89.65
 obs_face_o15_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[15,2,11]
   <= 98.75
 obs_face_o15_e3_j11: z[12,0] - obstacle_slack + 100 alpha[15,3,11]
   <= 109.65
 obs_alpha_sum_o15_j12: alpha[15,0,12] + alpha[15,1,12] + alpha[15,2,12]
   + alpha[15,3,12] >= 1
 obs_face_o15_e0_j12: z[13,2] - obstacle_slack + 100 alpha[15,0,12]
   <= 98.75
 obs_face_o15_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[15,1,12]
   <= 89.65
 obs_face_o15_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[15,2,12]
   <= 98.75
 obs_face_o15_e3_j12: z[13,0] - obstacle_slack + 100 alpha[15,3,12]
   <= 109.65
 obs_alpha_sum_o15_j13: alpha[15,0,13] + alpha[15,1,13] + alpha[15,2,13]
   + alpha[15,3,13] >= 1
 obs_face_o15_e0_j13: z[14,2] - obstacle_slack + 100 alpha[15,0,13]
   <= 98.75
 obs_face_o15_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[15,1,13]
   <= 89.65
 obs_face_o15_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[15,2,13]
   <= 98.75
 obs_face_o15_e3_j13: z[14,0] - obstacle_slack + 100 alpha[15,3,13]
   <= 109.65
 obs_alpha_sum_o15_j14: alpha[15,0,14] + alpha[15,1,14] + alpha[15,2,14]
   + alpha[15,3,14] >= 1
 obs_face_o15_e0_j14: z[15,2] - obstacle_slack + 100 alpha[15,0,14]
   <= 98.75
 obs_face_o15_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[15,1,14]
   <= 89.65
 obs_face_o15_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[15,2,14]
   <= 98.75
 obs_face_o15_e3_j14: z[15,0] - obstacle_slack + 100 alpha[15,3,14]
   <= 109.65
 obs_alpha_sum_o15_j15: alpha[15,0,15] + alpha[15,1,15] + alpha[15,2,15]
   + alpha[15,3,15] >= 1
 obs_face_o15_e0_j15: z[16,2] - obstacle_slack + 100 alpha[15,0,15]
   <= 98.75
 obs_face_o15_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[15,1,15]
   <= 89.65
 obs_face_o15_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[15,2,15]
   <= 98.75
 obs_face_o15_e3_j15: z[16,0] - obstacle_slack + 100 alpha[15,3,15]
   <= 109.65
 obs_alpha_sum_o15_j16: alpha[15,0,16] + alpha[15,1,16] + alpha[15,2,16]
   + alpha[15,3,16] >= 1
 obs_face_o15_e0_j16: z[17,2] - obstacle_slack + 100 alpha[15,0,16]
   <= 98.75
 obs_face_o15_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[15,1,16]
   <= 89.65
 obs_face_o15_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[15,2,16]
   <= 98.75
 obs_face_o15_e3_j16: z[17,0] - obstacle_slack + 100 alpha[15,3,16]
   <= 109.65
 obs_alpha_sum_o15_j17: alpha[15,0,17] + alpha[15,1,17] + alpha[15,2,17]
   + alpha[15,3,17] >= 1
 obs_face_o15_e0_j17: z[18,2] - obstacle_slack + 100 alpha[15,0,17]
   <= 98.75
 obs_face_o15_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[15,1,17]
   <= 89.65
 obs_face_o15_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[15,2,17]
   <= 98.75
 obs_face_o15_e3_j17: z[18,0] - obstacle_slack + 100 alpha[15,3,17]
   <= 109.65
 obs_alpha_sum_o15_j18: alpha[15,0,18] + alpha[15,1,18] + alpha[15,2,18]
   + alpha[15,3,18] >= 1
 obs_face_o15_e0_j18: z[19,2] - obstacle_slack + 100 alpha[15,0,18]
   <= 98.75
 obs_face_o15_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[15,1,18]
   <= 89.65
 obs_face_o15_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[15,2,18]
   <= 98.75
 obs_face_o15_e3_j18: z[19,0] - obstacle_slack + 100 alpha[15,3,18]
   <= 109.65
 obs_alpha_sum_o15_j19: alpha[15,0,19] + alpha[15,1,19] + alpha[15,2,19]
   + alpha[15,3,19] >= 1
 obs_face_o15_e0_j19: z[20,2] - obstacle_slack + 100 alpha[15,0,19]
   <= 98.75
 obs_face_o15_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[15,1,19]
   <= 89.65
 obs_face_o15_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[15,2,19]
   <= 98.75
 obs_face_o15_e3_j19: z[20,0] - obstacle_slack + 100 alpha[15,3,19]
   <= 109.65
 obs_alpha_sum_o15_j20: alpha[15,0,20] + alpha[15,1,20] + alpha[15,2,20]
   + alpha[15,3,20] >= 1
 obs_face_o15_e0_j20: z[21,2] - obstacle_slack + 100 alpha[15,0,20]
   <= 98.75
 obs_face_o15_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[15,1,20]
   <= 89.65
 obs_face_o15_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[15,2,20]
   <= 98.75
 obs_face_o15_e3_j20: z[21,0] - obstacle_slack + 100 alpha[15,3,20]
   <= 109.65
 obs_alpha_sum_o15_j21: alpha[15,0,21] + alpha[15,1,21] + alpha[15,2,21]
   + alpha[15,3,21] >= 1
 obs_face_o15_e0_j21: z[22,2] - obstacle_slack + 100 alpha[15,0,21]
   <= 98.75
 obs_face_o15_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[15,1,21]
   <= 89.65
 obs_face_o15_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[15,2,21]
   <= 98.75
 obs_face_o15_e3_j21: z[22,0] - obstacle_slack + 100 alpha[15,3,21]
   <= 109.65
 obs_alpha_sum_o15_j22: alpha[15,0,22] + alpha[15,1,22] + alpha[15,2,22]
   + alpha[15,3,22] >= 1
 obs_face_o15_e0_j22: z[23,2] - obstacle_slack + 100 alpha[15,0,22]
   <= 98.75
 obs_face_o15_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[15,1,22]
   <= 89.65
 obs_face_o15_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[15,2,22]
   <= 98.75
 obs_face_o15_e3_j22: z[23,0] - obstacle_slack + 100 alpha[15,3,22]
   <= 109.65
 obs_alpha_sum_o15_j23: alpha[15,0,23] + alpha[15,1,23] + alpha[15,2,23]
   + alpha[15,3,23] >= 1
 obs_face_o15_e0_j23: z[24,2] - obstacle_slack + 100 alpha[15,0,23]
   <= 98.75
 obs_face_o15_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[15,1,23]
   <= 89.65
 obs_face_o15_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[15,2,23]
   <= 98.75
 obs_face_o15_e3_j23: z[24,0] - obstacle_slack + 100 alpha[15,3,23]
   <= 109.65
 obs_alpha_sum_o15_j24: alpha[15,0,24] + alpha[15,1,24] + alpha[15,2,24]
   + alpha[15,3,24] >= 1
 obs_face_o15_e0_j24: z[25,2] - obstacle_slack + 100 alpha[15,0,24]
   <= 98.75
 obs_face_o15_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[15,1,24]
   <= 89.65
 obs_face_o15_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[15,2,24]
   <= 98.75
 obs_face_o15_e3_j24: z[25,0] - obstacle_slack + 100 alpha[15,3,24]
   <= 109.65
 obs_alpha_sum_o15_j25: alpha[15,0,25] + alpha[15,1,25] + alpha[15,2,25]
   + alpha[15,3,25] >= 1
 obs_face_o15_e0_j25: z[26,2] - obstacle_slack + 100 alpha[15,0,25]
   <= 98.75
 obs_face_o15_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[15,1,25]
   <= 89.65
 obs_face_o15_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[15,2,25]
   <= 98.75
 obs_face_o15_e3_j25: z[26,0] - obstacle_slack + 100 alpha[15,3,25]
   <= 109.65
 obs_alpha_sum_o15_j26: alpha[15,0,26] + alpha[15,1,26] + alpha[15,2,26]
   + alpha[15,3,26] >= 1
 obs_face_o15_e0_j26: z[27,2] - obstacle_slack + 100 alpha[15,0,26]
   <= 98.75
 obs_face_o15_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[15,1,26]
   <= 89.65
 obs_face_o15_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[15,2,26]
   <= 98.75
 obs_face_o15_e3_j26: z[27,0] - obstacle_slack + 100 alpha[15,3,26]
   <= 109.65
 obs_alpha_sum_o15_j27: alpha[15,0,27] + alpha[15,1,27] + alpha[15,2,27]
   + alpha[15,3,27] >= 1
 obs_face_o15_e0_j27: z[28,2] - obstacle_slack + 100 alpha[15,0,27]
   <= 98.75
 obs_face_o15_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[15,1,27]
   <= 89.65
 obs_face_o15_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[15,2,27]
   <= 98.75
 obs_face_o15_e3_j27: z[28,0] - obstacle_slack + 100 alpha[15,3,27]
   <= 109.65
 obs_alpha_sum_o15_j28: alpha[15,0,28] + alpha[15,1,28] + alpha[15,2,28]
   + alpha[15,3,28] >= 1
 obs_face_o15_e0_j28: z[29,2] - obstacle_slack + 100 alpha[15,0,28]
   <= 98.75
 obs_face_o15_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[15,1,28]
   <= 89.65
 obs_face_o15_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[15,2,28]
   <= 98.75
 obs_face_o15_e3_j28: z[29,0] - obstacle_slack + 100 alpha[15,3,28]
   <= 109.65
 obs_alpha_sum_o15_j29: alpha[15,0,29] + alpha[15,1,29] + alpha[15,2,29]
   + alpha[15,3,29] >= 1
 obs_face_o15_e0_j29: z[30,2] - obstacle_slack + 100 alpha[15,0,29]
   <= 98.75
 obs_face_o15_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[15,1,29]
   <= 89.65
 obs_face_o15_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[15,2,29]
   <= 98.75
 obs_face_o15_e3_j29: z[30,0] - obstacle_slack + 100 alpha[15,3,29]
   <= 109.65
 obs_alpha_sum_o16_j0: alpha[16,0,0] + alpha[16,1,0] + alpha[16,2,0]
   + alpha[16,3,0] >= 1
 obs_face_o16_e0_j0: z[1,2] - obstacle_slack + 100 alpha[16,0,0] <= 97.25
 obs_face_o16_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[16,1,0] <= 91.4
 obs_face_o16_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[16,2,0]
   <= 97.25
 obs_face_o16_e3_j0: z[1,0] - obstacle_slack + 100 alpha[16,3,0] <= 108
 obs_alpha_sum_o16_j1: alpha[16,0,1] + alpha[16,1,1] + alpha[16,2,1]
   + alpha[16,3,1] >= 1
 obs_face_o16_e0_j1: z[2,2] - obstacle_slack + 100 alpha[16,0,1] <= 97.25
 obs_face_o16_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[16,1,1] <= 91.4
 obs_face_o16_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[16,2,1]
   <= 97.25
 obs_face_o16_e3_j1: z[2,0] - obstacle_slack + 100 alpha[16,3,1] <= 108
 obs_alpha_sum_o16_j2: alpha[16,0,2] + alpha[16,1,2] + alpha[16,2,2]
   + alpha[16,3,2] >= 1
 obs_face_o16_e0_j2: z[3,2] - obstacle_slack + 100 alpha[16,0,2] <= 97.25
 obs_face_o16_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[16,1,2] <= 91.4
 obs_face_o16_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[16,2,2]
   <= 97.25
 obs_face_o16_e3_j2: z[3,0] - obstacle_slack + 100 alpha[16,3,2] <= 108
 obs_alpha_sum_o16_j3: alpha[16,0,3] + alpha[16,1,3] + alpha[16,2,3]
   + alpha[16,3,3] >= 1
 obs_face_o16_e0_j3: z[4,2] - obstacle_slack + 100 alpha[16,0,3] <= 97.25
 obs_face_o16_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[16,1,3] <= 91.4
 obs_face_o16_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[16,2,3]
   <= 97.25
 obs_face_o16_e3_j3: z[4,0] - obstacle_slack + 100 alpha[16,3,3] <= 108
 obs_alpha_sum_o16_j4: alpha[16,0,4] + alpha[16,1,4] + alpha[16,2,4]
   + alpha[16,3,4] >= 1
 obs_face_o16_e0_j4: z[5,2] - obstacle_slack + 100 alpha[16,0,4] <= 97.25
 obs_face_o16_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[16,1,4] <= 91.4
 obs_face_o16_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[16,2,4]
   <= 97.25
 obs_face_o16_e3_j4: z[5,0] - obstacle_slack + 100 alpha[16,3,4] <= 108
 obs_alpha_sum_o16_j5: alpha[16,0,5] + alpha[16,1,5] + alpha[16,2,5]
   + alpha[16,3,5] >= 1
 obs_face_o16_e0_j5: z[6,2] - obstacle_slack + 100 alpha[16,0,5] <= 97.25
 obs_face_o16_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[16,1,5] <= 91.4
 obs_face_o16_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[16,2,5]
   <= 97.25
 obs_face_o16_e3_j5: z[6,0] - obstacle_slack + 100 alpha[16,3,5] <= 108
 obs_alpha_sum_o16_j6: alpha[16,0,6] + alpha[16,1,6] + alpha[16,2,6]
   + alpha[16,3,6] >= 1
 obs_face_o16_e0_j6: z[7,2] - obstacle_slack + 100 alpha[16,0,6] <= 97.25
 obs_face_o16_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[16,1,6] <= 91.4
 obs_face_o16_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[16,2,6]
   <= 97.25
 obs_face_o16_e3_j6: z[7,0] - obstacle_slack + 100 alpha[16,3,6] <= 108
 obs_alpha_sum_o16_j7: alpha[16,0,7] + alpha[16,1,7] + alpha[16,2,7]
   + alpha[16,3,7] >= 1
 obs_face_o16_e0_j7: z[8,2] - obstacle_slack + 100 alpha[16,0,7] <= 97.25
 obs_face_o16_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[16,1,7] <= 91.4
 obs_face_o16_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[16,2,7]
   <= 97.25
 obs_face_o16_e3_j7: z[8,0] - obstacle_slack + 100 alpha[16,3,7] <= 108
 obs_alpha_sum_o16_j8: alpha[16,0,8] + alpha[16,1,8] + alpha[16,2,8]
   + alpha[16,3,8] >= 1
 obs_face_o16_e0_j8: z[9,2] - obstacle_slack + 100 alpha[16,0,8] <= 97.25
 obs_face_o16_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[16,1,8] <= 91.4
 obs_face_o16_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[16,2,8]
   <= 97.25
 obs_face_o16_e3_j8: z[9,0] - obstacle_slack + 100 alpha[16,3,8] <= 108
 obs_alpha_sum_o16_j9: alpha[16,0,9] + alpha[16,1,9] + alpha[16,2,9]
   + alpha[16,3,9] >= 1
 obs_face_o16_e0_j9: z[10,2] - obstacle_slack + 100 alpha[16,0,9] <= 97.25
 obs_face_o16_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[16,1,9]
   <= 91.4
 obs_face_o16_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[16,2,9]
   <= 97.25
 obs_face_o16_e3_j9: z[10,0] - obstacle_slack + 100 alpha[16,3,9] <= 108
 obs_alpha_sum_o16_j10: alpha[16,0,10] + alpha[16,1,10] + alpha[16,2,10]
   + alpha[16,3,10] >= 1
 obs_face_o16_e0_j10: z[11,2] - obstacle_slack + 100 alpha[16,0,10]
   <= 97.25
 obs_face_o16_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[16,1,10]
   <= 91.4
 obs_face_o16_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[16,2,10]
   <= 97.25
 obs_face_o16_e3_j10: z[11,0] - obstacle_slack + 100 alpha[16,3,10] <= 108
 obs_alpha_sum_o16_j11: alpha[16,0,11] + alpha[16,1,11] + alpha[16,2,11]
   + alpha[16,3,11] >= 1
 obs_face_o16_e0_j11: z[12,2] - obstacle_slack + 100 alpha[16,0,11]
   <= 97.25
 obs_face_o16_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[16,1,11]
   <= 91.4
 obs_face_o16_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[16,2,11]
   <= 97.25
 obs_face_o16_e3_j11: z[12,0] - obstacle_slack + 100 alpha[16,3,11] <= 108
 obs_alpha_sum_o16_j12: alpha[16,0,12] + alpha[16,1,12] + alpha[16,2,12]
   + alpha[16,3,12] >= 1
 obs_face_o16_e0_j12: z[13,2] - obstacle_slack + 100 alpha[16,0,12]
   <= 97.25
 obs_face_o16_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[16,1,12]
   <= 91.4
 obs_face_o16_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[16,2,12]
   <= 97.25
 obs_face_o16_e3_j12: z[13,0] - obstacle_slack + 100 alpha[16,3,12] <= 108
 obs_alpha_sum_o16_j13: alpha[16,0,13] + alpha[16,1,13] + alpha[16,2,13]
   + alpha[16,3,13] >= 1
 obs_face_o16_e0_j13: z[14,2] - obstacle_slack + 100 alpha[16,0,13]
   <= 97.25
 obs_face_o16_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[16,1,13]
   <= 91.4
 obs_face_o16_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[16,2,13]
   <= 97.25
 obs_face_o16_e3_j13: z[14,0] - obstacle_slack + 100 alpha[16,3,13] <= 108
 obs_alpha_sum_o16_j14: alpha[16,0,14] + alpha[16,1,14] + alpha[16,2,14]
   + alpha[16,3,14] >= 1
 obs_face_o16_e0_j14: z[15,2] - obstacle_slack + 100 alpha[16,0,14]
   <= 97.25
 obs_face_o16_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[16,1,14]
   <= 91.4
 obs_face_o16_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[16,2,14]
   <= 97.25
 obs_face_o16_e3_j14: z[15,0] - obstacle_slack + 100 alpha[16,3,14] <= 108
 obs_alpha_sum_o16_j15: alpha[16,0,15] + alpha[16,1,15] + alpha[16,2,15]
   + alpha[16,3,15] >= 1
 obs_face_o16_e0_j15: z[16,2] - obstacle_slack + 100 alpha[16,0,15]
   <= 97.25
 obs_face_o16_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[16,1,15]
   <= 91.4
 obs_face_o16_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[16,2,15]
   <= 97.25
 obs_face_o16_e3_j15: z[16,0] - obstacle_slack + 100 alpha[16,3,15] <= 108
 obs_alpha_sum_o16_j16: alpha[16,0,16] + alpha[16,1,16] + alpha[16,2,16]
   + alpha[16,3,16] >= 1
 obs_face_o16_e0_j16: z[17,2] - obstacle_slack + 100 alpha[16,0,16]
   <= 97.25
 obs_face_o16_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[16,1,16]
   <= 91.4
 obs_face_o16_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[16,2,16]
   <= 97.25
 obs_face_o16_e3_j16: z[17,0] - obstacle_slack + 100 alpha[16,3,16] <= 108
 obs_alpha_sum_o16_j17: alpha[16,0,17] + alpha[16,1,17] + alpha[16,2,17]
   + alpha[16,3,17] >= 1
 obs_face_o16_e0_j17: z[18,2] - obstacle_slack + 100 alpha[16,0,17]
   <= 97.25
 obs_face_o16_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[16,1,17]
   <= 91.4
 obs_face_o16_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[16,2,17]
   <= 97.25
 obs_face_o16_e3_j17: z[18,0] - obstacle_slack + 100 alpha[16,3,17] <= 108
 obs_alpha_sum_o16_j18: alpha[16,0,18] + alpha[16,1,18] + alpha[16,2,18]
   + alpha[16,3,18] >= 1
 obs_face_o16_e0_j18: z[19,2] - obstacle_slack + 100 alpha[16,0,18]
   <= 97.25
 obs_face_o16_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[16,1,18]
   <= 91.4
 obs_face_o16_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[16,2,18]
   <= 97.25
 obs_face_o16_e3_j18: z[19,0] - obstacle_slack + 100 alpha[16,3,18] <= 108
 obs_alpha_sum_o16_j19: alpha[16,0,19] + alpha[16,1,19] + alpha[16,2,19]
   + alpha[16,3,19] >= 1
 obs_face_o16_e0_j19: z[20,2] - obstacle_slack + 100 alpha[16,0,19]
   <= 97.25
 obs_face_o16_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[16,1,19]
   <= 91.4
 obs_face_o16_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[16,2,19]
   <= 97.25
 obs_face_o16_e3_j19: z[20,0] - obstacle_slack + 100 alpha[16,3,19] <= 108
 obs_alpha_sum_o16_j20: alpha[16,0,20] + alpha[16,1,20] + alpha[16,2,20]
   + alpha[16,3,20] >= 1
 obs_face_o16_e0_j20: z[21,2] - obstacle_slack + 100 alpha[16,0,20]
   <= 97.25
 obs_face_o16_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[16,1,20]
   <= 91.4
 obs_face_o16_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[16,2,20]
   <= 97.25
 obs_face_o16_e3_j20: z[21,0] - obstacle_slack + 100 alpha[16,3,20] <= 108
 obs_alpha_sum_o16_j21: alpha[16,0,21] + alpha[16,1,21] + alpha[16,2,21]
   + alpha[16,3,21] >= 1
 obs_face_o16_e0_j21: z[22,2] - obstacle_slack + 100 alpha[16,0,21]
   <= 97.25
 obs_face_o16_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[16,1,21]
   <= 91.4
 obs_face_o16_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[16,2,21]
   <= 97.25
 obs_face_o16_e3_j21: z[22,0] - obstacle_slack + 100 alpha[16,3,21] <= 108
 obs_alpha_sum_o16_j22: alpha[16,0,22] + alpha[16,1,22] + alpha[16,2,22]
   + alpha[16,3,22] >= 1
 obs_face_o16_e0_j22: z[23,2] - obstacle_slack + 100 alpha[16,0,22]
   <= 97.25
 obs_face_o16_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[16,1,22]
   <= 91.4
 obs_face_o16_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[16,2,22]
   <= 97.25
 obs_face_o16_e3_j22: z[23,0] - obstacle_slack + 100 alpha[16,3,22] <= 108
 obs_alpha_sum_o16_j23: alpha[16,0,23] + alpha[16,1,23] + alpha[16,2,23]
   + alpha[16,3,23] >= 1
 obs_face_o16_e0_j23: z[24,2] - obstacle_slack + 100 alpha[16,0,23]
   <= 97.25
 obs_face_o16_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[16,1,23]
   <= 91.4
 obs_face_o16_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[16,2,23]
   <= 97.25
 obs_face_o16_e3_j23: z[24,0] - obstacle_slack + 100 alpha[16,3,23] <= 108
 obs_alpha_sum_o16_j24: alpha[16,0,24] + alpha[16,1,24] + alpha[16,2,24]
   + alpha[16,3,24] >= 1
 obs_face_o16_e0_j24: z[25,2] - obstacle_slack + 100 alpha[16,0,24]
   <= 97.25
 obs_face_o16_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[16,1,24]
   <= 91.4
 obs_face_o16_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[16,2,24]
   <= 97.25
 obs_face_o16_e3_j24: z[25,0] - obstacle_slack + 100 alpha[16,3,24] <= 108
 obs_alpha_sum_o16_j25: alpha[16,0,25] + alpha[16,1,25] + alpha[16,2,25]
   + alpha[16,3,25] >= 1
 obs_face_o16_e0_j25: z[26,2] - obstacle_slack + 100 alpha[16,0,25]
   <= 97.25
 obs_face_o16_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[16,1,25]
   <= 91.4
 obs_face_o16_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[16,2,25]
   <= 97.25
 obs_face_o16_e3_j25: z[26,0] - obstacle_slack + 100 alpha[16,3,25] <= 108
 obs_alpha_sum_o16_j26: alpha[16,0,26] + alpha[16,1,26] + alpha[16,2,26]
   + alpha[16,3,26] >= 1
 obs_face_o16_e0_j26: z[27,2] - obstacle_slack + 100 alpha[16,0,26]
   <= 97.25
 obs_face_o16_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[16,1,26]
   <= 91.4
 obs_face_o16_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[16,2,26]
   <= 97.25
 obs_face_o16_e3_j26: z[27,0] - obstacle_slack + 100 alpha[16,3,26] <= 108
 obs_alpha_sum_o16_j27: alpha[16,0,27] + alpha[16,1,27] + alpha[16,2,27]
   + alpha[16,3,27] >= 1
 obs_face_o16_e0_j27: z[28,2] - obstacle_slack + 100 alpha[16,0,27]
   <= 97.25
 obs_face_o16_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[16,1,27]
   <= 91.4
 obs_face_o16_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[16,2,27]
   <= 97.25
 obs_face_o16_e3_j27: z[28,0] - obstacle_slack + 100 alpha[16,3,27] <= 108
 obs_alpha_sum_o16_j28: alpha[16,0,28] + alpha[16,1,28] + alpha[16,2,28]
   + alpha[16,3,28] >= 1
 obs_face_o16_e0_j28: z[29,2] - obstacle_slack + 100 alpha[16,0,28]
   <= 97.25
 obs_face_o16_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[16,1,28]
   <= 91.4
 obs_face_o16_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[16,2,28]
   <= 97.25
 obs_face_o16_e3_j28: z[29,0] - obstacle_slack + 100 alpha[16,3,28] <= 108
 obs_alpha_sum_o16_j29: alpha[16,0,29] + alpha[16,1,29] + alpha[16,2,29]
   + alpha[16,3,29] >= 1
 obs_face_o16_e0_j29: z[30,2] - obstacle_slack + 100 alpha[16,0,29]
   <= 97.25
 obs_face_o16_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[16,1,29]
   <= 91.4
 obs_face_o16_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[16,2,29]
   <= 97.25
 obs_face_o16_e3_j29: z[30,0] - obstacle_slack + 100 alpha[16,3,29] <= 108
 obs_alpha_sum_o17_j0: alpha[17,0,0] + alpha[17,1,0] + alpha[17,2,0]
   + alpha[17,3,0] >= 1
 obs_face_o17_e0_j0: z[1,2] - obstacle_slack + 100 alpha[17,0,0] <= 97.25
 obs_face_o17_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[17,1,0] <= 88.1
 obs_face_o17_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[17,2,0]
   <= 97.25
 obs_face_o17_e3_j0: z[1,0] - obstacle_slack + 100 alpha[17,3,0] <= 111.3
 obs_alpha_sum_o17_j1: alpha[17,0,1] + alpha[17,1,1] + alpha[17,2,1]
   + alpha[17,3,1] >= 1
 obs_face_o17_e0_j1: z[2,2] - obstacle_slack + 100 alpha[17,0,1] <= 97.25
 obs_face_o17_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[17,1,1] <= 88.1
 obs_face_o17_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[17,2,1]
   <= 97.25
 obs_face_o17_e3_j1: z[2,0] - obstacle_slack + 100 alpha[17,3,1] <= 111.3
 obs_alpha_sum_o17_j2: alpha[17,0,2] + alpha[17,1,2] + alpha[17,2,2]
   + alpha[17,3,2] >= 1
 obs_face_o17_e0_j2: z[3,2] - obstacle_slack + 100 alpha[17,0,2] <= 97.25
 obs_face_o17_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[17,1,2] <= 88.1
 obs_face_o17_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[17,2,2]
   <= 97.25
 obs_face_o17_e3_j2: z[3,0] - obstacle_slack + 100 alpha[17,3,2] <= 111.3
 obs_alpha_sum_o17_j3: alpha[17,0,3] + alpha[17,1,3] + alpha[17,2,3]
   + alpha[17,3,3] >= 1
 obs_face_o17_e0_j3: z[4,2] - obstacle_slack + 100 alpha[17,0,3] <= 97.25
 obs_face_o17_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[17,1,3] <= 88.1
 obs_face_o17_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[17,2,3]
   <= 97.25
 obs_face_o17_e3_j3: z[4,0] - obstacle_slack + 100 alpha[17,3,3] <= 111.3
 obs_alpha_sum_o17_j4: alpha[17,0,4] + alpha[17,1,4] + alpha[17,2,4]
   + alpha[17,3,4] >= 1
 obs_face_o17_e0_j4: z[5,2] - obstacle_slack + 100 alpha[17,0,4] <= 97.25
 obs_face_o17_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[17,1,4] <= 88.1
 obs_face_o17_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[17,2,4]
   <= 97.25
 obs_face_o17_e3_j4: z[5,0] - obstacle_slack + 100 alpha[17,3,4] <= 111.3
 obs_alpha_sum_o17_j5: alpha[17,0,5] + alpha[17,1,5] + alpha[17,2,5]
   + alpha[17,3,5] >= 1
 obs_face_o17_e0_j5: z[6,2] - obstacle_slack + 100 alpha[17,0,5] <= 97.25
 obs_face_o17_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[17,1,5] <= 88.1
 obs_face_o17_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[17,2,5]
   <= 97.25
 obs_face_o17_e3_j5: z[6,0] - obstacle_slack + 100 alpha[17,3,5] <= 111.3
 obs_alpha_sum_o17_j6: alpha[17,0,6] + alpha[17,1,6] + alpha[17,2,6]
   + alpha[17,3,6] >= 1
 obs_face_o17_e0_j6: z[7,2] - obstacle_slack + 100 alpha[17,0,6] <= 97.25
 obs_face_o17_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[17,1,6] <= 88.1
 obs_face_o17_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[17,2,6]
   <= 97.25
 obs_face_o17_e3_j6: z[7,0] - obstacle_slack + 100 alpha[17,3,6] <= 111.3
 obs_alpha_sum_o17_j7: alpha[17,0,7] + alpha[17,1,7] + alpha[17,2,7]
   + alpha[17,3,7] >= 1
 obs_face_o17_e0_j7: z[8,2] - obstacle_slack + 100 alpha[17,0,7] <= 97.25
 obs_face_o17_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[17,1,7] <= 88.1
 obs_face_o17_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[17,2,7]
   <= 97.25
 obs_face_o17_e3_j7: z[8,0] - obstacle_slack + 100 alpha[17,3,7] <= 111.3
 obs_alpha_sum_o17_j8: alpha[17,0,8] + alpha[17,1,8] + alpha[17,2,8]
   + alpha[17,3,8] >= 1
 obs_face_o17_e0_j8: z[9,2] - obstacle_slack + 100 alpha[17,0,8] <= 97.25
 obs_face_o17_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[17,1,8] <= 88.1
 obs_face_o17_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[17,2,8]
   <= 97.25
 obs_face_o17_e3_j8: z[9,0] - obstacle_slack + 100 alpha[17,3,8] <= 111.3
 obs_alpha_sum_o17_j9: alpha[17,0,9] + alpha[17,1,9] + alpha[17,2,9]
   + alpha[17,3,9] >= 1
 obs_face_o17_e0_j9: z[10,2] - obstacle_slack + 100 alpha[17,0,9] <= 97.25
 obs_face_o17_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[17,1,9]
   <= 88.1
 obs_face_o17_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[17,2,9]
   <= 97.25
 obs_face_o17_e3_j9: z[10,0] - obstacle_slack + 100 alpha[17,3,9] <= 111.3
 obs_alpha_sum_o17_j10: alpha[17,0,10] + alpha[17,1,10] + alpha[17,2,10]
   + alpha[17,3,10] >= 1
 obs_face_o17_e0_j10: z[11,2] - obstacle_slack + 100 alpha[17,0,10]
   <= 97.25
 obs_face_o17_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[17,1,10]
   <= 88.1
 obs_face_o17_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[17,2,10]
   <= 97.25
 obs_face_o17_e3_j10: z[11,0] - obstacle_slack + 100 alpha[17,3,10]
   <= 111.3
 obs_alpha_sum_o17_j11: alpha[17,0,11] + alpha[17,1,11] + alpha[17,2,11]
   + alpha[17,3,11] >= 1
 obs_face_o17_e0_j11: z[12,2] - obstacle_slack + 100 alpha[17,0,11]
   <= 97.25
 obs_face_o17_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[17,1,11]
   <= 88.1
 obs_face_o17_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[17,2,11]
   <= 97.25
 obs_face_o17_e3_j11: z[12,0] - obstacle_slack + 100 alpha[17,3,11]
   <= 111.3
 obs_alpha_sum_o17_j12: alpha[17,0,12] + alpha[17,1,12] + alpha[17,2,12]
   + alpha[17,3,12] >= 1
 obs_face_o17_e0_j12: z[13,2] - obstacle_slack + 100 alpha[17,0,12]
   <= 97.25
 obs_face_o17_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[17,1,12]
   <= 88.1
 obs_face_o17_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[17,2,12]
   <= 97.25
 obs_face_o17_e3_j12: z[13,0] - obstacle_slack + 100 alpha[17,3,12]
   <= 111.3
 obs_alpha_sum_o17_j13: alpha[17,0,13] + alpha[17,1,13] + alpha[17,2,13]
   + alpha[17,3,13] >= 1
 obs_face_o17_e0_j13: z[14,2] - obstacle_slack + 100 alpha[17,0,13]
   <= 97.25
 obs_face_o17_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[17,1,13]
   <= 88.1
 obs_face_o17_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[17,2,13]
   <= 97.25
 obs_face_o17_e3_j13: z[14,0] - obstacle_slack + 100 alpha[17,3,13]
   <= 111.3
 obs_alpha_sum_o17_j14: alpha[17,0,14] + alpha[17,1,14] + alpha[17,2,14]
   + alpha[17,3,14] >= 1
 obs_face_o17_e0_j14: z[15,2] - obstacle_slack + 100 alpha[17,0,14]
   <= 97.25
 obs_face_o17_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[17,1,14]
   <= 88.1
 obs_face_o17_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[17,2,14]
   <= 97.25
 obs_face_o17_e3_j14: z[15,0] - obstacle_slack + 100 alpha[17,3,14]
   <= 111.3
 obs_alpha_sum_o17_j15: alpha[17,0,15] + alpha[17,1,15] + alpha[17,2,15]
   + alpha[17,3,15] >= 1
 obs_face_o17_e0_j15: z[16,2] - obstacle_slack + 100 alpha[17,0,15]
   <= 97.25
 obs_face_o17_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[17,1,15]
   <= 88.1
 obs_face_o17_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[17,2,15]
   <= 97.25
 obs_face_o17_e3_j15: z[16,0] - obstacle_slack + 100 alpha[17,3,15]
   <= 111.3
 obs_alpha_sum_o17_j16: alpha[17,0,16] + alpha[17,1,16] + alpha[17,2,16]
   + alpha[17,3,16] >= 1
 obs_face_o17_e0_j16: z[17,2] - obstacle_slack + 100 alpha[17,0,16]
   <= 97.25
 obs_face_o17_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[17,1,16]
   <= 88.1
 obs_face_o17_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[17,2,16]
   <= 97.25
 obs_face_o17_e3_j16: z[17,0] - obstacle_slack + 100 alpha[17,3,16]
   <= 111.3
 obs_alpha_sum_o17_j17: alpha[17,0,17] + alpha[17,1,17] + alpha[17,2,17]
   + alpha[17,3,17] >= 1
 obs_face_o17_e0_j17: z[18,2] - obstacle_slack + 100 alpha[17,0,17]
   <= 97.25
 obs_face_o17_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[17,1,17]
   <= 88.1
 obs_face_o17_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[17,2,17]
   <= 97.25
 obs_face_o17_e3_j17: z[18,0] - obstacle_slack + 100 alpha[17,3,17]
   <= 111.3
 obs_alpha_sum_o17_j18: alpha[17,0,18] + alpha[17,1,18] + alpha[17,2,18]
   + alpha[17,3,18] >= 1
 obs_face_o17_e0_j18: z[19,2] - obstacle_slack + 100 alpha[17,0,18]
   <= 97.25
 obs_face_o17_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[17,1,18]
   <= 88.1
 obs_face_o17_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[17,2,18]
   <= 97.25
 obs_face_o17_e3_j18: z[19,0] - obstacle_slack + 100 alpha[17,3,18]
   <= 111.3
 obs_alpha_sum_o17_j19: alpha[17,0,19] + alpha[17,1,19] + alpha[17,2,19]
   + alpha[17,3,19] >= 1
 obs_face_o17_e0_j19: z[20,2] - obstacle_slack + 100 alpha[17,0,19]
   <= 97.25
 obs_face_o17_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[17,1,19]
   <= 88.1
 obs_face_o17_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[17,2,19]
   <= 97.25
 obs_face_o17_e3_j19: z[20,0] - obstacle_slack + 100 alpha[17,3,19]
   <= 111.3
 obs_alpha_sum_o17_j20: alpha[17,0,20] + alpha[17,1,20] + alpha[17,2,20]
   + alpha[17,3,20] >= 1
 obs_face_o17_e0_j20: z[21,2] - obstacle_slack + 100 alpha[17,0,20]
   <= 97.25
 obs_face_o17_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[17,1,20]
   <= 88.1
 obs_face_o17_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[17,2,20]
   <= 97.25
 obs_face_o17_e3_j20: z[21,0] - obstacle_slack + 100 alpha[17,3,20]
   <= 111.3
 obs_alpha_sum_o17_j21: alpha[17,0,21] + alpha[17,1,21] + alpha[17,2,21]
   + alpha[17,3,21] >= 1
 obs_face_o17_e0_j21: z[22,2] - obstacle_slack + 100 alpha[17,0,21]
   <= 97.25
 obs_face_o17_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[17,1,21]
   <= 88.1
 obs_face_o17_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[17,2,21]
   <= 97.25
 obs_face_o17_e3_j21: z[22,0] - obstacle_slack + 100 alpha[17,3,21]
   <= 111.3
 obs_alpha_sum_o17_j22: alpha[17,0,22] + alpha[17,1,22] + alpha[17,2,22]
   + alpha[17,3,22] >= 1
 obs_face_o17_e0_j22: z[23,2] - obstacle_slack + 100 alpha[17,0,22]
   <= 97.25
 obs_face_o17_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[17,1,22]
   <= 88.1
 obs_face_o17_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[17,2,22]
   <= 97.25
 obs_face_o17_e3_j22: z[23,0] - obstacle_slack + 100 alpha[17,3,22]
   <= 111.3
 obs_alpha_sum_o17_j23: alpha[17,0,23] + alpha[17,1,23] + alpha[17,2,23]
   + alpha[17,3,23] >= 1
 obs_face_o17_e0_j23: z[24,2] - obstacle_slack + 100 alpha[17,0,23]
   <= 97.25
 obs_face_o17_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[17,1,23]
   <= 88.1
 obs_face_o17_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[17,2,23]
   <= 97.25
 obs_face_o17_e3_j23: z[24,0] - obstacle_slack + 100 alpha[17,3,23]
   <= 111.3
 obs_alpha_sum_o17_j24: alpha[17,0,24] + alpha[17,1,24] + alpha[17,2,24]
   + alpha[17,3,24] >= 1
 obs_face_o17_e0_j24: z[25,2] - obstacle_slack + 100 alpha[17,0,24]
   <= 97.25
 obs_face_o17_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[17,1,24]
   <= 88.1
 obs_face_o17_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[17,2,24]
   <= 97.25
 obs_face_o17_e3_j24: z[25,0] - obstacle_slack + 100 alpha[17,3,24]
   <= 111.3
 obs_alpha_sum_o17_j25: alpha[17,0,25] + alpha[17,1,25] + alpha[17,2,25]
   + alpha[17,3,25] >= 1
 obs_face_o17_e0_j25: z[26,2] - obstacle_slack + 100 alpha[17,0,25]
   <= 97.25
 obs_face_o17_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[17,1,25]
   <= 88.1
 obs_face_o17_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[17,2,25]
   <= 97.25
 obs_face_o17_e3_j25: z[26,0] - obstacle_slack + 100 alpha[17,3,25]
   <= 111.3
 obs_alpha_sum_o17_j26: alpha[17,0,26] + alpha[17,1,26] + alpha[17,2,26]
   + alpha[17,3,26] >= 1
 obs_face_o17_e0_j26: z[27,2] - obstacle_slack + 100 alpha[17,0,26]
   <= 97.25
 obs_face_o17_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[17,1,26]
   <= 88.1
 obs_face_o17_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[17,2,26]
   <= 97.25
 obs_face_o17_e3_j26: z[27,0] - obstacle_slack + 100 alpha[17,3,26]
   <= 111.3
 obs_alpha_sum_o17_j27: alpha[17,0,27] + alpha[17,1,27] + alpha[17,2,27]
   + alpha[17,3,27] >= 1
 obs_face_o17_e0_j27: z[28,2] - obstacle_slack + 100 alpha[17,0,27]
   <= 97.25
 obs_face_o17_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[17,1,27]
   <= 88.1
 obs_face_o17_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[17,2,27]
   <= 97.25
 obs_face_o17_e3_j27: z[28,0] - obstacle_slack + 100 alpha[17,3,27]
   <= 111.3
 obs_alpha_sum_o17_j28: alpha[17,0,28] + alpha[17,1,28] + alpha[17,2,28]
   + alpha[17,3,28] >= 1
 obs_face_o17_e0_j28: z[29,2] - obstacle_slack + 100 alpha[17,0,28]
   <= 97.25
 obs_face_o17_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[17,1,28]
   <= 88.1
 obs_face_o17_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[17,2,28]
   <= 97.25
 obs_face_o17_e3_j28: z[29,0] - obstacle_slack + 100 alpha[17,3,28]
   <= 111.3
 obs_alpha_sum_o17_j29: alpha[17,0,29] + alpha[17,1,29] + alpha[17,2,29]
   + alpha[17,3,29] >= 1
 obs_face_o17_e0_j29: z[30,2] - obstacle_slack + 100 alpha[17,0,29]
   <= 97.25
 obs_face_o17_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[17,1,29]
   <= 88.1
 obs_face_o17_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[17,2,29]
   <= 97.25
 obs_face_o17_e3_j29: z[30,0] - obstacle_slack + 100 alpha[17,3,29]
   <= 111.3
 obs_alpha_sum_o18_j0: alpha[18,0,0] + alpha[18,1,0] + alpha[18,2,0]
   + alpha[18,3,0] >= 1
 obs_face_o18_e0_j0: z[1,2] - obstacle_slack + 100 alpha[18,0,0] <= 101.7
 obs_face_o18_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[18,1,0] <= 95.2
 obs_face_o18_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[18,2,0] <= 97.7
 obs_face_o18_e3_j0: z[1,0] - obstacle_slack + 100 alpha[18,3,0] <= 104.2
 obs_alpha_sum_o18_j1: alpha[18,0,1] + alpha[18,1,1] + alpha[18,2,1]
   + alpha[18,3,1] >= 1
 obs_face_o18_e0_j1: z[2,2] - obstacle_slack + 100 alpha[18,0,1] <= 101.7
 obs_face_o18_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[18,1,1] <= 95.2
 obs_face_o18_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[18,2,1] <= 97.7
 obs_face_o18_e3_j1: z[2,0] - obstacle_slack + 100 alpha[18,3,1] <= 104.2
 obs_alpha_sum_o18_j2: alpha[18,0,2] + alpha[18,1,2] + alpha[18,2,2]
   + alpha[18,3,2] >= 1
 obs_face_o18_e0_j2: z[3,2] - obstacle_slack + 100 alpha[18,0,2] <= 101.7
 obs_face_o18_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[18,1,2] <= 95.2
 obs_face_o18_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[18,2,2] <= 97.7
 obs_face_o18_e3_j2: z[3,0] - obstacle_slack + 100 alpha[18,3,2] <= 104.2
 obs_alpha_sum_o18_j3: alpha[18,0,3] + alpha[18,1,3] + alpha[18,2,3]
   + alpha[18,3,3] >= 1
 obs_face_o18_e0_j3: z[4,2] - obstacle_slack + 100 alpha[18,0,3] <= 101.7
 obs_face_o18_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[18,1,3] <= 95.2
 obs_face_o18_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[18,2,3] <= 97.7
 obs_face_o18_e3_j3: z[4,0] - obstacle_slack + 100 alpha[18,3,3] <= 104.2
 obs_alpha_sum_o18_j4: alpha[18,0,4] + alpha[18,1,4] + alpha[18,2,4]
   + alpha[18,3,4] >= 1
 obs_face_o18_e0_j4: z[5,2] - obstacle_slack + 100 alpha[18,0,4] <= 101.7
 obs_face_o18_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[18,1,4] <= 95.2
 obs_face_o18_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[18,2,4] <= 97.7
 obs_face_o18_e3_j4: z[5,0] - obstacle_slack + 100 alpha[18,3,4] <= 104.2
 obs_alpha_sum_o18_j5: alpha[18,0,5] + alpha[18,1,5] + alpha[18,2,5]
   + alpha[18,3,5] >= 1
 obs_face_o18_e0_j5: z[6,2] - obstacle_slack + 100 alpha[18,0,5] <= 101.7
 obs_face_o18_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[18,1,5] <= 95.2
 obs_face_o18_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[18,2,5] <= 97.7
 obs_face_o18_e3_j5: z[6,0] - obstacle_slack + 100 alpha[18,3,5] <= 104.2
 obs_alpha_sum_o18_j6: alpha[18,0,6] + alpha[18,1,6] + alpha[18,2,6]
   + alpha[18,3,6] >= 1
 obs_face_o18_e0_j6: z[7,2] - obstacle_slack + 100 alpha[18,0,6] <= 101.7
 obs_face_o18_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[18,1,6] <= 95.2
 obs_face_o18_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[18,2,6] <= 97.7
 obs_face_o18_e3_j6: z[7,0] - obstacle_slack + 100 alpha[18,3,6] <= 104.2
 obs_alpha_sum_o18_j7: alpha[18,0,7] + alpha[18,1,7] + alpha[18,2,7]
   + alpha[18,3,7] >= 1
 obs_face_o18_e0_j7: z[8,2] - obstacle_slack + 100 alpha[18,0,7] <= 101.7
 obs_face_o18_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[18,1,7] <= 95.2
 obs_face_o18_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[18,2,7] <= 97.7
 obs_face_o18_e3_j7: z[8,0] - obstacle_slack + 100 alpha[18,3,7] <= 104.2
 obs_alpha_sum_o18_j8: alpha[18,0,8] + alpha[18,1,8] + alpha[18,2,8]
   + alpha[18,3,8] >= 1
 obs_face_o18_e0_j8: z[9,2] - obstacle_slack + 100 alpha[18,0,8] <= 101.7
 obs_face_o18_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[18,1,8] <= 95.2
 obs_face_o18_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[18,2,8] <= 97.7
 obs_face_o18_e3_j8: z[9,0] - obstacle_slack + 100 alpha[18,3,8] <= 104.2
 obs_alpha_sum_o18_j9: alpha[18,0,9] + alpha[18,1,9] + alpha[18,2,9]
   + alpha[18,3,9] >= 1
 obs_face_o18_e0_j9: z[10,2] - obstacle_slack + 100 alpha[18,0,9] <= 101.7
 obs_face_o18_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[18,1,9]
   <= 95.2
 obs_face_o18_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[18,2,9]
   <= 97.7
 obs_face_o18_e3_j9: z[10,0] - obstacle_slack + 100 alpha[18,3,9] <= 104.2
 obs_alpha_sum_o18_j10: alpha[18,0,10] + alpha[18,1,10] + alpha[18,2,10]
   + alpha[18,3,10] >= 1
 obs_face_o18_e0_j10: z[11,2] - obstacle_slack + 100 alpha[18,0,10]
   <= 101.7
 obs_face_o18_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[18,1,10]
   <= 95.2
 obs_face_o18_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[18,2,10]
   <= 97.7
 obs_face_o18_e3_j10: z[11,0] - obstacle_slack + 100 alpha[18,3,10]
   <= 104.2
 obs_alpha_sum_o18_j11: alpha[18,0,11] + alpha[18,1,11] + alpha[18,2,11]
   + alpha[18,3,11] >= 1
 obs_face_o18_e0_j11: z[12,2] - obstacle_slack + 100 alpha[18,0,11]
   <= 101.7
 obs_face_o18_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[18,1,11]
   <= 95.2
 obs_face_o18_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[18,2,11]
   <= 97.7
 obs_face_o18_e3_j11: z[12,0] - obstacle_slack + 100 alpha[18,3,11]
   <= 104.2
 obs_alpha_sum_o18_j12: alpha[18,0,12] + alpha[18,1,12] + alpha[18,2,12]
   + alpha[18,3,12] >= 1
 obs_face_o18_e0_j12: z[13,2] - obstacle_slack + 100 alpha[18,0,12]
   <= 101.7
 obs_face_o18_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[18,1,12]
   <= 95.2
 obs_face_o18_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[18,2,12]
   <= 97.7
 obs_face_o18_e3_j12: z[13,0] - obstacle_slack + 100 alpha[18,3,12]
   <= 104.2
 obs_alpha_sum_o18_j13: alpha[18,0,13] + alpha[18,1,13] + alpha[18,2,13]
   + alpha[18,3,13] >= 1
 obs_face_o18_e0_j13: z[14,2] - obstacle_slack + 100 alpha[18,0,13]
   <= 101.7
 obs_face_o18_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[18,1,13]
   <= 95.2
 obs_face_o18_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[18,2,13]
   <= 97.7
 obs_face_o18_e3_j13: z[14,0] - obstacle_slack + 100 alpha[18,3,13]
   <= 104.2
 obs_alpha_sum_o18_j14: alpha[18,0,14] + alpha[18,1,14] + alpha[18,2,14]
   + alpha[18,3,14] >= 1
 obs_face_o18_e0_j14: z[15,2] - obstacle_slack + 100 alpha[18,0,14]
   <= 101.7
 obs_face_o18_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[18,1,14]
   <= 95.2
 obs_face_o18_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[18,2,14]
   <= 97.7
 obs_face_o18_e3_j14: z[15,0] - obstacle_slack + 100 alpha[18,3,14]
   <= 104.2
 obs_alpha_sum_o18_j15: alpha[18,0,15] + alpha[18,1,15] + alpha[18,2,15]
   + alpha[18,3,15] >= 1
 obs_face_o18_e0_j15: z[16,2] - obstacle_slack + 100 alpha[18,0,15]
   <= 101.7
 obs_face_o18_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[18,1,15]
   <= 95.2
 obs_face_o18_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[18,2,15]
   <= 97.7
 obs_face_o18_e3_j15: z[16,0] - obstacle_slack + 100 alpha[18,3,15]
   <= 104.2
 obs_alpha_sum_o18_j16: alpha[18,0,16] + alpha[18,1,16] + alpha[18,2,16]
   + alpha[18,3,16] >= 1
 obs_face_o18_e0_j16: z[17,2] - obstacle_slack + 100 alpha[18,0,16]
   <= 101.7
 obs_face_o18_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[18,1,16]
   <= 95.2
 obs_face_o18_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[18,2,16]
   <= 97.7
 obs_face_o18_e3_j16: z[17,0] - obstacle_slack + 100 alpha[18,3,16]
   <= 104.2
 obs_alpha_sum_o18_j17: alpha[18,0,17] + alpha[18,1,17] + alpha[18,2,17]
   + alpha[18,3,17] >= 1
 obs_face_o18_e0_j17: z[18,2] - obstacle_slack + 100 alpha[18,0,17]
   <= 101.7
 obs_face_o18_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[18,1,17]
   <= 95.2
 obs_face_o18_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[18,2,17]
   <= 97.7
 obs_face_o18_e3_j17: z[18,0] - obstacle_slack + 100 alpha[18,3,17]
   <= 104.2
 obs_alpha_sum_o18_j18: alpha[18,0,18] + alpha[18,1,18] + alpha[18,2,18]
   + alpha[18,3,18] >= 1
 obs_face_o18_e0_j18: z[19,2] - obstacle_slack + 100 alpha[18,0,18]
   <= 101.7
 obs_face_o18_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[18,1,18]
   <= 95.2
 obs_face_o18_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[18,2,18]
   <= 97.7
 obs_face_o18_e3_j18: z[19,0] - obstacle_slack + 100 alpha[18,3,18]
   <= 104.2
 obs_alpha_sum_o18_j19: alpha[18,0,19] + alpha[18,1,19] + alpha[18,2,19]
   + alpha[18,3,19] >= 1
 obs_face_o18_e0_j19: z[20,2] - obstacle_slack + 100 alpha[18,0,19]
   <= 101.7
 obs_face_o18_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[18,1,19]
   <= 95.2
 obs_face_o18_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[18,2,19]
   <= 97.7
 obs_face_o18_e3_j19: z[20,0] - obstacle_slack + 100 alpha[18,3,19]
   <= 104.2
 obs_alpha_sum_o18_j20: alpha[18,0,20] + alpha[18,1,20] + alpha[18,2,20]
   + alpha[18,3,20] >= 1
 obs_face_o18_e0_j20: z[21,2] - obstacle_slack + 100 alpha[18,0,20]
   <= 101.7
 obs_face_o18_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[18,1,20]
   <= 95.2
 obs_face_o18_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[18,2,20]
   <= 97.7
 obs_face_o18_e3_j20: z[21,0] - obstacle_slack + 100 alpha[18,3,20]
   <= 104.2
 obs_alpha_sum_o18_j21: alpha[18,0,21] + alpha[18,1,21] + alpha[18,2,21]
   + alpha[18,3,21] >= 1
 obs_face_o18_e0_j21: z[22,2] - obstacle_slack + 100 alpha[18,0,21]
   <= 101.7
 obs_face_o18_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[18,1,21]
   <= 95.2
 obs_face_o18_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[18,2,21]
   <= 97.7
 obs_face_o18_e3_j21: z[22,0] - obstacle_slack + 100 alpha[18,3,21]
   <= 104.2
 obs_alpha_sum_o18_j22: alpha[18,0,22] + alpha[18,1,22] + alpha[18,2,22]
   + alpha[18,3,22] >= 1
 obs_face_o18_e0_j22: z[23,2] - obstacle_slack + 100 alpha[18,0,22]
   <= 101.7
 obs_face_o18_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[18,1,22]
   <= 95.2
 obs_face_o18_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[18,2,22]
   <= 97.7
 obs_face_o18_e3_j22: z[23,0] - obstacle_slack + 100 alpha[18,3,22]
   <= 104.2
 obs_alpha_sum_o18_j23: alpha[18,0,23] + alpha[18,1,23] + alpha[18,2,23]
   + alpha[18,3,23] >= 1
 obs_face_o18_e0_j23: z[24,2] - obstacle_slack + 100 alpha[18,0,23]
   <= 101.7
 obs_face_o18_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[18,1,23]
   <= 95.2
 obs_face_o18_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[18,2,23]
   <= 97.7
 obs_face_o18_e3_j23: z[24,0] - obstacle_slack + 100 alpha[18,3,23]
   <= 104.2
 obs_alpha_sum_o18_j24: alpha[18,0,24] + alpha[18,1,24] + alpha[18,2,24]
   + alpha[18,3,24] >= 1
 obs_face_o18_e0_j24: z[25,2] - obstacle_slack + 100 alpha[18,0,24]
   <= 101.7
 obs_face_o18_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[18,1,24]
   <= 95.2
 obs_face_o18_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[18,2,24]
   <= 97.7
 obs_face_o18_e3_j24: z[25,0] - obstacle_slack + 100 alpha[18,3,24]
   <= 104.2
 obs_alpha_sum_o18_j25: alpha[18,0,25] + alpha[18,1,25] + alpha[18,2,25]
   + alpha[18,3,25] >= 1
 obs_face_o18_e0_j25: z[26,2] - obstacle_slack + 100 alpha[18,0,25]
   <= 101.7
 obs_face_o18_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[18,1,25]
   <= 95.2
 obs_face_o18_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[18,2,25]
   <= 97.7
 obs_face_o18_e3_j25: z[26,0] - obstacle_slack + 100 alpha[18,3,25]
   <= 104.2
 obs_alpha_sum_o18_j26: alpha[18,0,26] + alpha[18,1,26] + alpha[18,2,26]
   + alpha[18,3,26] >= 1
 obs_face_o18_e0_j26: z[27,2] - obstacle_slack + 100 alpha[18,0,26]
   <= 101.7
 obs_face_o18_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[18,1,26]
   <= 95.2
 obs_face_o18_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[18,2,26]
   <= 97.7
 obs_face_o18_e3_j26: z[27,0] - obstacle_slack + 100 alpha[18,3,26]
   <= 104.2
 obs_alpha_sum_o18_j27: alpha[18,0,27] + alpha[18,1,27] + alpha[18,2,27]
   + alpha[18,3,27] >= 1
 obs_face_o18_e0_j27: z[28,2] - obstacle_slack + 100 alpha[18,0,27]
   <= 101.7
 obs_face_o18_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[18,1,27]
   <= 95.2
 obs_face_o18_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[18,2,27]
   <= 97.7
 obs_face_o18_e3_j27: z[28,0] - obstacle_slack + 100 alpha[18,3,27]
   <= 104.2
 obs_alpha_sum_o18_j28: alpha[18,0,28] + alpha[18,1,28] + alpha[18,2,28]
   + alpha[18,3,28] >= 1
 obs_face_o18_e0_j28: z[29,2] - obstacle_slack + 100 alpha[18,0,28]
   <= 101.7
 obs_face_o18_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[18,1,28]
   <= 95.2
 obs_face_o18_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[18,2,28]
   <= 97.7
 obs_face_o18_e3_j28: z[29,0] - obstacle_slack + 100 alpha[18,3,28]
   <= 104.2
 obs_alpha_sum_o18_j29: alpha[18,0,29] + alpha[18,1,29] + alpha[18,2,29]
   + alpha[18,3,29] >= 1
 obs_face_o18_e0_j29: z[30,2] - obstacle_slack + 100 alpha[18,0,29]
   <= 101.7
 obs_face_o18_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[18,1,29]
   <= 95.2
 obs_face_o18_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[18,2,29]
   <= 97.7
 obs_face_o18_e3_j29: z[30,0] - obstacle_slack + 100 alpha[18,3,29]
   <= 104.2
 obs_alpha_sum_o19_j0: alpha[19,0,0] + alpha[19,1,0] + alpha[19,2,0]
   + alpha[19,3,0] >= 1
 obs_face_o19_e0_j0: z[1,2] - obstacle_slack + 100 alpha[19,0,0] <= 101.95
 obs_face_o19_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[19,1,0] <= 95.2
 obs_face_o19_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[19,2,0]
   <= 97.45
 obs_face_o19_e3_j0: z[1,0] - obstacle_slack + 100 alpha[19,3,0] <= 104.2
 obs_alpha_sum_o19_j1: alpha[19,0,1] + alpha[19,1,1] + alpha[19,2,1]
   + alpha[19,3,1] >= 1
 obs_face_o19_e0_j1: z[2,2] - obstacle_slack + 100 alpha[19,0,1] <= 101.95
 obs_face_o19_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[19,1,1] <= 95.2
 obs_face_o19_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[19,2,1]
   <= 97.45
 obs_face_o19_e3_j1: z[2,0] - obstacle_slack + 100 alpha[19,3,1] <= 104.2
 obs_alpha_sum_o19_j2: alpha[19,0,2] + alpha[19,1,2] + alpha[19,2,2]
   + alpha[19,3,2] >= 1
 obs_face_o19_e0_j2: z[3,2] - obstacle_slack + 100 alpha[19,0,2] <= 101.95
 obs_face_o19_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[19,1,2] <= 95.2
 obs_face_o19_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[19,2,2]
   <= 97.45
 obs_face_o19_e3_j2: z[3,0] - obstacle_slack + 100 alpha[19,3,2] <= 104.2
 obs_alpha_sum_o19_j3: alpha[19,0,3] + alpha[19,1,3] + alpha[19,2,3]
   + alpha[19,3,3] >= 1
 obs_face_o19_e0_j3: z[4,2] - obstacle_slack + 100 alpha[19,0,3] <= 101.95
 obs_face_o19_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[19,1,3] <= 95.2
 obs_face_o19_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[19,2,3]
   <= 97.45
 obs_face_o19_e3_j3: z[4,0] - obstacle_slack + 100 alpha[19,3,3] <= 104.2
 obs_alpha_sum_o19_j4: alpha[19,0,4] + alpha[19,1,4] + alpha[19,2,4]
   + alpha[19,3,4] >= 1
 obs_face_o19_e0_j4: z[5,2] - obstacle_slack + 100 alpha[19,0,4] <= 101.95
 obs_face_o19_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[19,1,4] <= 95.2
 obs_face_o19_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[19,2,4]
   <= 97.45
 obs_face_o19_e3_j4: z[5,0] - obstacle_slack + 100 alpha[19,3,4] <= 104.2
 obs_alpha_sum_o19_j5: alpha[19,0,5] + alpha[19,1,5] + alpha[19,2,5]
   + alpha[19,3,5] >= 1
 obs_face_o19_e0_j5: z[6,2] - obstacle_slack + 100 alpha[19,0,5] <= 101.95
 obs_face_o19_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[19,1,5] <= 95.2
 obs_face_o19_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[19,2,5]
   <= 97.45
 obs_face_o19_e3_j5: z[6,0] - obstacle_slack + 100 alpha[19,3,5] <= 104.2
 obs_alpha_sum_o19_j6: alpha[19,0,6] + alpha[19,1,6] + alpha[19,2,6]
   + alpha[19,3,6] >= 1
 obs_face_o19_e0_j6: z[7,2] - obstacle_slack + 100 alpha[19,0,6] <= 101.95
 obs_face_o19_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[19,1,6] <= 95.2
 obs_face_o19_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[19,2,6]
   <= 97.45
 obs_face_o19_e3_j6: z[7,0] - obstacle_slack + 100 alpha[19,3,6] <= 104.2
 obs_alpha_sum_o19_j7: alpha[19,0,7] + alpha[19,1,7] + alpha[19,2,7]
   + alpha[19,3,7] >= 1
 obs_face_o19_e0_j7: z[8,2] - obstacle_slack + 100 alpha[19,0,7] <= 101.95
 obs_face_o19_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[19,1,7] <= 95.2
 obs_face_o19_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[19,2,7]
   <= 97.45
 obs_face_o19_e3_j7: z[8,0] - obstacle_slack + 100 alpha[19,3,7] <= 104.2
 obs_alpha_sum_o19_j8: alpha[19,0,8] + alpha[19,1,8] + alpha[19,2,8]
   + alpha[19,3,8] >= 1
 obs_face_o19_e0_j8: z[9,2] - obstacle_slack + 100 alpha[19,0,8] <= 101.95
 obs_face_o19_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[19,1,8] <= 95.2
 obs_face_o19_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[19,2,8]
   <= 97.45
 obs_face_o19_e3_j8: z[9,0] - obstacle_slack + 100 alpha[19,3,8] <= 104.2
 obs_alpha_sum_o19_j9: alpha[19,0,9] + alpha[19,1,9] + alpha[19,2,9]
   + alpha[19,3,9] >= 1
 obs_face_o19_e0_j9: z[10,2] - obstacle_slack + 100 alpha[19,0,9]
   <= 101.95
 obs_face_o19_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[19,1,9]
   <= 95.2
 obs_face_o19_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[19,2,9]
   <= 97.45
 obs_face_o19_e3_j9: z[10,0] - obstacle_slack + 100 alpha[19,3,9] <= 104.2
 obs_alpha_sum_o19_j10: alpha[19,0,10] + alpha[19,1,10] + alpha[19,2,10]
   + alpha[19,3,10] >= 1
 obs_face_o19_e0_j10: z[11,2] - obstacle_slack + 100 alpha[19,0,10]
   <= 101.95
 obs_face_o19_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[19,1,10]
   <= 95.2
 obs_face_o19_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[19,2,10]
   <= 97.45
 obs_face_o19_e3_j10: z[11,0] - obstacle_slack + 100 alpha[19,3,10]
   <= 104.2
 obs_alpha_sum_o19_j11: alpha[19,0,11] + alpha[19,1,11] + alpha[19,2,11]
   + alpha[19,3,11] >= 1
 obs_face_o19_e0_j11: z[12,2] - obstacle_slack + 100 alpha[19,0,11]
   <= 101.95
 obs_face_o19_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[19,1,11]
   <= 95.2
 obs_face_o19_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[19,2,11]
   <= 97.45
 obs_face_o19_e3_j11: z[12,0] - obstacle_slack + 100 alpha[19,3,11]
   <= 104.2
 obs_alpha_sum_o19_j12: alpha[19,0,12] + alpha[19,1,12] + alpha[19,2,12]
   + alpha[19,3,12] >= 1
 obs_face_o19_e0_j12: z[13,2] - obstacle_slack + 100 alpha[19,0,12]
   <= 101.95
 obs_face_o19_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[19,1,12]
   <= 95.2
 obs_face_o19_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[19,2,12]
   <= 97.45
 obs_face_o19_e3_j12: z[13,0] - obstacle_slack + 100 alpha[19,3,12]
   <= 104.2
 obs_alpha_sum_o19_j13: alpha[19,0,13] + alpha[19,1,13] + alpha[19,2,13]
   + alpha[19,3,13] >= 1
 obs_face_o19_e0_j13: z[14,2] - obstacle_slack + 100 alpha[19,0,13]
   <= 101.95
 obs_face_o19_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[19,1,13]
   <= 95.2
 obs_face_o19_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[19,2,13]
   <= 97.45
 obs_face_o19_e3_j13: z[14,0] - obstacle_slack + 100 alpha[19,3,13]
   <= 104.2
 obs_alpha_sum_o19_j14: alpha[19,0,14] + alpha[19,1,14] + alpha[19,2,14]
   + alpha[19,3,14] >= 1
 obs_face_o19_e0_j14: z[15,2] - obstacle_slack + 100 alpha[19,0,14]
   <= 101.95
 obs_face_o19_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[19,1,14]
   <= 95.2
 obs_face_o19_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[19,2,14]
   <= 97.45
 obs_face_o19_e3_j14: z[15,0] - obstacle_slack + 100 alpha[19,3,14]
   <= 104.2
 obs_alpha_sum_o19_j15: alpha[19,0,15] + alpha[19,1,15] + alpha[19,2,15]
   + alpha[19,3,15] >= 1
 obs_face_o19_e0_j15: z[16,2] - obstacle_slack + 100 alpha[19,0,15]
   <= 101.95
 obs_face_o19_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[19,1,15]
   <= 95.2
 obs_face_o19_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[19,2,15]
   <= 97.45
 obs_face_o19_e3_j15: z[16,0] - obstacle_slack + 100 alpha[19,3,15]
   <= 104.2
 obs_alpha_sum_o19_j16: alpha[19,0,16] + alpha[19,1,16] + alpha[19,2,16]
   + alpha[19,3,16] >= 1
 obs_face_o19_e0_j16: z[17,2] - obstacle_slack + 100 alpha[19,0,16]
   <= 101.95
 obs_face_o19_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[19,1,16]
   <= 95.2
 obs_face_o19_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[19,2,16]
   <= 97.45
 obs_face_o19_e3_j16: z[17,0] - obstacle_slack + 100 alpha[19,3,16]
   <= 104.2
 obs_alpha_sum_o19_j17: alpha[19,0,17] + alpha[19,1,17] + alpha[19,2,17]
   + alpha[19,3,17] >= 1
 obs_face_o19_e0_j17: z[18,2] - obstacle_slack + 100 alpha[19,0,17]
   <= 101.95
 obs_face_o19_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[19,1,17]
   <= 95.2
 obs_face_o19_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[19,2,17]
   <= 97.45
 obs_face_o19_e3_j17: z[18,0] - obstacle_slack + 100 alpha[19,3,17]
   <= 104.2
 obs_alpha_sum_o19_j18: alpha[19,0,18] + alpha[19,1,18] + alpha[19,2,18]
   + alpha[19,3,18] >= 1
 obs_face_o19_e0_j18: z[19,2] - obstacle_slack + 100 alpha[19,0,18]
   <= 101.95
 obs_face_o19_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[19,1,18]
   <= 95.2
 obs_face_o19_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[19,2,18]
   <= 97.45
 obs_face_o19_e3_j18: z[19,0] - obstacle_slack + 100 alpha[19,3,18]
   <= 104.2
 obs_alpha_sum_o19_j19: alpha[19,0,19] + alpha[19,1,19] + alpha[19,2,19]
   + alpha[19,3,19] >= 1
 obs_face_o19_e0_j19: z[20,2] - obstacle_slack + 100 alpha[19,0,19]
   <= 101.95
 obs_face_o19_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[19,1,19]
   <= 95.2
 obs_face_o19_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[19,2,19]
   <= 97.45
 obs_face_o19_e3_j19: z[20,0] - obstacle_slack + 100 alpha[19,3,19]
   <= 104.2
 obs_alpha_sum_o19_j20: alpha[19,0,20] + alpha[19,1,20] + alpha[19,2,20]
   + alpha[19,3,20] >= 1
 obs_face_o19_e0_j20: z[21,2] - obstacle_slack + 100 alpha[19,0,20]
   <= 101.95
 obs_face_o19_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[19,1,20]
   <= 95.2
 obs_face_o19_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[19,2,20]
   <= 97.45
 obs_face_o19_e3_j20: z[21,0] - obstacle_slack + 100 alpha[19,3,20]
   <= 104.2
 obs_alpha_sum_o19_j21: alpha[19,0,21] + alpha[19,1,21] + alpha[19,2,21]
   + alpha[19,3,21] >= 1
 obs_face_o19_e0_j21: z[22,2] - obstacle_slack + 100 alpha[19,0,21]
   <= 101.95
 obs_face_o19_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[19,1,21]
   <= 95.2
 obs_face_o19_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[19,2,21]
   <= 97.45
 obs_face_o19_e3_j21: z[22,0] - obstacle_slack + 100 alpha[19,3,21]
   <= 104.2
 obs_alpha_sum_o19_j22: alpha[19,0,22] + alpha[19,1,22] + alpha[19,2,22]
   + alpha[19,3,22] >= 1
 obs_face_o19_e0_j22: z[23,2] - obstacle_slack + 100 alpha[19,0,22]
   <= 101.95
 obs_face_o19_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[19,1,22]
   <= 95.2
 obs_face_o19_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[19,2,22]
   <= 97.45
 obs_face_o19_e3_j22: z[23,0] - obstacle_slack + 100 alpha[19,3,22]
   <= 104.2
 obs_alpha_sum_o19_j23: alpha[19,0,23] + alpha[19,1,23] + alpha[19,2,23]
   + alpha[19,3,23] >= 1
 obs_face_o19_e0_j23: z[24,2] - obstacle_slack + 100 alpha[19,0,23]
   <= 101.95
 obs_face_o19_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[19,1,23]
   <= 95.2
 obs_face_o19_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[19,2,23]
   <= 97.45
 obs_face_o19_e3_j23: z[24,0] - obstacle_slack + 100 alpha[19,3,23]
   <= 104.2
 obs_alpha_sum_o19_j24: alpha[19,0,24] + alpha[19,1,24] + alpha[19,2,24]
   + alpha[19,3,24] >= 1
 obs_face_o19_e0_j24: z[25,2] - obstacle_slack + 100 alpha[19,0,24]
   <= 101.95
 obs_face_o19_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[19,1,24]
   <= 95.2
 obs_face_o19_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[19,2,24]
   <= 97.45
 obs_face_o19_e3_j24: z[25,0] - obstacle_slack + 100 alpha[19,3,24]
   <= 104.2
 obs_alpha_sum_o19_j25: alpha[19,0,25] + alpha[19,1,25] + alpha[19,2,25]
   + alpha[19,3,25] >= 1
 obs_face_o19_e0_j25: z[26,2] - obstacle_slack + 100 alpha[19,0,25]
   <= 101.95
 obs_face_o19_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[19,1,25]
   <= 95.2
 obs_face_o19_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[19,2,25]
   <= 97.45
 obs_face_o19_e3_j25: z[26,0] - obstacle_slack + 100 alpha[19,3,25]
   <= 104.2
 obs_alpha_sum_o19_j26: alpha[19,0,26] + alpha[19,1,26] + alpha[19,2,26]
   + alpha[19,3,26] >= 1
 obs_face_o19_e0_j26: z[27,2] - obstacle_slack + 100 alpha[19,0,26]
   <= 101.95
 obs_face_o19_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[19,1,26]
   <= 95.2
 obs_face_o19_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[19,2,26]
   <= 97.45
 obs_face_o19_e3_j26: z[27,0] - obstacle_slack + 100 alpha[19,3,26]
   <= 104.2
 obs_alpha_sum_o19_j27: alpha[19,0,27] + alpha[19,1,27] + alpha[19,2,27]
   + alpha[19,3,27] >= 1
 obs_face_o19_e0_j27: z[28,2] - obstacle_slack + 100 alpha[19,0,27]
   <= 101.95
 obs_face_o19_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[19,1,27]
   <= 95.2
 obs_face_o19_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[19,2,27]
   <= 97.45
 obs_face_o19_e3_j27: z[28,0] - obstacle_slack + 100 alpha[19,3,27]
   <= 104.2
 obs_alpha_sum_o19_j28: alpha[19,0,28] + alpha[19,1,28] + alpha[19,2,28]
   + alpha[19,3,28] >= 1
 obs_face_o19_e0_j28: z[29,2] - obstacle_slack + 100 alpha[19,0,28]
   <= 101.95
 obs_face_o19_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[19,1,28]
   <= 95.2
 obs_face_o19_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[19,2,28]
   <= 97.45
 obs_face_o19_e3_j28: z[29,0] - obstacle_slack + 100 alpha[19,3,28]
   <= 104.2
 obs_alpha_sum_o19_j29: alpha[19,0,29] + alpha[19,1,29] + alpha[19,2,29]
   + alpha[19,3,29] >= 1
 obs_face_o19_e0_j29: z[30,2] - obstacle_slack + 100 alpha[19,0,29]
   <= 101.95
 obs_face_o19_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[19,1,29]
   <= 95.2
 obs_face_o19_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[19,2,29]
   <= 97.45
 obs_face_o19_e3_j29: z[30,0] - obstacle_slack + 100 alpha[19,3,29]
   <= 104.2
 obs_alpha_sum_o20_j0: alpha[20,0,0] + alpha[20,1,0] + alpha[20,2,0]
   + alpha[20,3,0] >= 1
 obs_face_o20_e0_j0: z[1,2] - obstacle_slack + 100 alpha[20,0,0] <= 102.2
 obs_face_o20_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[20,1,0] <= 95.2
 obs_face_o20_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[20,2,0] <= 97.2
 obs_face_o20_e3_j0: z[1,0] - obstacle_slack + 100 alpha[20,3,0] <= 104.2
 obs_alpha_sum_o20_j1: alpha[20,0,1] + alpha[20,1,1] + alpha[20,2,1]
   + alpha[20,3,1] >= 1
 obs_face_o20_e0_j1: z[2,2] - obstacle_slack + 100 alpha[20,0,1] <= 102.2
 obs_face_o20_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[20,1,1] <= 95.2
 obs_face_o20_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[20,2,1] <= 97.2
 obs_face_o20_e3_j1: z[2,0] - obstacle_slack + 100 alpha[20,3,1] <= 104.2
 obs_alpha_sum_o20_j2: alpha[20,0,2] + alpha[20,1,2] + alpha[20,2,2]
   + alpha[20,3,2] >= 1
 obs_face_o20_e0_j2: z[3,2] - obstacle_slack + 100 alpha[20,0,2] <= 102.2
 obs_face_o20_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[20,1,2] <= 95.2
 obs_face_o20_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[20,2,2] <= 97.2
 obs_face_o20_e3_j2: z[3,0] - obstacle_slack + 100 alpha[20,3,2] <= 104.2
 obs_alpha_sum_o20_j3: alpha[20,0,3] + alpha[20,1,3] + alpha[20,2,3]
   + alpha[20,3,3] >= 1
 obs_face_o20_e0_j3: z[4,2] - obstacle_slack + 100 alpha[20,0,3] <= 102.2
 obs_face_o20_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[20,1,3] <= 95.2
 obs_face_o20_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[20,2,3] <= 97.2
 obs_face_o20_e3_j3: z[4,0] - obstacle_slack + 100 alpha[20,3,3] <= 104.2
 obs_alpha_sum_o20_j4: alpha[20,0,4] + alpha[20,1,4] + alpha[20,2,4]
   + alpha[20,3,4] >= 1
 obs_face_o20_e0_j4: z[5,2] - obstacle_slack + 100 alpha[20,0,4] <= 102.2
 obs_face_o20_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[20,1,4] <= 95.2
 obs_face_o20_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[20,2,4] <= 97.2
 obs_face_o20_e3_j4: z[5,0] - obstacle_slack + 100 alpha[20,3,4] <= 104.2
 obs_alpha_sum_o20_j5: alpha[20,0,5] + alpha[20,1,5] + alpha[20,2,5]
   + alpha[20,3,5] >= 1
 obs_face_o20_e0_j5: z[6,2] - obstacle_slack + 100 alpha[20,0,5] <= 102.2
 obs_face_o20_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[20,1,5] <= 95.2
 obs_face_o20_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[20,2,5] <= 97.2
 obs_face_o20_e3_j5: z[6,0] - obstacle_slack + 100 alpha[20,3,5] <= 104.2
 obs_alpha_sum_o20_j6: alpha[20,0,6] + alpha[20,1,6] + alpha[20,2,6]
   + alpha[20,3,6] >= 1
 obs_face_o20_e0_j6: z[7,2] - obstacle_slack + 100 alpha[20,0,6] <= 102.2
 obs_face_o20_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[20,1,6] <= 95.2
 obs_face_o20_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[20,2,6] <= 97.2
 obs_face_o20_e3_j6: z[7,0] - obstacle_slack + 100 alpha[20,3,6] <= 104.2
 obs_alpha_sum_o20_j7: alpha[20,0,7] + alpha[20,1,7] + alpha[20,2,7]
   + alpha[20,3,7] >= 1
 obs_face_o20_e0_j7: z[8,2] - obstacle_slack + 100 alpha[20,0,7] <= 102.2
 obs_face_o20_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[20,1,7] <= 95.2
 obs_face_o20_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[20,2,7] <= 97.2
 obs_face_o20_e3_j7: z[8,0] - obstacle_slack + 100 alpha[20,3,7] <= 104.2
 obs_alpha_sum_o20_j8: alpha[20,0,8] + alpha[20,1,8] + alpha[20,2,8]
   + alpha[20,3,8] >= 1
 obs_face_o20_e0_j8: z[9,2] - obstacle_slack + 100 alpha[20,0,8] <= 102.2
 obs_face_o20_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[20,1,8] <= 95.2
 obs_face_o20_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[20,2,8] <= 97.2
 obs_face_o20_e3_j8: z[9,0] - obstacle_slack + 100 alpha[20,3,8] <= 104.2
 obs_alpha_sum_o20_j9: alpha[20,0,9] + alpha[20,1,9] + alpha[20,2,9]
   + alpha[20,3,9] >= 1
 obs_face_o20_e0_j9: z[10,2] - obstacle_slack + 100 alpha[20,0,9] <= 102.2
 obs_face_o20_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[20,1,9]
   <= 95.2
 obs_face_o20_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[20,2,9]
   <= 97.2
 obs_face_o20_e3_j9: z[10,0] - obstacle_slack + 100 alpha[20,3,9] <= 104.2
 obs_alpha_sum_o20_j10: alpha[20,0,10] + alpha[20,1,10] + alpha[20,2,10]
   + alpha[20,3,10] >= 1
 obs_face_o20_e0_j10: z[11,2] - obstacle_slack + 100 alpha[20,0,10]
   <= 102.2
 obs_face_o20_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[20,1,10]
   <= 95.2
 obs_face_o20_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[20,2,10]
   <= 97.2
 obs_face_o20_e3_j10: z[11,0] - obstacle_slack + 100 alpha[20,3,10]
   <= 104.2
 obs_alpha_sum_o20_j11: alpha[20,0,11] + alpha[20,1,11] + alpha[20,2,11]
   + alpha[20,3,11] >= 1
 obs_face_o20_e0_j11: z[12,2] - obstacle_slack + 100 alpha[20,0,11]
   <= 102.2
 obs_face_o20_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[20,1,11]
   <= 95.2
 obs_face_o20_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[20,2,11]
   <= 97.2
 obs_face_o20_e3_j11: z[12,0] - obstacle_slack + 100 alpha[20,3,11]
   <= 104.2
 obs_alpha_sum_o20_j12: alpha[20,0,12] + alpha[20,1,12] + alpha[20,2,12]
   + alpha[20,3,12] >= 1
 obs_face_o20_e0_j12: z[13,2] - obstacle_slack + 100 alpha[20,0,12]
   <= 102.2
 obs_face_o20_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[20,1,12]
   <= 95.2
 obs_face_o20_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[20,2,12]
   <= 97.2
 obs_face_o20_e3_j12: z[13,0] - obstacle_slack + 100 alpha[20,3,12]
   <= 104.2
 obs_alpha_sum_o20_j13: alpha[20,0,13] + alpha[20,1,13] + alpha[20,2,13]
   + alpha[20,3,13] >= 1
 obs_face_o20_e0_j13: z[14,2] - obstacle_slack + 100 alpha[20,0,13]
   <= 102.2
 obs_face_o20_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[20,1,13]
   <= 95.2
 obs_face_o20_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[20,2,13]
   <= 97.2
 obs_face_o20_e3_j13: z[14,0] - obstacle_slack + 100 alpha[20,3,13]
   <= 104.2
 obs_alpha_sum_o20_j14: alpha[20,0,14] + alpha[20,1,14] + alpha[20,2,14]
   + alpha[20,3,14] >= 1
 obs_face_o20_e0_j14: z[15,2] - obstacle_slack + 100 alpha[20,0,14]
   <= 102.2
 obs_face_o20_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[20,1,14]
   <= 95.2
 obs_face_o20_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[20,2,14]
   <= 97.2
 obs_face_o20_e3_j14: z[15,0] - obstacle_slack + 100 alpha[20,3,14]
   <= 104.2
 obs_alpha_sum_o20_j15: alpha[20,0,15] + alpha[20,1,15] + alpha[20,2,15]
   + alpha[20,3,15] >= 1
 obs_face_o20_e0_j15: z[16,2] - obstacle_slack + 100 alpha[20,0,15]
   <= 102.2
 obs_face_o20_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[20,1,15]
   <= 95.2
 obs_face_o20_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[20,2,15]
   <= 97.2
 obs_face_o20_e3_j15: z[16,0] - obstacle_slack + 100 alpha[20,3,15]
   <= 104.2
 obs_alpha_sum_o20_j16: alpha[20,0,16] + alpha[20,1,16] + alpha[20,2,16]
   + alpha[20,3,16] >= 1
 obs_face_o20_e0_j16: z[17,2] - obstacle_slack + 100 alpha[20,0,16]
   <= 102.2
 obs_face_o20_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[20,1,16]
   <= 95.2
 obs_face_o20_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[20,2,16]
   <= 97.2
 obs_face_o20_e3_j16: z[17,0] - obstacle_slack + 100 alpha[20,3,16]
   <= 104.2
 obs_alpha_sum_o20_j17: alpha[20,0,17] + alpha[20,1,17] + alpha[20,2,17]
   + alpha[20,3,17] >= 1
 obs_face_o20_e0_j17: z[18,2] - obstacle_slack + 100 alpha[20,0,17]
   <= 102.2
 obs_face_o20_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[20,1,17]
   <= 95.2
 obs_face_o20_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[20,2,17]
   <= 97.2
 obs_face_o20_e3_j17: z[18,0] - obstacle_slack + 100 alpha[20,3,17]
   <= 104.2
 obs_alpha_sum_o20_j18: alpha[20,0,18] + alpha[20,1,18] + alpha[20,2,18]
   + alpha[20,3,18] >= 1
 obs_face_o20_e0_j18: z[19,2] - obstacle_slack + 100 alpha[20,0,18]
   <= 102.2
 obs_face_o20_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[20,1,18]
   <= 95.2
 obs_face_o20_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[20,2,18]
   <= 97.2
 obs_face_o20_e3_j18: z[19,0] - obstacle_slack + 100 alpha[20,3,18]
   <= 104.2
 obs_alpha_sum_o20_j19: alpha[20,0,19] + alpha[20,1,19] + alpha[20,2,19]
   + alpha[20,3,19] >= 1
 obs_face_o20_e0_j19: z[20,2] - obstacle_slack + 100 alpha[20,0,19]
   <= 102.2
 obs_face_o20_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[20,1,19]
   <= 95.2
 obs_face_o20_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[20,2,19]
   <= 97.2
 obs_face_o20_e3_j19: z[20,0] - obstacle_slack + 100 alpha[20,3,19]
   <= 104.2
 obs_alpha_sum_o20_j20: alpha[20,0,20] + alpha[20,1,20] + alpha[20,2,20]
   + alpha[20,3,20] >= 1
 obs_face_o20_e0_j20: z[21,2] - obstacle_slack + 100 alpha[20,0,20]
   <= 102.2
 obs_face_o20_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[20,1,20]
   <= 95.2
 obs_face_o20_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[20,2,20]
   <= 97.2
 obs_face_o20_e3_j20: z[21,0] - obstacle_slack + 100 alpha[20,3,20]
   <= 104.2
 obs_alpha_sum_o20_j21: alpha[20,0,21] + alpha[20,1,21] + alpha[20,2,21]
   + alpha[20,3,21] >= 1
 obs_face_o20_e0_j21: z[22,2] - obstacle_slack + 100 alpha[20,0,21]
   <= 102.2
 obs_face_o20_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[20,1,21]
   <= 95.2
 obs_face_o20_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[20,2,21]
   <= 97.2
 obs_face_o20_e3_j21: z[22,0] - obstacle_slack + 100 alpha[20,3,21]
   <= 104.2
 obs_alpha_sum_o20_j22: alpha[20,0,22] + alpha[20,1,22] + alpha[20,2,22]
   + alpha[20,3,22] >= 1
 obs_face_o20_e0_j22: z[23,2] - obstacle_slack + 100 alpha[20,0,22]
   <= 102.2
 obs_face_o20_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[20,1,22]
   <= 95.2
 obs_face_o20_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[20,2,22]
   <= 97.2
 obs_face_o20_e3_j22: z[23,0] - obstacle_slack + 100 alpha[20,3,22]
   <= 104.2
 obs_alpha_sum_o20_j23: alpha[20,0,23] + alpha[20,1,23] + alpha[20,2,23]
   + alpha[20,3,23] >= 1
 obs_face_o20_e0_j23: z[24,2] - obstacle_slack + 100 alpha[20,0,23]
   <= 102.2
 obs_face_o20_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[20,1,23]
   <= 95.2
 obs_face_o20_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[20,2,23]
   <= 97.2
 obs_face_o20_e3_j23: z[24,0] - obstacle_slack + 100 alpha[20,3,23]
   <= 104.2
 obs_alpha_sum_o20_j24: alpha[20,0,24] + alpha[20,1,24] + alpha[20,2,24]
   + alpha[20,3,24] >= 1
 obs_face_o20_e0_j24: z[25,2] - obstacle_slack + 100 alpha[20,0,24]
   <= 102.2
 obs_face_o20_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[20,1,24]
   <= 95.2
 obs_face_o20_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[20,2,24]
   <= 97.2
 obs_face_o20_e3_j24: z[25,0] - obstacle_slack + 100 alpha[20,3,24]
   <= 104.2
 obs_alpha_sum_o20_j25: alpha[20,0,25] + alpha[20,1,25] + alpha[20,2,25]
   + alpha[20,3,25] >= 1
 obs_face_o20_e0_j25: z[26,2] - obstacle_slack + 100 alpha[20,0,25]
   <= 102.2
 obs_face_o20_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[20,1,25]
   <= 95.2
 obs_face_o20_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[20,2,25]
   <= 97.2
 obs_face_o20_e3_j25: z[26,0] - obstacle_slack + 100 alpha[20,3,25]
   <= 104.2
 obs_alpha_sum_o20_j26: alpha[20,0,26] + alpha[20,1,26] + alpha[20,2,26]
   + alpha[20,3,26] >= 1
 obs_face_o20_e0_j26: z[27,2] - obstacle_slack + 100 alpha[20,0,26]
   <= 102.2
 obs_face_o20_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[20,1,26]
   <= 95.2
 obs_face_o20_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[20,2,26]
   <= 97.2
 obs_face_o20_e3_j26: z[27,0] - obstacle_slack + 100 alpha[20,3,26]
   <= 104.2
 obs_alpha_sum_o20_j27: alpha[20,0,27] + alpha[20,1,27] + alpha[20,2,27]
   + alpha[20,3,27] >= 1
 obs_face_o20_e0_j27: z[28,2] - obstacle_slack + 100 alpha[20,0,27]
   <= 102.2
 obs_face_o20_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[20,1,27]
   <= 95.2
 obs_face_o20_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[20,2,27]
   <= 97.2
 obs_face_o20_e3_j27: z[28,0] - obstacle_slack + 100 alpha[20,3,27]
   <= 104.2
 obs_alpha_sum_o20_j28: alpha[20,0,28] + alpha[20,1,28] + alpha[20,2,28]
   + alpha[20,3,28] >= 1
 obs_face_o20_e0_j28: z[29,2] - obstacle_slack + 100 alpha[20,0,28]
   <= 102.2
 obs_face_o20_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[20,1,28]
   <= 95.2
 obs_face_o20_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[20,2,28]
   <= 97.2
 obs_face_o20_e3_j28: z[29,0] - obstacle_slack + 100 alpha[20,3,28]
   <= 104.2
 obs_alpha_sum_o20_j29: alpha[20,0,29] + alpha[20,1,29] + alpha[20,2,29]
   + alpha[20,3,29] >= 1
 obs_face_o20_e0_j29: z[30,2] - obstacle_slack + 100 alpha[20,0,29]
   <= 102.2
 obs_face_o20_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[20,1,29]
   <= 95.2
 obs_face_o20_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[20,2,29]
   <= 97.2
 obs_face_o20_e3_j29: z[30,0] - obstacle_slack + 100 alpha[20,3,29]
   <= 104.2
 obs_alpha_sum_o21_j0: alpha[21,0,0] + alpha[21,1,0] + alpha[21,2,0]
   + alpha[21,3,0] >= 1
 obs_face_o21_e0_j0: z[1,2] - obstacle_slack + 100 alpha[21,0,0] <= 102.45
 obs_face_o21_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[21,1,0] <= 95.2
 obs_face_o21_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[21,2,0]
   <= 96.95
 obs_face_o21_e3_j0: z[1,0] - obstacle_slack + 100 alpha[21,3,0] <= 104.2
 obs_alpha_sum_o21_j1: alpha[21,0,1] + alpha[21,1,1] + alpha[21,2,1]
   + alpha[21,3,1] >= 1
 obs_face_o21_e0_j1: z[2,2] - obstacle_slack + 100 alpha[21,0,1] <= 102.45
 obs_face_o21_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[21,1,1] <= 95.2
 obs_face_o21_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[21,2,1]
   <= 96.95
 obs_face_o21_e3_j1: z[2,0] - obstacle_slack + 100 alpha[21,3,1] <= 104.2
 obs_alpha_sum_o21_j2: alpha[21,0,2] + alpha[21,1,2] + alpha[21,2,2]
   + alpha[21,3,2] >= 1
 obs_face_o21_e0_j2: z[3,2] - obstacle_slack + 100 alpha[21,0,2] <= 102.45
 obs_face_o21_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[21,1,2] <= 95.2
 obs_face_o21_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[21,2,2]
   <= 96.95
 obs_face_o21_e3_j2: z[3,0] - obstacle_slack + 100 alpha[21,3,2] <= 104.2
 obs_alpha_sum_o21_j3: alpha[21,0,3] + alpha[21,1,3] + alpha[21,2,3]
   + alpha[21,3,3] >= 1
 obs_face_o21_e0_j3: z[4,2] - obstacle_slack + 100 alpha[21,0,3] <= 102.45
 obs_face_o21_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[21,1,3] <= 95.2
 obs_face_o21_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[21,2,3]
   <= 96.95
 obs_face_o21_e3_j3: z[4,0] - obstacle_slack + 100 alpha[21,3,3] <= 104.2
 obs_alpha_sum_o21_j4: alpha[21,0,4] + alpha[21,1,4] + alpha[21,2,4]
   + alpha[21,3,4] >= 1
 obs_face_o21_e0_j4: z[5,2] - obstacle_slack + 100 alpha[21,0,4] <= 102.45
 obs_face_o21_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[21,1,4] <= 95.2
 obs_face_o21_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[21,2,4]
   <= 96.95
 obs_face_o21_e3_j4: z[5,0] - obstacle_slack + 100 alpha[21,3,4] <= 104.2
 obs_alpha_sum_o21_j5: alpha[21,0,5] + alpha[21,1,5] + alpha[21,2,5]
   + alpha[21,3,5] >= 1
 obs_face_o21_e0_j5: z[6,2] - obstacle_slack + 100 alpha[21,0,5] <= 102.45
 obs_face_o21_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[21,1,5] <= 95.2
 obs_face_o21_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[21,2,5]
   <= 96.95
 obs_face_o21_e3_j5: z[6,0] - obstacle_slack + 100 alpha[21,3,5] <= 104.2
 obs_alpha_sum_o21_j6: alpha[21,0,6] + alpha[21,1,6] + alpha[21,2,6]
   + alpha[21,3,6] >= 1
 obs_face_o21_e0_j6: z[7,2] - obstacle_slack + 100 alpha[21,0,6] <= 102.45
 obs_face_o21_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[21,1,6] <= 95.2
 obs_face_o21_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[21,2,6]
   <= 96.95
 obs_face_o21_e3_j6: z[7,0] - obstacle_slack + 100 alpha[21,3,6] <= 104.2
 obs_alpha_sum_o21_j7: alpha[21,0,7] + alpha[21,1,7] + alpha[21,2,7]
   + alpha[21,3,7] >= 1
 obs_face_o21_e0_j7: z[8,2] - obstacle_slack + 100 alpha[21,0,7] <= 102.45
 obs_face_o21_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[21,1,7] <= 95.2
 obs_face_o21_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[21,2,7]
   <= 96.95
 obs_face_o21_e3_j7: z[8,0] - obstacle_slack + 100 alpha[21,3,7] <= 104.2
 obs_alpha_sum_o21_j8: alpha[21,0,8] + alpha[21,1,8] + alpha[21,2,8]
   + alpha[21,3,8] >= 1
 obs_face_o21_e0_j8: z[9,2] - obstacle_slack + 100 alpha[21,0,8] <= 102.45
 obs_face_o21_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[21,1,8] <= 95.2
 obs_face_o21_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[21,2,8]
   <= 96.95
 obs_face_o21_e3_j8: z[9,0] - obstacle_slack + 100 alpha[21,3,8] <= 104.2
 obs_alpha_sum_o21_j9: alpha[21,0,9] + alpha[21,1,9] + alpha[21,2,9]
   + alpha[21,3,9] >= 1
 obs_face_o21_e0_j9: z[10,2] - obstacle_slack + 100 alpha[21,0,9]
   <= 102.45
 obs_face_o21_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[21,1,9]
   <= 95.2
 obs_face_o21_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[21,2,9]
   <= 96.95
 obs_face_o21_e3_j9: z[10,0] - obstacle_slack + 100 alpha[21,3,9] <= 104.2
 obs_alpha_sum_o21_j10: alpha[21,0,10] + alpha[21,1,10] + alpha[21,2,10]
   + alpha[21,3,10] >= 1
 obs_face_o21_e0_j10: z[11,2] - obstacle_slack + 100 alpha[21,0,10]
   <= 102.45
 obs_face_o21_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[21,1,10]
   <= 95.2
 obs_face_o21_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[21,2,10]
   <= 96.95
 obs_face_o21_e3_j10: z[11,0] - obstacle_slack + 100 alpha[21,3,10]
   <= 104.2
 obs_alpha_sum_o21_j11: alpha[21,0,11] + alpha[21,1,11] + alpha[21,2,11]
   + alpha[21,3,11] >= 1
 obs_face_o21_e0_j11: z[12,2] - obstacle_slack + 100 alpha[21,0,11]
   <= 102.45
 obs_face_o21_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[21,1,11]
   <= 95.2
 obs_face_o21_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[21,2,11]
   <= 96.95
 obs_face_o21_e3_j11: z[12,0] - obstacle_slack + 100 alpha[21,3,11]
   <= 104.2
 obs_alpha_sum_o21_j12: alpha[21,0,12] + alpha[21,1,12] + alpha[21,2,12]
   + alpha[21,3,12] >= 1
 obs_face_o21_e0_j12: z[13,2] - obstacle_slack + 100 alpha[21,0,12]
   <= 102.45
 obs_face_o21_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[21,1,12]
   <= 95.2
 obs_face_o21_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[21,2,12]
   <= 96.95
 obs_face_o21_e3_j12: z[13,0] - obstacle_slack + 100 alpha[21,3,12]
   <= 104.2
 obs_alpha_sum_o21_j13: alpha[21,0,13] + alpha[21,1,13] + alpha[21,2,13]
   + alpha[21,3,13] >= 1
 obs_face_o21_e0_j13: z[14,2] - obstacle_slack + 100 alpha[21,0,13]
   <= 102.45
 obs_face_o21_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[21,1,13]
   <= 95.2
 obs_face_o21_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[21,2,13]
   <= 96.95
 obs_face_o21_e3_j13: z[14,0] - obstacle_slack + 100 alpha[21,3,13]
   <= 104.2
 obs_alpha_sum_o21_j14: alpha[21,0,14] + alpha[21,1,14] + alpha[21,2,14]
   + alpha[21,3,14] >= 1
 obs_face_o21_e0_j14: z[15,2] - obstacle_slack + 100 alpha[21,0,14]
   <= 102.45
 obs_face_o21_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[21,1,14]
   <= 95.2
 obs_face_o21_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[21,2,14]
   <= 96.95
 obs_face_o21_e3_j14: z[15,0] - obstacle_slack + 100 alpha[21,3,14]
   <= 104.2
 obs_alpha_sum_o21_j15: alpha[21,0,15] + alpha[21,1,15] + alpha[21,2,15]
   + alpha[21,3,15] >= 1
 obs_face_o21_e0_j15: z[16,2] - obstacle_slack + 100 alpha[21,0,15]
   <= 102.45
 obs_face_o21_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[21,1,15]
   <= 95.2
 obs_face_o21_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[21,2,15]
   <= 96.95
 obs_face_o21_e3_j15: z[16,0] - obstacle_slack + 100 alpha[21,3,15]
   <= 104.2
 obs_alpha_sum_o21_j16: alpha[21,0,16] + alpha[21,1,16] + alpha[21,2,16]
   + alpha[21,3,16] >= 1
 obs_face_o21_e0_j16: z[17,2] - obstacle_slack + 100 alpha[21,0,16]
   <= 102.45
 obs_face_o21_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[21,1,16]
   <= 95.2
 obs_face_o21_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[21,2,16]
   <= 96.95
 obs_face_o21_e3_j16: z[17,0] - obstacle_slack + 100 alpha[21,3,16]
   <= 104.2
 obs_alpha_sum_o21_j17: alpha[21,0,17] + alpha[21,1,17] + alpha[21,2,17]
   + alpha[21,3,17] >= 1
 obs_face_o21_e0_j17: z[18,2] - obstacle_slack + 100 alpha[21,0,17]
   <= 102.45
 obs_face_o21_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[21,1,17]
   <= 95.2
 obs_face_o21_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[21,2,17]
   <= 96.95
 obs_face_o21_e3_j17: z[18,0] - obstacle_slack + 100 alpha[21,3,17]
   <= 104.2
 obs_alpha_sum_o21_j18: alpha[21,0,18] + alpha[21,1,18] + alpha[21,2,18]
   + alpha[21,3,18] >= 1
 obs_face_o21_e0_j18: z[19,2] - obstacle_slack + 100 alpha[21,0,18]
   <= 102.45
 obs_face_o21_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[21,1,18]
   <= 95.2
 obs_face_o21_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[21,2,18]
   <= 96.95
 obs_face_o21_e3_j18: z[19,0] - obstacle_slack + 100 alpha[21,3,18]
   <= 104.2
 obs_alpha_sum_o21_j19: alpha[21,0,19] + alpha[21,1,19] + alpha[21,2,19]
   + alpha[21,3,19] >= 1
 obs_face_o21_e0_j19: z[20,2] - obstacle_slack + 100 alpha[21,0,19]
   <= 102.45
 obs_face_o21_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[21,1,19]
   <= 95.2
 obs_face_o21_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[21,2,19]
   <= 96.95
 obs_face_o21_e3_j19: z[20,0] - obstacle_slack + 100 alpha[21,3,19]
   <= 104.2
 obs_alpha_sum_o21_j20: alpha[21,0,20] + alpha[21,1,20] + alpha[21,2,20]
   + alpha[21,3,20] >= 1
 obs_face_o21_e0_j20: z[21,2] - obstacle_slack + 100 alpha[21,0,20]
   <= 102.45
 obs_face_o21_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[21,1,20]
   <= 95.2
 obs_face_o21_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[21,2,20]
   <= 96.95
 obs_face_o21_e3_j20: z[21,0] - obstacle_slack + 100 alpha[21,3,20]
   <= 104.2
 obs_alpha_sum_o21_j21: alpha[21,0,21] + alpha[21,1,21] + alpha[21,2,21]
   + alpha[21,3,21] >= 1
 obs_face_o21_e0_j21: z[22,2] - obstacle_slack + 100 alpha[21,0,21]
   <= 102.45
 obs_face_o21_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[21,1,21]
   <= 95.2
 obs_face_o21_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[21,2,21]
   <= 96.95
 obs_face_o21_e3_j21: z[22,0] - obstacle_slack + 100 alpha[21,3,21]
   <= 104.2
 obs_alpha_sum_o21_j22: alpha[21,0,22] + alpha[21,1,22] + alpha[21,2,22]
   + alpha[21,3,22] >= 1
 obs_face_o21_e0_j22: z[23,2] - obstacle_slack + 100 alpha[21,0,22]
   <= 102.45
 obs_face_o21_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[21,1,22]
   <= 95.2
 obs_face_o21_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[21,2,22]
   <= 96.95
 obs_face_o21_e3_j22: z[23,0] - obstacle_slack + 100 alpha[21,3,22]
   <= 104.2
 obs_alpha_sum_o21_j23: alpha[21,0,23] + alpha[21,1,23] + alpha[21,2,23]
   + alpha[21,3,23] >= 1
 obs_face_o21_e0_j23: z[24,2] - obstacle_slack + 100 alpha[21,0,23]
   <= 102.45
 obs_face_o21_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[21,1,23]
   <= 95.2
 obs_face_o21_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[21,2,23]
   <= 96.95
 obs_face_o21_e3_j23: z[24,0] - obstacle_slack + 100 alpha[21,3,23]
   <= 104.2
 obs_alpha_sum_o21_j24: alpha[21,0,24] + alpha[21,1,24] + alpha[21,2,24]
   + alpha[21,3,24] >= 1
 obs_face_o21_e0_j24: z[25,2] - obstacle_slack + 100 alpha[21,0,24]
   <= 102.45
 obs_face_o21_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[21,1,24]
   <= 95.2
 obs_face_o21_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[21,2,24]
   <= 96.95
 obs_face_o21_e3_j24: z[25,0] - obstacle_slack + 100 alpha[21,3,24]
   <= 104.2
 obs_alpha_sum_o21_j25: alpha[21,0,25] + alpha[21,1,25] + alpha[21,2,25]
   + alpha[21,3,25] >= 1
 obs_face_o21_e0_j25: z[26,2] - obstacle_slack + 100 alpha[21,0,25]
   <= 102.45
 obs_face_o21_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[21,1,25]
   <= 95.2
 obs_face_o21_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[21,2,25]
   <= 96.95
 obs_face_o21_e3_j25: z[26,0] - obstacle_slack + 100 alpha[21,3,25]
   <= 104.2
 obs_alpha_sum_o21_j26: alpha[21,0,26] + alpha[21,1,26] + alpha[21,2,26]
   + alpha[21,3,26] >= 1
 obs_face_o21_e0_j26: z[27,2] - obstacle_slack + 100 alpha[21,0,26]
   <= 102.45
 obs_face_o21_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[21,1,26]
   <= 95.2
 obs_face_o21_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[21,2,26]
   <= 96.95
 obs_face_o21_e3_j26: z[27,0] - obstacle_slack + 100 alpha[21,3,26]
   <= 104.2
 obs_alpha_sum_o21_j27: alpha[21,0,27] + alpha[21,1,27] + alpha[21,2,27]
   + alpha[21,3,27] >= 1
 obs_face_o21_e0_j27: z[28,2] - obstacle_slack + 100 alpha[21,0,27]
   <= 102.45
 obs_face_o21_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[21,1,27]
   <= 95.2
 obs_face_o21_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[21,2,27]
   <= 96.95
 obs_face_o21_e3_j27: z[28,0] - obstacle_slack + 100 alpha[21,3,27]
   <= 104.2
 obs_alpha_sum_o21_j28: alpha[21,0,28] + alpha[21,1,28] + alpha[21,2,28]
   + alpha[21,3,28] >= 1
 obs_face_o21_e0_j28: z[29,2] - obstacle_slack + 100 alpha[21,0,28]
   <= 102.45
 obs_face_o21_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[21,1,28]
   <= 95.2
 obs_face_o21_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[21,2,28]
   <= 96.95
 obs_face_o21_e3_j28: z[29,0] - obstacle_slack + 100 alpha[21,3,28]
   <= 104.2
 obs_alpha_sum_o21_j29: alpha[21,0,29] + alpha[21,1,29] + alpha[21,2,29]
   + alpha[21,3,29] >= 1
 obs_face_o21_e0_j29: z[30,2] - obstacle_slack + 100 alpha[21,0,29]
   <= 102.45
 obs_face_o21_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[21,1,29]
   <= 95.2
 obs_face_o21_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[21,2,29]
   <= 96.95
 obs_face_o21_e3_j29: z[30,0] - obstacle_slack + 100 alpha[21,3,29]
   <= 104.2
 obs_alpha_sum_o22_j0: alpha[22,0,0] + alpha[22,1,0] + alpha[22,2,0]
   + alpha[22,3,0] >= 1
 obs_face_o22_e0_j0: z[1,2] - obstacle_slack + 100 alpha[22,0,0] <= 102.7
 obs_face_o22_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[22,1,0] <= 95.2
 obs_face_o22_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[22,2,0] <= 96.7
 obs_face_o22_e3_j0: z[1,0] - obstacle_slack + 100 alpha[22,3,0] <= 104.2
 obs_alpha_sum_o22_j1: alpha[22,0,1] + alpha[22,1,1] + alpha[22,2,1]
   + alpha[22,3,1] >= 1
 obs_face_o22_e0_j1: z[2,2] - obstacle_slack + 100 alpha[22,0,1] <= 102.7
 obs_face_o22_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[22,1,1] <= 95.2
 obs_face_o22_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[22,2,1] <= 96.7
 obs_face_o22_e3_j1: z[2,0] - obstacle_slack + 100 alpha[22,3,1] <= 104.2
 obs_alpha_sum_o22_j2: alpha[22,0,2] + alpha[22,1,2] + alpha[22,2,2]
   + alpha[22,3,2] >= 1
 obs_face_o22_e0_j2: z[3,2] - obstacle_slack + 100 alpha[22,0,2] <= 102.7
 obs_face_o22_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[22,1,2] <= 95.2
 obs_face_o22_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[22,2,2] <= 96.7
 obs_face_o22_e3_j2: z[3,0] - obstacle_slack + 100 alpha[22,3,2] <= 104.2
 obs_alpha_sum_o22_j3: alpha[22,0,3] + alpha[22,1,3] + alpha[22,2,3]
   + alpha[22,3,3] >= 1
 obs_face_o22_e0_j3: z[4,2] - obstacle_slack + 100 alpha[22,0,3] <= 102.7
 obs_face_o22_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[22,1,3] <= 95.2
 obs_face_o22_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[22,2,3] <= 96.7
 obs_face_o22_e3_j3: z[4,0] - obstacle_slack + 100 alpha[22,3,3] <= 104.2
 obs_alpha_sum_o22_j4: alpha[22,0,4] + alpha[22,1,4] + alpha[22,2,4]
   + alpha[22,3,4] >= 1
 obs_face_o22_e0_j4: z[5,2] - obstacle_slack + 100 alpha[22,0,4] <= 102.7
 obs_face_o22_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[22,1,4] <= 95.2
 obs_face_o22_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[22,2,4] <= 96.7
 obs_face_o22_e3_j4: z[5,0] - obstacle_slack + 100 alpha[22,3,4] <= 104.2
 obs_alpha_sum_o22_j5: alpha[22,0,5] + alpha[22,1,5] + alpha[22,2,5]
   + alpha[22,3,5] >= 1
 obs_face_o22_e0_j5: z[6,2] - obstacle_slack + 100 alpha[22,0,5] <= 102.7
 obs_face_o22_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[22,1,5] <= 95.2
 obs_face_o22_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[22,2,5] <= 96.7
 obs_face_o22_e3_j5: z[6,0] - obstacle_slack + 100 alpha[22,3,5] <= 104.2
 obs_alpha_sum_o22_j6: alpha[22,0,6] + alpha[22,1,6] + alpha[22,2,6]
   + alpha[22,3,6] >= 1
 obs_face_o22_e0_j6: z[7,2] - obstacle_slack + 100 alpha[22,0,6] <= 102.7
 obs_face_o22_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[22,1,6] <= 95.2
 obs_face_o22_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[22,2,6] <= 96.7
 obs_face_o22_e3_j6: z[7,0] - obstacle_slack + 100 alpha[22,3,6] <= 104.2
 obs_alpha_sum_o22_j7: alpha[22,0,7] + alpha[22,1,7] + alpha[22,2,7]
   + alpha[22,3,7] >= 1
 obs_face_o22_e0_j7: z[8,2] - obstacle_slack + 100 alpha[22,0,7] <= 102.7
 obs_face_o22_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[22,1,7] <= 95.2
 obs_face_o22_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[22,2,7] <= 96.7
 obs_face_o22_e3_j7: z[8,0] - obstacle_slack + 100 alpha[22,3,7] <= 104.2
 obs_alpha_sum_o22_j8: alpha[22,0,8] + alpha[22,1,8] + alpha[22,2,8]
   + alpha[22,3,8] >= 1
 obs_face_o22_e0_j8: z[9,2] - obstacle_slack + 100 alpha[22,0,8] <= 102.7
 obs_face_o22_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[22,1,8] <= 95.2
 obs_face_o22_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[22,2,8] <= 96.7
 obs_face_o22_e3_j8: z[9,0] - obstacle_slack + 100 alpha[22,3,8] <= 104.2
 obs_alpha_sum_o22_j9: alpha[22,0,9] + alpha[22,1,9] + alpha[22,2,9]
   + alpha[22,3,9] >= 1
 obs_face_o22_e0_j9: z[10,2] - obstacle_slack + 100 alpha[22,0,9] <= 102.7
 obs_face_o22_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[22,1,9]
   <= 95.2
 obs_face_o22_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[22,2,9]
   <= 96.7
 obs_face_o22_e3_j9: z[10,0] - obstacle_slack + 100 alpha[22,3,9] <= 104.2
 obs_alpha_sum_o22_j10: alpha[22,0,10] + alpha[22,1,10] + alpha[22,2,10]
   + alpha[22,3,10] >= 1
 obs_face_o22_e0_j10: z[11,2] - obstacle_slack + 100 alpha[22,0,10]
   <= 102.7
 obs_face_o22_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[22,1,10]
   <= 95.2
 obs_face_o22_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[22,2,10]
   <= 96.7
 obs_face_o22_e3_j10: z[11,0] - obstacle_slack + 100 alpha[22,3,10]
   <= 104.2
 obs_alpha_sum_o22_j11: alpha[22,0,11] + alpha[22,1,11] + alpha[22,2,11]
   + alpha[22,3,11] >= 1
 obs_face_o22_e0_j11: z[12,2] - obstacle_slack + 100 alpha[22,0,11]
   <= 102.7
 obs_face_o22_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[22,1,11]
   <= 95.2
 obs_face_o22_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[22,2,11]
   <= 96.7
 obs_face_o22_e3_j11: z[12,0] - obstacle_slack + 100 alpha[22,3,11]
   <= 104.2
 obs_alpha_sum_o22_j12: alpha[22,0,12] + alpha[22,1,12] + alpha[22,2,12]
   + alpha[22,3,12] >= 1
 obs_face_o22_e0_j12: z[13,2] - obstacle_slack + 100 alpha[22,0,12]
   <= 102.7
 obs_face_o22_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[22,1,12]
   <= 95.2
 obs_face_o22_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[22,2,12]
   <= 96.7
 obs_face_o22_e3_j12: z[13,0] - obstacle_slack + 100 alpha[22,3,12]
   <= 104.2
 obs_alpha_sum_o22_j13: alpha[22,0,13] + alpha[22,1,13] + alpha[22,2,13]
   + alpha[22,3,13] >= 1
 obs_face_o22_e0_j13: z[14,2] - obstacle_slack + 100 alpha[22,0,13]
   <= 102.7
 obs_face_o22_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[22,1,13]
   <= 95.2
 obs_face_o22_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[22,2,13]
   <= 96.7
 obs_face_o22_e3_j13: z[14,0] - obstacle_slack + 100 alpha[22,3,13]
   <= 104.2
 obs_alpha_sum_o22_j14: alpha[22,0,14] + alpha[22,1,14] + alpha[22,2,14]
   + alpha[22,3,14] >= 1
 obs_face_o22_e0_j14: z[15,2] - obstacle_slack + 100 alpha[22,0,14]
   <= 102.7
 obs_face_o22_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[22,1,14]
   <= 95.2
 obs_face_o22_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[22,2,14]
   <= 96.7
 obs_face_o22_e3_j14: z[15,0] - obstacle_slack + 100 alpha[22,3,14]
   <= 104.2
 obs_alpha_sum_o22_j15: alpha[22,0,15] + alpha[22,1,15] + alpha[22,2,15]
   + alpha[22,3,15] >= 1
 obs_face_o22_e0_j15: z[16,2] - obstacle_slack + 100 alpha[22,0,15]
   <= 102.7
 obs_face_o22_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[22,1,15]
   <= 95.2
 obs_face_o22_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[22,2,15]
   <= 96.7
 obs_face_o22_e3_j15: z[16,0] - obstacle_slack + 100 alpha[22,3,15]
   <= 104.2
 obs_alpha_sum_o22_j16: alpha[22,0,16] + alpha[22,1,16] + alpha[22,2,16]
   + alpha[22,3,16] >= 1
 obs_face_o22_e0_j16: z[17,2] - obstacle_slack + 100 alpha[22,0,16]
   <= 102.7
 obs_face_o22_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[22,1,16]
   <= 95.2
 obs_face_o22_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[22,2,16]
   <= 96.7
 obs_face_o22_e3_j16: z[17,0] - obstacle_slack + 100 alpha[22,3,16]
   <= 104.2
 obs_alpha_sum_o22_j17: alpha[22,0,17] + alpha[22,1,17] + alpha[22,2,17]
   + alpha[22,3,17] >= 1
 obs_face_o22_e0_j17: z[18,2] - obstacle_slack + 100 alpha[22,0,17]
   <= 102.7
 obs_face_o22_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[22,1,17]
   <= 95.2
 obs_face_o22_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[22,2,17]
   <= 96.7
 obs_face_o22_e3_j17: z[18,0] - obstacle_slack + 100 alpha[22,3,17]
   <= 104.2
 obs_alpha_sum_o22_j18: alpha[22,0,18] + alpha[22,1,18] + alpha[22,2,18]
   + alpha[22,3,18] >= 1
 obs_face_o22_e0_j18: z[19,2] - obstacle_slack + 100 alpha[22,0,18]
   <= 102.7
 obs_face_o22_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[22,1,18]
   <= 95.2
 obs_face_o22_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[22,2,18]
   <= 96.7
 obs_face_o22_e3_j18: z[19,0] - obstacle_slack + 100 alpha[22,3,18]
   <= 104.2
 obs_alpha_sum_o22_j19: alpha[22,0,19] + alpha[22,1,19] + alpha[22,2,19]
   + alpha[22,3,19] >= 1
 obs_face_o22_e0_j19: z[20,2] - obstacle_slack + 100 alpha[22,0,19]
   <= 102.7
 obs_face_o22_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[22,1,19]
   <= 95.2
 obs_face_o22_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[22,2,19]
   <= 96.7
 obs_face_o22_e3_j19: z[20,0] - obstacle_slack + 100 alpha[22,3,19]
   <= 104.2
 obs_alpha_sum_o22_j20: alpha[22,0,20] + alpha[22,1,20] + alpha[22,2,20]
   + alpha[22,3,20] >= 1
 obs_face_o22_e0_j20: z[21,2] - obstacle_slack + 100 alpha[22,0,20]
   <= 102.7
 obs_face_o22_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[22,1,20]
   <= 95.2
 obs_face_o22_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[22,2,20]
   <= 96.7
 obs_face_o22_e3_j20: z[21,0] - obstacle_slack + 100 alpha[22,3,20]
   <= 104.2
 obs_alpha_sum_o22_j21: alpha[22,0,21] + alpha[22,1,21] + alpha[22,2,21]
   + alpha[22,3,21] >= 1
 obs_face_o22_e0_j21: z[22,2] - obstacle_slack + 100 alpha[22,0,21]
   <= 102.7
 obs_face_o22_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[22,1,21]
   <= 95.2
 obs_face_o22_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[22,2,21]
   <= 96.7
 obs_face_o22_e3_j21: z[22,0] - obstacle_slack + 100 alpha[22,3,21]
   <= 104.2
 obs_alpha_sum_o22_j22: alpha[22,0,22] + alpha[22,1,22] + alpha[22,2,22]
   + alpha[22,3,22] >= 1
 obs_face_o22_e0_j22: z[23,2] - obstacle_slack + 100 alpha[22,0,22]
   <= 102.7
 obs_face_o22_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[22,1,22]
   <= 95.2
 obs_face_o22_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[22,2,22]
   <= 96.7
 obs_face_o22_e3_j22: z[23,0] - obstacle_slack + 100 alpha[22,3,22]
   <= 104.2
 obs_alpha_sum_o22_j23: alpha[22,0,23] + alpha[22,1,23] + alpha[22,2,23]
   + alpha[22,3,23] >= 1
 obs_face_o22_e0_j23: z[24,2] - obstacle_slack + 100 alpha[22,0,23]
   <= 102.7
 obs_face_o22_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[22,1,23]
   <= 95.2
 obs_face_o22_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[22,2,23]
   <= 96.7
 obs_face_o22_e3_j23: z[24,0] - obstacle_slack + 100 alpha[22,3,23]
   <= 104.2
 obs_alpha_sum_o22_j24: alpha[22,0,24] + alpha[22,1,24] + alpha[22,2,24]
   + alpha[22,3,24] >= 1
 obs_face_o22_e0_j24: z[25,2] - obstacle_slack + 100 alpha[22,0,24]
   <= 102.7
 obs_face_o22_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[22,1,24]
   <= 95.2
 obs_face_o22_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[22,2,24]
   <= 96.7
 obs_face_o22_e3_j24: z[25,0] - obstacle_slack + 100 alpha[22,3,24]
   <= 104.2
 obs_alpha_sum_o22_j25: alpha[22,0,25] + alpha[22,1,25] + alpha[22,2,25]
   + alpha[22,3,25] >= 1
 obs_face_o22_e0_j25: z[26,2] - obstacle_slack + 100 alpha[22,0,25]
   <= 102.7
 obs_face_o22_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[22,1,25]
   <= 95.2
 obs_face_o22_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[22,2,25]
   <= 96.7
 obs_face_o22_e3_j25: z[26,0] - obstacle_slack + 100 alpha[22,3,25]
   <= 104.2
 obs_alpha_sum_o22_j26: alpha[22,0,26] + alpha[22,1,26] + alpha[22,2,26]
   + alpha[22,3,26] >= 1
 obs_face_o22_e0_j26: z[27,2] - obstacle_slack + 100 alpha[22,0,26]
   <= 102.7
 obs_face_o22_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[22,1,26]
   <= 95.2
 obs_face_o22_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[22,2,26]
   <= 96.7
 obs_face_o22_e3_j26: z[27,0] - obstacle_slack + 100 alpha[22,3,26]
   <= 104.2
 obs_alpha_sum_o22_j27: alpha[22,0,27] + alpha[22,1,27] + alpha[22,2,27]
   + alpha[22,3,27] >= 1
 obs_face_o22_e0_j27: z[28,2] - obstacle_slack + 100 alpha[22,0,27]
   <= 102.7
 obs_face_o22_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[22,1,27]
   <= 95.2
 obs_face_o22_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[22,2,27]
   <= 96.7
 obs_face_o22_e3_j27: z[28,0] - obstacle_slack + 100 alpha[22,3,27]
   <= 104.2
 obs_alpha_sum_o22_j28: alpha[22,0,28] + alpha[22,1,28] + alpha[22,2,28]
   + alpha[22,3,28] >= 1
 obs_face_o22_e0_j28: z[29,2] - obstacle_slack + 100 alpha[22,0,28]
   <= 102.7
 obs_face_o22_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[22,1,28]
   <= 95.2
 obs_face_o22_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[22,2,28]
   <= 96.7
 obs_face_o22_e3_j28: z[29,0] - obstacle_slack + 100 alpha[22,3,28]
   <= 104.2
 obs_alpha_sum_o22_j29: alpha[22,0,29] + alpha[22,1,29] + alpha[22,2,29]
   + alpha[22,3,29] >= 1
 obs_face_o22_e0_j29: z[30,2] - obstacle_slack + 100 alpha[22,0,29]
   <= 102.7
 obs_face_o22_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[22,1,29]
   <= 95.2
 obs_face_o22_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[22,2,29]
   <= 96.7
 obs_face_o22_e3_j29: z[30,0] - obstacle_slack + 100 alpha[22,3,29]
   <= 104.2
 obs_alpha_sum_o23_j0: alpha[23,0,0] + alpha[23,1,0] + alpha[23,2,0]
   + alpha[23,3,0] >= 1
 obs_face_o23_e0_j0: z[1,2] - obstacle_slack + 100 alpha[23,0,0] <= 101.7
 obs_face_o23_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[23,1,0]
   <= 94.95
 obs_face_o23_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[23,2,0] <= 97.7
 obs_face_o23_e3_j0: z[1,0] - obstacle_slack + 100 alpha[23,3,0] <= 104.45
 obs_alpha_sum_o23_j1: alpha[23,0,1] + alpha[23,1,1] + alpha[23,2,1]
   + alpha[23,3,1] >= 1
 obs_face_o23_e0_j1: z[2,2] - obstacle_slack + 100 alpha[23,0,1] <= 101.7
 obs_face_o23_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[23,1,1]
   <= 94.95
 obs_face_o23_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[23,2,1] <= 97.7
 obs_face_o23_e3_j1: z[2,0] - obstacle_slack + 100 alpha[23,3,1] <= 104.45
 obs_alpha_sum_o23_j2: alpha[23,0,2] + alpha[23,1,2] + alpha[23,2,2]
   + alpha[23,3,2] >= 1
 obs_face_o23_e0_j2: z[3,2] - obstacle_slack + 100 alpha[23,0,2] <= 101.7
 obs_face_o23_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[23,1,2]
   <= 94.95
 obs_face_o23_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[23,2,2] <= 97.7
 obs_face_o23_e3_j2: z[3,0] - obstacle_slack + 100 alpha[23,3,2] <= 104.45
 obs_alpha_sum_o23_j3: alpha[23,0,3] + alpha[23,1,3] + alpha[23,2,3]
   + alpha[23,3,3] >= 1
 obs_face_o23_e0_j3: z[4,2] - obstacle_slack + 100 alpha[23,0,3] <= 101.7
 obs_face_o23_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[23,1,3]
   <= 94.95
 obs_face_o23_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[23,2,3] <= 97.7
 obs_face_o23_e3_j3: z[4,0] - obstacle_slack + 100 alpha[23,3,3] <= 104.45
 obs_alpha_sum_o23_j4: alpha[23,0,4] + alpha[23,1,4] + alpha[23,2,4]
   + alpha[23,3,4] >= 1
 obs_face_o23_e0_j4: z[5,2] - obstacle_slack + 100 alpha[23,0,4] <= 101.7
 obs_face_o23_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[23,1,4]
   <= 94.95
 obs_face_o23_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[23,2,4] <= 97.7
 obs_face_o23_e3_j4: z[5,0] - obstacle_slack + 100 alpha[23,3,4] <= 104.45
 obs_alpha_sum_o23_j5: alpha[23,0,5] + alpha[23,1,5] + alpha[23,2,5]
   + alpha[23,3,5] >= 1
 obs_face_o23_e0_j5: z[6,2] - obstacle_slack + 100 alpha[23,0,5] <= 101.7
 obs_face_o23_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[23,1,5]
   <= 94.95
 obs_face_o23_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[23,2,5] <= 97.7
 obs_face_o23_e3_j5: z[6,0] - obstacle_slack + 100 alpha[23,3,5] <= 104.45
 obs_alpha_sum_o23_j6: alpha[23,0,6] + alpha[23,1,6] + alpha[23,2,6]
   + alpha[23,3,6] >= 1
 obs_face_o23_e0_j6: z[7,2] - obstacle_slack + 100 alpha[23,0,6] <= 101.7
 obs_face_o23_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[23,1,6]
   <= 94.95
 obs_face_o23_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[23,2,6] <= 97.7
 obs_face_o23_e3_j6: z[7,0] - obstacle_slack + 100 alpha[23,3,6] <= 104.45
 obs_alpha_sum_o23_j7: alpha[23,0,7] + alpha[23,1,7] + alpha[23,2,7]
   + alpha[23,3,7] >= 1
 obs_face_o23_e0_j7: z[8,2] - obstacle_slack + 100 alpha[23,0,7] <= 101.7
 obs_face_o23_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[23,1,7]
   <= 94.95
 obs_face_o23_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[23,2,7] <= 97.7
 obs_face_o23_e3_j7: z[8,0] - obstacle_slack + 100 alpha[23,3,7] <= 104.45
 obs_alpha_sum_o23_j8: alpha[23,0,8] + alpha[23,1,8] + alpha[23,2,8]
   + alpha[23,3,8] >= 1
 obs_face_o23_e0_j8: z[9,2] - obstacle_slack + 100 alpha[23,0,8] <= 101.7
 obs_face_o23_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[23,1,8]
   <= 94.95
 obs_face_o23_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[23,2,8] <= 97.7
 obs_face_o23_e3_j8: z[9,0] - obstacle_slack + 100 alpha[23,3,8] <= 104.45
 obs_alpha_sum_o23_j9: alpha[23,0,9] + alpha[23,1,9] + alpha[23,2,9]
   + alpha[23,3,9] >= 1
 obs_face_o23_e0_j9: z[10,2] - obstacle_slack + 100 alpha[23,0,9] <= 101.7
 obs_face_o23_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[23,1,9]
   <= 94.95
 obs_face_o23_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[23,2,9]
   <= 97.7
 obs_face_o23_e3_j9: z[10,0] - obstacle_slack + 100 alpha[23,3,9]
   <= 104.45
 obs_alpha_sum_o23_j10: alpha[23,0,10] + alpha[23,1,10] + alpha[23,2,10]
   + alpha[23,3,10] >= 1
 obs_face_o23_e0_j10: z[11,2] - obstacle_slack + 100 alpha[23,0,10]
   <= 101.7
 obs_face_o23_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[23,1,10]
   <= 94.95
 obs_face_o23_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[23,2,10]
   <= 97.7
 obs_face_o23_e3_j10: z[11,0] - obstacle_slack + 100 alpha[23,3,10]
   <= 104.45
 obs_alpha_sum_o23_j11: alpha[23,0,11] + alpha[23,1,11] + alpha[23,2,11]
   + alpha[23,3,11] >= 1
 obs_face_o23_e0_j11: z[12,2] - obstacle_slack + 100 alpha[23,0,11]
   <= 101.7
 obs_face_o23_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[23,1,11]
   <= 94.95
 obs_face_o23_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[23,2,11]
   <= 97.7
 obs_face_o23_e3_j11: z[12,0] - obstacle_slack + 100 alpha[23,3,11]
   <= 104.45
 obs_alpha_sum_o23_j12: alpha[23,0,12] + alpha[23,1,12] + alpha[23,2,12]
   + alpha[23,3,12] >= 1
 obs_face_o23_e0_j12: z[13,2] - obstacle_slack + 100 alpha[23,0,12]
   <= 101.7
 obs_face_o23_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[23,1,12]
   <= 94.95
 obs_face_o23_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[23,2,12]
   <= 97.7
 obs_face_o23_e3_j12: z[13,0] - obstacle_slack + 100 alpha[23,3,12]
   <= 104.45
 obs_alpha_sum_o23_j13: alpha[23,0,13] + alpha[23,1,13] + alpha[23,2,13]
   + alpha[23,3,13] >= 1
 obs_face_o23_e0_j13: z[14,2] - obstacle_slack + 100 alpha[23,0,13]
   <= 101.7
 obs_face_o23_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[23,1,13]
   <= 94.95
 obs_face_o23_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[23,2,13]
   <= 97.7
 obs_face_o23_e3_j13: z[14,0] - obstacle_slack + 100 alpha[23,3,13]
   <= 104.45
 obs_alpha_sum_o23_j14: alpha[23,0,14] + alpha[23,1,14] + alpha[23,2,14]
   + alpha[23,3,14] >= 1
 obs_face_o23_e0_j14: z[15,2] - obstacle_slack + 100 alpha[23,0,14]
   <= 101.7
 obs_face_o23_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[23,1,14]
   <= 94.95
 obs_face_o23_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[23,2,14]
   <= 97.7
 obs_face_o23_e3_j14: z[15,0] - obstacle_slack + 100 alpha[23,3,14]
   <= 104.45
 obs_alpha_sum_o23_j15: alpha[23,0,15] + alpha[23,1,15] + alpha[23,2,15]
   + alpha[23,3,15] >= 1
 obs_face_o23_e0_j15: z[16,2] - obstacle_slack + 100 alpha[23,0,15]
   <= 101.7
 obs_face_o23_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[23,1,15]
   <= 94.95
 obs_face_o23_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[23,2,15]
   <= 97.7
 obs_face_o23_e3_j15: z[16,0] - obstacle_slack + 100 alpha[23,3,15]
   <= 104.45
 obs_alpha_sum_o23_j16: alpha[23,0,16] + alpha[23,1,16] + alpha[23,2,16]
   + alpha[23,3,16] >= 1
 obs_face_o23_e0_j16: z[17,2] - obstacle_slack + 100 alpha[23,0,16]
   <= 101.7
 obs_face_o23_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[23,1,16]
   <= 94.95
 obs_face_o23_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[23,2,16]
   <= 97.7
 obs_face_o23_e3_j16: z[17,0] - obstacle_slack + 100 alpha[23,3,16]
   <= 104.45
 obs_alpha_sum_o23_j17: alpha[23,0,17] + alpha[23,1,17] + alpha[23,2,17]
   + alpha[23,3,17] >= 1
 obs_face_o23_e0_j17: z[18,2] - obstacle_slack + 100 alpha[23,0,17]
   <= 101.7
 obs_face_o23_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[23,1,17]
   <= 94.95
 obs_face_o23_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[23,2,17]
   <= 97.7
 obs_face_o23_e3_j17: z[18,0] - obstacle_slack + 100 alpha[23,3,17]
   <= 104.45
 obs_alpha_sum_o23_j18: alpha[23,0,18] + alpha[23,1,18] + alpha[23,2,18]
   + alpha[23,3,18] >= 1
 obs_face_o23_e0_j18: z[19,2] - obstacle_slack + 100 alpha[23,0,18]
   <= 101.7
 obs_face_o23_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[23,1,18]
   <= 94.95
 obs_face_o23_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[23,2,18]
   <= 97.7
 obs_face_o23_e3_j18: z[19,0] - obstacle_slack + 100 alpha[23,3,18]
   <= 104.45
 obs_alpha_sum_o23_j19: alpha[23,0,19] + alpha[23,1,19] + alpha[23,2,19]
   + alpha[23,3,19] >= 1
 obs_face_o23_e0_j19: z[20,2] - obstacle_slack + 100 alpha[23,0,19]
   <= 101.7
 obs_face_o23_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[23,1,19]
   <= 94.95
 obs_face_o23_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[23,2,19]
   <= 97.7
 obs_face_o23_e3_j19: z[20,0] - obstacle_slack + 100 alpha[23,3,19]
   <= 104.45
 obs_alpha_sum_o23_j20: alpha[23,0,20] + alpha[23,1,20] + alpha[23,2,20]
   + alpha[23,3,20] >= 1
 obs_face_o23_e0_j20: z[21,2] - obstacle_slack + 100 alpha[23,0,20]
   <= 101.7
 obs_face_o23_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[23,1,20]
   <= 94.95
 obs_face_o23_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[23,2,20]
   <= 97.7
 obs_face_o23_e3_j20: z[21,0] - obstacle_slack + 100 alpha[23,3,20]
   <= 104.45
 obs_alpha_sum_o23_j21: alpha[23,0,21] + alpha[23,1,21] + alpha[23,2,21]
   + alpha[23,3,21] >= 1
 obs_face_o23_e0_j21: z[22,2] - obstacle_slack + 100 alpha[23,0,21]
   <= 101.7
 obs_face_o23_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[23,1,21]
   <= 94.95
 obs_face_o23_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[23,2,21]
   <= 97.7
 obs_face_o23_e3_j21: z[22,0] - obstacle_slack + 100 alpha[23,3,21]
   <= 104.45
 obs_alpha_sum_o23_j22: alpha[23,0,22] + alpha[23,1,22] + alpha[23,2,22]
   + alpha[23,3,22] >= 1
 obs_face_o23_e0_j22: z[23,2] - obstacle_slack + 100 alpha[23,0,22]
   <= 101.7
 obs_face_o23_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[23,1,22]
   <= 94.95
 obs_face_o23_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[23,2,22]
   <= 97.7
 obs_face_o23_e3_j22: z[23,0] - obstacle_slack + 100 alpha[23,3,22]
   <= 104.45
 obs_alpha_sum_o23_j23: alpha[23,0,23] + alpha[23,1,23] + alpha[23,2,23]
   + alpha[23,3,23] >= 1
 obs_face_o23_e0_j23: z[24,2] - obstacle_slack + 100 alpha[23,0,23]
   <= 101.7
 obs_face_o23_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[23,1,23]
   <= 94.95
 obs_face_o23_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[23,2,23]
   <= 97.7
 obs_face_o23_e3_j23: z[24,0] - obstacle_slack + 100 alpha[23,3,23]
   <= 104.45
 obs_alpha_sum_o23_j24: alpha[23,0,24] + alpha[23,1,24] + alpha[23,2,24]
   + alpha[23,3,24] >= 1
 obs_face_o23_e0_j24: z[25,2] - obstacle_slack + 100 alpha[23,0,24]
   <= 101.7
 obs_face_o23_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[23,1,24]
   <= 94.95
 obs_face_o23_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[23,2,24]
   <= 97.7
 obs_face_o23_e3_j24: z[25,0] - obstacle_slack + 100 alpha[23,3,24]
   <= 104.45
 obs_alpha_sum_o23_j25: alpha[23,0,25] + alpha[23,1,25] + alpha[23,2,25]
   + alpha[23,3,25] >= 1
 obs_face_o23_e0_j25: z[26,2] - obstacle_slack + 100 alpha[23,0,25]
   <= 101.7
 obs_face_o23_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[23,1,25]
   <= 94.95
 obs_face_o23_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[23,2,25]
   <= 97.7
 obs_face_o23_e3_j25: z[26,0] - obstacle_slack + 100 alpha[23,3,25]
   <= 104.45
 obs_alpha_sum_o23_j26: alpha[23,0,26] + alpha[23,1,26] + alpha[23,2,26]
   + alpha[23,3,26] >= 1
 obs_face_o23_e0_j26: z[27,2] - obstacle_slack + 100 alpha[23,0,26]
   <= 101.7
 obs_face_o23_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[23,1,26]
   <= 94.95
 obs_face_o23_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[23,2,26]
   <= 97.7
 obs_face_o23_e3_j26: z[27,0] - obstacle_slack + 100 alpha[23,3,26]
   <= 104.45
 obs_alpha_sum_o23_j27: alpha[23,0,27] + alpha[23,1,27] + alpha[23,2,27]
   + alpha[23,3,27] >= 1
 obs_face_o23_e0_j27: z[28,2] - obstacle_slack + 100 alpha[23,0,27]
   <= 101.7
 obs_face_o23_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[23,1,27]
   <= 94.95
 obs_face_o23_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[23,2,27]
   <= 97.7
 obs_face_o23_e3_j27: z[28,0] - obstacle_slack + 100 alpha[23,3,27]
   <= 104.45
 obs_alpha_sum_o23_j28: alpha[23,0,28] + alpha[23,1,28] + alpha[23,2,28]
   + alpha[23,3,28] >= 1
 obs_face_o23_e0_j28: z[29,2] - obstacle_slack + 100 alpha[23,0,28]
   <= 101.7
 obs_face_o23_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[23,1,28]
   <= 94.95
 obs_face_o23_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[23,2,28]
   <= 97.7
 obs_face_o23_e3_j28: z[29,0] - obstacle_slack + 100 alpha[23,3,28]
   <= 104.45
 obs_alpha_sum_o23_j29: alpha[23,0,29] + alpha[23,1,29] + alpha[23,2,29]
   + alpha[23,3,29] >= 1
 obs_face_o23_e0_j29: z[30,2] - obstacle_slack + 100 alpha[23,0,29]
   <= 101.7
 obs_face_o23_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[23,1,29]
   <= 94.95
 obs_face_o23_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[23,2,29]
   <= 97.7
 obs_face_o23_e3_j29: z[30,0] - obstacle_slack + 100 alpha[23,3,29]
   <= 104.45
 obs_alpha_sum_o24_j0: alpha[24,0,0] + alpha[24,1,0] + alpha[24,2,0]
   + alpha[24,3,0] >= 1
 obs_face_o24_e0_j0: z[1,2] - obstacle_slack + 100 alpha[24,0,0] <= 101.95
 obs_face_o24_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[24,1,0]
   <= 94.95
 obs_face_o24_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[24,2,0]
   <= 97.45
 obs_face_o24_e3_j0: z[1,0] - obstacle_slack + 100 alpha[24,3,0] <= 104.45
 obs_alpha_sum_o24_j1: alpha[24,0,1] + alpha[24,1,1] + alpha[24,2,1]
   + alpha[24,3,1] >= 1
 obs_face_o24_e0_j1: z[2,2] - obstacle_slack + 100 alpha[24,0,1] <= 101.95
 obs_face_o24_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[24,1,1]
   <= 94.95
 obs_face_o24_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[24,2,1]
   <= 97.45
 obs_face_o24_e3_j1: z[2,0] - obstacle_slack + 100 alpha[24,3,1] <= 104.45
 obs_alpha_sum_o24_j2: alpha[24,0,2] + alpha[24,1,2] + alpha[24,2,2]
   + alpha[24,3,2] >= 1
 obs_face_o24_e0_j2: z[3,2] - obstacle_slack + 100 alpha[24,0,2] <= 101.95
 obs_face_o24_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[24,1,2]
   <= 94.95
 obs_face_o24_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[24,2,2]
   <= 97.45
 obs_face_o24_e3_j2: z[3,0] - obstacle_slack + 100 alpha[24,3,2] <= 104.45
 obs_alpha_sum_o24_j3: alpha[24,0,3] + alpha[24,1,3] + alpha[24,2,3]
   + alpha[24,3,3] >= 1
 obs_face_o24_e0_j3: z[4,2] - obstacle_slack + 100 alpha[24,0,3] <= 101.95
 obs_face_o24_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[24,1,3]
   <= 94.95
 obs_face_o24_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[24,2,3]
   <= 97.45
 obs_face_o24_e3_j3: z[4,0] - obstacle_slack + 100 alpha[24,3,3] <= 104.45
 obs_alpha_sum_o24_j4: alpha[24,0,4] + alpha[24,1,4] + alpha[24,2,4]
   + alpha[24,3,4] >= 1
 obs_face_o24_e0_j4: z[5,2] - obstacle_slack + 100 alpha[24,0,4] <= 101.95
 obs_face_o24_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[24,1,4]
   <= 94.95
 obs_face_o24_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[24,2,4]
   <= 97.45
 obs_face_o24_e3_j4: z[5,0] - obstacle_slack + 100 alpha[24,3,4] <= 104.45
 obs_alpha_sum_o24_j5: alpha[24,0,5] + alpha[24,1,5] + alpha[24,2,5]
   + alpha[24,3,5] >= 1
 obs_face_o24_e0_j5: z[6,2] - obstacle_slack + 100 alpha[24,0,5] <= 101.95
 obs_face_o24_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[24,1,5]
   <= 94.95
 obs_face_o24_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[24,2,5]
   <= 97.45
 obs_face_o24_e3_j5: z[6,0] - obstacle_slack + 100 alpha[24,3,5] <= 104.45
 obs_alpha_sum_o24_j6: alpha[24,0,6] + alpha[24,1,6] + alpha[24,2,6]
   + alpha[24,3,6] >= 1
 obs_face_o24_e0_j6: z[7,2] - obstacle_slack + 100 alpha[24,0,6] <= 101.95
 obs_face_o24_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[24,1,6]
   <= 94.95
 obs_face_o24_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[24,2,6]
   <= 97.45
 obs_face_o24_e3_j6: z[7,0] - obstacle_slack + 100 alpha[24,3,6] <= 104.45
 obs_alpha_sum_o24_j7: alpha[24,0,7] + alpha[24,1,7] + alpha[24,2,7]
   + alpha[24,3,7] >= 1
 obs_face_o24_e0_j7: z[8,2] - obstacle_slack + 100 alpha[24,0,7] <= 101.95
 obs_face_o24_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[24,1,7]
   <= 94.95
 obs_face_o24_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[24,2,7]
   <= 97.45
 obs_face_o24_e3_j7: z[8,0] - obstacle_slack + 100 alpha[24,3,7] <= 104.45
 obs_alpha_sum_o24_j8: alpha[24,0,8] + alpha[24,1,8] + alpha[24,2,8]
   + alpha[24,3,8] >= 1
 obs_face_o24_e0_j8: z[9,2] - obstacle_slack + 100 alpha[24,0,8] <= 101.95
 obs_face_o24_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[24,1,8]
   <= 94.95
 obs_face_o24_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[24,2,8]
   <= 97.45
 obs_face_o24_e3_j8: z[9,0] - obstacle_slack + 100 alpha[24,3,8] <= 104.45
 obs_alpha_sum_o24_j9: alpha[24,0,9] + alpha[24,1,9] + alpha[24,2,9]
   + alpha[24,3,9] >= 1
 obs_face_o24_e0_j9: z[10,2] - obstacle_slack + 100 alpha[24,0,9]
   <= 101.95
 obs_face_o24_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[24,1,9]
   <= 94.95
 obs_face_o24_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[24,2,9]
   <= 97.45
 obs_face_o24_e3_j9: z[10,0] - obstacle_slack + 100 alpha[24,3,9]
   <= 104.45
 obs_alpha_sum_o24_j10: alpha[24,0,10] + alpha[24,1,10] + alpha[24,2,10]
   + alpha[24,3,10] >= 1
 obs_face_o24_e0_j10: z[11,2] - obstacle_slack + 100 alpha[24,0,10]
   <= 101.95
 obs_face_o24_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[24,1,10]
   <= 94.95
 obs_face_o24_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[24,2,10]
   <= 97.45
 obs_face_o24_e3_j10: z[11,0] - obstacle_slack + 100 alpha[24,3,10]
   <= 104.45
 obs_alpha_sum_o24_j11: alpha[24,0,11] + alpha[24,1,11] + alpha[24,2,11]
   + alpha[24,3,11] >= 1
 obs_face_o24_e0_j11: z[12,2] - obstacle_slack + 100 alpha[24,0,11]
   <= 101.95
 obs_face_o24_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[24,1,11]
   <= 94.95
 obs_face_o24_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[24,2,11]
   <= 97.45
 obs_face_o24_e3_j11: z[12,0] - obstacle_slack + 100 alpha[24,3,11]
   <= 104.45
 obs_alpha_sum_o24_j12: alpha[24,0,12] + alpha[24,1,12] + alpha[24,2,12]
   + alpha[24,3,12] >= 1
 obs_face_o24_e0_j12: z[13,2] - obstacle_slack + 100 alpha[24,0,12]
   <= 101.95
 obs_face_o24_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[24,1,12]
   <= 94.95
 obs_face_o24_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[24,2,12]
   <= 97.45
 obs_face_o24_e3_j12: z[13,0] - obstacle_slack + 100 alpha[24,3,12]
   <= 104.45
 obs_alpha_sum_o24_j13: alpha[24,0,13] + alpha[24,1,13] + alpha[24,2,13]
   + alpha[24,3,13] >= 1
 obs_face_o24_e0_j13: z[14,2] - obstacle_slack + 100 alpha[24,0,13]
   <= 101.95
 obs_face_o24_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[24,1,13]
   <= 94.95
 obs_face_o24_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[24,2,13]
   <= 97.45
 obs_face_o24_e3_j13: z[14,0] - obstacle_slack + 100 alpha[24,3,13]
   <= 104.45
 obs_alpha_sum_o24_j14: alpha[24,0,14] + alpha[24,1,14] + alpha[24,2,14]
   + alpha[24,3,14] >= 1
 obs_face_o24_e0_j14: z[15,2] - obstacle_slack + 100 alpha[24,0,14]
   <= 101.95
 obs_face_o24_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[24,1,14]
   <= 94.95
 obs_face_o24_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[24,2,14]
   <= 97.45
 obs_face_o24_e3_j14: z[15,0] - obstacle_slack + 100 alpha[24,3,14]
   <= 104.45
 obs_alpha_sum_o24_j15: alpha[24,0,15] + alpha[24,1,15] + alpha[24,2,15]
   + alpha[24,3,15] >= 1
 obs_face_o24_e0_j15: z[16,2] - obstacle_slack + 100 alpha[24,0,15]
   <= 101.95
 obs_face_o24_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[24,1,15]
   <= 94.95
 obs_face_o24_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[24,2,15]
   <= 97.45
 obs_face_o24_e3_j15: z[16,0] - obstacle_slack + 100 alpha[24,3,15]
   <= 104.45
 obs_alpha_sum_o24_j16: alpha[24,0,16] + alpha[24,1,16] + alpha[24,2,16]
   + alpha[24,3,16] >= 1
 obs_face_o24_e0_j16: z[17,2] - obstacle_slack + 100 alpha[24,0,16]
   <= 101.95
 obs_face_o24_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[24,1,16]
   <= 94.95
 obs_face_o24_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[24,2,16]
   <= 97.45
 obs_face_o24_e3_j16: z[17,0] - obstacle_slack + 100 alpha[24,3,16]
   <= 104.45
 obs_alpha_sum_o24_j17: alpha[24,0,17] + alpha[24,1,17] + alpha[24,2,17]
   + alpha[24,3,17] >= 1
 obs_face_o24_e0_j17: z[18,2] - obstacle_slack + 100 alpha[24,0,17]
   <= 101.95
 obs_face_o24_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[24,1,17]
   <= 94.95
 obs_face_o24_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[24,2,17]
   <= 97.45
 obs_face_o24_e3_j17: z[18,0] - obstacle_slack + 100 alpha[24,3,17]
   <= 104.45
 obs_alpha_sum_o24_j18: alpha[24,0,18] + alpha[24,1,18] + alpha[24,2,18]
   + alpha[24,3,18] >= 1
 obs_face_o24_e0_j18: z[19,2] - obstacle_slack + 100 alpha[24,0,18]
   <= 101.95
 obs_face_o24_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[24,1,18]
   <= 94.95
 obs_face_o24_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[24,2,18]
   <= 97.45
 obs_face_o24_e3_j18: z[19,0] - obstacle_slack + 100 alpha[24,3,18]
   <= 104.45
 obs_alpha_sum_o24_j19: alpha[24,0,19] + alpha[24,1,19] + alpha[24,2,19]
   + alpha[24,3,19] >= 1
 obs_face_o24_e0_j19: z[20,2] - obstacle_slack + 100 alpha[24,0,19]
   <= 101.95
 obs_face_o24_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[24,1,19]
   <= 94.95
 obs_face_o24_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[24,2,19]
   <= 97.45
 obs_face_o24_e3_j19: z[20,0] - obstacle_slack + 100 alpha[24,3,19]
   <= 104.45
 obs_alpha_sum_o24_j20: alpha[24,0,20] + alpha[24,1,20] + alpha[24,2,20]
   + alpha[24,3,20] >= 1
 obs_face_o24_e0_j20: z[21,2] - obstacle_slack + 100 alpha[24,0,20]
   <= 101.95
 obs_face_o24_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[24,1,20]
   <= 94.95
 obs_face_o24_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[24,2,20]
   <= 97.45
 obs_face_o24_e3_j20: z[21,0] - obstacle_slack + 100 alpha[24,3,20]
   <= 104.45
 obs_alpha_sum_o24_j21: alpha[24,0,21] + alpha[24,1,21] + alpha[24,2,21]
   + alpha[24,3,21] >= 1
 obs_face_o24_e0_j21: z[22,2] - obstacle_slack + 100 alpha[24,0,21]
   <= 101.95
 obs_face_o24_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[24,1,21]
   <= 94.95
 obs_face_o24_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[24,2,21]
   <= 97.45
 obs_face_o24_e3_j21: z[22,0] - obstacle_slack + 100 alpha[24,3,21]
   <= 104.45
 obs_alpha_sum_o24_j22: alpha[24,0,22] + alpha[24,1,22] + alpha[24,2,22]
   + alpha[24,3,22] >= 1
 obs_face_o24_e0_j22: z[23,2] - obstacle_slack + 100 alpha[24,0,22]
   <= 101.95
 obs_face_o24_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[24,1,22]
   <= 94.95
 obs_face_o24_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[24,2,22]
   <= 97.45
 obs_face_o24_e3_j22: z[23,0] - obstacle_slack + 100 alpha[24,3,22]
   <= 104.45
 obs_alpha_sum_o24_j23: alpha[24,0,23] + alpha[24,1,23] + alpha[24,2,23]
   + alpha[24,3,23] >= 1
 obs_face_o24_e0_j23: z[24,2] - obstacle_slack + 100 alpha[24,0,23]
   <= 101.95
 obs_face_o24_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[24,1,23]
   <= 94.95
 obs_face_o24_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[24,2,23]
   <= 97.45
 obs_face_o24_e3_j23: z[24,0] - obstacle_slack + 100 alpha[24,3,23]
   <= 104.45
 obs_alpha_sum_o24_j24: alpha[24,0,24] + alpha[24,1,24] + alpha[24,2,24]
   + alpha[24,3,24] >= 1
 obs_face_o24_e0_j24: z[25,2] - obstacle_slack + 100 alpha[24,0,24]
   <= 101.95
 obs_face_o24_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[24,1,24]
   <= 94.95
 obs_face_o24_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[24,2,24]
   <= 97.45
 obs_face_o24_e3_j24: z[25,0] - obstacle_slack + 100 alpha[24,3,24]
   <= 104.45
 obs_alpha_sum_o24_j25: alpha[24,0,25] + alpha[24,1,25] + alpha[24,2,25]
   + alpha[24,3,25] >= 1
 obs_face_o24_e0_j25: z[26,2] - obstacle_slack + 100 alpha[24,0,25]
   <= 101.95
 obs_face_o24_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[24,1,25]
   <= 94.95
 obs_face_o24_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[24,2,25]
   <= 97.45
 obs_face_o24_e3_j25: z[26,0] - obstacle_slack + 100 alpha[24,3,25]
   <= 104.45
 obs_alpha_sum_o24_j26: alpha[24,0,26] + alpha[24,1,26] + alpha[24,2,26]
   + alpha[24,3,26] >= 1
 obs_face_o24_e0_j26: z[27,2] - obstacle_slack + 100 alpha[24,0,26]
   <= 101.95
 obs_face_o24_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[24,1,26]
   <= 94.95
 obs_face_o24_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[24,2,26]
   <= 97.45
 obs_face_o24_e3_j26: z[27,0] - obstacle_slack + 100 alpha[24,3,26]
   <= 104.45
 obs_alpha_sum_o24_j27: alpha[24,0,27] + alpha[24,1,27] + alpha[24,2,27]
   + alpha[24,3,27] >= 1
 obs_face_o24_e0_j27: z[28,2] - obstacle_slack + 100 alpha[24,0,27]
   <= 101.95
 obs_face_o24_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[24,1,27]
   <= 94.95
 obs_face_o24_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[24,2,27]
   <= 97.45
 obs_face_o24_e3_j27: z[28,0] - obstacle_slack + 100 alpha[24,3,27]
   <= 104.45
 obs_alpha_sum_o24_j28: alpha[24,0,28] + alpha[24,1,28] + alpha[24,2,28]
   + alpha[24,3,28] >= 1
 obs_face_o24_e0_j28: z[29,2] - obstacle_slack + 100 alpha[24,0,28]
   <= 101.95
 obs_face_o24_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[24,1,28]
   <= 94.95
 obs_face_o24_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[24,2,28]
   <= 97.45
 obs_face_o24_e3_j28: z[29,0] - obstacle_slack + 100 alpha[24,3,28]
   <= 104.45
 obs_alpha_sum_o24_j29: alpha[24,0,29] + alpha[24,1,29] + alpha[24,2,29]
   + alpha[24,3,29] >= 1
 obs_face_o24_e0_j29: z[30,2] - obstacle_slack + 100 alpha[24,0,29]
   <= 101.95
 obs_face_o24_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[24,1,29]
   <= 94.95
 obs_face_o24_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[24,2,29]
   <= 97.45
 obs_face_o24_e3_j29: z[30,0] - obstacle_slack + 100 alpha[24,3,29]
   <= 104.45
 obs_alpha_sum_o25_j0: alpha[25,0,0] + alpha[25,1,0] + alpha[25,2,0]
   + alpha[25,3,0] >= 1
 obs_face_o25_e0_j0: z[1,2] - obstacle_slack + 100 alpha[25,0,0] <= 102.2
 obs_face_o25_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[25,1,0]
   <= 94.95
 obs_face_o25_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[25,2,0] <= 97.2
 obs_face_o25_e3_j0: z[1,0] - obstacle_slack + 100 alpha[25,3,0] <= 104.45
 obs_alpha_sum_o25_j1: alpha[25,0,1] + alpha[25,1,1] + alpha[25,2,1]
   + alpha[25,3,1] >= 1
 obs_face_o25_e0_j1: z[2,2] - obstacle_slack + 100 alpha[25,0,1] <= 102.2
 obs_face_o25_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[25,1,1]
   <= 94.95
 obs_face_o25_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[25,2,1] <= 97.2
 obs_face_o25_e3_j1: z[2,0] - obstacle_slack + 100 alpha[25,3,1] <= 104.45
 obs_alpha_sum_o25_j2: alpha[25,0,2] + alpha[25,1,2] + alpha[25,2,2]
   + alpha[25,3,2] >= 1
 obs_face_o25_e0_j2: z[3,2] - obstacle_slack + 100 alpha[25,0,2] <= 102.2
 obs_face_o25_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[25,1,2]
   <= 94.95
 obs_face_o25_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[25,2,2] <= 97.2
 obs_face_o25_e3_j2: z[3,0] - obstacle_slack + 100 alpha[25,3,2] <= 104.45
 obs_alpha_sum_o25_j3: alpha[25,0,3] + alpha[25,1,3] + alpha[25,2,3]
   + alpha[25,3,3] >= 1
 obs_face_o25_e0_j3: z[4,2] - obstacle_slack + 100 alpha[25,0,3] <= 102.2
 obs_face_o25_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[25,1,3]
   <= 94.95
 obs_face_o25_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[25,2,3] <= 97.2
 obs_face_o25_e3_j3: z[4,0] - obstacle_slack + 100 alpha[25,3,3] <= 104.45
 obs_alpha_sum_o25_j4: alpha[25,0,4] + alpha[25,1,4] + alpha[25,2,4]
   + alpha[25,3,4] >= 1
 obs_face_o25_e0_j4: z[5,2] - obstacle_slack + 100 alpha[25,0,4] <= 102.2
 obs_face_o25_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[25,1,4]
   <= 94.95
 obs_face_o25_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[25,2,4] <= 97.2
 obs_face_o25_e3_j4: z[5,0] - obstacle_slack + 100 alpha[25,3,4] <= 104.45
 obs_alpha_sum_o25_j5: alpha[25,0,5] + alpha[25,1,5] + alpha[25,2,5]
   + alpha[25,3,5] >= 1
 obs_face_o25_e0_j5: z[6,2] - obstacle_slack + 100 alpha[25,0,5] <= 102.2
 obs_face_o25_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[25,1,5]
   <= 94.95
 obs_face_o25_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[25,2,5] <= 97.2
 obs_face_o25_e3_j5: z[6,0] - obstacle_slack + 100 alpha[25,3,5] <= 104.45
 obs_alpha_sum_o25_j6: alpha[25,0,6] + alpha[25,1,6] + alpha[25,2,6]
   + alpha[25,3,6] >= 1
 obs_face_o25_e0_j6: z[7,2] - obstacle_slack + 100 alpha[25,0,6] <= 102.2
 obs_face_o25_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[25,1,6]
   <= 94.95
 obs_face_o25_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[25,2,6] <= 97.2
 obs_face_o25_e3_j6: z[7,0] - obstacle_slack + 100 alpha[25,3,6] <= 104.45
 obs_alpha_sum_o25_j7: alpha[25,0,7] + alpha[25,1,7] + alpha[25,2,7]
   + alpha[25,3,7] >= 1
 obs_face_o25_e0_j7: z[8,2] - obstacle_slack + 100 alpha[25,0,7] <= 102.2
 obs_face_o25_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[25,1,7]
   <= 94.95
 obs_face_o25_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[25,2,7] <= 97.2
 obs_face_o25_e3_j7: z[8,0] - obstacle_slack + 100 alpha[25,3,7] <= 104.45
 obs_alpha_sum_o25_j8: alpha[25,0,8] + alpha[25,1,8] + alpha[25,2,8]
   + alpha[25,3,8] >= 1
 obs_face_o25_e0_j8: z[9,2] - obstacle_slack + 100 alpha[25,0,8] <= 102.2
 obs_face_o25_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[25,1,8]
   <= 94.95
 obs_face_o25_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[25,2,8] <= 97.2
 obs_face_o25_e3_j8: z[9,0] - obstacle_slack + 100 alpha[25,3,8] <= 104.45
 obs_alpha_sum_o25_j9: alpha[25,0,9] + alpha[25,1,9] + alpha[25,2,9]
   + alpha[25,3,9] >= 1
 obs_face_o25_e0_j9: z[10,2] - obstacle_slack + 100 alpha[25,0,9] <= 102.2
 obs_face_o25_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[25,1,9]
   <= 94.95
 obs_face_o25_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[25,2,9]
   <= 97.2
 obs_face_o25_e3_j9: z[10,0] - obstacle_slack + 100 alpha[25,3,9]
   <= 104.45
 obs_alpha_sum_o25_j10: alpha[25,0,10] + alpha[25,1,10] + alpha[25,2,10]
   + alpha[25,3,10] >= 1
 obs_face_o25_e0_j10: z[11,2] - obstacle_slack + 100 alpha[25,0,10]
   <= 102.2
 obs_face_o25_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[25,1,10]
   <= 94.95
 obs_face_o25_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[25,2,10]
   <= 97.2
 obs_face_o25_e3_j10: z[11,0] - obstacle_slack + 100 alpha[25,3,10]
   <= 104.45
 obs_alpha_sum_o25_j11: alpha[25,0,11] + alpha[25,1,11] + alpha[25,2,11]
   + alpha[25,3,11] >= 1
 obs_face_o25_e0_j11: z[12,2] - obstacle_slack + 100 alpha[25,0,11]
   <= 102.2
 obs_face_o25_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[25,1,11]
   <= 94.95
 obs_face_o25_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[25,2,11]
   <= 97.2
 obs_face_o25_e3_j11: z[12,0] - obstacle_slack + 100 alpha[25,3,11]
   <= 104.45
 obs_alpha_sum_o25_j12: alpha[25,0,12] + alpha[25,1,12] + alpha[25,2,12]
   + alpha[25,3,12] >= 1
 obs_face_o25_e0_j12: z[13,2] - obstacle_slack + 100 alpha[25,0,12]
   <= 102.2
 obs_face_o25_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[25,1,12]
   <= 94.95
 obs_face_o25_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[25,2,12]
   <= 97.2
 obs_face_o25_e3_j12: z[13,0] - obstacle_slack + 100 alpha[25,3,12]
   <= 104.45
 obs_alpha_sum_o25_j13: alpha[25,0,13] + alpha[25,1,13] + alpha[25,2,13]
   + alpha[25,3,13] >= 1
 obs_face_o25_e0_j13: z[14,2] - obstacle_slack + 100 alpha[25,0,13]
   <= 102.2
 obs_face_o25_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[25,1,13]
   <= 94.95
 obs_face_o25_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[25,2,13]
   <= 97.2
 obs_face_o25_e3_j13: z[14,0] - obstacle_slack + 100 alpha[25,3,13]
   <= 104.45
 obs_alpha_sum_o25_j14: alpha[25,0,14] + alpha[25,1,14] + alpha[25,2,14]
   + alpha[25,3,14] >= 1
 obs_face_o25_e0_j14: z[15,2] - obstacle_slack + 100 alpha[25,0,14]
   <= 102.2
 obs_face_o25_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[25,1,14]
   <= 94.95
 obs_face_o25_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[25,2,14]
   <= 97.2
 obs_face_o25_e3_j14: z[15,0] - obstacle_slack + 100 alpha[25,3,14]
   <= 104.45
 obs_alpha_sum_o25_j15: alpha[25,0,15] + alpha[25,1,15] + alpha[25,2,15]
   + alpha[25,3,15] >= 1
 obs_face_o25_e0_j15: z[16,2] - obstacle_slack + 100 alpha[25,0,15]
   <= 102.2
 obs_face_o25_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[25,1,15]
   <= 94.95
 obs_face_o25_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[25,2,15]
   <= 97.2
 obs_face_o25_e3_j15: z[16,0] - obstacle_slack + 100 alpha[25,3,15]
   <= 104.45
 obs_alpha_sum_o25_j16: alpha[25,0,16] + alpha[25,1,16] + alpha[25,2,16]
   + alpha[25,3,16] >= 1
 obs_face_o25_e0_j16: z[17,2] - obstacle_slack + 100 alpha[25,0,16]
   <= 102.2
 obs_face_o25_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[25,1,16]
   <= 94.95
 obs_face_o25_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[25,2,16]
   <= 97.2
 obs_face_o25_e3_j16: z[17,0] - obstacle_slack + 100 alpha[25,3,16]
   <= 104.45
 obs_alpha_sum_o25_j17: alpha[25,0,17] + alpha[25,1,17] + alpha[25,2,17]
   + alpha[25,3,17] >= 1
 obs_face_o25_e0_j17: z[18,2] - obstacle_slack + 100 alpha[25,0,17]
   <= 102.2
 obs_face_o25_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[25,1,17]
   <= 94.95
 obs_face_o25_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[25,2,17]
   <= 97.2
 obs_face_o25_e3_j17: z[18,0] - obstacle_slack + 100 alpha[25,3,17]
   <= 104.45
 obs_alpha_sum_o25_j18: alpha[25,0,18] + alpha[25,1,18] + alpha[25,2,18]
   + alpha[25,3,18] >= 1
 obs_face_o25_e0_j18: z[19,2] - obstacle_slack + 100 alpha[25,0,18]
   <= 102.2
 obs_face_o25_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[25,1,18]
   <= 94.95
 obs_face_o25_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[25,2,18]
   <= 97.2
 obs_face_o25_e3_j18: z[19,0] - obstacle_slack + 100 alpha[25,3,18]
   <= 104.45
 obs_alpha_sum_o25_j19: alpha[25,0,19] + alpha[25,1,19] + alpha[25,2,19]
   + alpha[25,3,19] >= 1
 obs_face_o25_e0_j19: z[20,2] - obstacle_slack + 100 alpha[25,0,19]
   <= 102.2
 obs_face_o25_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[25,1,19]
   <= 94.95
 obs_face_o25_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[25,2,19]
   <= 97.2
 obs_face_o25_e3_j19: z[20,0] - obstacle_slack + 100 alpha[25,3,19]
   <= 104.45
 obs_alpha_sum_o25_j20: alpha[25,0,20] + alpha[25,1,20] + alpha[25,2,20]
   + alpha[25,3,20] >= 1
 obs_face_o25_e0_j20: z[21,2] - obstacle_slack + 100 alpha[25,0,20]
   <= 102.2
 obs_face_o25_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[25,1,20]
   <= 94.95
 obs_face_o25_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[25,2,20]
   <= 97.2
 obs_face_o25_e3_j20: z[21,0] - obstacle_slack + 100 alpha[25,3,20]
   <= 104.45
 obs_alpha_sum_o25_j21: alpha[25,0,21] + alpha[25,1,21] + alpha[25,2,21]
   + alpha[25,3,21] >= 1
 obs_face_o25_e0_j21: z[22,2] - obstacle_slack + 100 alpha[25,0,21]
   <= 102.2
 obs_face_o25_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[25,1,21]
   <= 94.95
 obs_face_o25_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[25,2,21]
   <= 97.2
 obs_face_o25_e3_j21: z[22,0] - obstacle_slack + 100 alpha[25,3,21]
   <= 104.45
 obs_alpha_sum_o25_j22: alpha[25,0,22] + alpha[25,1,22] + alpha[25,2,22]
   + alpha[25,3,22] >= 1
 obs_face_o25_e0_j22: z[23,2] - obstacle_slack + 100 alpha[25,0,22]
   <= 102.2
 obs_face_o25_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[25,1,22]
   <= 94.95
 obs_face_o25_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[25,2,22]
   <= 97.2
 obs_face_o25_e3_j22: z[23,0] - obstacle_slack + 100 alpha[25,3,22]
   <= 104.45
 obs_alpha_sum_o25_j23: alpha[25,0,23] + alpha[25,1,23] + alpha[25,2,23]
   + alpha[25,3,23] >= 1
 obs_face_o25_e0_j23: z[24,2] - obstacle_slack + 100 alpha[25,0,23]
   <= 102.2
 obs_face_o25_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[25,1,23]
   <= 94.95
 obs_face_o25_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[25,2,23]
   <= 97.2
 obs_face_o25_e3_j23: z[24,0] - obstacle_slack + 100 alpha[25,3,23]
   <= 104.45
 obs_alpha_sum_o25_j24: alpha[25,0,24] + alpha[25,1,24] + alpha[25,2,24]
   + alpha[25,3,24] >= 1
 obs_face_o25_e0_j24: z[25,2] - obstacle_slack + 100 alpha[25,0,24]
   <= 102.2
 obs_face_o25_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[25,1,24]
   <= 94.95
 obs_face_o25_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[25,2,24]
   <= 97.2
 obs_face_o25_e3_j24: z[25,0] - obstacle_slack + 100 alpha[25,3,24]
   <= 104.45
 obs_alpha_sum_o25_j25: alpha[25,0,25] + alpha[25,1,25] + alpha[25,2,25]
   + alpha[25,3,25] >= 1
 obs_face_o25_e0_j25: z[26,2] - obstacle_slack + 100 alpha[25,0,25]
   <= 102.2
 obs_face_o25_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[25,1,25]
   <= 94.95
 obs_face_o25_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[25,2,25]
   <= 97.2
 obs_face_o25_e3_j25: z[26,0] - obstacle_slack + 100 alpha[25,3,25]
   <= 104.45
 obs_alpha_sum_o25_j26: alpha[25,0,26] + alpha[25,1,26] + alpha[25,2,26]
   + alpha[25,3,26] >= 1
 obs_face_o25_e0_j26: z[27,2] - obstacle_slack + 100 alpha[25,0,26]
   <= 102.2
 obs_face_o25_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[25,1,26]
   <= 94.95
 obs_face_o25_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[25,2,26]
   <= 97.2
 obs_face_o25_e3_j26: z[27,0] - obstacle_slack + 100 alpha[25,3,26]
   <= 104.45
 obs_alpha_sum_o25_j27: alpha[25,0,27] + alpha[25,1,27] + alpha[25,2,27]
   + alpha[25,3,27] >= 1
 obs_face_o25_e0_j27: z[28,2] - obstacle_slack + 100 alpha[25,0,27]
   <= 102.2
 obs_face_o25_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[25,1,27]
   <= 94.95
 obs_face_o25_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[25,2,27]
   <= 97.2
 obs_face_o25_e3_j27: z[28,0] - obstacle_slack + 100 alpha[25,3,27]
   <= 104.45
 obs_alpha_sum_o25_j28: alpha[25,0,28] + alpha[25,1,28] + alpha[25,2,28]
   + alpha[25,3,28] >= 1
 obs_face_o25_e0_j28: z[29,2] - obstacle_slack + 100 alpha[25,0,28]
   <= 102.2
 obs_face_o25_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[25,1,28]
   <= 94.95
 obs_face_o25_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[25,2,28]
   <= 97.2
 obs_face_o25_e3_j28: z[29,0] - obstacle_slack + 100 alpha[25,3,28]
   <= 104.45
 obs_alpha_sum_o25_j29: alpha[25,0,29] + alpha[25,1,29] + alpha[25,2,29]
   + alpha[25,3,29] >= 1
 obs_face_o25_e0_j29: z[30,2] - obstacle_slack + 100 alpha[25,0,29]
   <= 102.2
 obs_face_o25_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[25,1,29]
   <= 94.95
 obs_face_o25_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[25,2,29]
   <= 97.2
 obs_face_o25_e3_j29: z[30,0] - obstacle_slack + 100 alpha[25,3,29]
   <= 104.45
 obs_alpha_sum_o26_j0: alpha[26,0,0] + alpha[26,1,0] + alpha[26,2,0]
   + alpha[26,3,0] >= 1
 obs_face_o26_e0_j0: z[1,2] - obstacle_slack + 100 alpha[26,0,0] <= 102.45
 obs_face_o26_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[26,1,0]
   <= 94.95
 obs_face_o26_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[26,2,0]
   <= 96.95
 obs_face_o26_e3_j0: z[1,0] - obstacle_slack + 100 alpha[26,3,0] <= 104.45
 obs_alpha_sum_o26_j1: alpha[26,0,1] + alpha[26,1,1] + alpha[26,2,1]
   + alpha[26,3,1] >= 1
 obs_face_o26_e0_j1: z[2,2] - obstacle_slack + 100 alpha[26,0,1] <= 102.45
 obs_face_o26_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[26,1,1]
   <= 94.95
 obs_face_o26_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[26,2,1]
   <= 96.95
 obs_face_o26_e3_j1: z[2,0] - obstacle_slack + 100 alpha[26,3,1] <= 104.45
 obs_alpha_sum_o26_j2: alpha[26,0,2] + alpha[26,1,2] + alpha[26,2,2]
   + alpha[26,3,2] >= 1
 obs_face_o26_e0_j2: z[3,2] - obstacle_slack + 100 alpha[26,0,2] <= 102.45
 obs_face_o26_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[26,1,2]
   <= 94.95
 obs_face_o26_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[26,2,2]
   <= 96.95
 obs_face_o26_e3_j2: z[3,0] - obstacle_slack + 100 alpha[26,3,2] <= 104.45
 obs_alpha_sum_o26_j3: alpha[26,0,3] + alpha[26,1,3] + alpha[26,2,3]
   + alpha[26,3,3] >= 1
 obs_face_o26_e0_j3: z[4,2] - obstacle_slack + 100 alpha[26,0,3] <= 102.45
 obs_face_o26_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[26,1,3]
   <= 94.95
 obs_face_o26_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[26,2,3]
   <= 96.95
 obs_face_o26_e3_j3: z[4,0] - obstacle_slack + 100 alpha[26,3,3] <= 104.45
 obs_alpha_sum_o26_j4: alpha[26,0,4] + alpha[26,1,4] + alpha[26,2,4]
   + alpha[26,3,4] >= 1
 obs_face_o26_e0_j4: z[5,2] - obstacle_slack + 100 alpha[26,0,4] <= 102.45
 obs_face_o26_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[26,1,4]
   <= 94.95
 obs_face_o26_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[26,2,4]
   <= 96.95
 obs_face_o26_e3_j4: z[5,0] - obstacle_slack + 100 alpha[26,3,4] <= 104.45
 obs_alpha_sum_o26_j5: alpha[26,0,5] + alpha[26,1,5] + alpha[26,2,5]
   + alpha[26,3,5] >= 1
 obs_face_o26_e0_j5: z[6,2] - obstacle_slack + 100 alpha[26,0,5] <= 102.45
 obs_face_o26_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[26,1,5]
   <= 94.95
 obs_face_o26_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[26,2,5]
   <= 96.95
 obs_face_o26_e3_j5: z[6,0] - obstacle_slack + 100 alpha[26,3,5] <= 104.45
 obs_alpha_sum_o26_j6: alpha[26,0,6] + alpha[26,1,6] + alpha[26,2,6]
   + alpha[26,3,6] >= 1
 obs_face_o26_e0_j6: z[7,2] - obstacle_slack + 100 alpha[26,0,6] <= 102.45
 obs_face_o26_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[26,1,6]
   <= 94.95
 obs_face_o26_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[26,2,6]
   <= 96.95
 obs_face_o26_e3_j6: z[7,0] - obstacle_slack + 100 alpha[26,3,6] <= 104.45
 obs_alpha_sum_o26_j7: alpha[26,0,7] + alpha[26,1,7] + alpha[26,2,7]
   + alpha[26,3,7] >= 1
 obs_face_o26_e0_j7: z[8,2] - obstacle_slack + 100 alpha[26,0,7] <= 102.45
 obs_face_o26_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[26,1,7]
   <= 94.95
 obs_face_o26_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[26,2,7]
   <= 96.95
 obs_face_o26_e3_j7: z[8,0] - obstacle_slack + 100 alpha[26,3,7] <= 104.45
 obs_alpha_sum_o26_j8: alpha[26,0,8] + alpha[26,1,8] + alpha[26,2,8]
   + alpha[26,3,8] >= 1
 obs_face_o26_e0_j8: z[9,2] - obstacle_slack + 100 alpha[26,0,8] <= 102.45
 obs_face_o26_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[26,1,8]
   <= 94.95
 obs_face_o26_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[26,2,8]
   <= 96.95
 obs_face_o26_e3_j8: z[9,0] - obstacle_slack + 100 alpha[26,3,8] <= 104.45
 obs_alpha_sum_o26_j9: alpha[26,0,9] + alpha[26,1,9] + alpha[26,2,9]
   + alpha[26,3,9] >= 1
 obs_face_o26_e0_j9: z[10,2] - obstacle_slack + 100 alpha[26,0,9]
   <= 102.45
 obs_face_o26_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[26,1,9]
   <= 94.95
 obs_face_o26_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[26,2,9]
   <= 96.95
 obs_face_o26_e3_j9: z[10,0] - obstacle_slack + 100 alpha[26,3,9]
   <= 104.45
 obs_alpha_sum_o26_j10: alpha[26,0,10] + alpha[26,1,10] + alpha[26,2,10]
   + alpha[26,3,10] >= 1
 obs_face_o26_e0_j10: z[11,2] - obstacle_slack + 100 alpha[26,0,10]
   <= 102.45
 obs_face_o26_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[26,1,10]
   <= 94.95
 obs_face_o26_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[26,2,10]
   <= 96.95
 obs_face_o26_e3_j10: z[11,0] - obstacle_slack + 100 alpha[26,3,10]
   <= 104.45
 obs_alpha_sum_o26_j11: alpha[26,0,11] + alpha[26,1,11] + alpha[26,2,11]
   + alpha[26,3,11] >= 1
 obs_face_o26_e0_j11: z[12,2] - obstacle_slack + 100 alpha[26,0,11]
   <= 102.45
 obs_face_o26_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[26,1,11]
   <= 94.95
 obs_face_o26_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[26,2,11]
   <= 96.95
 obs_face_o26_e3_j11: z[12,0] - obstacle_slack + 100 alpha[26,3,11]
   <= 104.45
 obs_alpha_sum_o26_j12: alpha[26,0,12] + alpha[26,1,12] + alpha[26,2,12]
   + alpha[26,3,12] >= 1
 obs_face_o26_e0_j12: z[13,2] - obstacle_slack + 100 alpha[26,0,12]
   <= 102.45
 obs_face_o26_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[26,1,12]
   <= 94.95
 obs_face_o26_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[26,2,12]
   <= 96.95
 obs_face_o26_e3_j12: z[13,0] - obstacle_slack + 100 alpha[26,3,12]
   <= 104.45
 obs_alpha_sum_o26_j13: alpha[26,0,13] + alpha[26,1,13] + alpha[26,2,13]
   + alpha[26,3,13] >= 1
 obs_face_o26_e0_j13: z[14,2] - obstacle_slack + 100 alpha[26,0,13]
   <= 102.45
 obs_face_o26_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[26,1,13]
   <= 94.95
 obs_face_o26_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[26,2,13]
   <= 96.95
 obs_face_o26_e3_j13: z[14,0] - obstacle_slack + 100 alpha[26,3,13]
   <= 104.45
 obs_alpha_sum_o26_j14: alpha[26,0,14] + alpha[26,1,14] + alpha[26,2,14]
   + alpha[26,3,14] >= 1
 obs_face_o26_e0_j14: z[15,2] - obstacle_slack + 100 alpha[26,0,14]
   <= 102.45
 obs_face_o26_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[26,1,14]
   <= 94.95
 obs_face_o26_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[26,2,14]
   <= 96.95
 obs_face_o26_e3_j14: z[15,0] - obstacle_slack + 100 alpha[26,3,14]
   <= 104.45
 obs_alpha_sum_o26_j15: alpha[26,0,15] + alpha[26,1,15] + alpha[26,2,15]
   + alpha[26,3,15] >= 1
 obs_face_o26_e0_j15: z[16,2] - obstacle_slack + 100 alpha[26,0,15]
   <= 102.45
 obs_face_o26_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[26,1,15]
   <= 94.95
 obs_face_o26_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[26,2,15]
   <= 96.95
 obs_face_o26_e3_j15: z[16,0] - obstacle_slack + 100 alpha[26,3,15]
   <= 104.45
 obs_alpha_sum_o26_j16: alpha[26,0,16] + alpha[26,1,16] + alpha[26,2,16]
   + alpha[26,3,16] >= 1
 obs_face_o26_e0_j16: z[17,2] - obstacle_slack + 100 alpha[26,0,16]
   <= 102.45
 obs_face_o26_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[26,1,16]
   <= 94.95
 obs_face_o26_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[26,2,16]
   <= 96.95
 obs_face_o26_e3_j16: z[17,0] - obstacle_slack + 100 alpha[26,3,16]
   <= 104.45
 obs_alpha_sum_o26_j17: alpha[26,0,17] + alpha[26,1,17] + alpha[26,2,17]
   + alpha[26,3,17] >= 1
 obs_face_o26_e0_j17: z[18,2] - obstacle_slack + 100 alpha[26,0,17]
   <= 102.45
 obs_face_o26_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[26,1,17]
   <= 94.95
 obs_face_o26_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[26,2,17]
   <= 96.95
 obs_face_o26_e3_j17: z[18,0] - obstacle_slack + 100 alpha[26,3,17]
   <= 104.45
 obs_alpha_sum_o26_j18: alpha[26,0,18] + alpha[26,1,18] + alpha[26,2,18]
   + alpha[26,3,18] >= 1
 obs_face_o26_e0_j18: z[19,2] - obstacle_slack + 100 alpha[26,0,18]
   <= 102.45
 obs_face_o26_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[26,1,18]
   <= 94.95
 obs_face_o26_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[26,2,18]
   <= 96.95
 obs_face_o26_e3_j18: z[19,0] - obstacle_slack + 100 alpha[26,3,18]
   <= 104.45
 obs_alpha_sum_o26_j19: alpha[26,0,19] + alpha[26,1,19] + alpha[26,2,19]
   + alpha[26,3,19] >= 1
 obs_face_o26_e0_j19: z[20,2] - obstacle_slack + 100 alpha[26,0,19]
   <= 102.45
 obs_face_o26_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[26,1,19]
   <= 94.95
 obs_face_o26_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[26,2,19]
   <= 96.95
 obs_face_o26_e3_j19: z[20,0] - obstacle_slack + 100 alpha[26,3,19]
   <= 104.45
 obs_alpha_sum_o26_j20: alpha[26,0,20] + alpha[26,1,20] + alpha[26,2,20]
   + alpha[26,3,20] >= 1
 obs_face_o26_e0_j20: z[21,2] - obstacle_slack + 100 alpha[26,0,20]
   <= 102.45
 obs_face_o26_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[26,1,20]
   <= 94.95
 obs_face_o26_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[26,2,20]
   <= 96.95
 obs_face_o26_e3_j20: z[21,0] - obstacle_slack + 100 alpha[26,3,20]
   <= 104.45
 obs_alpha_sum_o26_j21: alpha[26,0,21] + alpha[26,1,21] + alpha[26,2,21]
   + alpha[26,3,21] >= 1
 obs_face_o26_e0_j21: z[22,2] - obstacle_slack + 100 alpha[26,0,21]
   <= 102.45
 obs_face_o26_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[26,1,21]
   <= 94.95
 obs_face_o26_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[26,2,21]
   <= 96.95
 obs_face_o26_e3_j21: z[22,0] - obstacle_slack + 100 alpha[26,3,21]
   <= 104.45
 obs_alpha_sum_o26_j22: alpha[26,0,22] + alpha[26,1,22] + alpha[26,2,22]
   + alpha[26,3,22] >= 1
 obs_face_o26_e0_j22: z[23,2] - obstacle_slack + 100 alpha[26,0,22]
   <= 102.45
 obs_face_o26_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[26,1,22]
   <= 94.95
 obs_face_o26_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[26,2,22]
   <= 96.95
 obs_face_o26_e3_j22: z[23,0] - obstacle_slack + 100 alpha[26,3,22]
   <= 104.45
 obs_alpha_sum_o26_j23: alpha[26,0,23] + alpha[26,1,23] + alpha[26,2,23]
   + alpha[26,3,23] >= 1
 obs_face_o26_e0_j23: z[24,2] - obstacle_slack + 100 alpha[26,0,23]
   <= 102.45
 obs_face_o26_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[26,1,23]
   <= 94.95
 obs_face_o26_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[26,2,23]
   <= 96.95
 obs_face_o26_e3_j23: z[24,0] - obstacle_slack + 100 alpha[26,3,23]
   <= 104.45
 obs_alpha_sum_o26_j24: alpha[26,0,24] + alpha[26,1,24] + alpha[26,2,24]
   + alpha[26,3,24] >= 1
 obs_face_o26_e0_j24: z[25,2] - obstacle_slack + 100 alpha[26,0,24]
   <= 102.45
 obs_face_o26_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[26,1,24]
   <= 94.95
 obs_face_o26_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[26,2,24]
   <= 96.95
 obs_face_o26_e3_j24: z[25,0] - obstacle_slack + 100 alpha[26,3,24]
   <= 104.45
 obs_alpha_sum_o26_j25: alpha[26,0,25] + alpha[26,1,25] + alpha[26,2,25]
   + alpha[26,3,25] >= 1
 obs_face_o26_e0_j25: z[26,2] - obstacle_slack + 100 alpha[26,0,25]
   <= 102.45
 obs_face_o26_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[26,1,25]
   <= 94.95
 obs_face_o26_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[26,2,25]
   <= 96.95
 obs_face_o26_e3_j25: z[26,0] - obstacle_slack + 100 alpha[26,3,25]
   <= 104.45
 obs_alpha_sum_o26_j26: alpha[26,0,26] + alpha[26,1,26] + alpha[26,2,26]
   + alpha[26,3,26] >= 1
 obs_face_o26_e0_j26: z[27,2] - obstacle_slack + 100 alpha[26,0,26]
   <= 102.45
 obs_face_o26_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[26,1,26]
   <= 94.95
 obs_face_o26_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[26,2,26]
   <= 96.95
 obs_face_o26_e3_j26: z[27,0] - obstacle_slack + 100 alpha[26,3,26]
   <= 104.45
 obs_alpha_sum_o26_j27: alpha[26,0,27] + alpha[26,1,27] + alpha[26,2,27]
   + alpha[26,3,27] >= 1
 obs_face_o26_e0_j27: z[28,2] - obstacle_slack + 100 alpha[26,0,27]
   <= 102.45
 obs_face_o26_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[26,1,27]
   <= 94.95
 obs_face_o26_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[26,2,27]
   <= 96.95
 obs_face_o26_e3_j27: z[28,0] - obstacle_slack + 100 alpha[26,3,27]
   <= 104.45
 obs_alpha_sum_o26_j28: alpha[26,0,28] + alpha[26,1,28] + alpha[26,2,28]
   + alpha[26,3,28] >= 1
 obs_face_o26_e0_j28: z[29,2] - obstacle_slack + 100 alpha[26,0,28]
   <= 102.45
 obs_face_o26_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[26,1,28]
   <= 94.95
 obs_face_o26_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[26,2,28]
   <= 96.95
 obs_face_o26_e3_j28: z[29,0] - obstacle_slack + 100 alpha[26,3,28]
   <= 104.45
 obs_alpha_sum_o26_j29: alpha[26,0,29] + alpha[26,1,29] + alpha[26,2,29]
   + alpha[26,3,29] >= 1
 obs_face_o26_e0_j29: z[30,2] - obstacle_slack + 100 alpha[26,0,29]
   <= 102.45
 obs_face_o26_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[26,1,29]
   <= 94.95
 obs_face_o26_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[26,2,29]
   <= 96.95
 obs_face_o26_e3_j29: z[30,0] - obstacle_slack + 100 alpha[26,3,29]
   <= 104.45
 obs_alpha_sum_o27_j0: alpha[27,0,0] + alpha[27,1,0] + alpha[27,2,0]
   + alpha[27,3,0] >= 1
 obs_face_o27_e0_j0: z[1,2] - obstacle_slack + 100 alpha[27,0,0] <= 102.7
 obs_face_o27_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[27,1,0]
   <= 94.95
 obs_face_o27_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[27,2,0] <= 96.7
 obs_face_o27_e3_j0: z[1,0] - obstacle_slack + 100 alpha[27,3,0] <= 104.45
 obs_alpha_sum_o27_j1: alpha[27,0,1] + alpha[27,1,1] + alpha[27,2,1]
   + alpha[27,3,1] >= 1
 obs_face_o27_e0_j1: z[2,2] - obstacle_slack + 100 alpha[27,0,1] <= 102.7
 obs_face_o27_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[27,1,1]
   <= 94.95
 obs_face_o27_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[27,2,1] <= 96.7
 obs_face_o27_e3_j1: z[2,0] - obstacle_slack + 100 alpha[27,3,1] <= 104.45
 obs_alpha_sum_o27_j2: alpha[27,0,2] + alpha[27,1,2] + alpha[27,2,2]
   + alpha[27,3,2] >= 1
 obs_face_o27_e0_j2: z[3,2] - obstacle_slack + 100 alpha[27,0,2] <= 102.7
 obs_face_o27_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[27,1,2]
   <= 94.95
 obs_face_o27_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[27,2,2] <= 96.7
 obs_face_o27_e3_j2: z[3,0] - obstacle_slack + 100 alpha[27,3,2] <= 104.45
 obs_alpha_sum_o27_j3: alpha[27,0,3] + alpha[27,1,3] + alpha[27,2,3]
   + alpha[27,3,3] >= 1
 obs_face_o27_e0_j3: z[4,2] - obstacle_slack + 100 alpha[27,0,3] <= 102.7
 obs_face_o27_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[27,1,3]
   <= 94.95
 obs_face_o27_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[27,2,3] <= 96.7
 obs_face_o27_e3_j3: z[4,0] - obstacle_slack + 100 alpha[27,3,3] <= 104.45
 obs_alpha_sum_o27_j4: alpha[27,0,4] + alpha[27,1,4] + alpha[27,2,4]
   + alpha[27,3,4] >= 1
 obs_face_o27_e0_j4: z[5,2] - obstacle_slack + 100 alpha[27,0,4] <= 102.7
 obs_face_o27_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[27,1,4]
   <= 94.95
 obs_face_o27_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[27,2,4] <= 96.7
 obs_face_o27_e3_j4: z[5,0] - obstacle_slack + 100 alpha[27,3,4] <= 104.45
 obs_alpha_sum_o27_j5: alpha[27,0,5] + alpha[27,1,5] + alpha[27,2,5]
   + alpha[27,3,5] >= 1
 obs_face_o27_e0_j5: z[6,2] - obstacle_slack + 100 alpha[27,0,5] <= 102.7
 obs_face_o27_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[27,1,5]
   <= 94.95
 obs_face_o27_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[27,2,5] <= 96.7
 obs_face_o27_e3_j5: z[6,0] - obstacle_slack + 100 alpha[27,3,5] <= 104.45
 obs_alpha_sum_o27_j6: alpha[27,0,6] + alpha[27,1,6] + alpha[27,2,6]
   + alpha[27,3,6] >= 1
 obs_face_o27_e0_j6: z[7,2] - obstacle_slack + 100 alpha[27,0,6] <= 102.7
 obs_face_o27_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[27,1,6]
   <= 94.95
 obs_face_o27_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[27,2,6] <= 96.7
 obs_face_o27_e3_j6: z[7,0] - obstacle_slack + 100 alpha[27,3,6] <= 104.45
 obs_alpha_sum_o27_j7: alpha[27,0,7] + alpha[27,1,7] + alpha[27,2,7]
   + alpha[27,3,7] >= 1
 obs_face_o27_e0_j7: z[8,2] - obstacle_slack + 100 alpha[27,0,7] <= 102.7
 obs_face_o27_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[27,1,7]
   <= 94.95
 obs_face_o27_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[27,2,7] <= 96.7
 obs_face_o27_e3_j7: z[8,0] - obstacle_slack + 100 alpha[27,3,7] <= 104.45
 obs_alpha_sum_o27_j8: alpha[27,0,8] + alpha[27,1,8] + alpha[27,2,8]
   + alpha[27,3,8] >= 1
 obs_face_o27_e0_j8: z[9,2] - obstacle_slack + 100 alpha[27,0,8] <= 102.7
 obs_face_o27_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[27,1,8]
   <= 94.95
 obs_face_o27_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[27,2,8] <= 96.7
 obs_face_o27_e3_j8: z[9,0] - obstacle_slack + 100 alpha[27,3,8] <= 104.45
 obs_alpha_sum_o27_j9: alpha[27,0,9] + alpha[27,1,9] + alpha[27,2,9]
   + alpha[27,3,9] >= 1
 obs_face_o27_e0_j9: z[10,2] - obstacle_slack + 100 alpha[27,0,9] <= 102.7
 obs_face_o27_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[27,1,9]
   <= 94.95
 obs_face_o27_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[27,2,9]
   <= 96.7
 obs_face_o27_e3_j9: z[10,0] - obstacle_slack + 100 alpha[27,3,9]
   <= 104.45
 obs_alpha_sum_o27_j10: alpha[27,0,10] + alpha[27,1,10] + alpha[27,2,10]
   + alpha[27,3,10] >= 1
 obs_face_o27_e0_j10: z[11,2] - obstacle_slack + 100 alpha[27,0,10]
   <= 102.7
 obs_face_o27_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[27,1,10]
   <= 94.95
 obs_face_o27_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[27,2,10]
   <= 96.7
 obs_face_o27_e3_j10: z[11,0] - obstacle_slack + 100 alpha[27,3,10]
   <= 104.45
 obs_alpha_sum_o27_j11: alpha[27,0,11] + alpha[27,1,11] + alpha[27,2,11]
   + alpha[27,3,11] >= 1
 obs_face_o27_e0_j11: z[12,2] - obstacle_slack + 100 alpha[27,0,11]
   <= 102.7
 obs_face_o27_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[27,1,11]
   <= 94.95
 obs_face_o27_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[27,2,11]
   <= 96.7
 obs_face_o27_e3_j11: z[12,0] - obstacle_slack + 100 alpha[27,3,11]
   <= 104.45
 obs_alpha_sum_o27_j12: alpha[27,0,12] + alpha[27,1,12] + alpha[27,2,12]
   + alpha[27,3,12] >= 1
 obs_face_o27_e0_j12: z[13,2] - obstacle_slack + 100 alpha[27,0,12]
   <= 102.7
 obs_face_o27_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[27,1,12]
   <= 94.95
 obs_face_o27_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[27,2,12]
   <= 96.7
 obs_face_o27_e3_j12: z[13,0] - obstacle_slack + 100 alpha[27,3,12]
   <= 104.45
 obs_alpha_sum_o27_j13: alpha[27,0,13] + alpha[27,1,13] + alpha[27,2,13]
   + alpha[27,3,13] >= 1
 obs_face_o27_e0_j13: z[14,2] - obstacle_slack + 100 alpha[27,0,13]
   <= 102.7
 obs_face_o27_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[27,1,13]
   <= 94.95
 obs_face_o27_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[27,2,13]
   <= 96.7
 obs_face_o27_e3_j13: z[14,0] - obstacle_slack + 100 alpha[27,3,13]
   <= 104.45
 obs_alpha_sum_o27_j14: alpha[27,0,14] + alpha[27,1,14] + alpha[27,2,14]
   + alpha[27,3,14] >= 1
 obs_face_o27_e0_j14: z[15,2] - obstacle_slack + 100 alpha[27,0,14]
   <= 102.7
 obs_face_o27_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[27,1,14]
   <= 94.95
 obs_face_o27_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[27,2,14]
   <= 96.7
 obs_face_o27_e3_j14: z[15,0] - obstacle_slack + 100 alpha[27,3,14]
   <= 104.45
 obs_alpha_sum_o27_j15: alpha[27,0,15] + alpha[27,1,15] + alpha[27,2,15]
   + alpha[27,3,15] >= 1
 obs_face_o27_e0_j15: z[16,2] - obstacle_slack + 100 alpha[27,0,15]
   <= 102.7
 obs_face_o27_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[27,1,15]
   <= 94.95
 obs_face_o27_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[27,2,15]
   <= 96.7
 obs_face_o27_e3_j15: z[16,0] - obstacle_slack + 100 alpha[27,3,15]
   <= 104.45
 obs_alpha_sum_o27_j16: alpha[27,0,16] + alpha[27,1,16] + alpha[27,2,16]
   + alpha[27,3,16] >= 1
 obs_face_o27_e0_j16: z[17,2] - obstacle_slack + 100 alpha[27,0,16]
   <= 102.7
 obs_face_o27_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[27,1,16]
   <= 94.95
 obs_face_o27_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[27,2,16]
   <= 96.7
 obs_face_o27_e3_j16: z[17,0] - obstacle_slack + 100 alpha[27,3,16]
   <= 104.45
 obs_alpha_sum_o27_j17: alpha[27,0,17] + alpha[27,1,17] + alpha[27,2,17]
   + alpha[27,3,17] >= 1
 obs_face_o27_e0_j17: z[18,2] - obstacle_slack + 100 alpha[27,0,17]
   <= 102.7
 obs_face_o27_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[27,1,17]
   <= 94.95
 obs_face_o27_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[27,2,17]
   <= 96.7
 obs_face_o27_e3_j17: z[18,0] - obstacle_slack + 100 alpha[27,3,17]
   <= 104.45
 obs_alpha_sum_o27_j18: alpha[27,0,18] + alpha[27,1,18] + alpha[27,2,18]
   + alpha[27,3,18] >= 1
 obs_face_o27_e0_j18: z[19,2] - obstacle_slack + 100 alpha[27,0,18]
   <= 102.7
 obs_face_o27_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[27,1,18]
   <= 94.95
 obs_face_o27_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[27,2,18]
   <= 96.7
 obs_face_o27_e3_j18: z[19,0] - obstacle_slack + 100 alpha[27,3,18]
   <= 104.45
 obs_alpha_sum_o27_j19: alpha[27,0,19] + alpha[27,1,19] + alpha[27,2,19]
   + alpha[27,3,19] >= 1
 obs_face_o27_e0_j19: z[20,2] - obstacle_slack + 100 alpha[27,0,19]
   <= 102.7
 obs_face_o27_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[27,1,19]
   <= 94.95
 obs_face_o27_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[27,2,19]
   <= 96.7
 obs_face_o27_e3_j19: z[20,0] - obstacle_slack + 100 alpha[27,3,19]
   <= 104.45
 obs_alpha_sum_o27_j20: alpha[27,0,20] + alpha[27,1,20] + alpha[27,2,20]
   + alpha[27,3,20] >= 1
 obs_face_o27_e0_j20: z[21,2] - obstacle_slack + 100 alpha[27,0,20]
   <= 102.7
 obs_face_o27_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[27,1,20]
   <= 94.95
 obs_face_o27_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[27,2,20]
   <= 96.7
 obs_face_o27_e3_j20: z[21,0] - obstacle_slack + 100 alpha[27,3,20]
   <= 104.45
 obs_alpha_sum_o27_j21: alpha[27,0,21] + alpha[27,1,21] + alpha[27,2,21]
   + alpha[27,3,21] >= 1
 obs_face_o27_e0_j21: z[22,2] - obstacle_slack + 100 alpha[27,0,21]
   <= 102.7
 obs_face_o27_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[27,1,21]
   <= 94.95
 obs_face_o27_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[27,2,21]
   <= 96.7
 obs_face_o27_e3_j21: z[22,0] - obstacle_slack + 100 alpha[27,3,21]
   <= 104.45
 obs_alpha_sum_o27_j22: alpha[27,0,22] + alpha[27,1,22] + alpha[27,2,22]
   + alpha[27,3,22] >= 1
 obs_face_o27_e0_j22: z[23,2] - obstacle_slack + 100 alpha[27,0,22]
   <= 102.7
 obs_face_o27_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[27,1,22]
   <= 94.95
 obs_face_o27_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[27,2,22]
   <= 96.7
 obs_face_o27_e3_j22: z[23,0] - obstacle_slack + 100 alpha[27,3,22]
   <= 104.45
 obs_alpha_sum_o27_j23: alpha[27,0,23] + alpha[27,1,23] + alpha[27,2,23]
   + alpha[27,3,23] >= 1
 obs_face_o27_e0_j23: z[24,2] - obstacle_slack + 100 alpha[27,0,23]
   <= 102.7
 obs_face_o27_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[27,1,23]
   <= 94.95
 obs_face_o27_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[27,2,23]
   <= 96.7
 obs_face_o27_e3_j23: z[24,0] - obstacle_slack + 100 alpha[27,3,23]
   <= 104.45
 obs_alpha_sum_o27_j24: alpha[27,0,24] + alpha[27,1,24] + alpha[27,2,24]
   + alpha[27,3,24] >= 1
 obs_face_o27_e0_j24: z[25,2] - obstacle_slack + 100 alpha[27,0,24]
   <= 102.7
 obs_face_o27_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[27,1,24]
   <= 94.95
 obs_face_o27_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[27,2,24]
   <= 96.7
 obs_face_o27_e3_j24: z[25,0] - obstacle_slack + 100 alpha[27,3,24]
   <= 104.45
 obs_alpha_sum_o27_j25: alpha[27,0,25] + alpha[27,1,25] + alpha[27,2,25]
   + alpha[27,3,25] >= 1
 obs_face_o27_e0_j25: z[26,2] - obstacle_slack + 100 alpha[27,0,25]
   <= 102.7
 obs_face_o27_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[27,1,25]
   <= 94.95
 obs_face_o27_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[27,2,25]
   <= 96.7
 obs_face_o27_e3_j25: z[26,0] - obstacle_slack + 100 alpha[27,3,25]
   <= 104.45
 obs_alpha_sum_o27_j26: alpha[27,0,26] + alpha[27,1,26] + alpha[27,2,26]
   + alpha[27,3,26] >= 1
 obs_face_o27_e0_j26: z[27,2] - obstacle_slack + 100 alpha[27,0,26]
   <= 102.7
 obs_face_o27_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[27,1,26]
   <= 94.95
 obs_face_o27_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[27,2,26]
   <= 96.7
 obs_face_o27_e3_j26: z[27,0] - obstacle_slack + 100 alpha[27,3,26]
   <= 104.45
 obs_alpha_sum_o27_j27: alpha[27,0,27] + alpha[27,1,27] + alpha[27,2,27]
   + alpha[27,3,27] >= 1
 obs_face_o27_e0_j27: z[28,2] - obstacle_slack + 100 alpha[27,0,27]
   <= 102.7
 obs_face_o27_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[27,1,27]
   <= 94.95
 obs_face_o27_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[27,2,27]
   <= 96.7
 obs_face_o27_e3_j27: z[28,0] - obstacle_slack + 100 alpha[27,3,27]
   <= 104.45
 obs_alpha_sum_o27_j28: alpha[27,0,28] + alpha[27,1,28] + alpha[27,2,28]
   + alpha[27,3,28] >= 1
 obs_face_o27_e0_j28: z[29,2] - obstacle_slack + 100 alpha[27,0,28]
   <= 102.7
 obs_face_o27_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[27,1,28]
   <= 94.95
 obs_face_o27_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[27,2,28]
   <= 96.7
 obs_face_o27_e3_j28: z[29,0] - obstacle_slack + 100 alpha[27,3,28]
   <= 104.45
 obs_alpha_sum_o27_j29: alpha[27,0,29] + alpha[27,1,29] + alpha[27,2,29]
   + alpha[27,3,29] >= 1
 obs_face_o27_e0_j29: z[30,2] - obstacle_slack + 100 alpha[27,0,29]
   <= 102.7
 obs_face_o27_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[27,1,29]
   <= 94.95
 obs_face_o27_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[27,2,29]
   <= 96.7
 obs_face_o27_e3_j29: z[30,0] - obstacle_slack + 100 alpha[27,3,29]
   <= 104.45
 obs_alpha_sum_o28_j0: alpha[28,0,0] + alpha[28,1,0] + alpha[28,2,0]
   + alpha[28,3,0] >= 1
 obs_face_o28_e0_j0: z[1,2] - obstacle_slack + 100 alpha[28,0,0] <= 96.7
 obs_face_o28_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[28,1,0] <= 98.7
 obs_face_o28_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[28,2,0]
   <= 102.7
 obs_face_o28_e3_j0: z[1,0] - obstacle_slack + 100 alpha[28,3,0] <= 100.7
 obs_alpha_sum_o28_j1: alpha[28,0,1] + alpha[28,1,1] + alpha[28,2,1]
   + alpha[28,3,1] >= 1
 obs_face_o28_e0_j1: z[2,2] - obstacle_slack + 100 alpha[28,0,1] <= 96.7
 obs_face_o28_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[28,1,1] <= 98.7
 obs_face_o28_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[28,2,1]
   <= 102.7
 obs_face_o28_e3_j1: z[2,0] - obstacle_slack + 100 alpha[28,3,1] <= 100.7
 obs_alpha_sum_o28_j2: alpha[28,0,2] + alpha[28,1,2] + alpha[28,2,2]
   + alpha[28,3,2] >= 1
 obs_face_o28_e0_j2: z[3,2] - obstacle_slack + 100 alpha[28,0,2] <= 96.7
 obs_face_o28_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[28,1,2] <= 98.7
 obs_face_o28_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[28,2,2]
   <= 102.7
 obs_face_o28_e3_j2: z[3,0] - obstacle_slack + 100 alpha[28,3,2] <= 100.7
 obs_alpha_sum_o28_j3: alpha[28,0,3] + alpha[28,1,3] + alpha[28,2,3]
   + alpha[28,3,3] >= 1
 obs_face_o28_e0_j3: z[4,2] - obstacle_slack + 100 alpha[28,0,3] <= 96.7
 obs_face_o28_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[28,1,3] <= 98.7
 obs_face_o28_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[28,2,3]
   <= 102.7
 obs_face_o28_e3_j3: z[4,0] - obstacle_slack + 100 alpha[28,3,3] <= 100.7
 obs_alpha_sum_o28_j4: alpha[28,0,4] + alpha[28,1,4] + alpha[28,2,4]
   + alpha[28,3,4] >= 1
 obs_face_o28_e0_j4: z[5,2] - obstacle_slack + 100 alpha[28,0,4] <= 96.7
 obs_face_o28_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[28,1,4] <= 98.7
 obs_face_o28_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[28,2,4]
   <= 102.7
 obs_face_o28_e3_j4: z[5,0] - obstacle_slack + 100 alpha[28,3,4] <= 100.7
 obs_alpha_sum_o28_j5: alpha[28,0,5] + alpha[28,1,5] + alpha[28,2,5]
   + alpha[28,3,5] >= 1
 obs_face_o28_e0_j5: z[6,2] - obstacle_slack + 100 alpha[28,0,5] <= 96.7
 obs_face_o28_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[28,1,5] <= 98.7
 obs_face_o28_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[28,2,5]
   <= 102.7
 obs_face_o28_e3_j5: z[6,0] - obstacle_slack + 100 alpha[28,3,5] <= 100.7
 obs_alpha_sum_o28_j6: alpha[28,0,6] + alpha[28,1,6] + alpha[28,2,6]
   + alpha[28,3,6] >= 1
 obs_face_o28_e0_j6: z[7,2] - obstacle_slack + 100 alpha[28,0,6] <= 96.7
 obs_face_o28_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[28,1,6] <= 98.7
 obs_face_o28_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[28,2,6]
   <= 102.7
 obs_face_o28_e3_j6: z[7,0] - obstacle_slack + 100 alpha[28,3,6] <= 100.7
 obs_alpha_sum_o28_j7: alpha[28,0,7] + alpha[28,1,7] + alpha[28,2,7]
   + alpha[28,3,7] >= 1
 obs_face_o28_e0_j7: z[8,2] - obstacle_slack + 100 alpha[28,0,7] <= 96.7
 obs_face_o28_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[28,1,7] <= 98.7
 obs_face_o28_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[28,2,7]
   <= 102.7
 obs_face_o28_e3_j7: z[8,0] - obstacle_slack + 100 alpha[28,3,7] <= 100.7
 obs_alpha_sum_o28_j8: alpha[28,0,8] + alpha[28,1,8] + alpha[28,2,8]
   + alpha[28,3,8] >= 1
 obs_face_o28_e0_j8: z[9,2] - obstacle_slack + 100 alpha[28,0,8] <= 96.7
 obs_face_o28_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[28,1,8] <= 98.7
 obs_face_o28_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[28,2,8]
   <= 102.7
 obs_face_o28_e3_j8: z[9,0] - obstacle_slack + 100 alpha[28,3,8] <= 100.7
 obs_alpha_sum_o28_j9: alpha[28,0,9] + alpha[28,1,9] + alpha[28,2,9]
   + alpha[28,3,9] >= 1
 obs_face_o28_e0_j9: z[10,2] - obstacle_slack + 100 alpha[28,0,9] <= 96.7
 obs_face_o28_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[28,1,9]
   <= 98.7
 obs_face_o28_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[28,2,9]
   <= 102.7
 obs_face_o28_e3_j9: z[10,0] - obstacle_slack + 100 alpha[28,3,9] <= 100.7
 obs_alpha_sum_o28_j10: alpha[28,0,10] + alpha[28,1,10] + alpha[28,2,10]
   + alpha[28,3,10] >= 1
 obs_face_o28_e0_j10: z[11,2] - obstacle_slack + 100 alpha[28,0,10]
   <= 96.7
 obs_face_o28_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[28,1,10]
   <= 98.7
 obs_face_o28_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[28,2,10]
   <= 102.7
 obs_face_o28_e3_j10: z[11,0] - obstacle_slack + 100 alpha[28,3,10]
   <= 100.7
 obs_alpha_sum_o28_j11: alpha[28,0,11] + alpha[28,1,11] + alpha[28,2,11]
   + alpha[28,3,11] >= 1
 obs_face_o28_e0_j11: z[12,2] - obstacle_slack + 100 alpha[28,0,11]
   <= 96.7
 obs_face_o28_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[28,1,11]
   <= 98.7
 obs_face_o28_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[28,2,11]
   <= 102.7
 obs_face_o28_e3_j11: z[12,0] - obstacle_slack + 100 alpha[28,3,11]
   <= 100.7
 obs_alpha_sum_o28_j12: alpha[28,0,12] + alpha[28,1,12] + alpha[28,2,12]
   + alpha[28,3,12] >= 1
 obs_face_o28_e0_j12: z[13,2] - obstacle_slack + 100 alpha[28,0,12]
   <= 96.7
 obs_face_o28_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[28,1,12]
   <= 98.7
 obs_face_o28_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[28,2,12]
   <= 102.7
 obs_face_o28_e3_j12: z[13,0] - obstacle_slack + 100 alpha[28,3,12]
   <= 100.7
 obs_alpha_sum_o28_j13: alpha[28,0,13] + alpha[28,1,13] + alpha[28,2,13]
   + alpha[28,3,13] >= 1
 obs_face_o28_e0_j13: z[14,2] - obstacle_slack + 100 alpha[28,0,13]
   <= 96.7
 obs_face_o28_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[28,1,13]
   <= 98.7
 obs_face_o28_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[28,2,13]
   <= 102.7
 obs_face_o28_e3_j13: z[14,0] - obstacle_slack + 100 alpha[28,3,13]
   <= 100.7
 obs_alpha_sum_o28_j14: alpha[28,0,14] + alpha[28,1,14] + alpha[28,2,14]
   + alpha[28,3,14] >= 1
 obs_face_o28_e0_j14: z[15,2] - obstacle_slack + 100 alpha[28,0,14]
   <= 96.7
 obs_face_o28_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[28,1,14]
   <= 98.7
 obs_face_o28_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[28,2,14]
   <= 102.7
 obs_face_o28_e3_j14: z[15,0] - obstacle_slack + 100 alpha[28,3,14]
   <= 100.7
 obs_alpha_sum_o28_j15: alpha[28,0,15] + alpha[28,1,15] + alpha[28,2,15]
   + alpha[28,3,15] >= 1
 obs_face_o28_e0_j15: z[16,2] - obstacle_slack + 100 alpha[28,0,15]
   <= 96.7
 obs_face_o28_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[28,1,15]
   <= 98.7
 obs_face_o28_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[28,2,15]
   <= 102.7
 obs_face_o28_e3_j15: z[16,0] - obstacle_slack + 100 alpha[28,3,15]
   <= 100.7
 obs_alpha_sum_o28_j16: alpha[28,0,16] + alpha[28,1,16] + alpha[28,2,16]
   + alpha[28,3,16] >= 1
 obs_face_o28_e0_j16: z[17,2] - obstacle_slack + 100 alpha[28,0,16]
   <= 96.7
 obs_face_o28_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[28,1,16]
   <= 98.7
 obs_face_o28_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[28,2,16]
   <= 102.7
 obs_face_o28_e3_j16: z[17,0] - obstacle_slack + 100 alpha[28,3,16]
   <= 100.7
 obs_alpha_sum_o28_j17: alpha[28,0,17] + alpha[28,1,17] + alpha[28,2,17]
   + alpha[28,3,17] >= 1
 obs_face_o28_e0_j17: z[18,2] - obstacle_slack + 100 alpha[28,0,17]
   <= 96.7
 obs_face_o28_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[28,1,17]
   <= 98.7
 obs_face_o28_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[28,2,17]
   <= 102.7
 obs_face_o28_e3_j17: z[18,0] - obstacle_slack + 100 alpha[28,3,17]
   <= 100.7
 obs_alpha_sum_o28_j18: alpha[28,0,18] + alpha[28,1,18] + alpha[28,2,18]
   + alpha[28,3,18] >= 1
 obs_face_o28_e0_j18: z[19,2] - obstacle_slack + 100 alpha[28,0,18]
   <= 96.7
 obs_face_o28_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[28,1,18]
   <= 98.7
 obs_face_o28_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[28,2,18]
   <= 102.7
 obs_face_o28_e3_j18: z[19,0] - obstacle_slack + 100 alpha[28,3,18]
   <= 100.7
 obs_alpha_sum_o28_j19: alpha[28,0,19] + alpha[28,1,19] + alpha[28,2,19]
   + alpha[28,3,19] >= 1
 obs_face_o28_e0_j19: z[20,2] - obstacle_slack + 100 alpha[28,0,19]
   <= 96.7
 obs_face_o28_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[28,1,19]
   <= 98.7
 obs_face_o28_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[28,2,19]
   <= 102.7
 obs_face_o28_e3_j19: z[20,0] - obstacle_slack + 100 alpha[28,3,19]
   <= 100.7
 obs_alpha_sum_o28_j20: alpha[28,0,20] + alpha[28,1,20] + alpha[28,2,20]
   + alpha[28,3,20] >= 1
 obs_face_o28_e0_j20: z[21,2] - obstacle_slack + 100 alpha[28,0,20]
   <= 96.7
 obs_face_o28_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[28,1,20]
   <= 98.7
 obs_face_o28_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[28,2,20]
   <= 102.7
 obs_face_o28_e3_j20: z[21,0] - obstacle_slack + 100 alpha[28,3,20]
   <= 100.7
 obs_alpha_sum_o28_j21: alpha[28,0,21] + alpha[28,1,21] + alpha[28,2,21]
   + alpha[28,3,21] >= 1
 obs_face_o28_e0_j21: z[22,2] - obstacle_slack + 100 alpha[28,0,21]
   <= 96.7
 obs_face_o28_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[28,1,21]
   <= 98.7
 obs_face_o28_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[28,2,21]
   <= 102.7
 obs_face_o28_e3_j21: z[22,0] - obstacle_slack + 100 alpha[28,3,21]
   <= 100.7
 obs_alpha_sum_o28_j22: alpha[28,0,22] + alpha[28,1,22] + alpha[28,2,22]
   + alpha[28,3,22] >= 1
 obs_face_o28_e0_j22: z[23,2] - obstacle_slack + 100 alpha[28,0,22]
   <= 96.7
 obs_face_o28_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[28,1,22]
   <= 98.7
 obs_face_o28_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[28,2,22]
   <= 102.7
 obs_face_o28_e3_j22: z[23,0] - obstacle_slack + 100 alpha[28,3,22]
   <= 100.7
 obs_alpha_sum_o28_j23: alpha[28,0,23] + alpha[28,1,23] + alpha[28,2,23]
   + alpha[28,3,23] >= 1
 obs_face_o28_e0_j23: z[24,2] - obstacle_slack + 100 alpha[28,0,23]
   <= 96.7
 obs_face_o28_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[28,1,23]
   <= 98.7
 obs_face_o28_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[28,2,23]
   <= 102.7
 obs_face_o28_e3_j23: z[24,0] - obstacle_slack + 100 alpha[28,3,23]
   <= 100.7
 obs_alpha_sum_o28_j24: alpha[28,0,24] + alpha[28,1,24] + alpha[28,2,24]
   + alpha[28,3,24] >= 1
 obs_face_o28_e0_j24: z[25,2] - obstacle_slack + 100 alpha[28,0,24]
   <= 96.7
 obs_face_o28_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[28,1,24]
   <= 98.7
 obs_face_o28_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[28,2,24]
   <= 102.7
 obs_face_o28_e3_j24: z[25,0] - obstacle_slack + 100 alpha[28,3,24]
   <= 100.7
 obs_alpha_sum_o28_j25: alpha[28,0,25] + alpha[28,1,25] + alpha[28,2,25]
   + alpha[28,3,25] >= 1
 obs_face_o28_e0_j25: z[26,2] - obstacle_slack + 100 alpha[28,0,25]
   <= 96.7
 obs_face_o28_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[28,1,25]
   <= 98.7
 obs_face_o28_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[28,2,25]
   <= 102.7
 obs_face_o28_e3_j25: z[26,0] - obstacle_slack + 100 alpha[28,3,25]
   <= 100.7
 obs_alpha_sum_o28_j26: alpha[28,0,26] + alpha[28,1,26] + alpha[28,2,26]
   + alpha[28,3,26] >= 1
 obs_face_o28_e0_j26: z[27,2] - obstacle_slack + 100 alpha[28,0,26]
   <= 96.7
 obs_face_o28_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[28,1,26]
   <= 98.7
 obs_face_o28_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[28,2,26]
   <= 102.7
 obs_face_o28_e3_j26: z[27,0] - obstacle_slack + 100 alpha[28,3,26]
   <= 100.7
 obs_alpha_sum_o28_j27: alpha[28,0,27] + alpha[28,1,27] + alpha[28,2,27]
   + alpha[28,3,27] >= 1
 obs_face_o28_e0_j27: z[28,2] - obstacle_slack + 100 alpha[28,0,27]
   <= 96.7
 obs_face_o28_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[28,1,27]
   <= 98.7
 obs_face_o28_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[28,2,27]
   <= 102.7
 obs_face_o28_e3_j27: z[28,0] - obstacle_slack + 100 alpha[28,3,27]
   <= 100.7
 obs_alpha_sum_o28_j28: alpha[28,0,28] + alpha[28,1,28] + alpha[28,2,28]
   + alpha[28,3,28] >= 1
 obs_face_o28_e0_j28: z[29,2] - obstacle_slack + 100 alpha[28,0,28]
   <= 96.7
 obs_face_o28_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[28,1,28]
   <= 98.7
 obs_face_o28_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[28,2,28]
   <= 102.7
 obs_face_o28_e3_j28: z[29,0] - obstacle_slack + 100 alpha[28,3,28]
   <= 100.7
 obs_alpha_sum_o28_j29: alpha[28,0,29] + alpha[28,1,29] + alpha[28,2,29]
   + alpha[28,3,29] >= 1
 obs_face_o28_e0_j29: z[30,2] - obstacle_slack + 100 alpha[28,0,29]
   <= 96.7
 obs_face_o28_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[28,1,29]
   <= 98.7
 obs_face_o28_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[28,2,29]
   <= 102.7
 obs_face_o28_e3_j29: z[30,0] - obstacle_slack + 100 alpha[28,3,29]
   <= 100.7
 obs_alpha_sum_o29_j0: alpha[29,0,0] + alpha[29,1,0] + alpha[29,2,0]
   + alpha[29,3,0] >= 1
 obs_face_o29_e0_j0: z[1,2] - obstacle_slack + 100 alpha[29,0,0] <= 96.45
 obs_face_o29_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[29,1,0] <= 98.7
 obs_face_o29_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[29,2,0]
   <= 102.95
 obs_face_o29_e3_j0: z[1,0] - obstacle_slack + 100 alpha[29,3,0] <= 100.7
 obs_alpha_sum_o29_j1: alpha[29,0,1] + alpha[29,1,1] + alpha[29,2,1]
   + alpha[29,3,1] >= 1
 obs_face_o29_e0_j1: z[2,2] - obstacle_slack + 100 alpha[29,0,1] <= 96.45
 obs_face_o29_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[29,1,1] <= 98.7
 obs_face_o29_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[29,2,1]
   <= 102.95
 obs_face_o29_e3_j1: z[2,0] - obstacle_slack + 100 alpha[29,3,1] <= 100.7
 obs_alpha_sum_o29_j2: alpha[29,0,2] + alpha[29,1,2] + alpha[29,2,2]
   + alpha[29,3,2] >= 1
 obs_face_o29_e0_j2: z[3,2] - obstacle_slack + 100 alpha[29,0,2] <= 96.45
 obs_face_o29_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[29,1,2] <= 98.7
 obs_face_o29_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[29,2,2]
   <= 102.95
 obs_face_o29_e3_j2: z[3,0] - obstacle_slack + 100 alpha[29,3,2] <= 100.7
 obs_alpha_sum_o29_j3: alpha[29,0,3] + alpha[29,1,3] + alpha[29,2,3]
   + alpha[29,3,3] >= 1
 obs_face_o29_e0_j3: z[4,2] - obstacle_slack + 100 alpha[29,0,3] <= 96.45
 obs_face_o29_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[29,1,3] <= 98.7
 obs_face_o29_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[29,2,3]
   <= 102.95
 obs_face_o29_e3_j3: z[4,0] - obstacle_slack + 100 alpha[29,3,3] <= 100.7
 obs_alpha_sum_o29_j4: alpha[29,0,4] + alpha[29,1,4] + alpha[29,2,4]
   + alpha[29,3,4] >= 1
 obs_face_o29_e0_j4: z[5,2] - obstacle_slack + 100 alpha[29,0,4] <= 96.45
 obs_face_o29_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[29,1,4] <= 98.7
 obs_face_o29_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[29,2,4]
   <= 102.95
 obs_face_o29_e3_j4: z[5,0] - obstacle_slack + 100 alpha[29,3,4] <= 100.7
 obs_alpha_sum_o29_j5: alpha[29,0,5] + alpha[29,1,5] + alpha[29,2,5]
   + alpha[29,3,5] >= 1
 obs_face_o29_e0_j5: z[6,2] - obstacle_slack + 100 alpha[29,0,5] <= 96.45
 obs_face_o29_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[29,1,5] <= 98.7
 obs_face_o29_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[29,2,5]
   <= 102.95
 obs_face_o29_e3_j5: z[6,0] - obstacle_slack + 100 alpha[29,3,5] <= 100.7
 obs_alpha_sum_o29_j6: alpha[29,0,6] + alpha[29,1,6] + alpha[29,2,6]
   + alpha[29,3,6] >= 1
 obs_face_o29_e0_j6: z[7,2] - obstacle_slack + 100 alpha[29,0,6] <= 96.45
 obs_face_o29_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[29,1,6] <= 98.7
 obs_face_o29_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[29,2,6]
   <= 102.95
 obs_face_o29_e3_j6: z[7,0] - obstacle_slack + 100 alpha[29,3,6] <= 100.7
 obs_alpha_sum_o29_j7: alpha[29,0,7] + alpha[29,1,7] + alpha[29,2,7]
   + alpha[29,3,7] >= 1
 obs_face_o29_e0_j7: z[8,2] - obstacle_slack + 100 alpha[29,0,7] <= 96.45
 obs_face_o29_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[29,1,7] <= 98.7
 obs_face_o29_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[29,2,7]
   <= 102.95
 obs_face_o29_e3_j7: z[8,0] - obstacle_slack + 100 alpha[29,3,7] <= 100.7
 obs_alpha_sum_o29_j8: alpha[29,0,8] + alpha[29,1,8] + alpha[29,2,8]
   + alpha[29,3,8] >= 1
 obs_face_o29_e0_j8: z[9,2] - obstacle_slack + 100 alpha[29,0,8] <= 96.45
 obs_face_o29_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[29,1,8] <= 98.7
 obs_face_o29_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[29,2,8]
   <= 102.95
 obs_face_o29_e3_j8: z[9,0] - obstacle_slack + 100 alpha[29,3,8] <= 100.7
 obs_alpha_sum_o29_j9: alpha[29,0,9] + alpha[29,1,9] + alpha[29,2,9]
   + alpha[29,3,9] >= 1
 obs_face_o29_e0_j9: z[10,2] - obstacle_slack + 100 alpha[29,0,9] <= 96.45
 obs_face_o29_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[29,1,9]
   <= 98.7
 obs_face_o29_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[29,2,9]
   <= 102.95
 obs_face_o29_e3_j9: z[10,0] - obstacle_slack + 100 alpha[29,3,9] <= 100.7
 obs_alpha_sum_o29_j10: alpha[29,0,10] + alpha[29,1,10] + alpha[29,2,10]
   + alpha[29,3,10] >= 1
 obs_face_o29_e0_j10: z[11,2] - obstacle_slack + 100 alpha[29,0,10]
   <= 96.45
 obs_face_o29_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[29,1,10]
   <= 98.7
 obs_face_o29_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[29,2,10]
   <= 102.95
 obs_face_o29_e3_j10: z[11,0] - obstacle_slack + 100 alpha[29,3,10]
   <= 100.7
 obs_alpha_sum_o29_j11: alpha[29,0,11] + alpha[29,1,11] + alpha[29,2,11]
   + alpha[29,3,11] >= 1
 obs_face_o29_e0_j11: z[12,2] - obstacle_slack + 100 alpha[29,0,11]
   <= 96.45
 obs_face_o29_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[29,1,11]
   <= 98.7
 obs_face_o29_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[29,2,11]
   <= 102.95
 obs_face_o29_e3_j11: z[12,0] - obstacle_slack + 100 alpha[29,3,11]
   <= 100.7
 obs_alpha_sum_o29_j12: alpha[29,0,12] + alpha[29,1,12] + alpha[29,2,12]
   + alpha[29,3,12] >= 1
 obs_face_o29_e0_j12: z[13,2] - obstacle_slack + 100 alpha[29,0,12]
   <= 96.45
 obs_face_o29_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[29,1,12]
   <= 98.7
 obs_face_o29_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[29,2,12]
   <= 102.95
 obs_face_o29_e3_j12: z[13,0] - obstacle_slack + 100 alpha[29,3,12]
   <= 100.7
 obs_alpha_sum_o29_j13: alpha[29,0,13] + alpha[29,1,13] + alpha[29,2,13]
   + alpha[29,3,13] >= 1
 obs_face_o29_e0_j13: z[14,2] - obstacle_slack + 100 alpha[29,0,13]
   <= 96.45
 obs_face_o29_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[29,1,13]
   <= 98.7
 obs_face_o29_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[29,2,13]
   <= 102.95
 obs_face_o29_e3_j13: z[14,0] - obstacle_slack + 100 alpha[29,3,13]
   <= 100.7
 obs_alpha_sum_o29_j14: alpha[29,0,14] + alpha[29,1,14] + alpha[29,2,14]
   + alpha[29,3,14] >= 1
 obs_face_o29_e0_j14: z[15,2] - obstacle_slack + 100 alpha[29,0,14]
   <= 96.45
 obs_face_o29_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[29,1,14]
   <= 98.7
 obs_face_o29_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[29,2,14]
   <= 102.95
 obs_face_o29_e3_j14: z[15,0] - obstacle_slack + 100 alpha[29,3,14]
   <= 100.7
 obs_alpha_sum_o29_j15: alpha[29,0,15] + alpha[29,1,15] + alpha[29,2,15]
   + alpha[29,3,15] >= 1
 obs_face_o29_e0_j15: z[16,2] - obstacle_slack + 100 alpha[29,0,15]
   <= 96.45
 obs_face_o29_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[29,1,15]
   <= 98.7
 obs_face_o29_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[29,2,15]
   <= 102.95
 obs_face_o29_e3_j15: z[16,0] - obstacle_slack + 100 alpha[29,3,15]
   <= 100.7
 obs_alpha_sum_o29_j16: alpha[29,0,16] + alpha[29,1,16] + alpha[29,2,16]
   + alpha[29,3,16] >= 1
 obs_face_o29_e0_j16: z[17,2] - obstacle_slack + 100 alpha[29,0,16]
   <= 96.45
 obs_face_o29_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[29,1,16]
   <= 98.7
 obs_face_o29_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[29,2,16]
   <= 102.95
 obs_face_o29_e3_j16: z[17,0] - obstacle_slack + 100 alpha[29,3,16]
   <= 100.7
 obs_alpha_sum_o29_j17: alpha[29,0,17] + alpha[29,1,17] + alpha[29,2,17]
   + alpha[29,3,17] >= 1
 obs_face_o29_e0_j17: z[18,2] - obstacle_slack + 100 alpha[29,0,17]
   <= 96.45
 obs_face_o29_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[29,1,17]
   <= 98.7
 obs_face_o29_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[29,2,17]
   <= 102.95
 obs_face_o29_e3_j17: z[18,0] - obstacle_slack + 100 alpha[29,3,17]
   <= 100.7
 obs_alpha_sum_o29_j18: alpha[29,0,18] + alpha[29,1,18] + alpha[29,2,18]
   + alpha[29,3,18] >= 1
 obs_face_o29_e0_j18: z[19,2] - obstacle_slack + 100 alpha[29,0,18]
   <= 96.45
 obs_face_o29_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[29,1,18]
   <= 98.7
 obs_face_o29_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[29,2,18]
   <= 102.95
 obs_face_o29_e3_j18: z[19,0] - obstacle_slack + 100 alpha[29,3,18]
   <= 100.7
 obs_alpha_sum_o29_j19: alpha[29,0,19] + alpha[29,1,19] + alpha[29,2,19]
   + alpha[29,3,19] >= 1
 obs_face_o29_e0_j19: z[20,2] - obstacle_slack + 100 alpha[29,0,19]
   <= 96.45
 obs_face_o29_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[29,1,19]
   <= 98.7
 obs_face_o29_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[29,2,19]
   <= 102.95
 obs_face_o29_e3_j19: z[20,0] - obstacle_slack + 100 alpha[29,3,19]
   <= 100.7
 obs_alpha_sum_o29_j20: alpha[29,0,20] + alpha[29,1,20] + alpha[29,2,20]
   + alpha[29,3,20] >= 1
 obs_face_o29_e0_j20: z[21,2] - obstacle_slack + 100 alpha[29,0,20]
   <= 96.45
 obs_face_o29_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[29,1,20]
   <= 98.7
 obs_face_o29_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[29,2,20]
   <= 102.95
 obs_face_o29_e3_j20: z[21,0] - obstacle_slack + 100 alpha[29,3,20]
   <= 100.7
 obs_alpha_sum_o29_j21: alpha[29,0,21] + alpha[29,1,21] + alpha[29,2,21]
   + alpha[29,3,21] >= 1
 obs_face_o29_e0_j21: z[22,2] - obstacle_slack + 100 alpha[29,0,21]
   <= 96.45
 obs_face_o29_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[29,1,21]
   <= 98.7
 obs_face_o29_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[29,2,21]
   <= 102.95
 obs_face_o29_e3_j21: z[22,0] - obstacle_slack + 100 alpha[29,3,21]
   <= 100.7
 obs_alpha_sum_o29_j22: alpha[29,0,22] + alpha[29,1,22] + alpha[29,2,22]
   + alpha[29,3,22] >= 1
 obs_face_o29_e0_j22: z[23,2] - obstacle_slack + 100 alpha[29,0,22]
   <= 96.45
 obs_face_o29_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[29,1,22]
   <= 98.7
 obs_face_o29_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[29,2,22]
   <= 102.95
 obs_face_o29_e3_j22: z[23,0] - obstacle_slack + 100 alpha[29,3,22]
   <= 100.7
 obs_alpha_sum_o29_j23: alpha[29,0,23] + alpha[29,1,23] + alpha[29,2,23]
   + alpha[29,3,23] >= 1
 obs_face_o29_e0_j23: z[24,2] - obstacle_slack + 100 alpha[29,0,23]
   <= 96.45
 obs_face_o29_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[29,1,23]
   <= 98.7
 obs_face_o29_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[29,2,23]
   <= 102.95
 obs_face_o29_e3_j23: z[24,0] - obstacle_slack + 100 alpha[29,3,23]
   <= 100.7
 obs_alpha_sum_o29_j24: alpha[29,0,24] + alpha[29,1,24] + alpha[29,2,24]
   + alpha[29,3,24] >= 1
 obs_face_o29_e0_j24: z[25,2] - obstacle_slack + 100 alpha[29,0,24]
   <= 96.45
 obs_face_o29_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[29,1,24]
   <= 98.7
 obs_face_o29_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[29,2,24]
   <= 102.95
 obs_face_o29_e3_j24: z[25,0] - obstacle_slack + 100 alpha[29,3,24]
   <= 100.7
 obs_alpha_sum_o29_j25: alpha[29,0,25] + alpha[29,1,25] + alpha[29,2,25]
   + alpha[29,3,25] >= 1
 obs_face_o29_e0_j25: z[26,2] - obstacle_slack + 100 alpha[29,0,25]
   <= 96.45
 obs_face_o29_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[29,1,25]
   <= 98.7
 obs_face_o29_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[29,2,25]
   <= 102.95
 obs_face_o29_e3_j25: z[26,0] - obstacle_slack + 100 alpha[29,3,25]
   <= 100.7
 obs_alpha_sum_o29_j26: alpha[29,0,26] + alpha[29,1,26] + alpha[29,2,26]
   + alpha[29,3,26] >= 1
 obs_face_o29_e0_j26: z[27,2] - obstacle_slack + 100 alpha[29,0,26]
   <= 96.45
 obs_face_o29_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[29,1,26]
   <= 98.7
 obs_face_o29_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[29,2,26]
   <= 102.95
 obs_face_o29_e3_j26: z[27,0] - obstacle_slack + 100 alpha[29,3,26]
   <= 100.7
 obs_alpha_sum_o29_j27: alpha[29,0,27] + alpha[29,1,27] + alpha[29,2,27]
   + alpha[29,3,27] >= 1
 obs_face_o29_e0_j27: z[28,2] - obstacle_slack + 100 alpha[29,0,27]
   <= 96.45
 obs_face_o29_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[29,1,27]
   <= 98.7
 obs_face_o29_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[29,2,27]
   <= 102.95
 obs_face_o29_e3_j27: z[28,0] - obstacle_slack + 100 alpha[29,3,27]
   <= 100.7
 obs_alpha_sum_o29_j28: alpha[29,0,28] + alpha[29,1,28] + alpha[29,2,28]
   + alpha[29,3,28] >= 1
 obs_face_o29_e0_j28: z[29,2] - obstacle_slack + 100 alpha[29,0,28]
   <= 96.45
 obs_face_o29_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[29,1,28]
   <= 98.7
 obs_face_o29_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[29,2,28]
   <= 102.95
 obs_face_o29_e3_j28: z[29,0] - obstacle_slack + 100 alpha[29,3,28]
   <= 100.7
 obs_alpha_sum_o29_j29: alpha[29,0,29] + alpha[29,1,29] + alpha[29,2,29]
   + alpha[29,3,29] >= 1
 obs_face_o29_e0_j29: z[30,2] - obstacle_slack + 100 alpha[29,0,29]
   <= 96.45
 obs_face_o29_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[29,1,29]
   <= 98.7
 obs_face_o29_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[29,2,29]
   <= 102.95
 obs_face_o29_e3_j29: z[30,0] - obstacle_slack + 100 alpha[29,3,29]
   <= 100.7
 obs_alpha_sum_o30_j0: alpha[30,0,0] + alpha[30,1,0] + alpha[30,2,0]
   + alpha[30,3,0] >= 1
 obs_face_o30_e0_j0: z[1,2] - obstacle_slack + 100 alpha[30,0,0] <= 96.2
 obs_face_o30_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[30,1,0] <= 98.7
 obs_face_o30_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[30,2,0]
   <= 103.2
 obs_face_o30_e3_j0: z[1,0] - obstacle_slack + 100 alpha[30,3,0] <= 100.7
 obs_alpha_sum_o30_j1: alpha[30,0,1] + alpha[30,1,1] + alpha[30,2,1]
   + alpha[30,3,1] >= 1
 obs_face_o30_e0_j1: z[2,2] - obstacle_slack + 100 alpha[30,0,1] <= 96.2
 obs_face_o30_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[30,1,1] <= 98.7
 obs_face_o30_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[30,2,1]
   <= 103.2
 obs_face_o30_e3_j1: z[2,0] - obstacle_slack + 100 alpha[30,3,1] <= 100.7
 obs_alpha_sum_o30_j2: alpha[30,0,2] + alpha[30,1,2] + alpha[30,2,2]
   + alpha[30,3,2] >= 1
 obs_face_o30_e0_j2: z[3,2] - obstacle_slack + 100 alpha[30,0,2] <= 96.2
 obs_face_o30_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[30,1,2] <= 98.7
 obs_face_o30_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[30,2,2]
   <= 103.2
 obs_face_o30_e3_j2: z[3,0] - obstacle_slack + 100 alpha[30,3,2] <= 100.7
 obs_alpha_sum_o30_j3: alpha[30,0,3] + alpha[30,1,3] + alpha[30,2,3]
   + alpha[30,3,3] >= 1
 obs_face_o30_e0_j3: z[4,2] - obstacle_slack + 100 alpha[30,0,3] <= 96.2
 obs_face_o30_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[30,1,3] <= 98.7
 obs_face_o30_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[30,2,3]
   <= 103.2
 obs_face_o30_e3_j3: z[4,0] - obstacle_slack + 100 alpha[30,3,3] <= 100.7
 obs_alpha_sum_o30_j4: alpha[30,0,4] + alpha[30,1,4] + alpha[30,2,4]
   + alpha[30,3,4] >= 1
 obs_face_o30_e0_j4: z[5,2] - obstacle_slack + 100 alpha[30,0,4] <= 96.2
 obs_face_o30_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[30,1,4] <= 98.7
 obs_face_o30_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[30,2,4]
   <= 103.2
 obs_face_o30_e3_j4: z[5,0] - obstacle_slack + 100 alpha[30,3,4] <= 100.7
 obs_alpha_sum_o30_j5: alpha[30,0,5] + alpha[30,1,5] + alpha[30,2,5]
   + alpha[30,3,5] >= 1
 obs_face_o30_e0_j5: z[6,2] - obstacle_slack + 100 alpha[30,0,5] <= 96.2
 obs_face_o30_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[30,1,5] <= 98.7
 obs_face_o30_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[30,2,5]
   <= 103.2
 obs_face_o30_e3_j5: z[6,0] - obstacle_slack + 100 alpha[30,3,5] <= 100.7
 obs_alpha_sum_o30_j6: alpha[30,0,6] + alpha[30,1,6] + alpha[30,2,6]
   + alpha[30,3,6] >= 1
 obs_face_o30_e0_j6: z[7,2] - obstacle_slack + 100 alpha[30,0,6] <= 96.2
 obs_face_o30_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[30,1,6] <= 98.7
 obs_face_o30_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[30,2,6]
   <= 103.2
 obs_face_o30_e3_j6: z[7,0] - obstacle_slack + 100 alpha[30,3,6] <= 100.7
 obs_alpha_sum_o30_j7: alpha[30,0,7] + alpha[30,1,7] + alpha[30,2,7]
   + alpha[30,3,7] >= 1
 obs_face_o30_e0_j7: z[8,2] - obstacle_slack + 100 alpha[30,0,7] <= 96.2
 obs_face_o30_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[30,1,7] <= 98.7
 obs_face_o30_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[30,2,7]
   <= 103.2
 obs_face_o30_e3_j7: z[8,0] - obstacle_slack + 100 alpha[30,3,7] <= 100.7
 obs_alpha_sum_o30_j8: alpha[30,0,8] + alpha[30,1,8] + alpha[30,2,8]
   + alpha[30,3,8] >= 1
 obs_face_o30_e0_j8: z[9,2] - obstacle_slack + 100 alpha[30,0,8] <= 96.2
 obs_face_o30_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[30,1,8] <= 98.7
 obs_face_o30_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[30,2,8]
   <= 103.2
 obs_face_o30_e3_j8: z[9,0] - obstacle_slack + 100 alpha[30,3,8] <= 100.7
 obs_alpha_sum_o30_j9: alpha[30,0,9] + alpha[30,1,9] + alpha[30,2,9]
   + alpha[30,3,9] >= 1
 obs_face_o30_e0_j9: z[10,2] - obstacle_slack + 100 alpha[30,0,9] <= 96.2
 obs_face_o30_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[30,1,9]
   <= 98.7
 obs_face_o30_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[30,2,9]
   <= 103.2
 obs_face_o30_e3_j9: z[10,0] - obstacle_slack + 100 alpha[30,3,9] <= 100.7
 obs_alpha_sum_o30_j10: alpha[30,0,10] + alpha[30,1,10] + alpha[30,2,10]
   + alpha[30,3,10] >= 1
 obs_face_o30_e0_j10: z[11,2] - obstacle_slack + 100 alpha[30,0,10]
   <= 96.2
 obs_face_o30_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[30,1,10]
   <= 98.7
 obs_face_o30_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[30,2,10]
   <= 103.2
 obs_face_o30_e3_j10: z[11,0] - obstacle_slack + 100 alpha[30,3,10]
   <= 100.7
 obs_alpha_sum_o30_j11: alpha[30,0,11] + alpha[30,1,11] + alpha[30,2,11]
   + alpha[30,3,11] >= 1
 obs_face_o30_e0_j11: z[12,2] - obstacle_slack + 100 alpha[30,0,11]
   <= 96.2
 obs_face_o30_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[30,1,11]
   <= 98.7
 obs_face_o30_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[30,2,11]
   <= 103.2
 obs_face_o30_e3_j11: z[12,0] - obstacle_slack + 100 alpha[30,3,11]
   <= 100.7
 obs_alpha_sum_o30_j12: alpha[30,0,12] + alpha[30,1,12] + alpha[30,2,12]
   + alpha[30,3,12] >= 1
 obs_face_o30_e0_j12: z[13,2] - obstacle_slack + 100 alpha[30,0,12]
   <= 96.2
 obs_face_o30_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[30,1,12]
   <= 98.7
 obs_face_o30_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[30,2,12]
   <= 103.2
 obs_face_o30_e3_j12: z[13,0] - obstacle_slack + 100 alpha[30,3,12]
   <= 100.7
 obs_alpha_sum_o30_j13: alpha[30,0,13] + alpha[30,1,13] + alpha[30,2,13]
   + alpha[30,3,13] >= 1
 obs_face_o30_e0_j13: z[14,2] - obstacle_slack + 100 alpha[30,0,13]
   <= 96.2
 obs_face_o30_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[30,1,13]
   <= 98.7
 obs_face_o30_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[30,2,13]
   <= 103.2
 obs_face_o30_e3_j13: z[14,0] - obstacle_slack + 100 alpha[30,3,13]
   <= 100.7
 obs_alpha_sum_o30_j14: alpha[30,0,14] + alpha[30,1,14] + alpha[30,2,14]
   + alpha[30,3,14] >= 1
 obs_face_o30_e0_j14: z[15,2] - obstacle_slack + 100 alpha[30,0,14]
   <= 96.2
 obs_face_o30_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[30,1,14]
   <= 98.7
 obs_face_o30_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[30,2,14]
   <= 103.2
 obs_face_o30_e3_j14: z[15,0] - obstacle_slack + 100 alpha[30,3,14]
   <= 100.7
 obs_alpha_sum_o30_j15: alpha[30,0,15] + alpha[30,1,15] + alpha[30,2,15]
   + alpha[30,3,15] >= 1
 obs_face_o30_e0_j15: z[16,2] - obstacle_slack + 100 alpha[30,0,15]
   <= 96.2
 obs_face_o30_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[30,1,15]
   <= 98.7
 obs_face_o30_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[30,2,15]
   <= 103.2
 obs_face_o30_e3_j15: z[16,0] - obstacle_slack + 100 alpha[30,3,15]
   <= 100.7
 obs_alpha_sum_o30_j16: alpha[30,0,16] + alpha[30,1,16] + alpha[30,2,16]
   + alpha[30,3,16] >= 1
 obs_face_o30_e0_j16: z[17,2] - obstacle_slack + 100 alpha[30,0,16]
   <= 96.2
 obs_face_o30_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[30,1,16]
   <= 98.7
 obs_face_o30_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[30,2,16]
   <= 103.2
 obs_face_o30_e3_j16: z[17,0] - obstacle_slack + 100 alpha[30,3,16]
   <= 100.7
 obs_alpha_sum_o30_j17: alpha[30,0,17] + alpha[30,1,17] + alpha[30,2,17]
   + alpha[30,3,17] >= 1
 obs_face_o30_e0_j17: z[18,2] - obstacle_slack + 100 alpha[30,0,17]
   <= 96.2
 obs_face_o30_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[30,1,17]
   <= 98.7
 obs_face_o30_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[30,2,17]
   <= 103.2
 obs_face_o30_e3_j17: z[18,0] - obstacle_slack + 100 alpha[30,3,17]
   <= 100.7
 obs_alpha_sum_o30_j18: alpha[30,0,18] + alpha[30,1,18] + alpha[30,2,18]
   + alpha[30,3,18] >= 1
 obs_face_o30_e0_j18: z[19,2] - obstacle_slack + 100 alpha[30,0,18]
   <= 96.2
 obs_face_o30_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[30,1,18]
   <= 98.7
 obs_face_o30_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[30,2,18]
   <= 103.2
 obs_face_o30_e3_j18: z[19,0] - obstacle_slack + 100 alpha[30,3,18]
   <= 100.7
 obs_alpha_sum_o30_j19: alpha[30,0,19] + alpha[30,1,19] + alpha[30,2,19]
   + alpha[30,3,19] >= 1
 obs_face_o30_e0_j19: z[20,2] - obstacle_slack + 100 alpha[30,0,19]
   <= 96.2
 obs_face_o30_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[30,1,19]
   <= 98.7
 obs_face_o30_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[30,2,19]
   <= 103.2
 obs_face_o30_e3_j19: z[20,0] - obstacle_slack + 100 alpha[30,3,19]
   <= 100.7
 obs_alpha_sum_o30_j20: alpha[30,0,20] + alpha[30,1,20] + alpha[30,2,20]
   + alpha[30,3,20] >= 1
 obs_face_o30_e0_j20: z[21,2] - obstacle_slack + 100 alpha[30,0,20]
   <= 96.2
 obs_face_o30_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[30,1,20]
   <= 98.7
 obs_face_o30_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[30,2,20]
   <= 103.2
 obs_face_o30_e3_j20: z[21,0] - obstacle_slack + 100 alpha[30,3,20]
   <= 100.7
 obs_alpha_sum_o30_j21: alpha[30,0,21] + alpha[30,1,21] + alpha[30,2,21]
   + alpha[30,3,21] >= 1
 obs_face_o30_e0_j21: z[22,2] - obstacle_slack + 100 alpha[30,0,21]
   <= 96.2
 obs_face_o30_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[30,1,21]
   <= 98.7
 obs_face_o30_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[30,2,21]
   <= 103.2
 obs_face_o30_e3_j21: z[22,0] - obstacle_slack + 100 alpha[30,3,21]
   <= 100.7
 obs_alpha_sum_o30_j22: alpha[30,0,22] + alpha[30,1,22] + alpha[30,2,22]
   + alpha[30,3,22] >= 1
 obs_face_o30_e0_j22: z[23,2] - obstacle_slack + 100 alpha[30,0,22]
   <= 96.2
 obs_face_o30_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[30,1,22]
   <= 98.7
 obs_face_o30_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[30,2,22]
   <= 103.2
 obs_face_o30_e3_j22: z[23,0] - obstacle_slack + 100 alpha[30,3,22]
   <= 100.7
 obs_alpha_sum_o30_j23: alpha[30,0,23] + alpha[30,1,23] + alpha[30,2,23]
   + alpha[30,3,23] >= 1
 obs_face_o30_e0_j23: z[24,2] - obstacle_slack + 100 alpha[30,0,23]
   <= 96.2
 obs_face_o30_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[30,1,23]
   <= 98.7
 obs_face_o30_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[30,2,23]
   <= 103.2
 obs_face_o30_e3_j23: z[24,0] - obstacle_slack + 100 alpha[30,3,23]
   <= 100.7
 obs_alpha_sum_o30_j24: alpha[30,0,24] + alpha[30,1,24] + alpha[30,2,24]
   + alpha[30,3,24] >= 1
 obs_face_o30_e0_j24: z[25,2] - obstacle_slack + 100 alpha[30,0,24]
   <= 96.2
 obs_face_o30_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[30,1,24]
   <= 98.7
 obs_face_o30_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[30,2,24]
   <= 103.2
 obs_face_o30_e3_j24: z[25,0] - obstacle_slack + 100 alpha[30,3,24]
   <= 100.7
 obs_alpha_sum_o30_j25: alpha[30,0,25] + alpha[30,1,25] + alpha[30,2,25]
   + alpha[30,3,25] >= 1
 obs_face_o30_e0_j25: z[26,2] - obstacle_slack + 100 alpha[30,0,25]
   <= 96.2
 obs_face_o30_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[30,1,25]
   <= 98.7
 obs_face_o30_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[30,2,25]
   <= 103.2
 obs_face_o30_e3_j25: z[26,0] - obstacle_slack + 100 alpha[30,3,25]
   <= 100.7
 obs_alpha_sum_o30_j26: alpha[30,0,26] + alpha[30,1,26] + alpha[30,2,26]
   + alpha[30,3,26] >= 1
 obs_face_o30_e0_j26: z[27,2] - obstacle_slack + 100 alpha[30,0,26]
   <= 96.2
 obs_face_o30_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[30,1,26]
   <= 98.7
 obs_face_o30_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[30,2,26]
   <= 103.2
 obs_face_o30_e3_j26: z[27,0] - obstacle_slack + 100 alpha[30,3,26]
   <= 100.7
 obs_alpha_sum_o30_j27: alpha[30,0,27] + alpha[30,1,27] + alpha[30,2,27]
   + alpha[30,3,27] >= 1
 obs_face_o30_e0_j27: z[28,2] - obstacle_slack + 100 alpha[30,0,27]
   <= 96.2
 obs_face_o30_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[30,1,27]
   <= 98.7
 obs_face_o30_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[30,2,27]
   <= 103.2
 obs_face_o30_e3_j27: z[28,0] - obstacle_slack + 100 alpha[30,3,27]
   <= 100.7
 obs_alpha_sum_o30_j28: alpha[30,0,28] + alpha[30,1,28] + alpha[30,2,28]
   + alpha[30,3,28] >= 1
 obs_face_o30_e0_j28: z[29,2] - obstacle_slack + 100 alpha[30,0,28]
   <= 96.2
 obs_face_o30_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[30,1,28]
   <= 98.7
 obs_face_o30_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[30,2,28]
   <= 103.2
 obs_face_o30_e3_j28: z[29,0] - obstacle_slack + 100 alpha[30,3,28]
   <= 100.7
 obs_alpha_sum_o30_j29: alpha[30,0,29] + alpha[30,1,29] + alpha[30,2,29]
   + alpha[30,3,29] >= 1
 obs_face_o30_e0_j29: z[30,2] - obstacle_slack + 100 alpha[30,0,29]
   <= 96.2
 obs_face_o30_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[30,1,29]
   <= 98.7
 obs_face_o30_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[30,2,29]
   <= 103.2
 obs_face_o30_e3_j29: z[30,0] - obstacle_slack + 100 alpha[30,3,29]
   <= 100.7
 obs_alpha_sum_o31_j0: alpha[31,0,0] + alpha[31,1,0] + alpha[31,2,0]
   + alpha[31,3,0] >= 1
 obs_face_o31_e0_j0: z[1,2] - obstacle_slack + 100 alpha[31,0,0] <= 95.95
 obs_face_o31_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[31,1,0] <= 98.7
 obs_face_o31_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[31,2,0]
   <= 103.45
 obs_face_o31_e3_j0: z[1,0] - obstacle_slack + 100 alpha[31,3,0] <= 100.7
 obs_alpha_sum_o31_j1: alpha[31,0,1] + alpha[31,1,1] + alpha[31,2,1]
   + alpha[31,3,1] >= 1
 obs_face_o31_e0_j1: z[2,2] - obstacle_slack + 100 alpha[31,0,1] <= 95.95
 obs_face_o31_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[31,1,1] <= 98.7
 obs_face_o31_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[31,2,1]
   <= 103.45
 obs_face_o31_e3_j1: z[2,0] - obstacle_slack + 100 alpha[31,3,1] <= 100.7
 obs_alpha_sum_o31_j2: alpha[31,0,2] + alpha[31,1,2] + alpha[31,2,2]
   + alpha[31,3,2] >= 1
 obs_face_o31_e0_j2: z[3,2] - obstacle_slack + 100 alpha[31,0,2] <= 95.95
 obs_face_o31_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[31,1,2] <= 98.7
 obs_face_o31_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[31,2,2]
   <= 103.45
 obs_face_o31_e3_j2: z[3,0] - obstacle_slack + 100 alpha[31,3,2] <= 100.7
 obs_alpha_sum_o31_j3: alpha[31,0,3] + alpha[31,1,3] + alpha[31,2,3]
   + alpha[31,3,3] >= 1
 obs_face_o31_e0_j3: z[4,2] - obstacle_slack + 100 alpha[31,0,3] <= 95.95
 obs_face_o31_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[31,1,3] <= 98.7
 obs_face_o31_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[31,2,3]
   <= 103.45
 obs_face_o31_e3_j3: z[4,0] - obstacle_slack + 100 alpha[31,3,3] <= 100.7
 obs_alpha_sum_o31_j4: alpha[31,0,4] + alpha[31,1,4] + alpha[31,2,4]
   + alpha[31,3,4] >= 1
 obs_face_o31_e0_j4: z[5,2] - obstacle_slack + 100 alpha[31,0,4] <= 95.95
 obs_face_o31_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[31,1,4] <= 98.7
 obs_face_o31_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[31,2,4]
   <= 103.45
 obs_face_o31_e3_j4: z[5,0] - obstacle_slack + 100 alpha[31,3,4] <= 100.7
 obs_alpha_sum_o31_j5: alpha[31,0,5] + alpha[31,1,5] + alpha[31,2,5]
   + alpha[31,3,5] >= 1
 obs_face_o31_e0_j5: z[6,2] - obstacle_slack + 100 alpha[31,0,5] <= 95.95
 obs_face_o31_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[31,1,5] <= 98.7
 obs_face_o31_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[31,2,5]
   <= 103.45
 obs_face_o31_e3_j5: z[6,0] - obstacle_slack + 100 alpha[31,3,5] <= 100.7
 obs_alpha_sum_o31_j6: alpha[31,0,6] + alpha[31,1,6] + alpha[31,2,6]
   + alpha[31,3,6] >= 1
 obs_face_o31_e0_j6: z[7,2] - obstacle_slack + 100 alpha[31,0,6] <= 95.95
 obs_face_o31_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[31,1,6] <= 98.7
 obs_face_o31_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[31,2,6]
   <= 103.45
 obs_face_o31_e3_j6: z[7,0] - obstacle_slack + 100 alpha[31,3,6] <= 100.7
 obs_alpha_sum_o31_j7: alpha[31,0,7] + alpha[31,1,7] + alpha[31,2,7]
   + alpha[31,3,7] >= 1
 obs_face_o31_e0_j7: z[8,2] - obstacle_slack + 100 alpha[31,0,7] <= 95.95
 obs_face_o31_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[31,1,7] <= 98.7
 obs_face_o31_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[31,2,7]
   <= 103.45
 obs_face_o31_e3_j7: z[8,0] - obstacle_slack + 100 alpha[31,3,7] <= 100.7
 obs_alpha_sum_o31_j8: alpha[31,0,8] + alpha[31,1,8] + alpha[31,2,8]
   + alpha[31,3,8] >= 1
 obs_face_o31_e0_j8: z[9,2] - obstacle_slack + 100 alpha[31,0,8] <= 95.95
 obs_face_o31_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[31,1,8] <= 98.7
 obs_face_o31_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[31,2,8]
   <= 103.45
 obs_face_o31_e3_j8: z[9,0] - obstacle_slack + 100 alpha[31,3,8] <= 100.7
 obs_alpha_sum_o31_j9: alpha[31,0,9] + alpha[31,1,9] + alpha[31,2,9]
   + alpha[31,3,9] >= 1
 obs_face_o31_e0_j9: z[10,2] - obstacle_slack + 100 alpha[31,0,9] <= 95.95
 obs_face_o31_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[31,1,9]
   <= 98.7
 obs_face_o31_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[31,2,9]
   <= 103.45
 obs_face_o31_e3_j9: z[10,0] - obstacle_slack + 100 alpha[31,3,9] <= 100.7
 obs_alpha_sum_o31_j10: alpha[31,0,10] + alpha[31,1,10] + alpha[31,2,10]
   + alpha[31,3,10] >= 1
 obs_face_o31_e0_j10: z[11,2] - obstacle_slack + 100 alpha[31,0,10]
   <= 95.95
 obs_face_o31_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[31,1,10]
   <= 98.7
 obs_face_o31_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[31,2,10]
   <= 103.45
 obs_face_o31_e3_j10: z[11,0] - obstacle_slack + 100 alpha[31,3,10]
   <= 100.7
 obs_alpha_sum_o31_j11: alpha[31,0,11] + alpha[31,1,11] + alpha[31,2,11]
   + alpha[31,3,11] >= 1
 obs_face_o31_e0_j11: z[12,2] - obstacle_slack + 100 alpha[31,0,11]
   <= 95.95
 obs_face_o31_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[31,1,11]
   <= 98.7
 obs_face_o31_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[31,2,11]
   <= 103.45
 obs_face_o31_e3_j11: z[12,0] - obstacle_slack + 100 alpha[31,3,11]
   <= 100.7
 obs_alpha_sum_o31_j12: alpha[31,0,12] + alpha[31,1,12] + alpha[31,2,12]
   + alpha[31,3,12] >= 1
 obs_face_o31_e0_j12: z[13,2] - obstacle_slack + 100 alpha[31,0,12]
   <= 95.95
 obs_face_o31_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[31,1,12]
   <= 98.7
 obs_face_o31_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[31,2,12]
   <= 103.45
 obs_face_o31_e3_j12: z[13,0] - obstacle_slack + 100 alpha[31,3,12]
   <= 100.7
 obs_alpha_sum_o31_j13: alpha[31,0,13] + alpha[31,1,13] + alpha[31,2,13]
   + alpha[31,3,13] >= 1
 obs_face_o31_e0_j13: z[14,2] - obstacle_slack + 100 alpha[31,0,13]
   <= 95.95
 obs_face_o31_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[31,1,13]
   <= 98.7
 obs_face_o31_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[31,2,13]
   <= 103.45
 obs_face_o31_e3_j13: z[14,0] - obstacle_slack + 100 alpha[31,3,13]
   <= 100.7
 obs_alpha_sum_o31_j14: alpha[31,0,14] + alpha[31,1,14] + alpha[31,2,14]
   + alpha[31,3,14] >= 1
 obs_face_o31_e0_j14: z[15,2] - obstacle_slack + 100 alpha[31,0,14]
   <= 95.95
 obs_face_o31_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[31,1,14]
   <= 98.7
 obs_face_o31_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[31,2,14]
   <= 103.45
 obs_face_o31_e3_j14: z[15,0] - obstacle_slack + 100 alpha[31,3,14]
   <= 100.7
 obs_alpha_sum_o31_j15: alpha[31,0,15] + alpha[31,1,15] + alpha[31,2,15]
   + alpha[31,3,15] >= 1
 obs_face_o31_e0_j15: z[16,2] - obstacle_slack + 100 alpha[31,0,15]
   <= 95.95
 obs_face_o31_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[31,1,15]
   <= 98.7
 obs_face_o31_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[31,2,15]
   <= 103.45
 obs_face_o31_e3_j15: z[16,0] - obstacle_slack + 100 alpha[31,3,15]
   <= 100.7
 obs_alpha_sum_o31_j16: alpha[31,0,16] + alpha[31,1,16] + alpha[31,2,16]
   + alpha[31,3,16] >= 1
 obs_face_o31_e0_j16: z[17,2] - obstacle_slack + 100 alpha[31,0,16]
   <= 95.95
 obs_face_o31_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[31,1,16]
   <= 98.7
 obs_face_o31_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[31,2,16]
   <= 103.45
 obs_face_o31_e3_j16: z[17,0] - obstacle_slack + 100 alpha[31,3,16]
   <= 100.7
 obs_alpha_sum_o31_j17: alpha[31,0,17] + alpha[31,1,17] + alpha[31,2,17]
   + alpha[31,3,17] >= 1
 obs_face_o31_e0_j17: z[18,2] - obstacle_slack + 100 alpha[31,0,17]
   <= 95.95
 obs_face_o31_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[31,1,17]
   <= 98.7
 obs_face_o31_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[31,2,17]
   <= 103.45
 obs_face_o31_e3_j17: z[18,0] - obstacle_slack + 100 alpha[31,3,17]
   <= 100.7
 obs_alpha_sum_o31_j18: alpha[31,0,18] + alpha[31,1,18] + alpha[31,2,18]
   + alpha[31,3,18] >= 1
 obs_face_o31_e0_j18: z[19,2] - obstacle_slack + 100 alpha[31,0,18]
   <= 95.95
 obs_face_o31_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[31,1,18]
   <= 98.7
 obs_face_o31_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[31,2,18]
   <= 103.45
 obs_face_o31_e3_j18: z[19,0] - obstacle_slack + 100 alpha[31,3,18]
   <= 100.7
 obs_alpha_sum_o31_j19: alpha[31,0,19] + alpha[31,1,19] + alpha[31,2,19]
   + alpha[31,3,19] >= 1
 obs_face_o31_e0_j19: z[20,2] - obstacle_slack + 100 alpha[31,0,19]
   <= 95.95
 obs_face_o31_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[31,1,19]
   <= 98.7
 obs_face_o31_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[31,2,19]
   <= 103.45
 obs_face_o31_e3_j19: z[20,0] - obstacle_slack + 100 alpha[31,3,19]
   <= 100.7
 obs_alpha_sum_o31_j20: alpha[31,0,20] + alpha[31,1,20] + alpha[31,2,20]
   + alpha[31,3,20] >= 1
 obs_face_o31_e0_j20: z[21,2] - obstacle_slack + 100 alpha[31,0,20]
   <= 95.95
 obs_face_o31_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[31,1,20]
   <= 98.7
 obs_face_o31_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[31,2,20]
   <= 103.45
 obs_face_o31_e3_j20: z[21,0] - obstacle_slack + 100 alpha[31,3,20]
   <= 100.7
 obs_alpha_sum_o31_j21: alpha[31,0,21] + alpha[31,1,21] + alpha[31,2,21]
   + alpha[31,3,21] >= 1
 obs_face_o31_e0_j21: z[22,2] - obstacle_slack + 100 alpha[31,0,21]
   <= 95.95
 obs_face_o31_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[31,1,21]
   <= 98.7
 obs_face_o31_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[31,2,21]
   <= 103.45
 obs_face_o31_e3_j21: z[22,0] - obstacle_slack + 100 alpha[31,3,21]
   <= 100.7
 obs_alpha_sum_o31_j22: alpha[31,0,22] + alpha[31,1,22] + alpha[31,2,22]
   + alpha[31,3,22] >= 1
 obs_face_o31_e0_j22: z[23,2] - obstacle_slack + 100 alpha[31,0,22]
   <= 95.95
 obs_face_o31_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[31,1,22]
   <= 98.7
 obs_face_o31_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[31,2,22]
   <= 103.45
 obs_face_o31_e3_j22: z[23,0] - obstacle_slack + 100 alpha[31,3,22]
   <= 100.7
 obs_alpha_sum_o31_j23: alpha[31,0,23] + alpha[31,1,23] + alpha[31,2,23]
   + alpha[31,3,23] >= 1
 obs_face_o31_e0_j23: z[24,2] - obstacle_slack + 100 alpha[31,0,23]
   <= 95.95
 obs_face_o31_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[31,1,23]
   <= 98.7
 obs_face_o31_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[31,2,23]
   <= 103.45
 obs_face_o31_e3_j23: z[24,0] - obstacle_slack + 100 alpha[31,3,23]
   <= 100.7
 obs_alpha_sum_o31_j24: alpha[31,0,24] + alpha[31,1,24] + alpha[31,2,24]
   + alpha[31,3,24] >= 1
 obs_face_o31_e0_j24: z[25,2] - obstacle_slack + 100 alpha[31,0,24]
   <= 95.95
 obs_face_o31_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[31,1,24]
   <= 98.7
 obs_face_o31_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[31,2,24]
   <= 103.45
 obs_face_o31_e3_j24: z[25,0] - obstacle_slack + 100 alpha[31,3,24]
   <= 100.7
 obs_alpha_sum_o31_j25: alpha[31,0,25] + alpha[31,1,25] + alpha[31,2,25]
   + alpha[31,3,25] >= 1
 obs_face_o31_e0_j25: z[26,2] - obstacle_slack + 100 alpha[31,0,25]
   <= 95.95
 obs_face_o31_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[31,1,25]
   <= 98.7
 obs_face_o31_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[31,2,25]
   <= 103.45
 obs_face_o31_e3_j25: z[26,0] - obstacle_slack + 100 alpha[31,3,25]
   <= 100.7
 obs_alpha_sum_o31_j26: alpha[31,0,26] + alpha[31,1,26] + alpha[31,2,26]
   + alpha[31,3,26] >= 1
 obs_face_o31_e0_j26: z[27,2] - obstacle_slack + 100 alpha[31,0,26]
   <= 95.95
 obs_face_o31_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[31,1,26]
   <= 98.7
 obs_face_o31_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[31,2,26]
   <= 103.45
 obs_face_o31_e3_j26: z[27,0] - obstacle_slack + 100 alpha[31,3,26]
   <= 100.7
 obs_alpha_sum_o31_j27: alpha[31,0,27] + alpha[31,1,27] + alpha[31,2,27]
   + alpha[31,3,27] >= 1
 obs_face_o31_e0_j27: z[28,2] - obstacle_slack + 100 alpha[31,0,27]
   <= 95.95
 obs_face_o31_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[31,1,27]
   <= 98.7
 obs_face_o31_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[31,2,27]
   <= 103.45
 obs_face_o31_e3_j27: z[28,0] - obstacle_slack + 100 alpha[31,3,27]
   <= 100.7
 obs_alpha_sum_o31_j28: alpha[31,0,28] + alpha[31,1,28] + alpha[31,2,28]
   + alpha[31,3,28] >= 1
 obs_face_o31_e0_j28: z[29,2] - obstacle_slack + 100 alpha[31,0,28]
   <= 95.95
 obs_face_o31_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[31,1,28]
   <= 98.7
 obs_face_o31_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[31,2,28]
   <= 103.45
 obs_face_o31_e3_j28: z[29,0] - obstacle_slack + 100 alpha[31,3,28]
   <= 100.7
 obs_alpha_sum_o31_j29: alpha[31,0,29] + alpha[31,1,29] + alpha[31,2,29]
   + alpha[31,3,29] >= 1
 obs_face_o31_e0_j29: z[30,2] - obstacle_slack + 100 alpha[31,0,29]
   <= 95.95
 obs_face_o31_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[31,1,29]
   <= 98.7
 obs_face_o31_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[31,2,29]
   <= 103.45
 obs_face_o31_e3_j29: z[30,0] - obstacle_slack + 100 alpha[31,3,29]
   <= 100.7
 obs_alpha_sum_o32_j0: alpha[32,0,0] + alpha[32,1,0] + alpha[32,2,0]
   + alpha[32,3,0] >= 1
 obs_face_o32_e0_j0: z[1,2] - obstacle_slack + 100 alpha[32,0,0] <= 95.7
 obs_face_o32_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[32,1,0] <= 98.7
 obs_face_o32_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[32,2,0]
   <= 103.7
 obs_face_o32_e3_j0: z[1,0] - obstacle_slack + 100 alpha[32,3,0] <= 100.7
 obs_alpha_sum_o32_j1: alpha[32,0,1] + alpha[32,1,1] + alpha[32,2,1]
   + alpha[32,3,1] >= 1
 obs_face_o32_e0_j1: z[2,2] - obstacle_slack + 100 alpha[32,0,1] <= 95.7
 obs_face_o32_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[32,1,1] <= 98.7
 obs_face_o32_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[32,2,1]
   <= 103.7
 obs_face_o32_e3_j1: z[2,0] - obstacle_slack + 100 alpha[32,3,1] <= 100.7
 obs_alpha_sum_o32_j2: alpha[32,0,2] + alpha[32,1,2] + alpha[32,2,2]
   + alpha[32,3,2] >= 1
 obs_face_o32_e0_j2: z[3,2] - obstacle_slack + 100 alpha[32,0,2] <= 95.7
 obs_face_o32_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[32,1,2] <= 98.7
 obs_face_o32_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[32,2,2]
   <= 103.7
 obs_face_o32_e3_j2: z[3,0] - obstacle_slack + 100 alpha[32,3,2] <= 100.7
 obs_alpha_sum_o32_j3: alpha[32,0,3] + alpha[32,1,3] + alpha[32,2,3]
   + alpha[32,3,3] >= 1
 obs_face_o32_e0_j3: z[4,2] - obstacle_slack + 100 alpha[32,0,3] <= 95.7
 obs_face_o32_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[32,1,3] <= 98.7
 obs_face_o32_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[32,2,3]
   <= 103.7
 obs_face_o32_e3_j3: z[4,0] - obstacle_slack + 100 alpha[32,3,3] <= 100.7
 obs_alpha_sum_o32_j4: alpha[32,0,4] + alpha[32,1,4] + alpha[32,2,4]
   + alpha[32,3,4] >= 1
 obs_face_o32_e0_j4: z[5,2] - obstacle_slack + 100 alpha[32,0,4] <= 95.7
 obs_face_o32_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[32,1,4] <= 98.7
 obs_face_o32_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[32,2,4]
   <= 103.7
 obs_face_o32_e3_j4: z[5,0] - obstacle_slack + 100 alpha[32,3,4] <= 100.7
 obs_alpha_sum_o32_j5: alpha[32,0,5] + alpha[32,1,5] + alpha[32,2,5]
   + alpha[32,3,5] >= 1
 obs_face_o32_e0_j5: z[6,2] - obstacle_slack + 100 alpha[32,0,5] <= 95.7
 obs_face_o32_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[32,1,5] <= 98.7
 obs_face_o32_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[32,2,5]
   <= 103.7
 obs_face_o32_e3_j5: z[6,0] - obstacle_slack + 100 alpha[32,3,5] <= 100.7
 obs_alpha_sum_o32_j6: alpha[32,0,6] + alpha[32,1,6] + alpha[32,2,6]
   + alpha[32,3,6] >= 1
 obs_face_o32_e0_j6: z[7,2] - obstacle_slack + 100 alpha[32,0,6] <= 95.7
 obs_face_o32_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[32,1,6] <= 98.7
 obs_face_o32_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[32,2,6]
   <= 103.7
 obs_face_o32_e3_j6: z[7,0] - obstacle_slack + 100 alpha[32,3,6] <= 100.7
 obs_alpha_sum_o32_j7: alpha[32,0,7] + alpha[32,1,7] + alpha[32,2,7]
   + alpha[32,3,7] >= 1
 obs_face_o32_e0_j7: z[8,2] - obstacle_slack + 100 alpha[32,0,7] <= 95.7
 obs_face_o32_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[32,1,7] <= 98.7
 obs_face_o32_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[32,2,7]
   <= 103.7
 obs_face_o32_e3_j7: z[8,0] - obstacle_slack + 100 alpha[32,3,7] <= 100.7
 obs_alpha_sum_o32_j8: alpha[32,0,8] + alpha[32,1,8] + alpha[32,2,8]
   + alpha[32,3,8] >= 1
 obs_face_o32_e0_j8: z[9,2] - obstacle_slack + 100 alpha[32,0,8] <= 95.7
 obs_face_o32_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[32,1,8] <= 98.7
 obs_face_o32_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[32,2,8]
   <= 103.7
 obs_face_o32_e3_j8: z[9,0] - obstacle_slack + 100 alpha[32,3,8] <= 100.7
 obs_alpha_sum_o32_j9: alpha[32,0,9] + alpha[32,1,9] + alpha[32,2,9]
   + alpha[32,3,9] >= 1
 obs_face_o32_e0_j9: z[10,2] - obstacle_slack + 100 alpha[32,0,9] <= 95.7
 obs_face_o32_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[32,1,9]
   <= 98.7
 obs_face_o32_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[32,2,9]
   <= 103.7
 obs_face_o32_e3_j9: z[10,0] - obstacle_slack + 100 alpha[32,3,9] <= 100.7
 obs_alpha_sum_o32_j10: alpha[32,0,10] + alpha[32,1,10] + alpha[32,2,10]
   + alpha[32,3,10] >= 1
 obs_face_o32_e0_j10: z[11,2] - obstacle_slack + 100 alpha[32,0,10]
   <= 95.7
 obs_face_o32_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[32,1,10]
   <= 98.7
 obs_face_o32_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[32,2,10]
   <= 103.7
 obs_face_o32_e3_j10: z[11,0] - obstacle_slack + 100 alpha[32,3,10]
   <= 100.7
 obs_alpha_sum_o32_j11: alpha[32,0,11] + alpha[32,1,11] + alpha[32,2,11]
   + alpha[32,3,11] >= 1
 obs_face_o32_e0_j11: z[12,2] - obstacle_slack + 100 alpha[32,0,11]
   <= 95.7
 obs_face_o32_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[32,1,11]
   <= 98.7
 obs_face_o32_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[32,2,11]
   <= 103.7
 obs_face_o32_e3_j11: z[12,0] - obstacle_slack + 100 alpha[32,3,11]
   <= 100.7
 obs_alpha_sum_o32_j12: alpha[32,0,12] + alpha[32,1,12] + alpha[32,2,12]
   + alpha[32,3,12] >= 1
 obs_face_o32_e0_j12: z[13,2] - obstacle_slack + 100 alpha[32,0,12]
   <= 95.7
 obs_face_o32_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[32,1,12]
   <= 98.7
 obs_face_o32_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[32,2,12]
   <= 103.7
 obs_face_o32_e3_j12: z[13,0] - obstacle_slack + 100 alpha[32,3,12]
   <= 100.7
 obs_alpha_sum_o32_j13: alpha[32,0,13] + alpha[32,1,13] + alpha[32,2,13]
   + alpha[32,3,13] >= 1
 obs_face_o32_e0_j13: z[14,2] - obstacle_slack + 100 alpha[32,0,13]
   <= 95.7
 obs_face_o32_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[32,1,13]
   <= 98.7
 obs_face_o32_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[32,2,13]
   <= 103.7
 obs_face_o32_e3_j13: z[14,0] - obstacle_slack + 100 alpha[32,3,13]
   <= 100.7
 obs_alpha_sum_o32_j14: alpha[32,0,14] + alpha[32,1,14] + alpha[32,2,14]
   + alpha[32,3,14] >= 1
 obs_face_o32_e0_j14: z[15,2] - obstacle_slack + 100 alpha[32,0,14]
   <= 95.7
 obs_face_o32_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[32,1,14]
   <= 98.7
 obs_face_o32_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[32,2,14]
   <= 103.7
 obs_face_o32_e3_j14: z[15,0] - obstacle_slack + 100 alpha[32,3,14]
   <= 100.7
 obs_alpha_sum_o32_j15: alpha[32,0,15] + alpha[32,1,15] + alpha[32,2,15]
   + alpha[32,3,15] >= 1
 obs_face_o32_e0_j15: z[16,2] - obstacle_slack + 100 alpha[32,0,15]
   <= 95.7
 obs_face_o32_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[32,1,15]
   <= 98.7
 obs_face_o32_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[32,2,15]
   <= 103.7
 obs_face_o32_e3_j15: z[16,0] - obstacle_slack + 100 alpha[32,3,15]
   <= 100.7
 obs_alpha_sum_o32_j16: alpha[32,0,16] + alpha[32,1,16] + alpha[32,2,16]
   + alpha[32,3,16] >= 1
 obs_face_o32_e0_j16: z[17,2] - obstacle_slack + 100 alpha[32,0,16]
   <= 95.7
 obs_face_o32_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[32,1,16]
   <= 98.7
 obs_face_o32_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[32,2,16]
   <= 103.7
 obs_face_o32_e3_j16: z[17,0] - obstacle_slack + 100 alpha[32,3,16]
   <= 100.7
 obs_alpha_sum_o32_j17: alpha[32,0,17] + alpha[32,1,17] + alpha[32,2,17]
   + alpha[32,3,17] >= 1
 obs_face_o32_e0_j17: z[18,2] - obstacle_slack + 100 alpha[32,0,17]
   <= 95.7
 obs_face_o32_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[32,1,17]
   <= 98.7
 obs_face_o32_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[32,2,17]
   <= 103.7
 obs_face_o32_e3_j17: z[18,0] - obstacle_slack + 100 alpha[32,3,17]
   <= 100.7
 obs_alpha_sum_o32_j18: alpha[32,0,18] + alpha[32,1,18] + alpha[32,2,18]
   + alpha[32,3,18] >= 1
 obs_face_o32_e0_j18: z[19,2] - obstacle_slack + 100 alpha[32,0,18]
   <= 95.7
 obs_face_o32_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[32,1,18]
   <= 98.7
 obs_face_o32_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[32,2,18]
   <= 103.7
 obs_face_o32_e3_j18: z[19,0] - obstacle_slack + 100 alpha[32,3,18]
   <= 100.7
 obs_alpha_sum_o32_j19: alpha[32,0,19] + alpha[32,1,19] + alpha[32,2,19]
   + alpha[32,3,19] >= 1
 obs_face_o32_e0_j19: z[20,2] - obstacle_slack + 100 alpha[32,0,19]
   <= 95.7
 obs_face_o32_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[32,1,19]
   <= 98.7
 obs_face_o32_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[32,2,19]
   <= 103.7
 obs_face_o32_e3_j19: z[20,0] - obstacle_slack + 100 alpha[32,3,19]
   <= 100.7
 obs_alpha_sum_o32_j20: alpha[32,0,20] + alpha[32,1,20] + alpha[32,2,20]
   + alpha[32,3,20] >= 1
 obs_face_o32_e0_j20: z[21,2] - obstacle_slack + 100 alpha[32,0,20]
   <= 95.7
 obs_face_o32_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[32,1,20]
   <= 98.7
 obs_face_o32_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[32,2,20]
   <= 103.7
 obs_face_o32_e3_j20: z[21,0] - obstacle_slack + 100 alpha[32,3,20]
   <= 100.7
 obs_alpha_sum_o32_j21: alpha[32,0,21] + alpha[32,1,21] + alpha[32,2,21]
   + alpha[32,3,21] >= 1
 obs_face_o32_e0_j21: z[22,2] - obstacle_slack + 100 alpha[32,0,21]
   <= 95.7
 obs_face_o32_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[32,1,21]
   <= 98.7
 obs_face_o32_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[32,2,21]
   <= 103.7
 obs_face_o32_e3_j21: z[22,0] - obstacle_slack + 100 alpha[32,3,21]
   <= 100.7
 obs_alpha_sum_o32_j22: alpha[32,0,22] + alpha[32,1,22] + alpha[32,2,22]
   + alpha[32,3,22] >= 1
 obs_face_o32_e0_j22: z[23,2] - obstacle_slack + 100 alpha[32,0,22]
   <= 95.7
 obs_face_o32_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[32,1,22]
   <= 98.7
 obs_face_o32_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[32,2,22]
   <= 103.7
 obs_face_o32_e3_j22: z[23,0] - obstacle_slack + 100 alpha[32,3,22]
   <= 100.7
 obs_alpha_sum_o32_j23: alpha[32,0,23] + alpha[32,1,23] + alpha[32,2,23]
   + alpha[32,3,23] >= 1
 obs_face_o32_e0_j23: z[24,2] - obstacle_slack + 100 alpha[32,0,23]
   <= 95.7
 obs_face_o32_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[32,1,23]
   <= 98.7
 obs_face_o32_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[32,2,23]
   <= 103.7
 obs_face_o32_e3_j23: z[24,0] - obstacle_slack + 100 alpha[32,3,23]
   <= 100.7
 obs_alpha_sum_o32_j24: alpha[32,0,24] + alpha[32,1,24] + alpha[32,2,24]
   + alpha[32,3,24] >= 1
 obs_face_o32_e0_j24: z[25,2] - obstacle_slack + 100 alpha[32,0,24]
   <= 95.7
 obs_face_o32_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[32,1,24]
   <= 98.7
 obs_face_o32_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[32,2,24]
   <= 103.7
 obs_face_o32_e3_j24: z[25,0] - obstacle_slack + 100 alpha[32,3,24]
   <= 100.7
 obs_alpha_sum_o32_j25: alpha[32,0,25] + alpha[32,1,25] + alpha[32,2,25]
   + alpha[32,3,25] >= 1
 obs_face_o32_e0_j25: z[26,2] - obstacle_slack + 100 alpha[32,0,25]
   <= 95.7
 obs_face_o32_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[32,1,25]
   <= 98.7
 obs_face_o32_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[32,2,25]
   <= 103.7
 obs_face_o32_e3_j25: z[26,0] - obstacle_slack + 100 alpha[32,3,25]
   <= 100.7
 obs_alpha_sum_o32_j26: alpha[32,0,26] + alpha[32,1,26] + alpha[32,2,26]
   + alpha[32,3,26] >= 1
 obs_face_o32_e0_j26: z[27,2] - obstacle_slack + 100 alpha[32,0,26]
   <= 95.7
 obs_face_o32_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[32,1,26]
   <= 98.7
 obs_face_o32_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[32,2,26]
   <= 103.7
 obs_face_o32_e3_j26: z[27,0] - obstacle_slack + 100 alpha[32,3,26]
   <= 100.7
 obs_alpha_sum_o32_j27: alpha[32,0,27] + alpha[32,1,27] + alpha[32,2,27]
   + alpha[32,3,27] >= 1
 obs_face_o32_e0_j27: z[28,2] - obstacle_slack + 100 alpha[32,0,27]
   <= 95.7
 obs_face_o32_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[32,1,27]
   <= 98.7
 obs_face_o32_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[32,2,27]
   <= 103.7
 obs_face_o32_e3_j27: z[28,0] - obstacle_slack + 100 alpha[32,3,27]
   <= 100.7
 obs_alpha_sum_o32_j28: alpha[32,0,28] + alpha[32,1,28] + alpha[32,2,28]
   + alpha[32,3,28] >= 1
 obs_face_o32_e0_j28: z[29,2] - obstacle_slack + 100 alpha[32,0,28]
   <= 95.7
 obs_face_o32_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[32,1,28]
   <= 98.7
 obs_face_o32_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[32,2,28]
   <= 103.7
 obs_face_o32_e3_j28: z[29,0] - obstacle_slack + 100 alpha[32,3,28]
   <= 100.7
 obs_alpha_sum_o32_j29: alpha[32,0,29] + alpha[32,1,29] + alpha[32,2,29]
   + alpha[32,3,29] >= 1
 obs_face_o32_e0_j29: z[30,2] - obstacle_slack + 100 alpha[32,0,29]
   <= 95.7
 obs_face_o32_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[32,1,29]
   <= 98.7
 obs_face_o32_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[32,2,29]
   <= 103.7
 obs_face_o32_e3_j29: z[30,0] - obstacle_slack + 100 alpha[32,3,29]
   <= 100.7
 obs_alpha_sum_o33_j0: alpha[33,0,0] + alpha[33,1,0] + alpha[33,2,0]
   + alpha[33,3,0] >= 1
 obs_face_o33_e0_j0: z[1,2] - obstacle_slack + 100 alpha[33,0,0] <= 96.7
 obs_face_o33_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[33,1,0]
   <= 98.95
 obs_face_o33_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[33,2,0]
   <= 102.7
 obs_face_o33_e3_j0: z[1,0] - obstacle_slack + 100 alpha[33,3,0] <= 100.45
 obs_alpha_sum_o33_j1: alpha[33,0,1] + alpha[33,1,1] + alpha[33,2,1]
   + alpha[33,3,1] >= 1
 obs_face_o33_e0_j1: z[2,2] - obstacle_slack + 100 alpha[33,0,1] <= 96.7
 obs_face_o33_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[33,1,1]
   <= 98.95
 obs_face_o33_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[33,2,1]
   <= 102.7
 obs_face_o33_e3_j1: z[2,0] - obstacle_slack + 100 alpha[33,3,1] <= 100.45
 obs_alpha_sum_o33_j2: alpha[33,0,2] + alpha[33,1,2] + alpha[33,2,2]
   + alpha[33,3,2] >= 1
 obs_face_o33_e0_j2: z[3,2] - obstacle_slack + 100 alpha[33,0,2] <= 96.7
 obs_face_o33_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[33,1,2]
   <= 98.95
 obs_face_o33_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[33,2,2]
   <= 102.7
 obs_face_o33_e3_j2: z[3,0] - obstacle_slack + 100 alpha[33,3,2] <= 100.45
 obs_alpha_sum_o33_j3: alpha[33,0,3] + alpha[33,1,3] + alpha[33,2,3]
   + alpha[33,3,3] >= 1
 obs_face_o33_e0_j3: z[4,2] - obstacle_slack + 100 alpha[33,0,3] <= 96.7
 obs_face_o33_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[33,1,3]
   <= 98.95
 obs_face_o33_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[33,2,3]
   <= 102.7
 obs_face_o33_e3_j3: z[4,0] - obstacle_slack + 100 alpha[33,3,3] <= 100.45
 obs_alpha_sum_o33_j4: alpha[33,0,4] + alpha[33,1,4] + alpha[33,2,4]
   + alpha[33,3,4] >= 1
 obs_face_o33_e0_j4: z[5,2] - obstacle_slack + 100 alpha[33,0,4] <= 96.7
 obs_face_o33_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[33,1,4]
   <= 98.95
 obs_face_o33_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[33,2,4]
   <= 102.7
 obs_face_o33_e3_j4: z[5,0] - obstacle_slack + 100 alpha[33,3,4] <= 100.45
 obs_alpha_sum_o33_j5: alpha[33,0,5] + alpha[33,1,5] + alpha[33,2,5]
   + alpha[33,3,5] >= 1
 obs_face_o33_e0_j5: z[6,2] - obstacle_slack + 100 alpha[33,0,5] <= 96.7
 obs_face_o33_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[33,1,5]
   <= 98.95
 obs_face_o33_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[33,2,5]
   <= 102.7
 obs_face_o33_e3_j5: z[6,0] - obstacle_slack + 100 alpha[33,3,5] <= 100.45
 obs_alpha_sum_o33_j6: alpha[33,0,6] + alpha[33,1,6] + alpha[33,2,6]
   + alpha[33,3,6] >= 1
 obs_face_o33_e0_j6: z[7,2] - obstacle_slack + 100 alpha[33,0,6] <= 96.7
 obs_face_o33_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[33,1,6]
   <= 98.95
 obs_face_o33_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[33,2,6]
   <= 102.7
 obs_face_o33_e3_j6: z[7,0] - obstacle_slack + 100 alpha[33,3,6] <= 100.45
 obs_alpha_sum_o33_j7: alpha[33,0,7] + alpha[33,1,7] + alpha[33,2,7]
   + alpha[33,3,7] >= 1
 obs_face_o33_e0_j7: z[8,2] - obstacle_slack + 100 alpha[33,0,7] <= 96.7
 obs_face_o33_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[33,1,7]
   <= 98.95
 obs_face_o33_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[33,2,7]
   <= 102.7
 obs_face_o33_e3_j7: z[8,0] - obstacle_slack + 100 alpha[33,3,7] <= 100.45
 obs_alpha_sum_o33_j8: alpha[33,0,8] + alpha[33,1,8] + alpha[33,2,8]
   + alpha[33,3,8] >= 1
 obs_face_o33_e0_j8: z[9,2] - obstacle_slack + 100 alpha[33,0,8] <= 96.7
 obs_face_o33_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[33,1,8]
   <= 98.95
 obs_face_o33_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[33,2,8]
   <= 102.7
 obs_face_o33_e3_j8: z[9,0] - obstacle_slack + 100 alpha[33,3,8] <= 100.45
 obs_alpha_sum_o33_j9: alpha[33,0,9] + alpha[33,1,9] + alpha[33,2,9]
   + alpha[33,3,9] >= 1
 obs_face_o33_e0_j9: z[10,2] - obstacle_slack + 100 alpha[33,0,9] <= 96.7
 obs_face_o33_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[33,1,9]
   <= 98.95
 obs_face_o33_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[33,2,9]
   <= 102.7
 obs_face_o33_e3_j9: z[10,0] - obstacle_slack + 100 alpha[33,3,9]
   <= 100.45
 obs_alpha_sum_o33_j10: alpha[33,0,10] + alpha[33,1,10] + alpha[33,2,10]
   + alpha[33,3,10] >= 1
 obs_face_o33_e0_j10: z[11,2] - obstacle_slack + 100 alpha[33,0,10]
   <= 96.7
 obs_face_o33_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[33,1,10]
   <= 98.95
 obs_face_o33_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[33,2,10]
   <= 102.7
 obs_face_o33_e3_j10: z[11,0] - obstacle_slack + 100 alpha[33,3,10]
   <= 100.45
 obs_alpha_sum_o33_j11: alpha[33,0,11] + alpha[33,1,11] + alpha[33,2,11]
   + alpha[33,3,11] >= 1
 obs_face_o33_e0_j11: z[12,2] - obstacle_slack + 100 alpha[33,0,11]
   <= 96.7
 obs_face_o33_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[33,1,11]
   <= 98.95
 obs_face_o33_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[33,2,11]
   <= 102.7
 obs_face_o33_e3_j11: z[12,0] - obstacle_slack + 100 alpha[33,3,11]
   <= 100.45
 obs_alpha_sum_o33_j12: alpha[33,0,12] + alpha[33,1,12] + alpha[33,2,12]
   + alpha[33,3,12] >= 1
 obs_face_o33_e0_j12: z[13,2] - obstacle_slack + 100 alpha[33,0,12]
   <= 96.7
 obs_face_o33_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[33,1,12]
   <= 98.95
 obs_face_o33_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[33,2,12]
   <= 102.7
 obs_face_o33_e3_j12: z[13,0] - obstacle_slack + 100 alpha[33,3,12]
   <= 100.45
 obs_alpha_sum_o33_j13: alpha[33,0,13] + alpha[33,1,13] + alpha[33,2,13]
   + alpha[33,3,13] >= 1
 obs_face_o33_e0_j13: z[14,2] - obstacle_slack + 100 alpha[33,0,13]
   <= 96.7
 obs_face_o33_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[33,1,13]
   <= 98.95
 obs_face_o33_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[33,2,13]
   <= 102.7
 obs_face_o33_e3_j13: z[14,0] - obstacle_slack + 100 alpha[33,3,13]
   <= 100.45
 obs_alpha_sum_o33_j14: alpha[33,0,14] + alpha[33,1,14] + alpha[33,2,14]
   + alpha[33,3,14] >= 1
 obs_face_o33_e0_j14: z[15,2] - obstacle_slack + 100 alpha[33,0,14]
   <= 96.7
 obs_face_o33_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[33,1,14]
   <= 98.95
 obs_face_o33_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[33,2,14]
   <= 102.7
 obs_face_o33_e3_j14: z[15,0] - obstacle_slack + 100 alpha[33,3,14]
   <= 100.45
 obs_alpha_sum_o33_j15: alpha[33,0,15] + alpha[33,1,15] + alpha[33,2,15]
   + alpha[33,3,15] >= 1
 obs_face_o33_e0_j15: z[16,2] - obstacle_slack + 100 alpha[33,0,15]
   <= 96.7
 obs_face_o33_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[33,1,15]
   <= 98.95
 obs_face_o33_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[33,2,15]
   <= 102.7
 obs_face_o33_e3_j15: z[16,0] - obstacle_slack + 100 alpha[33,3,15]
   <= 100.45
 obs_alpha_sum_o33_j16: alpha[33,0,16] + alpha[33,1,16] + alpha[33,2,16]
   + alpha[33,3,16] >= 1
 obs_face_o33_e0_j16: z[17,2] - obstacle_slack + 100 alpha[33,0,16]
   <= 96.7
 obs_face_o33_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[33,1,16]
   <= 98.95
 obs_face_o33_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[33,2,16]
   <= 102.7
 obs_face_o33_e3_j16: z[17,0] - obstacle_slack + 100 alpha[33,3,16]
   <= 100.45
 obs_alpha_sum_o33_j17: alpha[33,0,17] + alpha[33,1,17] + alpha[33,2,17]
   + alpha[33,3,17] >= 1
 obs_face_o33_e0_j17: z[18,2] - obstacle_slack + 100 alpha[33,0,17]
   <= 96.7
 obs_face_o33_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[33,1,17]
   <= 98.95
 obs_face_o33_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[33,2,17]
   <= 102.7
 obs_face_o33_e3_j17: z[18,0] - obstacle_slack + 100 alpha[33,3,17]
   <= 100.45
 obs_alpha_sum_o33_j18: alpha[33,0,18] + alpha[33,1,18] + alpha[33,2,18]
   + alpha[33,3,18] >= 1
 obs_face_o33_e0_j18: z[19,2] - obstacle_slack + 100 alpha[33,0,18]
   <= 96.7
 obs_face_o33_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[33,1,18]
   <= 98.95
 obs_face_o33_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[33,2,18]
   <= 102.7
 obs_face_o33_e3_j18: z[19,0] - obstacle_slack + 100 alpha[33,3,18]
   <= 100.45
 obs_alpha_sum_o33_j19: alpha[33,0,19] + alpha[33,1,19] + alpha[33,2,19]
   + alpha[33,3,19] >= 1
 obs_face_o33_e0_j19: z[20,2] - obstacle_slack + 100 alpha[33,0,19]
   <= 96.7
 obs_face_o33_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[33,1,19]
   <= 98.95
 obs_face_o33_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[33,2,19]
   <= 102.7
 obs_face_o33_e3_j19: z[20,0] - obstacle_slack + 100 alpha[33,3,19]
   <= 100.45
 obs_alpha_sum_o33_j20: alpha[33,0,20] + alpha[33,1,20] + alpha[33,2,20]
   + alpha[33,3,20] >= 1
 obs_face_o33_e0_j20: z[21,2] - obstacle_slack + 100 alpha[33,0,20]
   <= 96.7
 obs_face_o33_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[33,1,20]
   <= 98.95
 obs_face_o33_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[33,2,20]
   <= 102.7
 obs_face_o33_e3_j20: z[21,0] - obstacle_slack + 100 alpha[33,3,20]
   <= 100.45
 obs_alpha_sum_o33_j21: alpha[33,0,21] + alpha[33,1,21] + alpha[33,2,21]
   + alpha[33,3,21] >= 1
 obs_face_o33_e0_j21: z[22,2] - obstacle_slack + 100 alpha[33,0,21]
   <= 96.7
 obs_face_o33_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[33,1,21]
   <= 98.95
 obs_face_o33_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[33,2,21]
   <= 102.7
 obs_face_o33_e3_j21: z[22,0] - obstacle_slack + 100 alpha[33,3,21]
   <= 100.45
 obs_alpha_sum_o33_j22: alpha[33,0,22] + alpha[33,1,22] + alpha[33,2,22]
   + alpha[33,3,22] >= 1
 obs_face_o33_e0_j22: z[23,2] - obstacle_slack + 100 alpha[33,0,22]
   <= 96.7
 obs_face_o33_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[33,1,22]
   <= 98.95
 obs_face_o33_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[33,2,22]
   <= 102.7
 obs_face_o33_e3_j22: z[23,0] - obstacle_slack + 100 alpha[33,3,22]
   <= 100.45
 obs_alpha_sum_o33_j23: alpha[33,0,23] + alpha[33,1,23] + alpha[33,2,23]
   + alpha[33,3,23] >= 1
 obs_face_o33_e0_j23: z[24,2] - obstacle_slack + 100 alpha[33,0,23]
   <= 96.7
 obs_face_o33_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[33,1,23]
   <= 98.95
 obs_face_o33_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[33,2,23]
   <= 102.7
 obs_face_o33_e3_j23: z[24,0] - obstacle_slack + 100 alpha[33,3,23]
   <= 100.45
 obs_alpha_sum_o33_j24: alpha[33,0,24] + alpha[33,1,24] + alpha[33,2,24]
   + alpha[33,3,24] >= 1
 obs_face_o33_e0_j24: z[25,2] - obstacle_slack + 100 alpha[33,0,24]
   <= 96.7
 obs_face_o33_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[33,1,24]
   <= 98.95
 obs_face_o33_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[33,2,24]
   <= 102.7
 obs_face_o33_e3_j24: z[25,0] - obstacle_slack + 100 alpha[33,3,24]
   <= 100.45
 obs_alpha_sum_o33_j25: alpha[33,0,25] + alpha[33,1,25] + alpha[33,2,25]
   + alpha[33,3,25] >= 1
 obs_face_o33_e0_j25: z[26,2] - obstacle_slack + 100 alpha[33,0,25]
   <= 96.7
 obs_face_o33_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[33,1,25]
   <= 98.95
 obs_face_o33_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[33,2,25]
   <= 102.7
 obs_face_o33_e3_j25: z[26,0] - obstacle_slack + 100 alpha[33,3,25]
   <= 100.45
 obs_alpha_sum_o33_j26: alpha[33,0,26] + alpha[33,1,26] + alpha[33,2,26]
   + alpha[33,3,26] >= 1
 obs_face_o33_e0_j26: z[27,2] - obstacle_slack + 100 alpha[33,0,26]
   <= 96.7
 obs_face_o33_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[33,1,26]
   <= 98.95
 obs_face_o33_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[33,2,26]
   <= 102.7
 obs_face_o33_e3_j26: z[27,0] - obstacle_slack + 100 alpha[33,3,26]
   <= 100.45
 obs_alpha_sum_o33_j27: alpha[33,0,27] + alpha[33,1,27] + alpha[33,2,27]
   + alpha[33,3,27] >= 1
 obs_face_o33_e0_j27: z[28,2] - obstacle_slack + 100 alpha[33,0,27]
   <= 96.7
 obs_face_o33_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[33,1,27]
   <= 98.95
 obs_face_o33_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[33,2,27]
   <= 102.7
 obs_face_o33_e3_j27: z[28,0] - obstacle_slack + 100 alpha[33,3,27]
   <= 100.45
 obs_alpha_sum_o33_j28: alpha[33,0,28] + alpha[33,1,28] + alpha[33,2,28]
   + alpha[33,3,28] >= 1
 obs_face_o33_e0_j28: z[29,2] - obstacle_slack + 100 alpha[33,0,28]
   <= 96.7
 obs_face_o33_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[33,1,28]
   <= 98.95
 obs_face_o33_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[33,2,28]
   <= 102.7
 obs_face_o33_e3_j28: z[29,0] - obstacle_slack + 100 alpha[33,3,28]
   <= 100.45
 obs_alpha_sum_o33_j29: alpha[33,0,29] + alpha[33,1,29] + alpha[33,2,29]
   + alpha[33,3,29] >= 1
 obs_face_o33_e0_j29: z[30,2] - obstacle_slack + 100 alpha[33,0,29]
   <= 96.7
 obs_face_o33_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[33,1,29]
   <= 98.95
 obs_face_o33_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[33,2,29]
   <= 102.7
 obs_face_o33_e3_j29: z[30,0] - obstacle_slack + 100 alpha[33,3,29]
   <= 100.45
 obs_alpha_sum_o34_j0: alpha[34,0,0] + alpha[34,1,0] + alpha[34,2,0]
   + alpha[34,3,0] >= 1
 obs_face_o34_e0_j0: z[1,2] - obstacle_slack + 100 alpha[34,0,0] <= 96.45
 obs_face_o34_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[34,1,0]
   <= 98.95
 obs_face_o34_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[34,2,0]
   <= 102.95
 obs_face_o34_e3_j0: z[1,0] - obstacle_slack + 100 alpha[34,3,0] <= 100.45
 obs_alpha_sum_o34_j1: alpha[34,0,1] + alpha[34,1,1] + alpha[34,2,1]
   + alpha[34,3,1] >= 1
 obs_face_o34_e0_j1: z[2,2] - obstacle_slack + 100 alpha[34,0,1] <= 96.45
 obs_face_o34_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[34,1,1]
   <= 98.95
 obs_face_o34_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[34,2,1]
   <= 102.95
 obs_face_o34_e3_j1: z[2,0] - obstacle_slack + 100 alpha[34,3,1] <= 100.45
 obs_alpha_sum_o34_j2: alpha[34,0,2] + alpha[34,1,2] + alpha[34,2,2]
   + alpha[34,3,2] >= 1
 obs_face_o34_e0_j2: z[3,2] - obstacle_slack + 100 alpha[34,0,2] <= 96.45
 obs_face_o34_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[34,1,2]
   <= 98.95
 obs_face_o34_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[34,2,2]
   <= 102.95
 obs_face_o34_e3_j2: z[3,0] - obstacle_slack + 100 alpha[34,3,2] <= 100.45
 obs_alpha_sum_o34_j3: alpha[34,0,3] + alpha[34,1,3] + alpha[34,2,3]
   + alpha[34,3,3] >= 1
 obs_face_o34_e0_j3: z[4,2] - obstacle_slack + 100 alpha[34,0,3] <= 96.45
 obs_face_o34_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[34,1,3]
   <= 98.95
 obs_face_o34_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[34,2,3]
   <= 102.95
 obs_face_o34_e3_j3: z[4,0] - obstacle_slack + 100 alpha[34,3,3] <= 100.45
 obs_alpha_sum_o34_j4: alpha[34,0,4] + alpha[34,1,4] + alpha[34,2,4]
   + alpha[34,3,4] >= 1
 obs_face_o34_e0_j4: z[5,2] - obstacle_slack + 100 alpha[34,0,4] <= 96.45
 obs_face_o34_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[34,1,4]
   <= 98.95
 obs_face_o34_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[34,2,4]
   <= 102.95
 obs_face_o34_e3_j4: z[5,0] - obstacle_slack + 100 alpha[34,3,4] <= 100.45
 obs_alpha_sum_o34_j5: alpha[34,0,5] + alpha[34,1,5] + alpha[34,2,5]
   + alpha[34,3,5] >= 1
 obs_face_o34_e0_j5: z[6,2] - obstacle_slack + 100 alpha[34,0,5] <= 96.45
 obs_face_o34_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[34,1,5]
   <= 98.95
 obs_face_o34_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[34,2,5]
   <= 102.95
 obs_face_o34_e3_j5: z[6,0] - obstacle_slack + 100 alpha[34,3,5] <= 100.45
 obs_alpha_sum_o34_j6: alpha[34,0,6] + alpha[34,1,6] + alpha[34,2,6]
   + alpha[34,3,6] >= 1
 obs_face_o34_e0_j6: z[7,2] - obstacle_slack + 100 alpha[34,0,6] <= 96.45
 obs_face_o34_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[34,1,6]
   <= 98.95
 obs_face_o34_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[34,2,6]
   <= 102.95
 obs_face_o34_e3_j6: z[7,0] - obstacle_slack + 100 alpha[34,3,6] <= 100.45
 obs_alpha_sum_o34_j7: alpha[34,0,7] + alpha[34,1,7] + alpha[34,2,7]
   + alpha[34,3,7] >= 1
 obs_face_o34_e0_j7: z[8,2] - obstacle_slack + 100 alpha[34,0,7] <= 96.45
 obs_face_o34_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[34,1,7]
   <= 98.95
 obs_face_o34_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[34,2,7]
   <= 102.95
 obs_face_o34_e3_j7: z[8,0] - obstacle_slack + 100 alpha[34,3,7] <= 100.45
 obs_alpha_sum_o34_j8: alpha[34,0,8] + alpha[34,1,8] + alpha[34,2,8]
   + alpha[34,3,8] >= 1
 obs_face_o34_e0_j8: z[9,2] - obstacle_slack + 100 alpha[34,0,8] <= 96.45
 obs_face_o34_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[34,1,8]
   <= 98.95
 obs_face_o34_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[34,2,8]
   <= 102.95
 obs_face_o34_e3_j8: z[9,0] - obstacle_slack + 100 alpha[34,3,8] <= 100.45
 obs_alpha_sum_o34_j9: alpha[34,0,9] + alpha[34,1,9] + alpha[34,2,9]
   + alpha[34,3,9] >= 1
 obs_face_o34_e0_j9: z[10,2] - obstacle_slack + 100 alpha[34,0,9] <= 96.45
 obs_face_o34_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[34,1,9]
   <= 98.95
 obs_face_o34_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[34,2,9]
   <= 102.95
 obs_face_o34_e3_j9: z[10,0] - obstacle_slack + 100 alpha[34,3,9]
   <= 100.45
 obs_alpha_sum_o34_j10: alpha[34,0,10] + alpha[34,1,10] + alpha[34,2,10]
   + alpha[34,3,10] >= 1
 obs_face_o34_e0_j10: z[11,2] - obstacle_slack + 100 alpha[34,0,10]
   <= 96.45
 obs_face_o34_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[34,1,10]
   <= 98.95
 obs_face_o34_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[34,2,10]
   <= 102.95
 obs_face_o34_e3_j10: z[11,0] - obstacle_slack + 100 alpha[34,3,10]
   <= 100.45
 obs_alpha_sum_o34_j11: alpha[34,0,11] + alpha[34,1,11] + alpha[34,2,11]
   + alpha[34,3,11] >= 1
 obs_face_o34_e0_j11: z[12,2] - obstacle_slack + 100 alpha[34,0,11]
   <= 96.45
 obs_face_o34_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[34,1,11]
   <= 98.95
 obs_face_o34_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[34,2,11]
   <= 102.95
 obs_face_o34_e3_j11: z[12,0] - obstacle_slack + 100 alpha[34,3,11]
   <= 100.45
 obs_alpha_sum_o34_j12: alpha[34,0,12] + alpha[34,1,12] + alpha[34,2,12]
   + alpha[34,3,12] >= 1
 obs_face_o34_e0_j12: z[13,2] - obstacle_slack + 100 alpha[34,0,12]
   <= 96.45
 obs_face_o34_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[34,1,12]
   <= 98.95
 obs_face_o34_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[34,2,12]
   <= 102.95
 obs_face_o34_e3_j12: z[13,0] - obstacle_slack + 100 alpha[34,3,12]
   <= 100.45
 obs_alpha_sum_o34_j13: alpha[34,0,13] + alpha[34,1,13] + alpha[34,2,13]
   + alpha[34,3,13] >= 1
 obs_face_o34_e0_j13: z[14,2] - obstacle_slack + 100 alpha[34,0,13]
   <= 96.45
 obs_face_o34_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[34,1,13]
   <= 98.95
 obs_face_o34_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[34,2,13]
   <= 102.95
 obs_face_o34_e3_j13: z[14,0] - obstacle_slack + 100 alpha[34,3,13]
   <= 100.45
 obs_alpha_sum_o34_j14: alpha[34,0,14] + alpha[34,1,14] + alpha[34,2,14]
   + alpha[34,3,14] >= 1
 obs_face_o34_e0_j14: z[15,2] - obstacle_slack + 100 alpha[34,0,14]
   <= 96.45
 obs_face_o34_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[34,1,14]
   <= 98.95
 obs_face_o34_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[34,2,14]
   <= 102.95
 obs_face_o34_e3_j14: z[15,0] - obstacle_slack + 100 alpha[34,3,14]
   <= 100.45
 obs_alpha_sum_o34_j15: alpha[34,0,15] + alpha[34,1,15] + alpha[34,2,15]
   + alpha[34,3,15] >= 1
 obs_face_o34_e0_j15: z[16,2] - obstacle_slack + 100 alpha[34,0,15]
   <= 96.45
 obs_face_o34_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[34,1,15]
   <= 98.95
 obs_face_o34_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[34,2,15]
   <= 102.95
 obs_face_o34_e3_j15: z[16,0] - obstacle_slack + 100 alpha[34,3,15]
   <= 100.45
 obs_alpha_sum_o34_j16: alpha[34,0,16] + alpha[34,1,16] + alpha[34,2,16]
   + alpha[34,3,16] >= 1
 obs_face_o34_e0_j16: z[17,2] - obstacle_slack + 100 alpha[34,0,16]
   <= 96.45
 obs_face_o34_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[34,1,16]
   <= 98.95
 obs_face_o34_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[34,2,16]
   <= 102.95
 obs_face_o34_e3_j16: z[17,0] - obstacle_slack + 100 alpha[34,3,16]
   <= 100.45
 obs_alpha_sum_o34_j17: alpha[34,0,17] + alpha[34,1,17] + alpha[34,2,17]
   + alpha[34,3,17] >= 1
 obs_face_o34_e0_j17: z[18,2] - obstacle_slack + 100 alpha[34,0,17]
   <= 96.45
 obs_face_o34_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[34,1,17]
   <= 98.95
 obs_face_o34_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[34,2,17]
   <= 102.95
 obs_face_o34_e3_j17: z[18,0] - obstacle_slack + 100 alpha[34,3,17]
   <= 100.45
 obs_alpha_sum_o34_j18: alpha[34,0,18] + alpha[34,1,18] + alpha[34,2,18]
   + alpha[34,3,18] >= 1
 obs_face_o34_e0_j18: z[19,2] - obstacle_slack + 100 alpha[34,0,18]
   <= 96.45
 obs_face_o34_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[34,1,18]
   <= 98.95
 obs_face_o34_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[34,2,18]
   <= 102.95
 obs_face_o34_e3_j18: z[19,0] - obstacle_slack + 100 alpha[34,3,18]
   <= 100.45
 obs_alpha_sum_o34_j19: alpha[34,0,19] + alpha[34,1,19] + alpha[34,2,19]
   + alpha[34,3,19] >= 1
 obs_face_o34_e0_j19: z[20,2] - obstacle_slack + 100 alpha[34,0,19]
   <= 96.45
 obs_face_o34_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[34,1,19]
   <= 98.95
 obs_face_o34_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[34,2,19]
   <= 102.95
 obs_face_o34_e3_j19: z[20,0] - obstacle_slack + 100 alpha[34,3,19]
   <= 100.45
 obs_alpha_sum_o34_j20: alpha[34,0,20] + alpha[34,1,20] + alpha[34,2,20]
   + alpha[34,3,20] >= 1
 obs_face_o34_e0_j20: z[21,2] - obstacle_slack + 100 alpha[34,0,20]
   <= 96.45
 obs_face_o34_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[34,1,20]
   <= 98.95
 obs_face_o34_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[34,2,20]
   <= 102.95
 obs_face_o34_e3_j20: z[21,0] - obstacle_slack + 100 alpha[34,3,20]
   <= 100.45
 obs_alpha_sum_o34_j21: alpha[34,0,21] + alpha[34,1,21] + alpha[34,2,21]
   + alpha[34,3,21] >= 1
 obs_face_o34_e0_j21: z[22,2] - obstacle_slack + 100 alpha[34,0,21]
   <= 96.45
 obs_face_o34_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[34,1,21]
   <= 98.95
 obs_face_o34_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[34,2,21]
   <= 102.95
 obs_face_o34_e3_j21: z[22,0] - obstacle_slack + 100 alpha[34,3,21]
   <= 100.45
 obs_alpha_sum_o34_j22: alpha[34,0,22] + alpha[34,1,22] + alpha[34,2,22]
   + alpha[34,3,22] >= 1
 obs_face_o34_e0_j22: z[23,2] - obstacle_slack + 100 alpha[34,0,22]
   <= 96.45
 obs_face_o34_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[34,1,22]
   <= 98.95
 obs_face_o34_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[34,2,22]
   <= 102.95
 obs_face_o34_e3_j22: z[23,0] - obstacle_slack + 100 alpha[34,3,22]
   <= 100.45
 obs_alpha_sum_o34_j23: alpha[34,0,23] + alpha[34,1,23] + alpha[34,2,23]
   + alpha[34,3,23] >= 1
 obs_face_o34_e0_j23: z[24,2] - obstacle_slack + 100 alpha[34,0,23]
   <= 96.45
 obs_face_o34_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[34,1,23]
   <= 98.95
 obs_face_o34_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[34,2,23]
   <= 102.95
 obs_face_o34_e3_j23: z[24,0] - obstacle_slack + 100 alpha[34,3,23]
   <= 100.45
 obs_alpha_sum_o34_j24: alpha[34,0,24] + alpha[34,1,24] + alpha[34,2,24]
   + alpha[34,3,24] >= 1
 obs_face_o34_e0_j24: z[25,2] - obstacle_slack + 100 alpha[34,0,24]
   <= 96.45
 obs_face_o34_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[34,1,24]
   <= 98.95
 obs_face_o34_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[34,2,24]
   <= 102.95
 obs_face_o34_e3_j24: z[25,0] - obstacle_slack + 100 alpha[34,3,24]
   <= 100.45
 obs_alpha_sum_o34_j25: alpha[34,0,25] + alpha[34,1,25] + alpha[34,2,25]
   + alpha[34,3,25] >= 1
 obs_face_o34_e0_j25: z[26,2] - obstacle_slack + 100 alpha[34,0,25]
   <= 96.45
 obs_face_o34_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[34,1,25]
   <= 98.95
 obs_face_o34_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[34,2,25]
   <= 102.95
 obs_face_o34_e3_j25: z[26,0] - obstacle_slack + 100 alpha[34,3,25]
   <= 100.45
 obs_alpha_sum_o34_j26: alpha[34,0,26] + alpha[34,1,26] + alpha[34,2,26]
   + alpha[34,3,26] >= 1
 obs_face_o34_e0_j26: z[27,2] - obstacle_slack + 100 alpha[34,0,26]
   <= 96.45
 obs_face_o34_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[34,1,26]
   <= 98.95
 obs_face_o34_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[34,2,26]
   <= 102.95
 obs_face_o34_e3_j26: z[27,0] - obstacle_slack + 100 alpha[34,3,26]
   <= 100.45
 obs_alpha_sum_o34_j27: alpha[34,0,27] + alpha[34,1,27] + alpha[34,2,27]
   + alpha[34,3,27] >= 1
 obs_face_o34_e0_j27: z[28,2] - obstacle_slack + 100 alpha[34,0,27]
   <= 96.45
 obs_face_o34_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[34,1,27]
   <= 98.95
 obs_face_o34_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[34,2,27]
   <= 102.95
 obs_face_o34_e3_j27: z[28,0] - obstacle_slack + 100 alpha[34,3,27]
   <= 100.45
 obs_alpha_sum_o34_j28: alpha[34,0,28] + alpha[34,1,28] + alpha[34,2,28]
   + alpha[34,3,28] >= 1
 obs_face_o34_e0_j28: z[29,2] - obstacle_slack + 100 alpha[34,0,28]
   <= 96.45
 obs_face_o34_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[34,1,28]
   <= 98.95
 obs_face_o34_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[34,2,28]
   <= 102.95
 obs_face_o34_e3_j28: z[29,0] - obstacle_slack + 100 alpha[34,3,28]
   <= 100.45
 obs_alpha_sum_o34_j29: alpha[34,0,29] + alpha[34,1,29] + alpha[34,2,29]
   + alpha[34,3,29] >= 1
 obs_face_o34_e0_j29: z[30,2] - obstacle_slack + 100 alpha[34,0,29]
   <= 96.45
 obs_face_o34_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[34,1,29]
   <= 98.95
 obs_face_o34_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[34,2,29]
   <= 102.95
 obs_face_o34_e3_j29: z[30,0] - obstacle_slack + 100 alpha[34,3,29]
   <= 100.45
 obs_alpha_sum_o35_j0: alpha[35,0,0] + alpha[35,1,0] + alpha[35,2,0]
   + alpha[35,3,0] >= 1
 obs_face_o35_e0_j0: z[1,2] - obstacle_slack + 100 alpha[35,0,0] <= 96.2
 obs_face_o35_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[35,1,0]
   <= 98.95
 obs_face_o35_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[35,2,0]
   <= 103.2
 obs_face_o35_e3_j0: z[1,0] - obstacle_slack + 100 alpha[35,3,0] <= 100.45
 obs_alpha_sum_o35_j1: alpha[35,0,1] + alpha[35,1,1] + alpha[35,2,1]
   + alpha[35,3,1] >= 1
 obs_face_o35_e0_j1: z[2,2] - obstacle_slack + 100 alpha[35,0,1] <= 96.2
 obs_face_o35_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[35,1,1]
   <= 98.95
 obs_face_o35_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[35,2,1]
   <= 103.2
 obs_face_o35_e3_j1: z[2,0] - obstacle_slack + 100 alpha[35,3,1] <= 100.45
 obs_alpha_sum_o35_j2: alpha[35,0,2] + alpha[35,1,2] + alpha[35,2,2]
   + alpha[35,3,2] >= 1
 obs_face_o35_e0_j2: z[3,2] - obstacle_slack + 100 alpha[35,0,2] <= 96.2
 obs_face_o35_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[35,1,2]
   <= 98.95
 obs_face_o35_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[35,2,2]
   <= 103.2
 obs_face_o35_e3_j2: z[3,0] - obstacle_slack + 100 alpha[35,3,2] <= 100.45
 obs_alpha_sum_o35_j3: alpha[35,0,3] + alpha[35,1,3] + alpha[35,2,3]
   + alpha[35,3,3] >= 1
 obs_face_o35_e0_j3: z[4,2] - obstacle_slack + 100 alpha[35,0,3] <= 96.2
 obs_face_o35_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[35,1,3]
   <= 98.95
 obs_face_o35_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[35,2,3]
   <= 103.2
 obs_face_o35_e3_j3: z[4,0] - obstacle_slack + 100 alpha[35,3,3] <= 100.45
 obs_alpha_sum_o35_j4: alpha[35,0,4] + alpha[35,1,4] + alpha[35,2,4]
   + alpha[35,3,4] >= 1
 obs_face_o35_e0_j4: z[5,2] - obstacle_slack + 100 alpha[35,0,4] <= 96.2
 obs_face_o35_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[35,1,4]
   <= 98.95
 obs_face_o35_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[35,2,4]
   <= 103.2
 obs_face_o35_e3_j4: z[5,0] - obstacle_slack + 100 alpha[35,3,4] <= 100.45
 obs_alpha_sum_o35_j5: alpha[35,0,5] + alpha[35,1,5] + alpha[35,2,5]
   + alpha[35,3,5] >= 1
 obs_face_o35_e0_j5: z[6,2] - obstacle_slack + 100 alpha[35,0,5] <= 96.2
 obs_face_o35_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[35,1,5]
   <= 98.95
 obs_face_o35_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[35,2,5]
   <= 103.2
 obs_face_o35_e3_j5: z[6,0] - obstacle_slack + 100 alpha[35,3,5] <= 100.45
 obs_alpha_sum_o35_j6: alpha[35,0,6] + alpha[35,1,6] + alpha[35,2,6]
   + alpha[35,3,6] >= 1
 obs_face_o35_e0_j6: z[7,2] - obstacle_slack + 100 alpha[35,0,6] <= 96.2
 obs_face_o35_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[35,1,6]
   <= 98.95
 obs_face_o35_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[35,2,6]
   <= 103.2
 obs_face_o35_e3_j6: z[7,0] - obstacle_slack + 100 alpha[35,3,6] <= 100.45
 obs_alpha_sum_o35_j7: alpha[35,0,7] + alpha[35,1,7] + alpha[35,2,7]
   + alpha[35,3,7] >= 1
 obs_face_o35_e0_j7: z[8,2] - obstacle_slack + 100 alpha[35,0,7] <= 96.2
 obs_face_o35_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[35,1,7]
   <= 98.95
 obs_face_o35_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[35,2,7]
   <= 103.2
 obs_face_o35_e3_j7: z[8,0] - obstacle_slack + 100 alpha[35,3,7] <= 100.45
 obs_alpha_sum_o35_j8: alpha[35,0,8] + alpha[35,1,8] + alpha[35,2,8]
   + alpha[35,3,8] >= 1
 obs_face_o35_e0_j8: z[9,2] - obstacle_slack + 100 alpha[35,0,8] <= 96.2
 obs_face_o35_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[35,1,8]
   <= 98.95
 obs_face_o35_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[35,2,8]
   <= 103.2
 obs_face_o35_e3_j8: z[9,0] - obstacle_slack + 100 alpha[35,3,8] <= 100.45
 obs_alpha_sum_o35_j9: alpha[35,0,9] + alpha[35,1,9] + alpha[35,2,9]
   + alpha[35,3,9] >= 1
 obs_face_o35_e0_j9: z[10,2] - obstacle_slack + 100 alpha[35,0,9] <= 96.2
 obs_face_o35_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[35,1,9]
   <= 98.95
 obs_face_o35_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[35,2,9]
   <= 103.2
 obs_face_o35_e3_j9: z[10,0] - obstacle_slack + 100 alpha[35,3,9]
   <= 100.45
 obs_alpha_sum_o35_j10: alpha[35,0,10] + alpha[35,1,10] + alpha[35,2,10]
   + alpha[35,3,10] >= 1
 obs_face_o35_e0_j10: z[11,2] - obstacle_slack + 100 alpha[35,0,10]
   <= 96.2
 obs_face_o35_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[35,1,10]
   <= 98.95
 obs_face_o35_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[35,2,10]
   <= 103.2
 obs_face_o35_e3_j10: z[11,0] - obstacle_slack + 100 alpha[35,3,10]
   <= 100.45
 obs_alpha_sum_o35_j11: alpha[35,0,11] + alpha[35,1,11] + alpha[35,2,11]
   + alpha[35,3,11] >= 1
 obs_face_o35_e0_j11: z[12,2] - obstacle_slack + 100 alpha[35,0,11]
   <= 96.2
 obs_face_o35_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[35,1,11]
   <= 98.95
 obs_face_o35_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[35,2,11]
   <= 103.2
 obs_face_o35_e3_j11: z[12,0] - obstacle_slack + 100 alpha[35,3,11]
   <= 100.45
 obs_alpha_sum_o35_j12: alpha[35,0,12] + alpha[35,1,12] + alpha[35,2,12]
   + alpha[35,3,12] >= 1
 obs_face_o35_e0_j12: z[13,2] - obstacle_slack + 100 alpha[35,0,12]
   <= 96.2
 obs_face_o35_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[35,1,12]
   <= 98.95
 obs_face_o35_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[35,2,12]
   <= 103.2
 obs_face_o35_e3_j12: z[13,0] - obstacle_slack + 100 alpha[35,3,12]
   <= 100.45
 obs_alpha_sum_o35_j13: alpha[35,0,13] + alpha[35,1,13] + alpha[35,2,13]
   + alpha[35,3,13] >= 1
 obs_face_o35_e0_j13: z[14,2] - obstacle_slack + 100 alpha[35,0,13]
   <= 96.2
 obs_face_o35_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[35,1,13]
   <= 98.95
 obs_face_o35_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[35,2,13]
   <= 103.2
 obs_face_o35_e3_j13: z[14,0] - obstacle_slack + 100 alpha[35,3,13]
   <= 100.45
 obs_alpha_sum_o35_j14: alpha[35,0,14] + alpha[35,1,14] + alpha[35,2,14]
   + alpha[35,3,14] >= 1
 obs_face_o35_e0_j14: z[15,2] - obstacle_slack + 100 alpha[35,0,14]
   <= 96.2
 obs_face_o35_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[35,1,14]
   <= 98.95
 obs_face_o35_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[35,2,14]
   <= 103.2
 obs_face_o35_e3_j14: z[15,0] - obstacle_slack + 100 alpha[35,3,14]
   <= 100.45
 obs_alpha_sum_o35_j15: alpha[35,0,15] + alpha[35,1,15] + alpha[35,2,15]
   + alpha[35,3,15] >= 1
 obs_face_o35_e0_j15: z[16,2] - obstacle_slack + 100 alpha[35,0,15]
   <= 96.2
 obs_face_o35_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[35,1,15]
   <= 98.95
 obs_face_o35_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[35,2,15]
   <= 103.2
 obs_face_o35_e3_j15: z[16,0] - obstacle_slack + 100 alpha[35,3,15]
   <= 100.45
 obs_alpha_sum_o35_j16: alpha[35,0,16] + alpha[35,1,16] + alpha[35,2,16]
   + alpha[35,3,16] >= 1
 obs_face_o35_e0_j16: z[17,2] - obstacle_slack + 100 alpha[35,0,16]
   <= 96.2
 obs_face_o35_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[35,1,16]
   <= 98.95
 obs_face_o35_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[35,2,16]
   <= 103.2
 obs_face_o35_e3_j16: z[17,0] - obstacle_slack + 100 alpha[35,3,16]
   <= 100.45
 obs_alpha_sum_o35_j17: alpha[35,0,17] + alpha[35,1,17] + alpha[35,2,17]
   + alpha[35,3,17] >= 1
 obs_face_o35_e0_j17: z[18,2] - obstacle_slack + 100 alpha[35,0,17]
   <= 96.2
 obs_face_o35_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[35,1,17]
   <= 98.95
 obs_face_o35_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[35,2,17]
   <= 103.2
 obs_face_o35_e3_j17: z[18,0] - obstacle_slack + 100 alpha[35,3,17]
   <= 100.45
 obs_alpha_sum_o35_j18: alpha[35,0,18] + alpha[35,1,18] + alpha[35,2,18]
   + alpha[35,3,18] >= 1
 obs_face_o35_e0_j18: z[19,2] - obstacle_slack + 100 alpha[35,0,18]
   <= 96.2
 obs_face_o35_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[35,1,18]
   <= 98.95
 obs_face_o35_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[35,2,18]
   <= 103.2
 obs_face_o35_e3_j18: z[19,0] - obstacle_slack + 100 alpha[35,3,18]
   <= 100.45
 obs_alpha_sum_o35_j19: alpha[35,0,19] + alpha[35,1,19] + alpha[35,2,19]
   + alpha[35,3,19] >= 1
 obs_face_o35_e0_j19: z[20,2] - obstacle_slack + 100 alpha[35,0,19]
   <= 96.2
 obs_face_o35_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[35,1,19]
   <= 98.95
 obs_face_o35_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[35,2,19]
   <= 103.2
 obs_face_o35_e3_j19: z[20,0] - obstacle_slack + 100 alpha[35,3,19]
   <= 100.45
 obs_alpha_sum_o35_j20: alpha[35,0,20] + alpha[35,1,20] + alpha[35,2,20]
   + alpha[35,3,20] >= 1
 obs_face_o35_e0_j20: z[21,2] - obstacle_slack + 100 alpha[35,0,20]
   <= 96.2
 obs_face_o35_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[35,1,20]
   <= 98.95
 obs_face_o35_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[35,2,20]
   <= 103.2
 obs_face_o35_e3_j20: z[21,0] - obstacle_slack + 100 alpha[35,3,20]
   <= 100.45
 obs_alpha_sum_o35_j21: alpha[35,0,21] + alpha[35,1,21] + alpha[35,2,21]
   + alpha[35,3,21] >= 1
 obs_face_o35_e0_j21: z[22,2] - obstacle_slack + 100 alpha[35,0,21]
   <= 96.2
 obs_face_o35_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[35,1,21]
   <= 98.95
 obs_face_o35_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[35,2,21]
   <= 103.2
 obs_face_o35_e3_j21: z[22,0] - obstacle_slack + 100 alpha[35,3,21]
   <= 100.45
 obs_alpha_sum_o35_j22: alpha[35,0,22] + alpha[35,1,22] + alpha[35,2,22]
   + alpha[35,3,22] >= 1
 obs_face_o35_e0_j22: z[23,2] - obstacle_slack + 100 alpha[35,0,22]
   <= 96.2
 obs_face_o35_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[35,1,22]
   <= 98.95
 obs_face_o35_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[35,2,22]
   <= 103.2
 obs_face_o35_e3_j22: z[23,0] - obstacle_slack + 100 alpha[35,3,22]
   <= 100.45
 obs_alpha_sum_o35_j23: alpha[35,0,23] + alpha[35,1,23] + alpha[35,2,23]
   + alpha[35,3,23] >= 1
 obs_face_o35_e0_j23: z[24,2] - obstacle_slack + 100 alpha[35,0,23]
   <= 96.2
 obs_face_o35_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[35,1,23]
   <= 98.95
 obs_face_o35_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[35,2,23]
   <= 103.2
 obs_face_o35_e3_j23: z[24,0] - obstacle_slack + 100 alpha[35,3,23]
   <= 100.45
 obs_alpha_sum_o35_j24: alpha[35,0,24] + alpha[35,1,24] + alpha[35,2,24]
   + alpha[35,3,24] >= 1
 obs_face_o35_e0_j24: z[25,2] - obstacle_slack + 100 alpha[35,0,24]
   <= 96.2
 obs_face_o35_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[35,1,24]
   <= 98.95
 obs_face_o35_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[35,2,24]
   <= 103.2
 obs_face_o35_e3_j24: z[25,0] - obstacle_slack + 100 alpha[35,3,24]
   <= 100.45
 obs_alpha_sum_o35_j25: alpha[35,0,25] + alpha[35,1,25] + alpha[35,2,25]
   + alpha[35,3,25] >= 1
 obs_face_o35_e0_j25: z[26,2] - obstacle_slack + 100 alpha[35,0,25]
   <= 96.2
 obs_face_o35_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[35,1,25]
   <= 98.95
 obs_face_o35_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[35,2,25]
   <= 103.2
 obs_face_o35_e3_j25: z[26,0] - obstacle_slack + 100 alpha[35,3,25]
   <= 100.45
 obs_alpha_sum_o35_j26: alpha[35,0,26] + alpha[35,1,26] + alpha[35,2,26]
   + alpha[35,3,26] >= 1
 obs_face_o35_e0_j26: z[27,2] - obstacle_slack + 100 alpha[35,0,26]
   <= 96.2
 obs_face_o35_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[35,1,26]
   <= 98.95
 obs_face_o35_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[35,2,26]
   <= 103.2
 obs_face_o35_e3_j26: z[27,0] - obstacle_slack + 100 alpha[35,3,26]
   <= 100.45
 obs_alpha_sum_o35_j27: alpha[35,0,27] + alpha[35,1,27] + alpha[35,2,27]
   + alpha[35,3,27] >= 1
 obs_face_o35_e0_j27: z[28,2] - obstacle_slack + 100 alpha[35,0,27]
   <= 96.2
 obs_face_o35_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[35,1,27]
   <= 98.95
 obs_face_o35_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[35,2,27]
   <= 103.2
 obs_face_o35_e3_j27: z[28,0] - obstacle_slack + 100 alpha[35,3,27]
   <= 100.45
 obs_alpha_sum_o35_j28: alpha[35,0,28] + alpha[35,1,28] + alpha[35,2,28]
   + alpha[35,3,28] >= 1
 obs_face_o35_e0_j28: z[29,2] - obstacle_slack + 100 alpha[35,0,28]
   <= 96.2
 obs_face_o35_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[35,1,28]
   <= 98.95
 obs_face_o35_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[35,2,28]
   <= 103.2
 obs_face_o35_e3_j28: z[29,0] - obstacle_slack + 100 alpha[35,3,28]
   <= 100.45
 obs_alpha_sum_o35_j29: alpha[35,0,29] + alpha[35,1,29] + alpha[35,2,29]
   + alpha[35,3,29] >= 1
 obs_face_o35_e0_j29: z[30,2] - obstacle_slack + 100 alpha[35,0,29]
   <= 96.2
 obs_face_o35_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[35,1,29]
   <= 98.95
 obs_face_o35_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[35,2,29]
   <= 103.2
 obs_face_o35_e3_j29: z[30,0] - obstacle_slack + 100 alpha[35,3,29]
   <= 100.45
 obs_alpha_sum_o36_j0: alpha[36,0,0] + alpha[36,1,0] + alpha[36,2,0]
   + alpha[36,3,0] >= 1
 obs_face_o36_e0_j0: z[1,2] - obstacle_slack + 100 alpha[36,0,0] <= 95.95
 obs_face_o36_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[36,1,0]
   <= 98.95
 obs_face_o36_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[36,2,0]
   <= 103.45
 obs_face_o36_e3_j0: z[1,0] - obstacle_slack + 100 alpha[36,3,0] <= 100.45
 obs_alpha_sum_o36_j1: alpha[36,0,1] + alpha[36,1,1] + alpha[36,2,1]
   + alpha[36,3,1] >= 1
 obs_face_o36_e0_j1: z[2,2] - obstacle_slack + 100 alpha[36,0,1] <= 95.95
 obs_face_o36_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[36,1,1]
   <= 98.95
 obs_face_o36_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[36,2,1]
   <= 103.45
 obs_face_o36_e3_j1: z[2,0] - obstacle_slack + 100 alpha[36,3,1] <= 100.45
 obs_alpha_sum_o36_j2: alpha[36,0,2] + alpha[36,1,2] + alpha[36,2,2]
   + alpha[36,3,2] >= 1
 obs_face_o36_e0_j2: z[3,2] - obstacle_slack + 100 alpha[36,0,2] <= 95.95
 obs_face_o36_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[36,1,2]
   <= 98.95
 obs_face_o36_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[36,2,2]
   <= 103.45
 obs_face_o36_e3_j2: z[3,0] - obstacle_slack + 100 alpha[36,3,2] <= 100.45
 obs_alpha_sum_o36_j3: alpha[36,0,3] + alpha[36,1,3] + alpha[36,2,3]
   + alpha[36,3,3] >= 1
 obs_face_o36_e0_j3: z[4,2] - obstacle_slack + 100 alpha[36,0,3] <= 95.95
 obs_face_o36_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[36,1,3]
   <= 98.95
 obs_face_o36_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[36,2,3]
   <= 103.45
 obs_face_o36_e3_j3: z[4,0] - obstacle_slack + 100 alpha[36,3,3] <= 100.45
 obs_alpha_sum_o36_j4: alpha[36,0,4] + alpha[36,1,4] + alpha[36,2,4]
   + alpha[36,3,4] >= 1
 obs_face_o36_e0_j4: z[5,2] - obstacle_slack + 100 alpha[36,0,4] <= 95.95
 obs_face_o36_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[36,1,4]
   <= 98.95
 obs_face_o36_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[36,2,4]
   <= 103.45
 obs_face_o36_e3_j4: z[5,0] - obstacle_slack + 100 alpha[36,3,4] <= 100.45
 obs_alpha_sum_o36_j5: alpha[36,0,5] + alpha[36,1,5] + alpha[36,2,5]
   + alpha[36,3,5] >= 1
 obs_face_o36_e0_j5: z[6,2] - obstacle_slack + 100 alpha[36,0,5] <= 95.95
 obs_face_o36_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[36,1,5]
   <= 98.95
 obs_face_o36_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[36,2,5]
   <= 103.45
 obs_face_o36_e3_j5: z[6,0] - obstacle_slack + 100 alpha[36,3,5] <= 100.45
 obs_alpha_sum_o36_j6: alpha[36,0,6] + alpha[36,1,6] + alpha[36,2,6]
   + alpha[36,3,6] >= 1
 obs_face_o36_e0_j6: z[7,2] - obstacle_slack + 100 alpha[36,0,6] <= 95.95
 obs_face_o36_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[36,1,6]
   <= 98.95
 obs_face_o36_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[36,2,6]
   <= 103.45
 obs_face_o36_e3_j6: z[7,0] - obstacle_slack + 100 alpha[36,3,6] <= 100.45
 obs_alpha_sum_o36_j7: alpha[36,0,7] + alpha[36,1,7] + alpha[36,2,7]
   + alpha[36,3,7] >= 1
 obs_face_o36_e0_j7: z[8,2] - obstacle_slack + 100 alpha[36,0,7] <= 95.95
 obs_face_o36_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[36,1,7]
   <= 98.95
 obs_face_o36_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[36,2,7]
   <= 103.45
 obs_face_o36_e3_j7: z[8,0] - obstacle_slack + 100 alpha[36,3,7] <= 100.45
 obs_alpha_sum_o36_j8: alpha[36,0,8] + alpha[36,1,8] + alpha[36,2,8]
   + alpha[36,3,8] >= 1
 obs_face_o36_e0_j8: z[9,2] - obstacle_slack + 100 alpha[36,0,8] <= 95.95
 obs_face_o36_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[36,1,8]
   <= 98.95
 obs_face_o36_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[36,2,8]
   <= 103.45
 obs_face_o36_e3_j8: z[9,0] - obstacle_slack + 100 alpha[36,3,8] <= 100.45
 obs_alpha_sum_o36_j9: alpha[36,0,9] + alpha[36,1,9] + alpha[36,2,9]
   + alpha[36,3,9] >= 1
 obs_face_o36_e0_j9: z[10,2] - obstacle_slack + 100 alpha[36,0,9] <= 95.95
 obs_face_o36_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[36,1,9]
   <= 98.95
 obs_face_o36_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[36,2,9]
   <= 103.45
 obs_face_o36_e3_j9: z[10,0] - obstacle_slack + 100 alpha[36,3,9]
   <= 100.45
 obs_alpha_sum_o36_j10: alpha[36,0,10] + alpha[36,1,10] + alpha[36,2,10]
   + alpha[36,3,10] >= 1
 obs_face_o36_e0_j10: z[11,2] - obstacle_slack + 100 alpha[36,0,10]
   <= 95.95
 obs_face_o36_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[36,1,10]
   <= 98.95
 obs_face_o36_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[36,2,10]
   <= 103.45
 obs_face_o36_e3_j10: z[11,0] - obstacle_slack + 100 alpha[36,3,10]
   <= 100.45
 obs_alpha_sum_o36_j11: alpha[36,0,11] + alpha[36,1,11] + alpha[36,2,11]
   + alpha[36,3,11] >= 1
 obs_face_o36_e0_j11: z[12,2] - obstacle_slack + 100 alpha[36,0,11]
   <= 95.95
 obs_face_o36_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[36,1,11]
   <= 98.95
 obs_face_o36_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[36,2,11]
   <= 103.45
 obs_face_o36_e3_j11: z[12,0] - obstacle_slack + 100 alpha[36,3,11]
   <= 100.45
 obs_alpha_sum_o36_j12: alpha[36,0,12] + alpha[36,1,12] + alpha[36,2,12]
   + alpha[36,3,12] >= 1
 obs_face_o36_e0_j12: z[13,2] - obstacle_slack + 100 alpha[36,0,12]
   <= 95.95
 obs_face_o36_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[36,1,12]
   <= 98.95
 obs_face_o36_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[36,2,12]
   <= 103.45
 obs_face_o36_e3_j12: z[13,0] - obstacle_slack + 100 alpha[36,3,12]
   <= 100.45
 obs_alpha_sum_o36_j13: alpha[36,0,13] + alpha[36,1,13] + alpha[36,2,13]
   + alpha[36,3,13] >= 1
 obs_face_o36_e0_j13: z[14,2] - obstacle_slack + 100 alpha[36,0,13]
   <= 95.95
 obs_face_o36_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[36,1,13]
   <= 98.95
 obs_face_o36_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[36,2,13]
   <= 103.45
 obs_face_o36_e3_j13: z[14,0] - obstacle_slack + 100 alpha[36,3,13]
   <= 100.45
 obs_alpha_sum_o36_j14: alpha[36,0,14] + alpha[36,1,14] + alpha[36,2,14]
   + alpha[36,3,14] >= 1
 obs_face_o36_e0_j14: z[15,2] - obstacle_slack + 100 alpha[36,0,14]
   <= 95.95
 obs_face_o36_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[36,1,14]
   <= 98.95
 obs_face_o36_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[36,2,14]
   <= 103.45
 obs_face_o36_e3_j14: z[15,0] - obstacle_slack + 100 alpha[36,3,14]
   <= 100.45
 obs_alpha_sum_o36_j15: alpha[36,0,15] + alpha[36,1,15] + alpha[36,2,15]
   + alpha[36,3,15] >= 1
 obs_face_o36_e0_j15: z[16,2] - obstacle_slack + 100 alpha[36,0,15]
   <= 95.95
 obs_face_o36_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[36,1,15]
   <= 98.95
 obs_face_o36_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[36,2,15]
   <= 103.45
 obs_face_o36_e3_j15: z[16,0] - obstacle_slack + 100 alpha[36,3,15]
   <= 100.45
 obs_alpha_sum_o36_j16: alpha[36,0,16] + alpha[36,1,16] + alpha[36,2,16]
   + alpha[36,3,16] >= 1
 obs_face_o36_e0_j16: z[17,2] - obstacle_slack + 100 alpha[36,0,16]
   <= 95.95
 obs_face_o36_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[36,1,16]
   <= 98.95
 obs_face_o36_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[36,2,16]
   <= 103.45
 obs_face_o36_e3_j16: z[17,0] - obstacle_slack + 100 alpha[36,3,16]
   <= 100.45
 obs_alpha_sum_o36_j17: alpha[36,0,17] + alpha[36,1,17] + alpha[36,2,17]
   + alpha[36,3,17] >= 1
 obs_face_o36_e0_j17: z[18,2] - obstacle_slack + 100 alpha[36,0,17]
   <= 95.95
 obs_face_o36_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[36,1,17]
   <= 98.95
 obs_face_o36_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[36,2,17]
   <= 103.45
 obs_face_o36_e3_j17: z[18,0] - obstacle_slack + 100 alpha[36,3,17]
   <= 100.45
 obs_alpha_sum_o36_j18: alpha[36,0,18] + alpha[36,1,18] + alpha[36,2,18]
   + alpha[36,3,18] >= 1
 obs_face_o36_e0_j18: z[19,2] - obstacle_slack + 100 alpha[36,0,18]
   <= 95.95
 obs_face_o36_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[36,1,18]
   <= 98.95
 obs_face_o36_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[36,2,18]
   <= 103.45
 obs_face_o36_e3_j18: z[19,0] - obstacle_slack + 100 alpha[36,3,18]
   <= 100.45
 obs_alpha_sum_o36_j19: alpha[36,0,19] + alpha[36,1,19] + alpha[36,2,19]
   + alpha[36,3,19] >= 1
 obs_face_o36_e0_j19: z[20,2] - obstacle_slack + 100 alpha[36,0,19]
   <= 95.95
 obs_face_o36_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[36,1,19]
   <= 98.95
 obs_face_o36_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[36,2,19]
   <= 103.45
 obs_face_o36_e3_j19: z[20,0] - obstacle_slack + 100 alpha[36,3,19]
   <= 100.45
 obs_alpha_sum_o36_j20: alpha[36,0,20] + alpha[36,1,20] + alpha[36,2,20]
   + alpha[36,3,20] >= 1
 obs_face_o36_e0_j20: z[21,2] - obstacle_slack + 100 alpha[36,0,20]
   <= 95.95
 obs_face_o36_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[36,1,20]
   <= 98.95
 obs_face_o36_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[36,2,20]
   <= 103.45
 obs_face_o36_e3_j20: z[21,0] - obstacle_slack + 100 alpha[36,3,20]
   <= 100.45
 obs_alpha_sum_o36_j21: alpha[36,0,21] + alpha[36,1,21] + alpha[36,2,21]
   + alpha[36,3,21] >= 1
 obs_face_o36_e0_j21: z[22,2] - obstacle_slack + 100 alpha[36,0,21]
   <= 95.95
 obs_face_o36_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[36,1,21]
   <= 98.95
 obs_face_o36_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[36,2,21]
   <= 103.45
 obs_face_o36_e3_j21: z[22,0] - obstacle_slack + 100 alpha[36,3,21]
   <= 100.45
 obs_alpha_sum_o36_j22: alpha[36,0,22] + alpha[36,1,22] + alpha[36,2,22]
   + alpha[36,3,22] >= 1
 obs_face_o36_e0_j22: z[23,2] - obstacle_slack + 100 alpha[36,0,22]
   <= 95.95
 obs_face_o36_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[36,1,22]
   <= 98.95
 obs_face_o36_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[36,2,22]
   <= 103.45
 obs_face_o36_e3_j22: z[23,0] - obstacle_slack + 100 alpha[36,3,22]
   <= 100.45
 obs_alpha_sum_o36_j23: alpha[36,0,23] + alpha[36,1,23] + alpha[36,2,23]
   + alpha[36,3,23] >= 1
 obs_face_o36_e0_j23: z[24,2] - obstacle_slack + 100 alpha[36,0,23]
   <= 95.95
 obs_face_o36_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[36,1,23]
   <= 98.95
 obs_face_o36_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[36,2,23]
   <= 103.45
 obs_face_o36_e3_j23: z[24,0] - obstacle_slack + 100 alpha[36,3,23]
   <= 100.45
 obs_alpha_sum_o36_j24: alpha[36,0,24] + alpha[36,1,24] + alpha[36,2,24]
   + alpha[36,3,24] >= 1
 obs_face_o36_e0_j24: z[25,2] - obstacle_slack + 100 alpha[36,0,24]
   <= 95.95
 obs_face_o36_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[36,1,24]
   <= 98.95
 obs_face_o36_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[36,2,24]
   <= 103.45
 obs_face_o36_e3_j24: z[25,0] - obstacle_slack + 100 alpha[36,3,24]
   <= 100.45
 obs_alpha_sum_o36_j25: alpha[36,0,25] + alpha[36,1,25] + alpha[36,2,25]
   + alpha[36,3,25] >= 1
 obs_face_o36_e0_j25: z[26,2] - obstacle_slack + 100 alpha[36,0,25]
   <= 95.95
 obs_face_o36_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[36,1,25]
   <= 98.95
 obs_face_o36_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[36,2,25]
   <= 103.45
 obs_face_o36_e3_j25: z[26,0] - obstacle_slack + 100 alpha[36,3,25]
   <= 100.45
 obs_alpha_sum_o36_j26: alpha[36,0,26] + alpha[36,1,26] + alpha[36,2,26]
   + alpha[36,3,26] >= 1
 obs_face_o36_e0_j26: z[27,2] - obstacle_slack + 100 alpha[36,0,26]
   <= 95.95
 obs_face_o36_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[36,1,26]
   <= 98.95
 obs_face_o36_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[36,2,26]
   <= 103.45
 obs_face_o36_e3_j26: z[27,0] - obstacle_slack + 100 alpha[36,3,26]
   <= 100.45
 obs_alpha_sum_o36_j27: alpha[36,0,27] + alpha[36,1,27] + alpha[36,2,27]
   + alpha[36,3,27] >= 1
 obs_face_o36_e0_j27: z[28,2] - obstacle_slack + 100 alpha[36,0,27]
   <= 95.95
 obs_face_o36_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[36,1,27]
   <= 98.95
 obs_face_o36_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[36,2,27]
   <= 103.45
 obs_face_o36_e3_j27: z[28,0] - obstacle_slack + 100 alpha[36,3,27]
   <= 100.45
 obs_alpha_sum_o36_j28: alpha[36,0,28] + alpha[36,1,28] + alpha[36,2,28]
   + alpha[36,3,28] >= 1
 obs_face_o36_e0_j28: z[29,2] - obstacle_slack + 100 alpha[36,0,28]
   <= 95.95
 obs_face_o36_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[36,1,28]
   <= 98.95
 obs_face_o36_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[36,2,28]
   <= 103.45
 obs_face_o36_e3_j28: z[29,0] - obstacle_slack + 100 alpha[36,3,28]
   <= 100.45
 obs_alpha_sum_o36_j29: alpha[36,0,29] + alpha[36,1,29] + alpha[36,2,29]
   + alpha[36,3,29] >= 1
 obs_face_o36_e0_j29: z[30,2] - obstacle_slack + 100 alpha[36,0,29]
   <= 95.95
 obs_face_o36_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[36,1,29]
   <= 98.95
 obs_face_o36_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[36,2,29]
   <= 103.45
 obs_face_o36_e3_j29: z[30,0] - obstacle_slack + 100 alpha[36,3,29]
   <= 100.45
 obs_alpha_sum_o37_j0: alpha[37,0,0] + alpha[37,1,0] + alpha[37,2,0]
   + alpha[37,3,0] >= 1
 obs_face_o37_e0_j0: z[1,2] - obstacle_slack + 100 alpha[37,0,0] <= 95.7
 obs_face_o37_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[37,1,0]
   <= 98.95
 obs_face_o37_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[37,2,0]
   <= 103.7
 obs_face_o37_e3_j0: z[1,0] - obstacle_slack + 100 alpha[37,3,0] <= 100.45
 obs_alpha_sum_o37_j1: alpha[37,0,1] + alpha[37,1,1] + alpha[37,2,1]
   + alpha[37,3,1] >= 1
 obs_face_o37_e0_j1: z[2,2] - obstacle_slack + 100 alpha[37,0,1] <= 95.7
 obs_face_o37_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[37,1,1]
   <= 98.95
 obs_face_o37_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[37,2,1]
   <= 103.7
 obs_face_o37_e3_j1: z[2,0] - obstacle_slack + 100 alpha[37,3,1] <= 100.45
 obs_alpha_sum_o37_j2: alpha[37,0,2] + alpha[37,1,2] + alpha[37,2,2]
   + alpha[37,3,2] >= 1
 obs_face_o37_e0_j2: z[3,2] - obstacle_slack + 100 alpha[37,0,2] <= 95.7
 obs_face_o37_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[37,1,2]
   <= 98.95
 obs_face_o37_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[37,2,2]
   <= 103.7
 obs_face_o37_e3_j2: z[3,0] - obstacle_slack + 100 alpha[37,3,2] <= 100.45
 obs_alpha_sum_o37_j3: alpha[37,0,3] + alpha[37,1,3] + alpha[37,2,3]
   + alpha[37,3,3] >= 1
 obs_face_o37_e0_j3: z[4,2] - obstacle_slack + 100 alpha[37,0,3] <= 95.7
 obs_face_o37_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[37,1,3]
   <= 98.95
 obs_face_o37_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[37,2,3]
   <= 103.7
 obs_face_o37_e3_j3: z[4,0] - obstacle_slack + 100 alpha[37,3,3] <= 100.45
 obs_alpha_sum_o37_j4: alpha[37,0,4] + alpha[37,1,4] + alpha[37,2,4]
   + alpha[37,3,4] >= 1
 obs_face_o37_e0_j4: z[5,2] - obstacle_slack + 100 alpha[37,0,4] <= 95.7
 obs_face_o37_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[37,1,4]
   <= 98.95
 obs_face_o37_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[37,2,4]
   <= 103.7
 obs_face_o37_e3_j4: z[5,0] - obstacle_slack + 100 alpha[37,3,4] <= 100.45
 obs_alpha_sum_o37_j5: alpha[37,0,5] + alpha[37,1,5] + alpha[37,2,5]
   + alpha[37,3,5] >= 1
 obs_face_o37_e0_j5: z[6,2] - obstacle_slack + 100 alpha[37,0,5] <= 95.7
 obs_face_o37_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[37,1,5]
   <= 98.95
 obs_face_o37_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[37,2,5]
   <= 103.7
 obs_face_o37_e3_j5: z[6,0] - obstacle_slack + 100 alpha[37,3,5] <= 100.45
 obs_alpha_sum_o37_j6: alpha[37,0,6] + alpha[37,1,6] + alpha[37,2,6]
   + alpha[37,3,6] >= 1
 obs_face_o37_e0_j6: z[7,2] - obstacle_slack + 100 alpha[37,0,6] <= 95.7
 obs_face_o37_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[37,1,6]
   <= 98.95
 obs_face_o37_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[37,2,6]
   <= 103.7
 obs_face_o37_e3_j6: z[7,0] - obstacle_slack + 100 alpha[37,3,6] <= 100.45
 obs_alpha_sum_o37_j7: alpha[37,0,7] + alpha[37,1,7] + alpha[37,2,7]
   + alpha[37,3,7] >= 1
 obs_face_o37_e0_j7: z[8,2] - obstacle_slack + 100 alpha[37,0,7] <= 95.7
 obs_face_o37_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[37,1,7]
   <= 98.95
 obs_face_o37_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[37,2,7]
   <= 103.7
 obs_face_o37_e3_j7: z[8,0] - obstacle_slack + 100 alpha[37,3,7] <= 100.45
 obs_alpha_sum_o37_j8: alpha[37,0,8] + alpha[37,1,8] + alpha[37,2,8]
   + alpha[37,3,8] >= 1
 obs_face_o37_e0_j8: z[9,2] - obstacle_slack + 100 alpha[37,0,8] <= 95.7
 obs_face_o37_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[37,1,8]
   <= 98.95
 obs_face_o37_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[37,2,8]
   <= 103.7
 obs_face_o37_e3_j8: z[9,0] - obstacle_slack + 100 alpha[37,3,8] <= 100.45
 obs_alpha_sum_o37_j9: alpha[37,0,9] + alpha[37,1,9] + alpha[37,2,9]
   + alpha[37,3,9] >= 1
 obs_face_o37_e0_j9: z[10,2] - obstacle_slack + 100 alpha[37,0,9] <= 95.7
 obs_face_o37_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[37,1,9]
   <= 98.95
 obs_face_o37_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[37,2,9]
   <= 103.7
 obs_face_o37_e3_j9: z[10,0] - obstacle_slack + 100 alpha[37,3,9]
   <= 100.45
 obs_alpha_sum_o37_j10: alpha[37,0,10] + alpha[37,1,10] + alpha[37,2,10]
   + alpha[37,3,10] >= 1
 obs_face_o37_e0_j10: z[11,2] - obstacle_slack + 100 alpha[37,0,10]
   <= 95.7
 obs_face_o37_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[37,1,10]
   <= 98.95
 obs_face_o37_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[37,2,10]
   <= 103.7
 obs_face_o37_e3_j10: z[11,0] - obstacle_slack + 100 alpha[37,3,10]
   <= 100.45
 obs_alpha_sum_o37_j11: alpha[37,0,11] + alpha[37,1,11] + alpha[37,2,11]
   + alpha[37,3,11] >= 1
 obs_face_o37_e0_j11: z[12,2] - obstacle_slack + 100 alpha[37,0,11]
   <= 95.7
 obs_face_o37_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[37,1,11]
   <= 98.95
 obs_face_o37_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[37,2,11]
   <= 103.7
 obs_face_o37_e3_j11: z[12,0] - obstacle_slack + 100 alpha[37,3,11]
   <= 100.45
 obs_alpha_sum_o37_j12: alpha[37,0,12] + alpha[37,1,12] + alpha[37,2,12]
   + alpha[37,3,12] >= 1
 obs_face_o37_e0_j12: z[13,2] - obstacle_slack + 100 alpha[37,0,12]
   <= 95.7
 obs_face_o37_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[37,1,12]
   <= 98.95
 obs_face_o37_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[37,2,12]
   <= 103.7
 obs_face_o37_e3_j12: z[13,0] - obstacle_slack + 100 alpha[37,3,12]
   <= 100.45
 obs_alpha_sum_o37_j13: alpha[37,0,13] + alpha[37,1,13] + alpha[37,2,13]
   + alpha[37,3,13] >= 1
 obs_face_o37_e0_j13: z[14,2] - obstacle_slack + 100 alpha[37,0,13]
   <= 95.7
 obs_face_o37_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[37,1,13]
   <= 98.95
 obs_face_o37_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[37,2,13]
   <= 103.7
 obs_face_o37_e3_j13: z[14,0] - obstacle_slack + 100 alpha[37,3,13]
   <= 100.45
 obs_alpha_sum_o37_j14: alpha[37,0,14] + alpha[37,1,14] + alpha[37,2,14]
   + alpha[37,3,14] >= 1
 obs_face_o37_e0_j14: z[15,2] - obstacle_slack + 100 alpha[37,0,14]
   <= 95.7
 obs_face_o37_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[37,1,14]
   <= 98.95
 obs_face_o37_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[37,2,14]
   <= 103.7
 obs_face_o37_e3_j14: z[15,0] - obstacle_slack + 100 alpha[37,3,14]
   <= 100.45
 obs_alpha_sum_o37_j15: alpha[37,0,15] + alpha[37,1,15] + alpha[37,2,15]
   + alpha[37,3,15] >= 1
 obs_face_o37_e0_j15: z[16,2] - obstacle_slack + 100 alpha[37,0,15]
   <= 95.7
 obs_face_o37_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[37,1,15]
   <= 98.95
 obs_face_o37_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[37,2,15]
   <= 103.7
 obs_face_o37_e3_j15: z[16,0] - obstacle_slack + 100 alpha[37,3,15]
   <= 100.45
 obs_alpha_sum_o37_j16: alpha[37,0,16] + alpha[37,1,16] + alpha[37,2,16]
   + alpha[37,3,16] >= 1
 obs_face_o37_e0_j16: z[17,2] - obstacle_slack + 100 alpha[37,0,16]
   <= 95.7
 obs_face_o37_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[37,1,16]
   <= 98.95
 obs_face_o37_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[37,2,16]
   <= 103.7
 obs_face_o37_e3_j16: z[17,0] - obstacle_slack + 100 alpha[37,3,16]
   <= 100.45
 obs_alpha_sum_o37_j17: alpha[37,0,17] + alpha[37,1,17] + alpha[37,2,17]
   + alpha[37,3,17] >= 1
 obs_face_o37_e0_j17: z[18,2] - obstacle_slack + 100 alpha[37,0,17]
   <= 95.7
 obs_face_o37_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[37,1,17]
   <= 98.95
 obs_face_o37_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[37,2,17]
   <= 103.7
 obs_face_o37_e3_j17: z[18,0] - obstacle_slack + 100 alpha[37,3,17]
   <= 100.45
 obs_alpha_sum_o37_j18: alpha[37,0,18] + alpha[37,1,18] + alpha[37,2,18]
   + alpha[37,3,18] >= 1
 obs_face_o37_e0_j18: z[19,2] - obstacle_slack + 100 alpha[37,0,18]
   <= 95.7
 obs_face_o37_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[37,1,18]
   <= 98.95
 obs_face_o37_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[37,2,18]
   <= 103.7
 obs_face_o37_e3_j18: z[19,0] - obstacle_slack + 100 alpha[37,3,18]
   <= 100.45
 obs_alpha_sum_o37_j19: alpha[37,0,19] + alpha[37,1,19] + alpha[37,2,19]
   + alpha[37,3,19] >= 1
 obs_face_o37_e0_j19: z[20,2] - obstacle_slack + 100 alpha[37,0,19]
   <= 95.7
 obs_face_o37_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[37,1,19]
   <= 98.95
 obs_face_o37_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[37,2,19]
   <= 103.7
 obs_face_o37_e3_j19: z[20,0] - obstacle_slack + 100 alpha[37,3,19]
   <= 100.45
 obs_alpha_sum_o37_j20: alpha[37,0,20] + alpha[37,1,20] + alpha[37,2,20]
   + alpha[37,3,20] >= 1
 obs_face_o37_e0_j20: z[21,2] - obstacle_slack + 100 alpha[37,0,20]
   <= 95.7
 obs_face_o37_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[37,1,20]
   <= 98.95
 obs_face_o37_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[37,2,20]
   <= 103.7
 obs_face_o37_e3_j20: z[21,0] - obstacle_slack + 100 alpha[37,3,20]
   <= 100.45
 obs_alpha_sum_o37_j21: alpha[37,0,21] + alpha[37,1,21] + alpha[37,2,21]
   + alpha[37,3,21] >= 1
 obs_face_o37_e0_j21: z[22,2] - obstacle_slack + 100 alpha[37,0,21]
   <= 95.7
 obs_face_o37_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[37,1,21]
   <= 98.95
 obs_face_o37_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[37,2,21]
   <= 103.7
 obs_face_o37_e3_j21: z[22,0] - obstacle_slack + 100 alpha[37,3,21]
   <= 100.45
 obs_alpha_sum_o37_j22: alpha[37,0,22] + alpha[37,1,22] + alpha[37,2,22]
   + alpha[37,3,22] >= 1
 obs_face_o37_e0_j22: z[23,2] - obstacle_slack + 100 alpha[37,0,22]
   <= 95.7
 obs_face_o37_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[37,1,22]
   <= 98.95
 obs_face_o37_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[37,2,22]
   <= 103.7
 obs_face_o37_e3_j22: z[23,0] - obstacle_slack + 100 alpha[37,3,22]
   <= 100.45
 obs_alpha_sum_o37_j23: alpha[37,0,23] + alpha[37,1,23] + alpha[37,2,23]
   + alpha[37,3,23] >= 1
 obs_face_o37_e0_j23: z[24,2] - obstacle_slack + 100 alpha[37,0,23]
   <= 95.7
 obs_face_o37_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[37,1,23]
   <= 98.95
 obs_face_o37_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[37,2,23]
   <= 103.7
 obs_face_o37_e3_j23: z[24,0] - obstacle_slack + 100 alpha[37,3,23]
   <= 100.45
 obs_alpha_sum_o37_j24: alpha[37,0,24] + alpha[37,1,24] + alpha[37,2,24]
   + alpha[37,3,24] >= 1
 obs_face_o37_e0_j24: z[25,2] - obstacle_slack + 100 alpha[37,0,24]
   <= 95.7
 obs_face_o37_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[37,1,24]
   <= 98.95
 obs_face_o37_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[37,2,24]
   <= 103.7
 obs_face_o37_e3_j24: z[25,0] - obstacle_slack + 100 alpha[37,3,24]
   <= 100.45
 obs_alpha_sum_o37_j25: alpha[37,0,25] + alpha[37,1,25] + alpha[37,2,25]
   + alpha[37,3,25] >= 1
 obs_face_o37_e0_j25: z[26,2] - obstacle_slack + 100 alpha[37,0,25]
   <= 95.7
 obs_face_o37_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[37,1,25]
   <= 98.95
 obs_face_o37_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[37,2,25]
   <= 103.7
 obs_face_o37_e3_j25: z[26,0] - obstacle_slack + 100 alpha[37,3,25]
   <= 100.45
 obs_alpha_sum_o37_j26: alpha[37,0,26] + alpha[37,1,26] + alpha[37,2,26]
   + alpha[37,3,26] >= 1
 obs_face_o37_e0_j26: z[27,2] - obstacle_slack + 100 alpha[37,0,26]
   <= 95.7
 obs_face_o37_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[37,1,26]
   <= 98.95
 obs_face_o37_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[37,2,26]
   <= 103.7
 obs_face_o37_e3_j26: z[27,0] - obstacle_slack + 100 alpha[37,3,26]
   <= 100.45
 obs_alpha_sum_o37_j27: alpha[37,0,27] + alpha[37,1,27] + alpha[37,2,27]
   + alpha[37,3,27] >= 1
 obs_face_o37_e0_j27: z[28,2] - obstacle_slack + 100 alpha[37,0,27]
   <= 95.7
 obs_face_o37_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[37,1,27]
   <= 98.95
 obs_face_o37_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[37,2,27]
   <= 103.7
 obs_face_o37_e3_j27: z[28,0] - obstacle_slack + 100 alpha[37,3,27]
   <= 100.45
 obs_alpha_sum_o37_j28: alpha[37,0,28] + alpha[37,1,28] + alpha[37,2,28]
   + alpha[37,3,28] >= 1
 obs_face_o37_e0_j28: z[29,2] - obstacle_slack + 100 alpha[37,0,28]
   <= 95.7
 obs_face_o37_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[37,1,28]
   <= 98.95
 obs_face_o37_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[37,2,28]
   <= 103.7
 obs_face_o37_e3_j28: z[29,0] - obstacle_slack + 100 alpha[37,3,28]
   <= 100.45
 obs_alpha_sum_o37_j29: alpha[37,0,29] + alpha[37,1,29] + alpha[37,2,29]
   + alpha[37,3,29] >= 1
 obs_face_o37_e0_j29: z[30,2] - obstacle_slack + 100 alpha[37,0,29]
   <= 95.7
 obs_face_o37_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[37,1,29]
   <= 98.95
 obs_face_o37_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[37,2,29]
   <= 103.7
 obs_face_o37_e3_j29: z[30,0] - obstacle_slack + 100 alpha[37,3,29]
   <= 100.45
 obs_alpha_sum_o38_j0: alpha[38,0,0] + alpha[38,1,0] + alpha[38,2,0]
   + alpha[38,3,0] >= 1
 obs_face_o38_e0_j0: z[1,2] - obstacle_slack + 100 alpha[38,0,0] <= 96.7
 obs_face_o38_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[38,1,0] <= 99.2
 obs_face_o38_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[38,2,0]
   <= 102.7
 obs_face_o38_e3_j0: z[1,0] - obstacle_slack + 100 alpha[38,3,0] <= 100.2
 obs_alpha_sum_o38_j1: alpha[38,0,1] + alpha[38,1,1] + alpha[38,2,1]
   + alpha[38,3,1] >= 1
 obs_face_o38_e0_j1: z[2,2] - obstacle_slack + 100 alpha[38,0,1] <= 96.7
 obs_face_o38_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[38,1,1] <= 99.2
 obs_face_o38_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[38,2,1]
   <= 102.7
 obs_face_o38_e3_j1: z[2,0] - obstacle_slack + 100 alpha[38,3,1] <= 100.2
 obs_alpha_sum_o38_j2: alpha[38,0,2] + alpha[38,1,2] + alpha[38,2,2]
   + alpha[38,3,2] >= 1
 obs_face_o38_e0_j2: z[3,2] - obstacle_slack + 100 alpha[38,0,2] <= 96.7
 obs_face_o38_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[38,1,2] <= 99.2
 obs_face_o38_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[38,2,2]
   <= 102.7
 obs_face_o38_e3_j2: z[3,0] - obstacle_slack + 100 alpha[38,3,2] <= 100.2
 obs_alpha_sum_o38_j3: alpha[38,0,3] + alpha[38,1,3] + alpha[38,2,3]
   + alpha[38,3,3] >= 1
 obs_face_o38_e0_j3: z[4,2] - obstacle_slack + 100 alpha[38,0,3] <= 96.7
 obs_face_o38_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[38,1,3] <= 99.2
 obs_face_o38_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[38,2,3]
   <= 102.7
 obs_face_o38_e3_j3: z[4,0] - obstacle_slack + 100 alpha[38,3,3] <= 100.2
 obs_alpha_sum_o38_j4: alpha[38,0,4] + alpha[38,1,4] + alpha[38,2,4]
   + alpha[38,3,4] >= 1
 obs_face_o38_e0_j4: z[5,2] - obstacle_slack + 100 alpha[38,0,4] <= 96.7
 obs_face_o38_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[38,1,4] <= 99.2
 obs_face_o38_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[38,2,4]
   <= 102.7
 obs_face_o38_e3_j4: z[5,0] - obstacle_slack + 100 alpha[38,3,4] <= 100.2
 obs_alpha_sum_o38_j5: alpha[38,0,5] + alpha[38,1,5] + alpha[38,2,5]
   + alpha[38,3,5] >= 1
 obs_face_o38_e0_j5: z[6,2] - obstacle_slack + 100 alpha[38,0,5] <= 96.7
 obs_face_o38_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[38,1,5] <= 99.2
 obs_face_o38_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[38,2,5]
   <= 102.7
 obs_face_o38_e3_j5: z[6,0] - obstacle_slack + 100 alpha[38,3,5] <= 100.2
 obs_alpha_sum_o38_j6: alpha[38,0,6] + alpha[38,1,6] + alpha[38,2,6]
   + alpha[38,3,6] >= 1
 obs_face_o38_e0_j6: z[7,2] - obstacle_slack + 100 alpha[38,0,6] <= 96.7
 obs_face_o38_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[38,1,6] <= 99.2
 obs_face_o38_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[38,2,6]
   <= 102.7
 obs_face_o38_e3_j6: z[7,0] - obstacle_slack + 100 alpha[38,3,6] <= 100.2
 obs_alpha_sum_o38_j7: alpha[38,0,7] + alpha[38,1,7] + alpha[38,2,7]
   + alpha[38,3,7] >= 1
 obs_face_o38_e0_j7: z[8,2] - obstacle_slack + 100 alpha[38,0,7] <= 96.7
 obs_face_o38_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[38,1,7] <= 99.2
 obs_face_o38_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[38,2,7]
   <= 102.7
 obs_face_o38_e3_j7: z[8,0] - obstacle_slack + 100 alpha[38,3,7] <= 100.2
 obs_alpha_sum_o38_j8: alpha[38,0,8] + alpha[38,1,8] + alpha[38,2,8]
   + alpha[38,3,8] >= 1
 obs_face_o38_e0_j8: z[9,2] - obstacle_slack + 100 alpha[38,0,8] <= 96.7
 obs_face_o38_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[38,1,8] <= 99.2
 obs_face_o38_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[38,2,8]
   <= 102.7
 obs_face_o38_e3_j8: z[9,0] - obstacle_slack + 100 alpha[38,3,8] <= 100.2
 obs_alpha_sum_o38_j9: alpha[38,0,9] + alpha[38,1,9] + alpha[38,2,9]
   + alpha[38,3,9] >= 1
 obs_face_o38_e0_j9: z[10,2] - obstacle_slack + 100 alpha[38,0,9] <= 96.7
 obs_face_o38_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[38,1,9]
   <= 99.2
 obs_face_o38_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[38,2,9]
   <= 102.7
 obs_face_o38_e3_j9: z[10,0] - obstacle_slack + 100 alpha[38,3,9] <= 100.2
 obs_alpha_sum_o38_j10: alpha[38,0,10] + alpha[38,1,10] + alpha[38,2,10]
   + alpha[38,3,10] >= 1
 obs_face_o38_e0_j10: z[11,2] - obstacle_slack + 100 alpha[38,0,10]
   <= 96.7
 obs_face_o38_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[38,1,10]
   <= 99.2
 obs_face_o38_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[38,2,10]
   <= 102.7
 obs_face_o38_e3_j10: z[11,0] - obstacle_slack + 100 alpha[38,3,10]
   <= 100.2
 obs_alpha_sum_o38_j11: alpha[38,0,11] + alpha[38,1,11] + alpha[38,2,11]
   + alpha[38,3,11] >= 1
 obs_face_o38_e0_j11: z[12,2] - obstacle_slack + 100 alpha[38,0,11]
   <= 96.7
 obs_face_o38_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[38,1,11]
   <= 99.2
 obs_face_o38_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[38,2,11]
   <= 102.7
 obs_face_o38_e3_j11: z[12,0] - obstacle_slack + 100 alpha[38,3,11]
   <= 100.2
 obs_alpha_sum_o38_j12: alpha[38,0,12] + alpha[38,1,12] + alpha[38,2,12]
   + alpha[38,3,12] >= 1
 obs_face_o38_e0_j12: z[13,2] - obstacle_slack + 100 alpha[38,0,12]
   <= 96.7
 obs_face_o38_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[38,1,12]
   <= 99.2
 obs_face_o38_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[38,2,12]
   <= 102.7
 obs_face_o38_e3_j12: z[13,0] - obstacle_slack + 100 alpha[38,3,12]
   <= 100.2
 obs_alpha_sum_o38_j13: alpha[38,0,13] + alpha[38,1,13] + alpha[38,2,13]
   + alpha[38,3,13] >= 1
 obs_face_o38_e0_j13: z[14,2] - obstacle_slack + 100 alpha[38,0,13]
   <= 96.7
 obs_face_o38_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[38,1,13]
   <= 99.2
 obs_face_o38_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[38,2,13]
   <= 102.7
 obs_face_o38_e3_j13: z[14,0] - obstacle_slack + 100 alpha[38,3,13]
   <= 100.2
 obs_alpha_sum_o38_j14: alpha[38,0,14] + alpha[38,1,14] + alpha[38,2,14]
   + alpha[38,3,14] >= 1
 obs_face_o38_e0_j14: z[15,2] - obstacle_slack + 100 alpha[38,0,14]
   <= 96.7
 obs_face_o38_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[38,1,14]
   <= 99.2
 obs_face_o38_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[38,2,14]
   <= 102.7
 obs_face_o38_e3_j14: z[15,0] - obstacle_slack + 100 alpha[38,3,14]
   <= 100.2
 obs_alpha_sum_o38_j15: alpha[38,0,15] + alpha[38,1,15] + alpha[38,2,15]
   + alpha[38,3,15] >= 1
 obs_face_o38_e0_j15: z[16,2] - obstacle_slack + 100 alpha[38,0,15]
   <= 96.7
 obs_face_o38_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[38,1,15]
   <= 99.2
 obs_face_o38_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[38,2,15]
   <= 102.7
 obs_face_o38_e3_j15: z[16,0] - obstacle_slack + 100 alpha[38,3,15]
   <= 100.2
 obs_alpha_sum_o38_j16: alpha[38,0,16] + alpha[38,1,16] + alpha[38,2,16]
   + alpha[38,3,16] >= 1
 obs_face_o38_e0_j16: z[17,2] - obstacle_slack + 100 alpha[38,0,16]
   <= 96.7
 obs_face_o38_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[38,1,16]
   <= 99.2
 obs_face_o38_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[38,2,16]
   <= 102.7
 obs_face_o38_e3_j16: z[17,0] - obstacle_slack + 100 alpha[38,3,16]
   <= 100.2
 obs_alpha_sum_o38_j17: alpha[38,0,17] + alpha[38,1,17] + alpha[38,2,17]
   + alpha[38,3,17] >= 1
 obs_face_o38_e0_j17: z[18,2] - obstacle_slack + 100 alpha[38,0,17]
   <= 96.7
 obs_face_o38_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[38,1,17]
   <= 99.2
 obs_face_o38_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[38,2,17]
   <= 102.7
 obs_face_o38_e3_j17: z[18,0] - obstacle_slack + 100 alpha[38,3,17]
   <= 100.2
 obs_alpha_sum_o38_j18: alpha[38,0,18] + alpha[38,1,18] + alpha[38,2,18]
   + alpha[38,3,18] >= 1
 obs_face_o38_e0_j18: z[19,2] - obstacle_slack + 100 alpha[38,0,18]
   <= 96.7
 obs_face_o38_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[38,1,18]
   <= 99.2
 obs_face_o38_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[38,2,18]
   <= 102.7
 obs_face_o38_e3_j18: z[19,0] - obstacle_slack + 100 alpha[38,3,18]
   <= 100.2
 obs_alpha_sum_o38_j19: alpha[38,0,19] + alpha[38,1,19] + alpha[38,2,19]
   + alpha[38,3,19] >= 1
 obs_face_o38_e0_j19: z[20,2] - obstacle_slack + 100 alpha[38,0,19]
   <= 96.7
 obs_face_o38_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[38,1,19]
   <= 99.2
 obs_face_o38_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[38,2,19]
   <= 102.7
 obs_face_o38_e3_j19: z[20,0] - obstacle_slack + 100 alpha[38,3,19]
   <= 100.2
 obs_alpha_sum_o38_j20: alpha[38,0,20] + alpha[38,1,20] + alpha[38,2,20]
   + alpha[38,3,20] >= 1
 obs_face_o38_e0_j20: z[21,2] - obstacle_slack + 100 alpha[38,0,20]
   <= 96.7
 obs_face_o38_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[38,1,20]
   <= 99.2
 obs_face_o38_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[38,2,20]
   <= 102.7
 obs_face_o38_e3_j20: z[21,0] - obstacle_slack + 100 alpha[38,3,20]
   <= 100.2
 obs_alpha_sum_o38_j21: alpha[38,0,21] + alpha[38,1,21] + alpha[38,2,21]
   + alpha[38,3,21] >= 1
 obs_face_o38_e0_j21: z[22,2] - obstacle_slack + 100 alpha[38,0,21]
   <= 96.7
 obs_face_o38_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[38,1,21]
   <= 99.2
 obs_face_o38_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[38,2,21]
   <= 102.7
 obs_face_o38_e3_j21: z[22,0] - obstacle_slack + 100 alpha[38,3,21]
   <= 100.2
 obs_alpha_sum_o38_j22: alpha[38,0,22] + alpha[38,1,22] + alpha[38,2,22]
   + alpha[38,3,22] >= 1
 obs_face_o38_e0_j22: z[23,2] - obstacle_slack + 100 alpha[38,0,22]
   <= 96.7
 obs_face_o38_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[38,1,22]
   <= 99.2
 obs_face_o38_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[38,2,22]
   <= 102.7
 obs_face_o38_e3_j22: z[23,0] - obstacle_slack + 100 alpha[38,3,22]
   <= 100.2
 obs_alpha_sum_o38_j23: alpha[38,0,23] + alpha[38,1,23] + alpha[38,2,23]
   + alpha[38,3,23] >= 1
 obs_face_o38_e0_j23: z[24,2] - obstacle_slack + 100 alpha[38,0,23]
   <= 96.7
 obs_face_o38_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[38,1,23]
   <= 99.2
 obs_face_o38_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[38,2,23]
   <= 102.7
 obs_face_o38_e3_j23: z[24,0] - obstacle_slack + 100 alpha[38,3,23]
   <= 100.2
 obs_alpha_sum_o38_j24: alpha[38,0,24] + alpha[38,1,24] + alpha[38,2,24]
   + alpha[38,3,24] >= 1
 obs_face_o38_e0_j24: z[25,2] - obstacle_slack + 100 alpha[38,0,24]
   <= 96.7
 obs_face_o38_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[38,1,24]
   <= 99.2
 obs_face_o38_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[38,2,24]
   <= 102.7
 obs_face_o38_e3_j24: z[25,0] - obstacle_slack + 100 alpha[38,3,24]
   <= 100.2
 obs_alpha_sum_o38_j25: alpha[38,0,25] + alpha[38,1,25] + alpha[38,2,25]
   + alpha[38,3,25] >= 1
 obs_face_o38_e0_j25: z[26,2] - obstacle_slack + 100 alpha[38,0,25]
   <= 96.7
 obs_face_o38_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[38,1,25]
   <= 99.2
 obs_face_o38_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[38,2,25]
   <= 102.7
 obs_face_o38_e3_j25: z[26,0] - obstacle_slack + 100 alpha[38,3,25]
   <= 100.2
 obs_alpha_sum_o38_j26: alpha[38,0,26] + alpha[38,1,26] + alpha[38,2,26]
   + alpha[38,3,26] >= 1
 obs_face_o38_e0_j26: z[27,2] - obstacle_slack + 100 alpha[38,0,26]
   <= 96.7
 obs_face_o38_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[38,1,26]
   <= 99.2
 obs_face_o38_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[38,2,26]
   <= 102.7
 obs_face_o38_e3_j26: z[27,0] - obstacle_slack + 100 alpha[38,3,26]
   <= 100.2
 obs_alpha_sum_o38_j27: alpha[38,0,27] + alpha[38,1,27] + alpha[38,2,27]
   + alpha[38,3,27] >= 1
 obs_face_o38_e0_j27: z[28,2] - obstacle_slack + 100 alpha[38,0,27]
   <= 96.7
 obs_face_o38_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[38,1,27]
   <= 99.2
 obs_face_o38_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[38,2,27]
   <= 102.7
 obs_face_o38_e3_j27: z[28,0] - obstacle_slack + 100 alpha[38,3,27]
   <= 100.2
 obs_alpha_sum_o38_j28: alpha[38,0,28] + alpha[38,1,28] + alpha[38,2,28]
   + alpha[38,3,28] >= 1
 obs_face_o38_e0_j28: z[29,2] - obstacle_slack + 100 alpha[38,0,28]
   <= 96.7
 obs_face_o38_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[38,1,28]
   <= 99.2
 obs_face_o38_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[38,2,28]
   <= 102.7
 obs_face_o38_e3_j28: z[29,0] - obstacle_slack + 100 alpha[38,3,28]
   <= 100.2
 obs_alpha_sum_o38_j29: alpha[38,0,29] + alpha[38,1,29] + alpha[38,2,29]
   + alpha[38,3,29] >= 1
 obs_face_o38_e0_j29: z[30,2] - obstacle_slack + 100 alpha[38,0,29]
   <= 96.7
 obs_face_o38_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[38,1,29]
   <= 99.2
 obs_face_o38_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[38,2,29]
   <= 102.7
 obs_face_o38_e3_j29: z[30,0] - obstacle_slack + 100 alpha[38,3,29]
   <= 100.2
 obs_alpha_sum_o39_j0: alpha[39,0,0] + alpha[39,1,0] + alpha[39,2,0]
   + alpha[39,3,0] >= 1
 obs_face_o39_e0_j0: z[1,2] - obstacle_slack + 100 alpha[39,0,0] <= 96.45
 obs_face_o39_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[39,1,0] <= 99.2
 obs_face_o39_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[39,2,0]
   <= 102.95
 obs_face_o39_e3_j0: z[1,0] - obstacle_slack + 100 alpha[39,3,0] <= 100.2
 obs_alpha_sum_o39_j1: alpha[39,0,1] + alpha[39,1,1] + alpha[39,2,1]
   + alpha[39,3,1] >= 1
 obs_face_o39_e0_j1: z[2,2] - obstacle_slack + 100 alpha[39,0,1] <= 96.45
 obs_face_o39_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[39,1,1] <= 99.2
 obs_face_o39_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[39,2,1]
   <= 102.95
 obs_face_o39_e3_j1: z[2,0] - obstacle_slack + 100 alpha[39,3,1] <= 100.2
 obs_alpha_sum_o39_j2: alpha[39,0,2] + alpha[39,1,2] + alpha[39,2,2]
   + alpha[39,3,2] >= 1
 obs_face_o39_e0_j2: z[3,2] - obstacle_slack + 100 alpha[39,0,2] <= 96.45
 obs_face_o39_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[39,1,2] <= 99.2
 obs_face_o39_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[39,2,2]
   <= 102.95
 obs_face_o39_e3_j2: z[3,0] - obstacle_slack + 100 alpha[39,3,2] <= 100.2
 obs_alpha_sum_o39_j3: alpha[39,0,3] + alpha[39,1,3] + alpha[39,2,3]
   + alpha[39,3,3] >= 1
 obs_face_o39_e0_j3: z[4,2] - obstacle_slack + 100 alpha[39,0,3] <= 96.45
 obs_face_o39_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[39,1,3] <= 99.2
 obs_face_o39_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[39,2,3]
   <= 102.95
 obs_face_o39_e3_j3: z[4,0] - obstacle_slack + 100 alpha[39,3,3] <= 100.2
 obs_alpha_sum_o39_j4: alpha[39,0,4] + alpha[39,1,4] + alpha[39,2,4]
   + alpha[39,3,4] >= 1
 obs_face_o39_e0_j4: z[5,2] - obstacle_slack + 100 alpha[39,0,4] <= 96.45
 obs_face_o39_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[39,1,4] <= 99.2
 obs_face_o39_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[39,2,4]
   <= 102.95
 obs_face_o39_e3_j4: z[5,0] - obstacle_slack + 100 alpha[39,3,4] <= 100.2
 obs_alpha_sum_o39_j5: alpha[39,0,5] + alpha[39,1,5] + alpha[39,2,5]
   + alpha[39,3,5] >= 1
 obs_face_o39_e0_j5: z[6,2] - obstacle_slack + 100 alpha[39,0,5] <= 96.45
 obs_face_o39_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[39,1,5] <= 99.2
 obs_face_o39_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[39,2,5]
   <= 102.95
 obs_face_o39_e3_j5: z[6,0] - obstacle_slack + 100 alpha[39,3,5] <= 100.2
 obs_alpha_sum_o39_j6: alpha[39,0,6] + alpha[39,1,6] + alpha[39,2,6]
   + alpha[39,3,6] >= 1
 obs_face_o39_e0_j6: z[7,2] - obstacle_slack + 100 alpha[39,0,6] <= 96.45
 obs_face_o39_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[39,1,6] <= 99.2
 obs_face_o39_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[39,2,6]
   <= 102.95
 obs_face_o39_e3_j6: z[7,0] - obstacle_slack + 100 alpha[39,3,6] <= 100.2
 obs_alpha_sum_o39_j7: alpha[39,0,7] + alpha[39,1,7] + alpha[39,2,7]
   + alpha[39,3,7] >= 1
 obs_face_o39_e0_j7: z[8,2] - obstacle_slack + 100 alpha[39,0,7] <= 96.45
 obs_face_o39_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[39,1,7] <= 99.2
 obs_face_o39_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[39,2,7]
   <= 102.95
 obs_face_o39_e3_j7: z[8,0] - obstacle_slack + 100 alpha[39,3,7] <= 100.2
 obs_alpha_sum_o39_j8: alpha[39,0,8] + alpha[39,1,8] + alpha[39,2,8]
   + alpha[39,3,8] >= 1
 obs_face_o39_e0_j8: z[9,2] - obstacle_slack + 100 alpha[39,0,8] <= 96.45
 obs_face_o39_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[39,1,8] <= 99.2
 obs_face_o39_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[39,2,8]
   <= 102.95
 obs_face_o39_e3_j8: z[9,0] - obstacle_slack + 100 alpha[39,3,8] <= 100.2
 obs_alpha_sum_o39_j9: alpha[39,0,9] + alpha[39,1,9] + alpha[39,2,9]
   + alpha[39,3,9] >= 1
 obs_face_o39_e0_j9: z[10,2] - obstacle_slack + 100 alpha[39,0,9] <= 96.45
 obs_face_o39_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[39,1,9]
   <= 99.2
 obs_face_o39_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[39,2,9]
   <= 102.95
 obs_face_o39_e3_j9: z[10,0] - obstacle_slack + 100 alpha[39,3,9] <= 100.2
 obs_alpha_sum_o39_j10: alpha[39,0,10] + alpha[39,1,10] + alpha[39,2,10]
   + alpha[39,3,10] >= 1
 obs_face_o39_e0_j10: z[11,2] - obstacle_slack + 100 alpha[39,0,10]
   <= 96.45
 obs_face_o39_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[39,1,10]
   <= 99.2
 obs_face_o39_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[39,2,10]
   <= 102.95
 obs_face_o39_e3_j10: z[11,0] - obstacle_slack + 100 alpha[39,3,10]
   <= 100.2
 obs_alpha_sum_o39_j11: alpha[39,0,11] + alpha[39,1,11] + alpha[39,2,11]
   + alpha[39,3,11] >= 1
 obs_face_o39_e0_j11: z[12,2] - obstacle_slack + 100 alpha[39,0,11]
   <= 96.45
 obs_face_o39_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[39,1,11]
   <= 99.2
 obs_face_o39_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[39,2,11]
   <= 102.95
 obs_face_o39_e3_j11: z[12,0] - obstacle_slack + 100 alpha[39,3,11]
   <= 100.2
 obs_alpha_sum_o39_j12: alpha[39,0,12] + alpha[39,1,12] + alpha[39,2,12]
   + alpha[39,3,12] >= 1
 obs_face_o39_e0_j12: z[13,2] - obstacle_slack + 100 alpha[39,0,12]
   <= 96.45
 obs_face_o39_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[39,1,12]
   <= 99.2
 obs_face_o39_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[39,2,12]
   <= 102.95
 obs_face_o39_e3_j12: z[13,0] - obstacle_slack + 100 alpha[39,3,12]
   <= 100.2
 obs_alpha_sum_o39_j13: alpha[39,0,13] + alpha[39,1,13] + alpha[39,2,13]
   + alpha[39,3,13] >= 1
 obs_face_o39_e0_j13: z[14,2] - obstacle_slack + 100 alpha[39,0,13]
   <= 96.45
 obs_face_o39_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[39,1,13]
   <= 99.2
 obs_face_o39_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[39,2,13]
   <= 102.95
 obs_face_o39_e3_j13: z[14,0] - obstacle_slack + 100 alpha[39,3,13]
   <= 100.2
 obs_alpha_sum_o39_j14: alpha[39,0,14] + alpha[39,1,14] + alpha[39,2,14]
   + alpha[39,3,14] >= 1
 obs_face_o39_e0_j14: z[15,2] - obstacle_slack + 100 alpha[39,0,14]
   <= 96.45
 obs_face_o39_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[39,1,14]
   <= 99.2
 obs_face_o39_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[39,2,14]
   <= 102.95
 obs_face_o39_e3_j14: z[15,0] - obstacle_slack + 100 alpha[39,3,14]
   <= 100.2
 obs_alpha_sum_o39_j15: alpha[39,0,15] + alpha[39,1,15] + alpha[39,2,15]
   + alpha[39,3,15] >= 1
 obs_face_o39_e0_j15: z[16,2] - obstacle_slack + 100 alpha[39,0,15]
   <= 96.45
 obs_face_o39_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[39,1,15]
   <= 99.2
 obs_face_o39_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[39,2,15]
   <= 102.95
 obs_face_o39_e3_j15: z[16,0] - obstacle_slack + 100 alpha[39,3,15]
   <= 100.2
 obs_alpha_sum_o39_j16: alpha[39,0,16] + alpha[39,1,16] + alpha[39,2,16]
   + alpha[39,3,16] >= 1
 obs_face_o39_e0_j16: z[17,2] - obstacle_slack + 100 alpha[39,0,16]
   <= 96.45
 obs_face_o39_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[39,1,16]
   <= 99.2
 obs_face_o39_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[39,2,16]
   <= 102.95
 obs_face_o39_e3_j16: z[17,0] - obstacle_slack + 100 alpha[39,3,16]
   <= 100.2
 obs_alpha_sum_o39_j17: alpha[39,0,17] + alpha[39,1,17] + alpha[39,2,17]
   + alpha[39,3,17] >= 1
 obs_face_o39_e0_j17: z[18,2] - obstacle_slack + 100 alpha[39,0,17]
   <= 96.45
 obs_face_o39_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[39,1,17]
   <= 99.2
 obs_face_o39_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[39,2,17]
   <= 102.95
 obs_face_o39_e3_j17: z[18,0] - obstacle_slack + 100 alpha[39,3,17]
   <= 100.2
 obs_alpha_sum_o39_j18: alpha[39,0,18] + alpha[39,1,18] + alpha[39,2,18]
   + alpha[39,3,18] >= 1
 obs_face_o39_e0_j18: z[19,2] - obstacle_slack + 100 alpha[39,0,18]
   <= 96.45
 obs_face_o39_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[39,1,18]
   <= 99.2
 obs_face_o39_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[39,2,18]
   <= 102.95
 obs_face_o39_e3_j18: z[19,0] - obstacle_slack + 100 alpha[39,3,18]
   <= 100.2
 obs_alpha_sum_o39_j19: alpha[39,0,19] + alpha[39,1,19] + alpha[39,2,19]
   + alpha[39,3,19] >= 1
 obs_face_o39_e0_j19: z[20,2] - obstacle_slack + 100 alpha[39,0,19]
   <= 96.45
 obs_face_o39_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[39,1,19]
   <= 99.2
 obs_face_o39_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[39,2,19]
   <= 102.95
 obs_face_o39_e3_j19: z[20,0] - obstacle_slack + 100 alpha[39,3,19]
   <= 100.2
 obs_alpha_sum_o39_j20: alpha[39,0,20] + alpha[39,1,20] + alpha[39,2,20]
   + alpha[39,3,20] >= 1
 obs_face_o39_e0_j20: z[21,2] - obstacle_slack + 100 alpha[39,0,20]
   <= 96.45
 obs_face_o39_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[39,1,20]
   <= 99.2
 obs_face_o39_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[39,2,20]
   <= 102.95
 obs_face_o39_e3_j20: z[21,0] - obstacle_slack + 100 alpha[39,3,20]
   <= 100.2
 obs_alpha_sum_o39_j21: alpha[39,0,21] + alpha[39,1,21] + alpha[39,2,21]
   + alpha[39,3,21] >= 1
 obs_face_o39_e0_j21: z[22,2] - obstacle_slack + 100 alpha[39,0,21]
   <= 96.45
 obs_face_o39_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[39,1,21]
   <= 99.2
 obs_face_o39_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[39,2,21]
   <= 102.95
 obs_face_o39_e3_j21: z[22,0] - obstacle_slack + 100 alpha[39,3,21]
   <= 100.2
 obs_alpha_sum_o39_j22: alpha[39,0,22] + alpha[39,1,22] + alpha[39,2,22]
   + alpha[39,3,22] >= 1
 obs_face_o39_e0_j22: z[23,2] - obstacle_slack + 100 alpha[39,0,22]
   <= 96.45
 obs_face_o39_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[39,1,22]
   <= 99.2
 obs_face_o39_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[39,2,22]
   <= 102.95
 obs_face_o39_e3_j22: z[23,0] - obstacle_slack + 100 alpha[39,3,22]
   <= 100.2
 obs_alpha_sum_o39_j23: alpha[39,0,23] + alpha[39,1,23] + alpha[39,2,23]
   + alpha[39,3,23] >= 1
 obs_face_o39_e0_j23: z[24,2] - obstacle_slack + 100 alpha[39,0,23]
   <= 96.45
 obs_face_o39_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[39,1,23]
   <= 99.2
 obs_face_o39_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[39,2,23]
   <= 102.95
 obs_face_o39_e3_j23: z[24,0] - obstacle_slack + 100 alpha[39,3,23]
   <= 100.2
 obs_alpha_sum_o39_j24: alpha[39,0,24] + alpha[39,1,24] + alpha[39,2,24]
   + alpha[39,3,24] >= 1
 obs_face_o39_e0_j24: z[25,2] - obstacle_slack + 100 alpha[39,0,24]
   <= 96.45
 obs_face_o39_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[39,1,24]
   <= 99.2
 obs_face_o39_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[39,2,24]
   <= 102.95
 obs_face_o39_e3_j24: z[25,0] - obstacle_slack + 100 alpha[39,3,24]
   <= 100.2
 obs_alpha_sum_o39_j25: alpha[39,0,25] + alpha[39,1,25] + alpha[39,2,25]
   + alpha[39,3,25] >= 1
 obs_face_o39_e0_j25: z[26,2] - obstacle_slack + 100 alpha[39,0,25]
   <= 96.45
 obs_face_o39_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[39,1,25]
   <= 99.2
 obs_face_o39_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[39,2,25]
   <= 102.95
 obs_face_o39_e3_j25: z[26,0] - obstacle_slack + 100 alpha[39,3,25]
   <= 100.2
 obs_alpha_sum_o39_j26: alpha[39,0,26] + alpha[39,1,26] + alpha[39,2,26]
   + alpha[39,3,26] >= 1
 obs_face_o39_e0_j26: z[27,2] - obstacle_slack + 100 alpha[39,0,26]
   <= 96.45
 obs_face_o39_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[39,1,26]
   <= 99.2
 obs_face_o39_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[39,2,26]
   <= 102.95
 obs_face_o39_e3_j26: z[27,0] - obstacle_slack + 100 alpha[39,3,26]
   <= 100.2
 obs_alpha_sum_o39_j27: alpha[39,0,27] + alpha[39,1,27] + alpha[39,2,27]
   + alpha[39,3,27] >= 1
 obs_face_o39_e0_j27: z[28,2] - obstacle_slack + 100 alpha[39,0,27]
   <= 96.45
 obs_face_o39_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[39,1,27]
   <= 99.2
 obs_face_o39_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[39,2,27]
   <= 102.95
 obs_face_o39_e3_j27: z[28,0] - obstacle_slack + 100 alpha[39,3,27]
   <= 100.2
 obs_alpha_sum_o39_j28: alpha[39,0,28] + alpha[39,1,28] + alpha[39,2,28]
   + alpha[39,3,28] >= 1
 obs_face_o39_e0_j28: z[29,2] - obstacle_slack + 100 alpha[39,0,28]
   <= 96.45
 obs_face_o39_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[39,1,28]
   <= 99.2
 obs_face_o39_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[39,2,28]
   <= 102.95
 obs_face_o39_e3_j28: z[29,0] - obstacle_slack + 100 alpha[39,3,28]
   <= 100.2
 obs_alpha_sum_o39_j29: alpha[39,0,29] + alpha[39,1,29] + alpha[39,2,29]
   + alpha[39,3,29] >= 1
 obs_face_o39_e0_j29: z[30,2] - obstacle_slack + 100 alpha[39,0,29]
   <= 96.45
 obs_face_o39_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[39,1,29]
   <= 99.2
 obs_face_o39_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[39,2,29]
   <= 102.95
 obs_face_o39_e3_j29: z[30,0] - obstacle_slack + 100 alpha[39,3,29]
   <= 100.2
 obs_alpha_sum_o40_j0: alpha[40,0,0] + alpha[40,1,0] + alpha[40,2,0]
   + alpha[40,3,0] >= 1
 obs_face_o40_e0_j0: z[1,2] - obstacle_slack + 100 alpha[40,0,0] <= 96.2
 obs_face_o40_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[40,1,0] <= 99.2
 obs_face_o40_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[40,2,0]
   <= 103.2
 obs_face_o40_e3_j0: z[1,0] - obstacle_slack + 100 alpha[40,3,0] <= 100.2
 obs_alpha_sum_o40_j1: alpha[40,0,1] + alpha[40,1,1] + alpha[40,2,1]
   + alpha[40,3,1] >= 1
 obs_face_o40_e0_j1: z[2,2] - obstacle_slack + 100 alpha[40,0,1] <= 96.2
 obs_face_o40_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[40,1,1] <= 99.2
 obs_face_o40_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[40,2,1]
   <= 103.2
 obs_face_o40_e3_j1: z[2,0] - obstacle_slack + 100 alpha[40,3,1] <= 100.2
 obs_alpha_sum_o40_j2: alpha[40,0,2] + alpha[40,1,2] + alpha[40,2,2]
   + alpha[40,3,2] >= 1
 obs_face_o40_e0_j2: z[3,2] - obstacle_slack + 100 alpha[40,0,2] <= 96.2
 obs_face_o40_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[40,1,2] <= 99.2
 obs_face_o40_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[40,2,2]
   <= 103.2
 obs_face_o40_e3_j2: z[3,0] - obstacle_slack + 100 alpha[40,3,2] <= 100.2
 obs_alpha_sum_o40_j3: alpha[40,0,3] + alpha[40,1,3] + alpha[40,2,3]
   + alpha[40,3,3] >= 1
 obs_face_o40_e0_j3: z[4,2] - obstacle_slack + 100 alpha[40,0,3] <= 96.2
 obs_face_o40_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[40,1,3] <= 99.2
 obs_face_o40_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[40,2,3]
   <= 103.2
 obs_face_o40_e3_j3: z[4,0] - obstacle_slack + 100 alpha[40,3,3] <= 100.2
 obs_alpha_sum_o40_j4: alpha[40,0,4] + alpha[40,1,4] + alpha[40,2,4]
   + alpha[40,3,4] >= 1
 obs_face_o40_e0_j4: z[5,2] - obstacle_slack + 100 alpha[40,0,4] <= 96.2
 obs_face_o40_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[40,1,4] <= 99.2
 obs_face_o40_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[40,2,4]
   <= 103.2
 obs_face_o40_e3_j4: z[5,0] - obstacle_slack + 100 alpha[40,3,4] <= 100.2
 obs_alpha_sum_o40_j5: alpha[40,0,5] + alpha[40,1,5] + alpha[40,2,5]
   + alpha[40,3,5] >= 1
 obs_face_o40_e0_j5: z[6,2] - obstacle_slack + 100 alpha[40,0,5] <= 96.2
 obs_face_o40_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[40,1,5] <= 99.2
 obs_face_o40_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[40,2,5]
   <= 103.2
 obs_face_o40_e3_j5: z[6,0] - obstacle_slack + 100 alpha[40,3,5] <= 100.2
 obs_alpha_sum_o40_j6: alpha[40,0,6] + alpha[40,1,6] + alpha[40,2,6]
   + alpha[40,3,6] >= 1
 obs_face_o40_e0_j6: z[7,2] - obstacle_slack + 100 alpha[40,0,6] <= 96.2
 obs_face_o40_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[40,1,6] <= 99.2
 obs_face_o40_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[40,2,6]
   <= 103.2
 obs_face_o40_e3_j6: z[7,0] - obstacle_slack + 100 alpha[40,3,6] <= 100.2
 obs_alpha_sum_o40_j7: alpha[40,0,7] + alpha[40,1,7] + alpha[40,2,7]
   + alpha[40,3,7] >= 1
 obs_face_o40_e0_j7: z[8,2] - obstacle_slack + 100 alpha[40,0,7] <= 96.2
 obs_face_o40_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[40,1,7] <= 99.2
 obs_face_o40_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[40,2,7]
   <= 103.2
 obs_face_o40_e3_j7: z[8,0] - obstacle_slack + 100 alpha[40,3,7] <= 100.2
 obs_alpha_sum_o40_j8: alpha[40,0,8] + alpha[40,1,8] + alpha[40,2,8]
   + alpha[40,3,8] >= 1
 obs_face_o40_e0_j8: z[9,2] - obstacle_slack + 100 alpha[40,0,8] <= 96.2
 obs_face_o40_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[40,1,8] <= 99.2
 obs_face_o40_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[40,2,8]
   <= 103.2
 obs_face_o40_e3_j8: z[9,0] - obstacle_slack + 100 alpha[40,3,8] <= 100.2
 obs_alpha_sum_o40_j9: alpha[40,0,9] + alpha[40,1,9] + alpha[40,2,9]
   + alpha[40,3,9] >= 1
 obs_face_o40_e0_j9: z[10,2] - obstacle_slack + 100 alpha[40,0,9] <= 96.2
 obs_face_o40_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[40,1,9]
   <= 99.2
 obs_face_o40_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[40,2,9]
   <= 103.2
 obs_face_o40_e3_j9: z[10,0] - obstacle_slack + 100 alpha[40,3,9] <= 100.2
 obs_alpha_sum_o40_j10: alpha[40,0,10] + alpha[40,1,10] + alpha[40,2,10]
   + alpha[40,3,10] >= 1
 obs_face_o40_e0_j10: z[11,2] - obstacle_slack + 100 alpha[40,0,10]
   <= 96.2
 obs_face_o40_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[40,1,10]
   <= 99.2
 obs_face_o40_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[40,2,10]
   <= 103.2
 obs_face_o40_e3_j10: z[11,0] - obstacle_slack + 100 alpha[40,3,10]
   <= 100.2
 obs_alpha_sum_o40_j11: alpha[40,0,11] + alpha[40,1,11] + alpha[40,2,11]
   + alpha[40,3,11] >= 1
 obs_face_o40_e0_j11: z[12,2] - obstacle_slack + 100 alpha[40,0,11]
   <= 96.2
 obs_face_o40_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[40,1,11]
   <= 99.2
 obs_face_o40_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[40,2,11]
   <= 103.2
 obs_face_o40_e3_j11: z[12,0] - obstacle_slack + 100 alpha[40,3,11]
   <= 100.2
 obs_alpha_sum_o40_j12: alpha[40,0,12] + alpha[40,1,12] + alpha[40,2,12]
   + alpha[40,3,12] >= 1
 obs_face_o40_e0_j12: z[13,2] - obstacle_slack + 100 alpha[40,0,12]
   <= 96.2
 obs_face_o40_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[40,1,12]
   <= 99.2
 obs_face_o40_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[40,2,12]
   <= 103.2
 obs_face_o40_e3_j12: z[13,0] - obstacle_slack + 100 alpha[40,3,12]
   <= 100.2
 obs_alpha_sum_o40_j13: alpha[40,0,13] + alpha[40,1,13] + alpha[40,2,13]
   + alpha[40,3,13] >= 1
 obs_face_o40_e0_j13: z[14,2] - obstacle_slack + 100 alpha[40,0,13]
   <= 96.2
 obs_face_o40_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[40,1,13]
   <= 99.2
 obs_face_o40_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[40,2,13]
   <= 103.2
 obs_face_o40_e3_j13: z[14,0] - obstacle_slack + 100 alpha[40,3,13]
   <= 100.2
 obs_alpha_sum_o40_j14: alpha[40,0,14] + alpha[40,1,14] + alpha[40,2,14]
   + alpha[40,3,14] >= 1
 obs_face_o40_e0_j14: z[15,2] - obstacle_slack + 100 alpha[40,0,14]
   <= 96.2
 obs_face_o40_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[40,1,14]
   <= 99.2
 obs_face_o40_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[40,2,14]
   <= 103.2
 obs_face_o40_e3_j14: z[15,0] - obstacle_slack + 100 alpha[40,3,14]
   <= 100.2
 obs_alpha_sum_o40_j15: alpha[40,0,15] + alpha[40,1,15] + alpha[40,2,15]
   + alpha[40,3,15] >= 1
 obs_face_o40_e0_j15: z[16,2] - obstacle_slack + 100 alpha[40,0,15]
   <= 96.2
 obs_face_o40_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[40,1,15]
   <= 99.2
 obs_face_o40_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[40,2,15]
   <= 103.2
 obs_face_o40_e3_j15: z[16,0] - obstacle_slack + 100 alpha[40,3,15]
   <= 100.2
 obs_alpha_sum_o40_j16: alpha[40,0,16] + alpha[40,1,16] + alpha[40,2,16]
   + alpha[40,3,16] >= 1
 obs_face_o40_e0_j16: z[17,2] - obstacle_slack + 100 alpha[40,0,16]
   <= 96.2
 obs_face_o40_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[40,1,16]
   <= 99.2
 obs_face_o40_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[40,2,16]
   <= 103.2
 obs_face_o40_e3_j16: z[17,0] - obstacle_slack + 100 alpha[40,3,16]
   <= 100.2
 obs_alpha_sum_o40_j17: alpha[40,0,17] + alpha[40,1,17] + alpha[40,2,17]
   + alpha[40,3,17] >= 1
 obs_face_o40_e0_j17: z[18,2] - obstacle_slack + 100 alpha[40,0,17]
   <= 96.2
 obs_face_o40_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[40,1,17]
   <= 99.2
 obs_face_o40_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[40,2,17]
   <= 103.2
 obs_face_o40_e3_j17: z[18,0] - obstacle_slack + 100 alpha[40,3,17]
   <= 100.2
 obs_alpha_sum_o40_j18: alpha[40,0,18] + alpha[40,1,18] + alpha[40,2,18]
   + alpha[40,3,18] >= 1
 obs_face_o40_e0_j18: z[19,2] - obstacle_slack + 100 alpha[40,0,18]
   <= 96.2
 obs_face_o40_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[40,1,18]
   <= 99.2
 obs_face_o40_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[40,2,18]
   <= 103.2
 obs_face_o40_e3_j18: z[19,0] - obstacle_slack + 100 alpha[40,3,18]
   <= 100.2
 obs_alpha_sum_o40_j19: alpha[40,0,19] + alpha[40,1,19] + alpha[40,2,19]
   + alpha[40,3,19] >= 1
 obs_face_o40_e0_j19: z[20,2] - obstacle_slack + 100 alpha[40,0,19]
   <= 96.2
 obs_face_o40_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[40,1,19]
   <= 99.2
 obs_face_o40_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[40,2,19]
   <= 103.2
 obs_face_o40_e3_j19: z[20,0] - obstacle_slack + 100 alpha[40,3,19]
   <= 100.2
 obs_alpha_sum_o40_j20: alpha[40,0,20] + alpha[40,1,20] + alpha[40,2,20]
   + alpha[40,3,20] >= 1
 obs_face_o40_e0_j20: z[21,2] - obstacle_slack + 100 alpha[40,0,20]
   <= 96.2
 obs_face_o40_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[40,1,20]
   <= 99.2
 obs_face_o40_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[40,2,20]
   <= 103.2
 obs_face_o40_e3_j20: z[21,0] - obstacle_slack + 100 alpha[40,3,20]
   <= 100.2
 obs_alpha_sum_o40_j21: alpha[40,0,21] + alpha[40,1,21] + alpha[40,2,21]
   + alpha[40,3,21] >= 1
 obs_face_o40_e0_j21: z[22,2] - obstacle_slack + 100 alpha[40,0,21]
   <= 96.2
 obs_face_o40_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[40,1,21]
   <= 99.2
 obs_face_o40_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[40,2,21]
   <= 103.2
 obs_face_o40_e3_j21: z[22,0] - obstacle_slack + 100 alpha[40,3,21]
   <= 100.2
 obs_alpha_sum_o40_j22: alpha[40,0,22] + alpha[40,1,22] + alpha[40,2,22]
   + alpha[40,3,22] >= 1
 obs_face_o40_e0_j22: z[23,2] - obstacle_slack + 100 alpha[40,0,22]
   <= 96.2
 obs_face_o40_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[40,1,22]
   <= 99.2
 obs_face_o40_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[40,2,22]
   <= 103.2
 obs_face_o40_e3_j22: z[23,0] - obstacle_slack + 100 alpha[40,3,22]
   <= 100.2
 obs_alpha_sum_o40_j23: alpha[40,0,23] + alpha[40,1,23] + alpha[40,2,23]
   + alpha[40,3,23] >= 1
 obs_face_o40_e0_j23: z[24,2] - obstacle_slack + 100 alpha[40,0,23]
   <= 96.2
 obs_face_o40_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[40,1,23]
   <= 99.2
 obs_face_o40_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[40,2,23]
   <= 103.2
 obs_face_o40_e3_j23: z[24,0] - obstacle_slack + 100 alpha[40,3,23]
   <= 100.2
 obs_alpha_sum_o40_j24: alpha[40,0,24] + alpha[40,1,24] + alpha[40,2,24]
   + alpha[40,3,24] >= 1
 obs_face_o40_e0_j24: z[25,2] - obstacle_slack + 100 alpha[40,0,24]
   <= 96.2
 obs_face_o40_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[40,1,24]
   <= 99.2
 obs_face_o40_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[40,2,24]
   <= 103.2
 obs_face_o40_e3_j24: z[25,0] - obstacle_slack + 100 alpha[40,3,24]
   <= 100.2
 obs_alpha_sum_o40_j25: alpha[40,0,25] + alpha[40,1,25] + alpha[40,2,25]
   + alpha[40,3,25] >= 1
 obs_face_o40_e0_j25: z[26,2] - obstacle_slack + 100 alpha[40,0,25]
   <= 96.2
 obs_face_o40_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[40,1,25]
   <= 99.2
 obs_face_o40_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[40,2,25]
   <= 103.2
 obs_face_o40_e3_j25: z[26,0] - obstacle_slack + 100 alpha[40,3,25]
   <= 100.2
 obs_alpha_sum_o40_j26: alpha[40,0,26] + alpha[40,1,26] + alpha[40,2,26]
   + alpha[40,3,26] >= 1
 obs_face_o40_e0_j26: z[27,2] - obstacle_slack + 100 alpha[40,0,26]
   <= 96.2
 obs_face_o40_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[40,1,26]
   <= 99.2
 obs_face_o40_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[40,2,26]
   <= 103.2
 obs_face_o40_e3_j26: z[27,0] - obstacle_slack + 100 alpha[40,3,26]
   <= 100.2
 obs_alpha_sum_o40_j27: alpha[40,0,27] + alpha[40,1,27] + alpha[40,2,27]
   + alpha[40,3,27] >= 1
 obs_face_o40_e0_j27: z[28,2] - obstacle_slack + 100 alpha[40,0,27]
   <= 96.2
 obs_face_o40_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[40,1,27]
   <= 99.2
 obs_face_o40_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[40,2,27]
   <= 103.2
 obs_face_o40_e3_j27: z[28,0] - obstacle_slack + 100 alpha[40,3,27]
   <= 100.2
 obs_alpha_sum_o40_j28: alpha[40,0,28] + alpha[40,1,28] + alpha[40,2,28]
   + alpha[40,3,28] >= 1
 obs_face_o40_e0_j28: z[29,2] - obstacle_slack + 100 alpha[40,0,28]
   <= 96.2
 obs_face_o40_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[40,1,28]
   <= 99.2
 obs_face_o40_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[40,2,28]
   <= 103.2
 obs_face_o40_e3_j28: z[29,0] - obstacle_slack + 100 alpha[40,3,28]
   <= 100.2
 obs_alpha_sum_o40_j29: alpha[40,0,29] + alpha[40,1,29] + alpha[40,2,29]
   + alpha[40,3,29] >= 1
 obs_face_o40_e0_j29: z[30,2] - obstacle_slack + 100 alpha[40,0,29]
   <= 96.2
 obs_face_o40_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[40,1,29]
   <= 99.2
 obs_face_o40_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[40,2,29]
   <= 103.2
 obs_face_o40_e3_j29: z[30,0] - obstacle_slack + 100 alpha[40,3,29]
   <= 100.2
 obs_alpha_sum_o41_j0: alpha[41,0,0] + alpha[41,1,0] + alpha[41,2,0]
   + alpha[41,3,0] >= 1
 obs_face_o41_e0_j0: z[1,2] - obstacle_slack + 100 alpha[41,0,0] <= 95.95
 obs_face_o41_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[41,1,0] <= 99.2
 obs_face_o41_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[41,2,0]
   <= 103.45
 obs_face_o41_e3_j0: z[1,0] - obstacle_slack + 100 alpha[41,3,0] <= 100.2
 obs_alpha_sum_o41_j1: alpha[41,0,1] + alpha[41,1,1] + alpha[41,2,1]
   + alpha[41,3,1] >= 1
 obs_face_o41_e0_j1: z[2,2] - obstacle_slack + 100 alpha[41,0,1] <= 95.95
 obs_face_o41_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[41,1,1] <= 99.2
 obs_face_o41_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[41,2,1]
   <= 103.45
 obs_face_o41_e3_j1: z[2,0] - obstacle_slack + 100 alpha[41,3,1] <= 100.2
 obs_alpha_sum_o41_j2: alpha[41,0,2] + alpha[41,1,2] + alpha[41,2,2]
   + alpha[41,3,2] >= 1
 obs_face_o41_e0_j2: z[3,2] - obstacle_slack + 100 alpha[41,0,2] <= 95.95
 obs_face_o41_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[41,1,2] <= 99.2
 obs_face_o41_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[41,2,2]
   <= 103.45
 obs_face_o41_e3_j2: z[3,0] - obstacle_slack + 100 alpha[41,3,2] <= 100.2
 obs_alpha_sum_o41_j3: alpha[41,0,3] + alpha[41,1,3] + alpha[41,2,3]
   + alpha[41,3,3] >= 1
 obs_face_o41_e0_j3: z[4,2] - obstacle_slack + 100 alpha[41,0,3] <= 95.95
 obs_face_o41_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[41,1,3] <= 99.2
 obs_face_o41_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[41,2,3]
   <= 103.45
 obs_face_o41_e3_j3: z[4,0] - obstacle_slack + 100 alpha[41,3,3] <= 100.2
 obs_alpha_sum_o41_j4: alpha[41,0,4] + alpha[41,1,4] + alpha[41,2,4]
   + alpha[41,3,4] >= 1
 obs_face_o41_e0_j4: z[5,2] - obstacle_slack + 100 alpha[41,0,4] <= 95.95
 obs_face_o41_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[41,1,4] <= 99.2
 obs_face_o41_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[41,2,4]
   <= 103.45
 obs_face_o41_e3_j4: z[5,0] - obstacle_slack + 100 alpha[41,3,4] <= 100.2
 obs_alpha_sum_o41_j5: alpha[41,0,5] + alpha[41,1,5] + alpha[41,2,5]
   + alpha[41,3,5] >= 1
 obs_face_o41_e0_j5: z[6,2] - obstacle_slack + 100 alpha[41,0,5] <= 95.95
 obs_face_o41_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[41,1,5] <= 99.2
 obs_face_o41_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[41,2,5]
   <= 103.45
 obs_face_o41_e3_j5: z[6,0] - obstacle_slack + 100 alpha[41,3,5] <= 100.2
 obs_alpha_sum_o41_j6: alpha[41,0,6] + alpha[41,1,6] + alpha[41,2,6]
   + alpha[41,3,6] >= 1
 obs_face_o41_e0_j6: z[7,2] - obstacle_slack + 100 alpha[41,0,6] <= 95.95
 obs_face_o41_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[41,1,6] <= 99.2
 obs_face_o41_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[41,2,6]
   <= 103.45
 obs_face_o41_e3_j6: z[7,0] - obstacle_slack + 100 alpha[41,3,6] <= 100.2
 obs_alpha_sum_o41_j7: alpha[41,0,7] + alpha[41,1,7] + alpha[41,2,7]
   + alpha[41,3,7] >= 1
 obs_face_o41_e0_j7: z[8,2] - obstacle_slack + 100 alpha[41,0,7] <= 95.95
 obs_face_o41_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[41,1,7] <= 99.2
 obs_face_o41_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[41,2,7]
   <= 103.45
 obs_face_o41_e3_j7: z[8,0] - obstacle_slack + 100 alpha[41,3,7] <= 100.2
 obs_alpha_sum_o41_j8: alpha[41,0,8] + alpha[41,1,8] + alpha[41,2,8]
   + alpha[41,3,8] >= 1
 obs_face_o41_e0_j8: z[9,2] - obstacle_slack + 100 alpha[41,0,8] <= 95.95
 obs_face_o41_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[41,1,8] <= 99.2
 obs_face_o41_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[41,2,8]
   <= 103.45
 obs_face_o41_e3_j8: z[9,0] - obstacle_slack + 100 alpha[41,3,8] <= 100.2
 obs_alpha_sum_o41_j9: alpha[41,0,9] + alpha[41,1,9] + alpha[41,2,9]
   + alpha[41,3,9] >= 1
 obs_face_o41_e0_j9: z[10,2] - obstacle_slack + 100 alpha[41,0,9] <= 95.95
 obs_face_o41_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[41,1,9]
   <= 99.2
 obs_face_o41_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[41,2,9]
   <= 103.45
 obs_face_o41_e3_j9: z[10,0] - obstacle_slack + 100 alpha[41,3,9] <= 100.2
 obs_alpha_sum_o41_j10: alpha[41,0,10] + alpha[41,1,10] + alpha[41,2,10]
   + alpha[41,3,10] >= 1
 obs_face_o41_e0_j10: z[11,2] - obstacle_slack + 100 alpha[41,0,10]
   <= 95.95
 obs_face_o41_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[41,1,10]
   <= 99.2
 obs_face_o41_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[41,2,10]
   <= 103.45
 obs_face_o41_e3_j10: z[11,0] - obstacle_slack + 100 alpha[41,3,10]
   <= 100.2
 obs_alpha_sum_o41_j11: alpha[41,0,11] + alpha[41,1,11] + alpha[41,2,11]
   + alpha[41,3,11] >= 1
 obs_face_o41_e0_j11: z[12,2] - obstacle_slack + 100 alpha[41,0,11]
   <= 95.95
 obs_face_o41_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[41,1,11]
   <= 99.2
 obs_face_o41_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[41,2,11]
   <= 103.45
 obs_face_o41_e3_j11: z[12,0] - obstacle_slack + 100 alpha[41,3,11]
   <= 100.2
 obs_alpha_sum_o41_j12: alpha[41,0,12] + alpha[41,1,12] + alpha[41,2,12]
   + alpha[41,3,12] >= 1
 obs_face_o41_e0_j12: z[13,2] - obstacle_slack + 100 alpha[41,0,12]
   <= 95.95
 obs_face_o41_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[41,1,12]
   <= 99.2
 obs_face_o41_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[41,2,12]
   <= 103.45
 obs_face_o41_e3_j12: z[13,0] - obstacle_slack + 100 alpha[41,3,12]
   <= 100.2
 obs_alpha_sum_o41_j13: alpha[41,0,13] + alpha[41,1,13] + alpha[41,2,13]
   + alpha[41,3,13] >= 1
 obs_face_o41_e0_j13: z[14,2] - obstacle_slack + 100 alpha[41,0,13]
   <= 95.95
 obs_face_o41_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[41,1,13]
   <= 99.2
 obs_face_o41_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[41,2,13]
   <= 103.45
 obs_face_o41_e3_j13: z[14,0] - obstacle_slack + 100 alpha[41,3,13]
   <= 100.2
 obs_alpha_sum_o41_j14: alpha[41,0,14] + alpha[41,1,14] + alpha[41,2,14]
   + alpha[41,3,14] >= 1
 obs_face_o41_e0_j14: z[15,2] - obstacle_slack + 100 alpha[41,0,14]
   <= 95.95
 obs_face_o41_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[41,1,14]
   <= 99.2
 obs_face_o41_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[41,2,14]
   <= 103.45
 obs_face_o41_e3_j14: z[15,0] - obstacle_slack + 100 alpha[41,3,14]
   <= 100.2
 obs_alpha_sum_o41_j15: alpha[41,0,15] + alpha[41,1,15] + alpha[41,2,15]
   + alpha[41,3,15] >= 1
 obs_face_o41_e0_j15: z[16,2] - obstacle_slack + 100 alpha[41,0,15]
   <= 95.95
 obs_face_o41_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[41,1,15]
   <= 99.2
 obs_face_o41_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[41,2,15]
   <= 103.45
 obs_face_o41_e3_j15: z[16,0] - obstacle_slack + 100 alpha[41,3,15]
   <= 100.2
 obs_alpha_sum_o41_j16: alpha[41,0,16] + alpha[41,1,16] + alpha[41,2,16]
   + alpha[41,3,16] >= 1
 obs_face_o41_e0_j16: z[17,2] - obstacle_slack + 100 alpha[41,0,16]
   <= 95.95
 obs_face_o41_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[41,1,16]
   <= 99.2
 obs_face_o41_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[41,2,16]
   <= 103.45
 obs_face_o41_e3_j16: z[17,0] - obstacle_slack + 100 alpha[41,3,16]
   <= 100.2
 obs_alpha_sum_o41_j17: alpha[41,0,17] + alpha[41,1,17] + alpha[41,2,17]
   + alpha[41,3,17] >= 1
 obs_face_o41_e0_j17: z[18,2] - obstacle_slack + 100 alpha[41,0,17]
   <= 95.95
 obs_face_o41_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[41,1,17]
   <= 99.2
 obs_face_o41_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[41,2,17]
   <= 103.45
 obs_face_o41_e3_j17: z[18,0] - obstacle_slack + 100 alpha[41,3,17]
   <= 100.2
 obs_alpha_sum_o41_j18: alpha[41,0,18] + alpha[41,1,18] + alpha[41,2,18]
   + alpha[41,3,18] >= 1
 obs_face_o41_e0_j18: z[19,2] - obstacle_slack + 100 alpha[41,0,18]
   <= 95.95
 obs_face_o41_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[41,1,18]
   <= 99.2
 obs_face_o41_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[41,2,18]
   <= 103.45
 obs_face_o41_e3_j18: z[19,0] - obstacle_slack + 100 alpha[41,3,18]
   <= 100.2
 obs_alpha_sum_o41_j19: alpha[41,0,19] + alpha[41,1,19] + alpha[41,2,19]
   + alpha[41,3,19] >= 1
 obs_face_o41_e0_j19: z[20,2] - obstacle_slack + 100 alpha[41,0,19]
   <= 95.95
 obs_face_o41_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[41,1,19]
   <= 99.2
 obs_face_o41_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[41,2,19]
   <= 103.45
 obs_face_o41_e3_j19: z[20,0] - obstacle_slack + 100 alpha[41,3,19]
   <= 100.2
 obs_alpha_sum_o41_j20: alpha[41,0,20] + alpha[41,1,20] + alpha[41,2,20]
   + alpha[41,3,20] >= 1
 obs_face_o41_e0_j20: z[21,2] - obstacle_slack + 100 alpha[41,0,20]
   <= 95.95
 obs_face_o41_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[41,1,20]
   <= 99.2
 obs_face_o41_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[41,2,20]
   <= 103.45
 obs_face_o41_e3_j20: z[21,0] - obstacle_slack + 100 alpha[41,3,20]
   <= 100.2
 obs_alpha_sum_o41_j21: alpha[41,0,21] + alpha[41,1,21] + alpha[41,2,21]
   + alpha[41,3,21] >= 1
 obs_face_o41_e0_j21: z[22,2] - obstacle_slack + 100 alpha[41,0,21]
   <= 95.95
 obs_face_o41_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[41,1,21]
   <= 99.2
 obs_face_o41_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[41,2,21]
   <= 103.45
 obs_face_o41_e3_j21: z[22,0] - obstacle_slack + 100 alpha[41,3,21]
   <= 100.2
 obs_alpha_sum_o41_j22: alpha[41,0,22] + alpha[41,1,22] + alpha[41,2,22]
   + alpha[41,3,22] >= 1
 obs_face_o41_e0_j22: z[23,2] - obstacle_slack + 100 alpha[41,0,22]
   <= 95.95
 obs_face_o41_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[41,1,22]
   <= 99.2
 obs_face_o41_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[41,2,22]
   <= 103.45
 obs_face_o41_e3_j22: z[23,0] - obstacle_slack + 100 alpha[41,3,22]
   <= 100.2
 obs_alpha_sum_o41_j23: alpha[41,0,23] + alpha[41,1,23] + alpha[41,2,23]
   + alpha[41,3,23] >= 1
 obs_face_o41_e0_j23: z[24,2] - obstacle_slack + 100 alpha[41,0,23]
   <= 95.95
 obs_face_o41_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[41,1,23]
   <= 99.2
 obs_face_o41_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[41,2,23]
   <= 103.45
 obs_face_o41_e3_j23: z[24,0] - obstacle_slack + 100 alpha[41,3,23]
   <= 100.2
 obs_alpha_sum_o41_j24: alpha[41,0,24] + alpha[41,1,24] + alpha[41,2,24]
   + alpha[41,3,24] >= 1
 obs_face_o41_e0_j24: z[25,2] - obstacle_slack + 100 alpha[41,0,24]
   <= 95.95
 obs_face_o41_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[41,1,24]
   <= 99.2
 obs_face_o41_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[41,2,24]
   <= 103.45
 obs_face_o41_e3_j24: z[25,0] - obstacle_slack + 100 alpha[41,3,24]
   <= 100.2
 obs_alpha_sum_o41_j25: alpha[41,0,25] + alpha[41,1,25] + alpha[41,2,25]
   + alpha[41,3,25] >= 1
 obs_face_o41_e0_j25: z[26,2] - obstacle_slack + 100 alpha[41,0,25]
   <= 95.95
 obs_face_o41_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[41,1,25]
   <= 99.2
 obs_face_o41_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[41,2,25]
   <= 103.45
 obs_face_o41_e3_j25: z[26,0] - obstacle_slack + 100 alpha[41,3,25]
   <= 100.2
 obs_alpha_sum_o41_j26: alpha[41,0,26] + alpha[41,1,26] + alpha[41,2,26]
   + alpha[41,3,26] >= 1
 obs_face_o41_e0_j26: z[27,2] - obstacle_slack + 100 alpha[41,0,26]
   <= 95.95
 obs_face_o41_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[41,1,26]
   <= 99.2
 obs_face_o41_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[41,2,26]
   <= 103.45
 obs_face_o41_e3_j26: z[27,0] - obstacle_slack + 100 alpha[41,3,26]
   <= 100.2
 obs_alpha_sum_o41_j27: alpha[41,0,27] + alpha[41,1,27] + alpha[41,2,27]
   + alpha[41,3,27] >= 1
 obs_face_o41_e0_j27: z[28,2] - obstacle_slack + 100 alpha[41,0,27]
   <= 95.95
 obs_face_o41_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[41,1,27]
   <= 99.2
 obs_face_o41_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[41,2,27]
   <= 103.45
 obs_face_o41_e3_j27: z[28,0] - obstacle_slack + 100 alpha[41,3,27]
   <= 100.2
 obs_alpha_sum_o41_j28: alpha[41,0,28] + alpha[41,1,28] + alpha[41,2,28]
   + alpha[41,3,28] >= 1
 obs_face_o41_e0_j28: z[29,2] - obstacle_slack + 100 alpha[41,0,28]
   <= 95.95
 obs_face_o41_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[41,1,28]
   <= 99.2
 obs_face_o41_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[41,2,28]
   <= 103.45
 obs_face_o41_e3_j28: z[29,0] - obstacle_slack + 100 alpha[41,3,28]
   <= 100.2
 obs_alpha_sum_o41_j29: alpha[41,0,29] + alpha[41,1,29] + alpha[41,2,29]
   + alpha[41,3,29] >= 1
 obs_face_o41_e0_j29: z[30,2] - obstacle_slack + 100 alpha[41,0,29]
   <= 95.95
 obs_face_o41_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[41,1,29]
   <= 99.2
 obs_face_o41_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[41,2,29]
   <= 103.45
 obs_face_o41_e3_j29: z[30,0] - obstacle_slack + 100 alpha[41,3,29]
   <= 100.2
 obs_alpha_sum_o42_j0: alpha[42,0,0] + alpha[42,1,0] + alpha[42,2,0]
   + alpha[42,3,0] >= 1
 obs_face_o42_e0_j0: z[1,2] - obstacle_slack + 100 alpha[42,0,0] <= 95.7
 obs_face_o42_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[42,1,0] <= 99.2
 obs_face_o42_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[42,2,0]
   <= 103.7
 obs_face_o42_e3_j0: z[1,0] - obstacle_slack + 100 alpha[42,3,0] <= 100.2
 obs_alpha_sum_o42_j1: alpha[42,0,1] + alpha[42,1,1] + alpha[42,2,1]
   + alpha[42,3,1] >= 1
 obs_face_o42_e0_j1: z[2,2] - obstacle_slack + 100 alpha[42,0,1] <= 95.7
 obs_face_o42_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[42,1,1] <= 99.2
 obs_face_o42_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[42,2,1]
   <= 103.7
 obs_face_o42_e3_j1: z[2,0] - obstacle_slack + 100 alpha[42,3,1] <= 100.2
 obs_alpha_sum_o42_j2: alpha[42,0,2] + alpha[42,1,2] + alpha[42,2,2]
   + alpha[42,3,2] >= 1
 obs_face_o42_e0_j2: z[3,2] - obstacle_slack + 100 alpha[42,0,2] <= 95.7
 obs_face_o42_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[42,1,2] <= 99.2
 obs_face_o42_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[42,2,2]
   <= 103.7
 obs_face_o42_e3_j2: z[3,0] - obstacle_slack + 100 alpha[42,3,2] <= 100.2
 obs_alpha_sum_o42_j3: alpha[42,0,3] + alpha[42,1,3] + alpha[42,2,3]
   + alpha[42,3,3] >= 1
 obs_face_o42_e0_j3: z[4,2] - obstacle_slack + 100 alpha[42,0,3] <= 95.7
 obs_face_o42_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[42,1,3] <= 99.2
 obs_face_o42_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[42,2,3]
   <= 103.7
 obs_face_o42_e3_j3: z[4,0] - obstacle_slack + 100 alpha[42,3,3] <= 100.2
 obs_alpha_sum_o42_j4: alpha[42,0,4] + alpha[42,1,4] + alpha[42,2,4]
   + alpha[42,3,4] >= 1
 obs_face_o42_e0_j4: z[5,2] - obstacle_slack + 100 alpha[42,0,4] <= 95.7
 obs_face_o42_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[42,1,4] <= 99.2
 obs_face_o42_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[42,2,4]
   <= 103.7
 obs_face_o42_e3_j4: z[5,0] - obstacle_slack + 100 alpha[42,3,4] <= 100.2
 obs_alpha_sum_o42_j5: alpha[42,0,5] + alpha[42,1,5] + alpha[42,2,5]
   + alpha[42,3,5] >= 1
 obs_face_o42_e0_j5: z[6,2] - obstacle_slack + 100 alpha[42,0,5] <= 95.7
 obs_face_o42_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[42,1,5] <= 99.2
 obs_face_o42_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[42,2,5]
   <= 103.7
 obs_face_o42_e3_j5: z[6,0] - obstacle_slack + 100 alpha[42,3,5] <= 100.2
 obs_alpha_sum_o42_j6: alpha[42,0,6] + alpha[42,1,6] + alpha[42,2,6]
   + alpha[42,3,6] >= 1
 obs_face_o42_e0_j6: z[7,2] - obstacle_slack + 100 alpha[42,0,6] <= 95.7
 obs_face_o42_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[42,1,6] <= 99.2
 obs_face_o42_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[42,2,6]
   <= 103.7
 obs_face_o42_e3_j6: z[7,0] - obstacle_slack + 100 alpha[42,3,6] <= 100.2
 obs_alpha_sum_o42_j7: alpha[42,0,7] + alpha[42,1,7] + alpha[42,2,7]
   + alpha[42,3,7] >= 1
 obs_face_o42_e0_j7: z[8,2] - obstacle_slack + 100 alpha[42,0,7] <= 95.7
 obs_face_o42_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[42,1,7] <= 99.2
 obs_face_o42_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[42,2,7]
   <= 103.7
 obs_face_o42_e3_j7: z[8,0] - obstacle_slack + 100 alpha[42,3,7] <= 100.2
 obs_alpha_sum_o42_j8: alpha[42,0,8] + alpha[42,1,8] + alpha[42,2,8]
   + alpha[42,3,8] >= 1
 obs_face_o42_e0_j8: z[9,2] - obstacle_slack + 100 alpha[42,0,8] <= 95.7
 obs_face_o42_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[42,1,8] <= 99.2
 obs_face_o42_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[42,2,8]
   <= 103.7
 obs_face_o42_e3_j8: z[9,0] - obstacle_slack + 100 alpha[42,3,8] <= 100.2
 obs_alpha_sum_o42_j9: alpha[42,0,9] + alpha[42,1,9] + alpha[42,2,9]
   + alpha[42,3,9] >= 1
 obs_face_o42_e0_j9: z[10,2] - obstacle_slack + 100 alpha[42,0,9] <= 95.7
 obs_face_o42_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[42,1,9]
   <= 99.2
 obs_face_o42_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[42,2,9]
   <= 103.7
 obs_face_o42_e3_j9: z[10,0] - obstacle_slack + 100 alpha[42,3,9] <= 100.2
 obs_alpha_sum_o42_j10: alpha[42,0,10] + alpha[42,1,10] + alpha[42,2,10]
   + alpha[42,3,10] >= 1
 obs_face_o42_e0_j10: z[11,2] - obstacle_slack + 100 alpha[42,0,10]
   <= 95.7
 obs_face_o42_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[42,1,10]
   <= 99.2
 obs_face_o42_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[42,2,10]
   <= 103.7
 obs_face_o42_e3_j10: z[11,0] - obstacle_slack + 100 alpha[42,3,10]
   <= 100.2
 obs_alpha_sum_o42_j11: alpha[42,0,11] + alpha[42,1,11] + alpha[42,2,11]
   + alpha[42,3,11] >= 1
 obs_face_o42_e0_j11: z[12,2] - obstacle_slack + 100 alpha[42,0,11]
   <= 95.7
 obs_face_o42_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[42,1,11]
   <= 99.2
 obs_face_o42_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[42,2,11]
   <= 103.7
 obs_face_o42_e3_j11: z[12,0] - obstacle_slack + 100 alpha[42,3,11]
   <= 100.2
 obs_alpha_sum_o42_j12: alpha[42,0,12] + alpha[42,1,12] + alpha[42,2,12]
   + alpha[42,3,12] >= 1
 obs_face_o42_e0_j12: z[13,2] - obstacle_slack + 100 alpha[42,0,12]
   <= 95.7
 obs_face_o42_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[42,1,12]
   <= 99.2
 obs_face_o42_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[42,2,12]
   <= 103.7
 obs_face_o42_e3_j12: z[13,0] - obstacle_slack + 100 alpha[42,3,12]
   <= 100.2
 obs_alpha_sum_o42_j13: alpha[42,0,13] + alpha[42,1,13] + alpha[42,2,13]
   + alpha[42,3,13] >= 1
 obs_face_o42_e0_j13: z[14,2] - obstacle_slack + 100 alpha[42,0,13]
   <= 95.7
 obs_face_o42_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[42,1,13]
   <= 99.2
 obs_face_o42_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[42,2,13]
   <= 103.7
 obs_face_o42_e3_j13: z[14,0] - obstacle_slack + 100 alpha[42,3,13]
   <= 100.2
 obs_alpha_sum_o42_j14: alpha[42,0,14] + alpha[42,1,14] + alpha[42,2,14]
   + alpha[42,3,14] >= 1
 obs_face_o42_e0_j14: z[15,2] - obstacle_slack + 100 alpha[42,0,14]
   <= 95.7
 obs_face_o42_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[42,1,14]
   <= 99.2
 obs_face_o42_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[42,2,14]
   <= 103.7
 obs_face_o42_e3_j14: z[15,0] - obstacle_slack + 100 alpha[42,3,14]
   <= 100.2
 obs_alpha_sum_o42_j15: alpha[42,0,15] + alpha[42,1,15] + alpha[42,2,15]
   + alpha[42,3,15] >= 1
 obs_face_o42_e0_j15: z[16,2] - obstacle_slack + 100 alpha[42,0,15]
   <= 95.7
 obs_face_o42_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[42,1,15]
   <= 99.2
 obs_face_o42_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[42,2,15]
   <= 103.7
 obs_face_o42_e3_j15: z[16,0] - obstacle_slack + 100 alpha[42,3,15]
   <= 100.2
 obs_alpha_sum_o42_j16: alpha[42,0,16] + alpha[42,1,16] + alpha[42,2,16]
   + alpha[42,3,16] >= 1
 obs_face_o42_e0_j16: z[17,2] - obstacle_slack + 100 alpha[42,0,16]
   <= 95.7
 obs_face_o42_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[42,1,16]
   <= 99.2
 obs_face_o42_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[42,2,16]
   <= 103.7
 obs_face_o42_e3_j16: z[17,0] - obstacle_slack + 100 alpha[42,3,16]
   <= 100.2
 obs_alpha_sum_o42_j17: alpha[42,0,17] + alpha[42,1,17] + alpha[42,2,17]
   + alpha[42,3,17] >= 1
 obs_face_o42_e0_j17: z[18,2] - obstacle_slack + 100 alpha[42,0,17]
   <= 95.7
 obs_face_o42_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[42,1,17]
   <= 99.2
 obs_face_o42_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[42,2,17]
   <= 103.7
 obs_face_o42_e3_j17: z[18,0] - obstacle_slack + 100 alpha[42,3,17]
   <= 100.2
 obs_alpha_sum_o42_j18: alpha[42,0,18] + alpha[42,1,18] + alpha[42,2,18]
   + alpha[42,3,18] >= 1
 obs_face_o42_e0_j18: z[19,2] - obstacle_slack + 100 alpha[42,0,18]
   <= 95.7
 obs_face_o42_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[42,1,18]
   <= 99.2
 obs_face_o42_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[42,2,18]
   <= 103.7
 obs_face_o42_e3_j18: z[19,0] - obstacle_slack + 100 alpha[42,3,18]
   <= 100.2
 obs_alpha_sum_o42_j19: alpha[42,0,19] + alpha[42,1,19] + alpha[42,2,19]
   + alpha[42,3,19] >= 1
 obs_face_o42_e0_j19: z[20,2] - obstacle_slack + 100 alpha[42,0,19]
   <= 95.7
 obs_face_o42_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[42,1,19]
   <= 99.2
 obs_face_o42_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[42,2,19]
   <= 103.7
 obs_face_o42_e3_j19: z[20,0] - obstacle_slack + 100 alpha[42,3,19]
   <= 100.2
 obs_alpha_sum_o42_j20: alpha[42,0,20] + alpha[42,1,20] + alpha[42,2,20]
   + alpha[42,3,20] >= 1
 obs_face_o42_e0_j20: z[21,2] - obstacle_slack + 100 alpha[42,0,20]
   <= 95.7
 obs_face_o42_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[42,1,20]
   <= 99.2
 obs_face_o42_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[42,2,20]
   <= 103.7
 obs_face_o42_e3_j20: z[21,0] - obstacle_slack + 100 alpha[42,3,20]
   <= 100.2
 obs_alpha_sum_o42_j21: alpha[42,0,21] + alpha[42,1,21] + alpha[42,2,21]
   + alpha[42,3,21] >= 1
 obs_face_o42_e0_j21: z[22,2] - obstacle_slack + 100 alpha[42,0,21]
   <= 95.7
 obs_face_o42_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[42,1,21]
   <= 99.2
 obs_face_o42_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[42,2,21]
   <= 103.7
 obs_face_o42_e3_j21: z[22,0] - obstacle_slack + 100 alpha[42,3,21]
   <= 100.2
 obs_alpha_sum_o42_j22: alpha[42,0,22] + alpha[42,1,22] + alpha[42,2,22]
   + alpha[42,3,22] >= 1
 obs_face_o42_e0_j22: z[23,2] - obstacle_slack + 100 alpha[42,0,22]
   <= 95.7
 obs_face_o42_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[42,1,22]
   <= 99.2
 obs_face_o42_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[42,2,22]
   <= 103.7
 obs_face_o42_e3_j22: z[23,0] - obstacle_slack + 100 alpha[42,3,22]
   <= 100.2
 obs_alpha_sum_o42_j23: alpha[42,0,23] + alpha[42,1,23] + alpha[42,2,23]
   + alpha[42,3,23] >= 1
 obs_face_o42_e0_j23: z[24,2] - obstacle_slack + 100 alpha[42,0,23]
   <= 95.7
 obs_face_o42_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[42,1,23]
   <= 99.2
 obs_face_o42_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[42,2,23]
   <= 103.7
 obs_face_o42_e3_j23: z[24,0] - obstacle_slack + 100 alpha[42,3,23]
   <= 100.2
 obs_alpha_sum_o42_j24: alpha[42,0,24] + alpha[42,1,24] + alpha[42,2,24]
   + alpha[42,3,24] >= 1
 obs_face_o42_e0_j24: z[25,2] - obstacle_slack + 100 alpha[42,0,24]
   <= 95.7
 obs_face_o42_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[42,1,24]
   <= 99.2
 obs_face_o42_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[42,2,24]
   <= 103.7
 obs_face_o42_e3_j24: z[25,0] - obstacle_slack + 100 alpha[42,3,24]
   <= 100.2
 obs_alpha_sum_o42_j25: alpha[42,0,25] + alpha[42,1,25] + alpha[42,2,25]
   + alpha[42,3,25] >= 1
 obs_face_o42_e0_j25: z[26,2] - obstacle_slack + 100 alpha[42,0,25]
   <= 95.7
 obs_face_o42_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[42,1,25]
   <= 99.2
 obs_face_o42_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[42,2,25]
   <= 103.7
 obs_face_o42_e3_j25: z[26,0] - obstacle_slack + 100 alpha[42,3,25]
   <= 100.2
 obs_alpha_sum_o42_j26: alpha[42,0,26] + alpha[42,1,26] + alpha[42,2,26]
   + alpha[42,3,26] >= 1
 obs_face_o42_e0_j26: z[27,2] - obstacle_slack + 100 alpha[42,0,26]
   <= 95.7
 obs_face_o42_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[42,1,26]
   <= 99.2
 obs_face_o42_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[42,2,26]
   <= 103.7
 obs_face_o42_e3_j26: z[27,0] - obstacle_slack + 100 alpha[42,3,26]
   <= 100.2
 obs_alpha_sum_o42_j27: alpha[42,0,27] + alpha[42,1,27] + alpha[42,2,27]
   + alpha[42,3,27] >= 1
 obs_face_o42_e0_j27: z[28,2] - obstacle_slack + 100 alpha[42,0,27]
   <= 95.7
 obs_face_o42_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[42,1,27]
   <= 99.2
 obs_face_o42_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[42,2,27]
   <= 103.7
 obs_face_o42_e3_j27: z[28,0] - obstacle_slack + 100 alpha[42,3,27]
   <= 100.2
 obs_alpha_sum_o42_j28: alpha[42,0,28] + alpha[42,1,28] + alpha[42,2,28]
   + alpha[42,3,28] >= 1
 obs_face_o42_e0_j28: z[29,2] - obstacle_slack + 100 alpha[42,0,28]
   <= 95.7
 obs_face_o42_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[42,1,28]
   <= 99.2
 obs_face_o42_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[42,2,28]
   <= 103.7
 obs_face_o42_e3_j28: z[29,0] - obstacle_slack + 100 alpha[42,3,28]
   <= 100.2
 obs_alpha_sum_o42_j29: alpha[42,0,29] + alpha[42,1,29] + alpha[42,2,29]
   + alpha[42,3,29] >= 1
 obs_face_o42_e0_j29: z[30,2] - obstacle_slack + 100 alpha[42,0,29]
   <= 95.7
 obs_face_o42_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[42,1,29]
   <= 99.2
 obs_face_o42_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[42,2,29]
   <= 103.7
 obs_face_o42_e3_j29: z[30,0] - obstacle_slack + 100 alpha[42,3,29]
   <= 100.2
 obs_alpha_sum_o43_j0: alpha[43,0,0] + alpha[43,1,0] + alpha[43,2,0]
   + alpha[43,3,0] >= 1
 obs_face_o43_e0_j0: z[1,2] - obstacle_slack + 100 alpha[43,0,0] <= 96.7
 obs_face_o43_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[43,1,0]
   <= 99.45
 obs_face_o43_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[43,2,0]
   <= 102.7
 obs_face_o43_e3_j0: z[1,0] - obstacle_slack + 100 alpha[43,3,0] <= 99.95
 obs_alpha_sum_o43_j1: alpha[43,0,1] + alpha[43,1,1] + alpha[43,2,1]
   + alpha[43,3,1] >= 1
 obs_face_o43_e0_j1: z[2,2] - obstacle_slack + 100 alpha[43,0,1] <= 96.7
 obs_face_o43_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[43,1,1]
   <= 99.45
 obs_face_o43_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[43,2,1]
   <= 102.7
 obs_face_o43_e3_j1: z[2,0] - obstacle_slack + 100 alpha[43,3,1] <= 99.95
 obs_alpha_sum_o43_j2: alpha[43,0,2] + alpha[43,1,2] + alpha[43,2,2]
   + alpha[43,3,2] >= 1
 obs_face_o43_e0_j2: z[3,2] - obstacle_slack + 100 alpha[43,0,2] <= 96.7
 obs_face_o43_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[43,1,2]
   <= 99.45
 obs_face_o43_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[43,2,2]
   <= 102.7
 obs_face_o43_e3_j2: z[3,0] - obstacle_slack + 100 alpha[43,3,2] <= 99.95
 obs_alpha_sum_o43_j3: alpha[43,0,3] + alpha[43,1,3] + alpha[43,2,3]
   + alpha[43,3,3] >= 1
 obs_face_o43_e0_j3: z[4,2] - obstacle_slack + 100 alpha[43,0,3] <= 96.7
 obs_face_o43_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[43,1,3]
   <= 99.45
 obs_face_o43_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[43,2,3]
   <= 102.7
 obs_face_o43_e3_j3: z[4,0] - obstacle_slack + 100 alpha[43,3,3] <= 99.95
 obs_alpha_sum_o43_j4: alpha[43,0,4] + alpha[43,1,4] + alpha[43,2,4]
   + alpha[43,3,4] >= 1
 obs_face_o43_e0_j4: z[5,2] - obstacle_slack + 100 alpha[43,0,4] <= 96.7
 obs_face_o43_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[43,1,4]
   <= 99.45
 obs_face_o43_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[43,2,4]
   <= 102.7
 obs_face_o43_e3_j4: z[5,0] - obstacle_slack + 100 alpha[43,3,4] <= 99.95
 obs_alpha_sum_o43_j5: alpha[43,0,5] + alpha[43,1,5] + alpha[43,2,5]
   + alpha[43,3,5] >= 1
 obs_face_o43_e0_j5: z[6,2] - obstacle_slack + 100 alpha[43,0,5] <= 96.7
 obs_face_o43_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[43,1,5]
   <= 99.45
 obs_face_o43_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[43,2,5]
   <= 102.7
 obs_face_o43_e3_j5: z[6,0] - obstacle_slack + 100 alpha[43,3,5] <= 99.95
 obs_alpha_sum_o43_j6: alpha[43,0,6] + alpha[43,1,6] + alpha[43,2,6]
   + alpha[43,3,6] >= 1
 obs_face_o43_e0_j6: z[7,2] - obstacle_slack + 100 alpha[43,0,6] <= 96.7
 obs_face_o43_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[43,1,6]
   <= 99.45
 obs_face_o43_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[43,2,6]
   <= 102.7
 obs_face_o43_e3_j6: z[7,0] - obstacle_slack + 100 alpha[43,3,6] <= 99.95
 obs_alpha_sum_o43_j7: alpha[43,0,7] + alpha[43,1,7] + alpha[43,2,7]
   + alpha[43,3,7] >= 1
 obs_face_o43_e0_j7: z[8,2] - obstacle_slack + 100 alpha[43,0,7] <= 96.7
 obs_face_o43_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[43,1,7]
   <= 99.45
 obs_face_o43_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[43,2,7]
   <= 102.7
 obs_face_o43_e3_j7: z[8,0] - obstacle_slack + 100 alpha[43,3,7] <= 99.95
 obs_alpha_sum_o43_j8: alpha[43,0,8] + alpha[43,1,8] + alpha[43,2,8]
   + alpha[43,3,8] >= 1
 obs_face_o43_e0_j8: z[9,2] - obstacle_slack + 100 alpha[43,0,8] <= 96.7
 obs_face_o43_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[43,1,8]
   <= 99.45
 obs_face_o43_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[43,2,8]
   <= 102.7
 obs_face_o43_e3_j8: z[9,0] - obstacle_slack + 100 alpha[43,3,8] <= 99.95
 obs_alpha_sum_o43_j9: alpha[43,0,9] + alpha[43,1,9] + alpha[43,2,9]
   + alpha[43,3,9] >= 1
 obs_face_o43_e0_j9: z[10,2] - obstacle_slack + 100 alpha[43,0,9] <= 96.7
 obs_face_o43_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[43,1,9]
   <= 99.45
 obs_face_o43_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[43,2,9]
   <= 102.7
 obs_face_o43_e3_j9: z[10,0] - obstacle_slack + 100 alpha[43,3,9] <= 99.95
 obs_alpha_sum_o43_j10: alpha[43,0,10] + alpha[43,1,10] + alpha[43,2,10]
   + alpha[43,3,10] >= 1
 obs_face_o43_e0_j10: z[11,2] - obstacle_slack + 100 alpha[43,0,10]
   <= 96.7
 obs_face_o43_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[43,1,10]
   <= 99.45
 obs_face_o43_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[43,2,10]
   <= 102.7
 obs_face_o43_e3_j10: z[11,0] - obstacle_slack + 100 alpha[43,3,10]
   <= 99.95
 obs_alpha_sum_o43_j11: alpha[43,0,11] + alpha[43,1,11] + alpha[43,2,11]
   + alpha[43,3,11] >= 1
 obs_face_o43_e0_j11: z[12,2] - obstacle_slack + 100 alpha[43,0,11]
   <= 96.7
 obs_face_o43_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[43,1,11]
   <= 99.45
 obs_face_o43_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[43,2,11]
   <= 102.7
 obs_face_o43_e3_j11: z[12,0] - obstacle_slack + 100 alpha[43,3,11]
   <= 99.95
 obs_alpha_sum_o43_j12: alpha[43,0,12] + alpha[43,1,12] + alpha[43,2,12]
   + alpha[43,3,12] >= 1
 obs_face_o43_e0_j12: z[13,2] - obstacle_slack + 100 alpha[43,0,12]
   <= 96.7
 obs_face_o43_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[43,1,12]
   <= 99.45
 obs_face_o43_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[43,2,12]
   <= 102.7
 obs_face_o43_e3_j12: z[13,0] - obstacle_slack + 100 alpha[43,3,12]
   <= 99.95
 obs_alpha_sum_o43_j13: alpha[43,0,13] + alpha[43,1,13] + alpha[43,2,13]
   + alpha[43,3,13] >= 1
 obs_face_o43_e0_j13: z[14,2] - obstacle_slack + 100 alpha[43,0,13]
   <= 96.7
 obs_face_o43_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[43,1,13]
   <= 99.45
 obs_face_o43_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[43,2,13]
   <= 102.7
 obs_face_o43_e3_j13: z[14,0] - obstacle_slack + 100 alpha[43,3,13]
   <= 99.95
 obs_alpha_sum_o43_j14: alpha[43,0,14] + alpha[43,1,14] + alpha[43,2,14]
   + alpha[43,3,14] >= 1
 obs_face_o43_e0_j14: z[15,2] - obstacle_slack + 100 alpha[43,0,14]
   <= 96.7
 obs_face_o43_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[43,1,14]
   <= 99.45
 obs_face_o43_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[43,2,14]
   <= 102.7
 obs_face_o43_e3_j14: z[15,0] - obstacle_slack + 100 alpha[43,3,14]
   <= 99.95
 obs_alpha_sum_o43_j15: alpha[43,0,15] + alpha[43,1,15] + alpha[43,2,15]
   + alpha[43,3,15] >= 1
 obs_face_o43_e0_j15: z[16,2] - obstacle_slack + 100 alpha[43,0,15]
   <= 96.7
 obs_face_o43_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[43,1,15]
   <= 99.45
 obs_face_o43_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[43,2,15]
   <= 102.7
 obs_face_o43_e3_j15: z[16,0] - obstacle_slack + 100 alpha[43,3,15]
   <= 99.95
 obs_alpha_sum_o43_j16: alpha[43,0,16] + alpha[43,1,16] + alpha[43,2,16]
   + alpha[43,3,16] >= 1
 obs_face_o43_e0_j16: z[17,2] - obstacle_slack + 100 alpha[43,0,16]
   <= 96.7
 obs_face_o43_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[43,1,16]
   <= 99.45
 obs_face_o43_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[43,2,16]
   <= 102.7
 obs_face_o43_e3_j16: z[17,0] - obstacle_slack + 100 alpha[43,3,16]
   <= 99.95
 obs_alpha_sum_o43_j17: alpha[43,0,17] + alpha[43,1,17] + alpha[43,2,17]
   + alpha[43,3,17] >= 1
 obs_face_o43_e0_j17: z[18,2] - obstacle_slack + 100 alpha[43,0,17]
   <= 96.7
 obs_face_o43_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[43,1,17]
   <= 99.45
 obs_face_o43_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[43,2,17]
   <= 102.7
 obs_face_o43_e3_j17: z[18,0] - obstacle_slack + 100 alpha[43,3,17]
   <= 99.95
 obs_alpha_sum_o43_j18: alpha[43,0,18] + alpha[43,1,18] + alpha[43,2,18]
   + alpha[43,3,18] >= 1
 obs_face_o43_e0_j18: z[19,2] - obstacle_slack + 100 alpha[43,0,18]
   <= 96.7
 obs_face_o43_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[43,1,18]
   <= 99.45
 obs_face_o43_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[43,2,18]
   <= 102.7
 obs_face_o43_e3_j18: z[19,0] - obstacle_slack + 100 alpha[43,3,18]
   <= 99.95
 obs_alpha_sum_o43_j19: alpha[43,0,19] + alpha[43,1,19] + alpha[43,2,19]
   + alpha[43,3,19] >= 1
 obs_face_o43_e0_j19: z[20,2] - obstacle_slack + 100 alpha[43,0,19]
   <= 96.7
 obs_face_o43_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[43,1,19]
   <= 99.45
 obs_face_o43_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[43,2,19]
   <= 102.7
 obs_face_o43_e3_j19: z[20,0] - obstacle_slack + 100 alpha[43,3,19]
   <= 99.95
 obs_alpha_sum_o43_j20: alpha[43,0,20] + alpha[43,1,20] + alpha[43,2,20]
   + alpha[43,3,20] >= 1
 obs_face_o43_e0_j20: z[21,2] - obstacle_slack + 100 alpha[43,0,20]
   <= 96.7
 obs_face_o43_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[43,1,20]
   <= 99.45
 obs_face_o43_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[43,2,20]
   <= 102.7
 obs_face_o43_e3_j20: z[21,0] - obstacle_slack + 100 alpha[43,3,20]
   <= 99.95
 obs_alpha_sum_o43_j21: alpha[43,0,21] + alpha[43,1,21] + alpha[43,2,21]
   + alpha[43,3,21] >= 1
 obs_face_o43_e0_j21: z[22,2] - obstacle_slack + 100 alpha[43,0,21]
   <= 96.7
 obs_face_o43_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[43,1,21]
   <= 99.45
 obs_face_o43_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[43,2,21]
   <= 102.7
 obs_face_o43_e3_j21: z[22,0] - obstacle_slack + 100 alpha[43,3,21]
   <= 99.95
 obs_alpha_sum_o43_j22: alpha[43,0,22] + alpha[43,1,22] + alpha[43,2,22]
   + alpha[43,3,22] >= 1
 obs_face_o43_e0_j22: z[23,2] - obstacle_slack + 100 alpha[43,0,22]
   <= 96.7
 obs_face_o43_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[43,1,22]
   <= 99.45
 obs_face_o43_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[43,2,22]
   <= 102.7
 obs_face_o43_e3_j22: z[23,0] - obstacle_slack + 100 alpha[43,3,22]
   <= 99.95
 obs_alpha_sum_o43_j23: alpha[43,0,23] + alpha[43,1,23] + alpha[43,2,23]
   + alpha[43,3,23] >= 1
 obs_face_o43_e0_j23: z[24,2] - obstacle_slack + 100 alpha[43,0,23]
   <= 96.7
 obs_face_o43_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[43,1,23]
   <= 99.45
 obs_face_o43_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[43,2,23]
   <= 102.7
 obs_face_o43_e3_j23: z[24,0] - obstacle_slack + 100 alpha[43,3,23]
   <= 99.95
 obs_alpha_sum_o43_j24: alpha[43,0,24] + alpha[43,1,24] + alpha[43,2,24]
   + alpha[43,3,24] >= 1
 obs_face_o43_e0_j24: z[25,2] - obstacle_slack + 100 alpha[43,0,24]
   <= 96.7
 obs_face_o43_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[43,1,24]
   <= 99.45
 obs_face_o43_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[43,2,24]
   <= 102.7
 obs_face_o43_e3_j24: z[25,0] - obstacle_slack + 100 alpha[43,3,24]
   <= 99.95
 obs_alpha_sum_o43_j25: alpha[43,0,25] + alpha[43,1,25] + alpha[43,2,25]
   + alpha[43,3,25] >= 1
 obs_face_o43_e0_j25: z[26,2] - obstacle_slack + 100 alpha[43,0,25]
   <= 96.7
 obs_face_o43_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[43,1,25]
   <= 99.45
 obs_face_o43_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[43,2,25]
   <= 102.7
 obs_face_o43_e3_j25: z[26,0] - obstacle_slack + 100 alpha[43,3,25]
   <= 99.95
 obs_alpha_sum_o43_j26: alpha[43,0,26] + alpha[43,1,26] + alpha[43,2,26]
   + alpha[43,3,26] >= 1
 obs_face_o43_e0_j26: z[27,2] - obstacle_slack + 100 alpha[43,0,26]
   <= 96.7
 obs_face_o43_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[43,1,26]
   <= 99.45
 obs_face_o43_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[43,2,26]
   <= 102.7
 obs_face_o43_e3_j26: z[27,0] - obstacle_slack + 100 alpha[43,3,26]
   <= 99.95
 obs_alpha_sum_o43_j27: alpha[43,0,27] + alpha[43,1,27] + alpha[43,2,27]
   + alpha[43,3,27] >= 1
 obs_face_o43_e0_j27: z[28,2] - obstacle_slack + 100 alpha[43,0,27]
   <= 96.7
 obs_face_o43_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[43,1,27]
   <= 99.45
 obs_face_o43_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[43,2,27]
   <= 102.7
 obs_face_o43_e3_j27: z[28,0] - obstacle_slack + 100 alpha[43,3,27]
   <= 99.95
 obs_alpha_sum_o43_j28: alpha[43,0,28] + alpha[43,1,28] + alpha[43,2,28]
   + alpha[43,3,28] >= 1
 obs_face_o43_e0_j28: z[29,2] - obstacle_slack + 100 alpha[43,0,28]
   <= 96.7
 obs_face_o43_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[43,1,28]
   <= 99.45
 obs_face_o43_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[43,2,28]
   <= 102.7
 obs_face_o43_e3_j28: z[29,0] - obstacle_slack + 100 alpha[43,3,28]
   <= 99.95
 obs_alpha_sum_o43_j29: alpha[43,0,29] + alpha[43,1,29] + alpha[43,2,29]
   + alpha[43,3,29] >= 1
 obs_face_o43_e0_j29: z[30,2] - obstacle_slack + 100 alpha[43,0,29]
   <= 96.7
 obs_face_o43_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[43,1,29]
   <= 99.45
 obs_face_o43_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[43,2,29]
   <= 102.7
 obs_face_o43_e3_j29: z[30,0] - obstacle_slack + 100 alpha[43,3,29]
   <= 99.95
 obs_alpha_sum_o44_j0: alpha[44,0,0] + alpha[44,1,0] + alpha[44,2,0]
   + alpha[44,3,0] >= 1
 obs_face_o44_e0_j0: z[1,2] - obstacle_slack + 100 alpha[44,0,0] <= 96.45
 obs_face_o44_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[44,1,0]
   <= 99.45
 obs_face_o44_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[44,2,0]
   <= 102.95
 obs_face_o44_e3_j0: z[1,0] - obstacle_slack + 100 alpha[44,3,0] <= 99.95
 obs_alpha_sum_o44_j1: alpha[44,0,1] + alpha[44,1,1] + alpha[44,2,1]
   + alpha[44,3,1] >= 1
 obs_face_o44_e0_j1: z[2,2] - obstacle_slack + 100 alpha[44,0,1] <= 96.45
 obs_face_o44_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[44,1,1]
   <= 99.45
 obs_face_o44_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[44,2,1]
   <= 102.95
 obs_face_o44_e3_j1: z[2,0] - obstacle_slack + 100 alpha[44,3,1] <= 99.95
 obs_alpha_sum_o44_j2: alpha[44,0,2] + alpha[44,1,2] + alpha[44,2,2]
   + alpha[44,3,2] >= 1
 obs_face_o44_e0_j2: z[3,2] - obstacle_slack + 100 alpha[44,0,2] <= 96.45
 obs_face_o44_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[44,1,2]
   <= 99.45
 obs_face_o44_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[44,2,2]
   <= 102.95
 obs_face_o44_e3_j2: z[3,0] - obstacle_slack + 100 alpha[44,3,2] <= 99.95
 obs_alpha_sum_o44_j3: alpha[44,0,3] + alpha[44,1,3] + alpha[44,2,3]
   + alpha[44,3,3] >= 1
 obs_face_o44_e0_j3: z[4,2] - obstacle_slack + 100 alpha[44,0,3] <= 96.45
 obs_face_o44_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[44,1,3]
   <= 99.45
 obs_face_o44_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[44,2,3]
   <= 102.95
 obs_face_o44_e3_j3: z[4,0] - obstacle_slack + 100 alpha[44,3,3] <= 99.95
 obs_alpha_sum_o44_j4: alpha[44,0,4] + alpha[44,1,4] + alpha[44,2,4]
   + alpha[44,3,4] >= 1
 obs_face_o44_e0_j4: z[5,2] - obstacle_slack + 100 alpha[44,0,4] <= 96.45
 obs_face_o44_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[44,1,4]
   <= 99.45
 obs_face_o44_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[44,2,4]
   <= 102.95
 obs_face_o44_e3_j4: z[5,0] - obstacle_slack + 100 alpha[44,3,4] <= 99.95
 obs_alpha_sum_o44_j5: alpha[44,0,5] + alpha[44,1,5] + alpha[44,2,5]
   + alpha[44,3,5] >= 1
 obs_face_o44_e0_j5: z[6,2] - obstacle_slack + 100 alpha[44,0,5] <= 96.45
 obs_face_o44_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[44,1,5]
   <= 99.45
 obs_face_o44_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[44,2,5]
   <= 102.95
 obs_face_o44_e3_j5: z[6,0] - obstacle_slack + 100 alpha[44,3,5] <= 99.95
 obs_alpha_sum_o44_j6: alpha[44,0,6] + alpha[44,1,6] + alpha[44,2,6]
   + alpha[44,3,6] >= 1
 obs_face_o44_e0_j6: z[7,2] - obstacle_slack + 100 alpha[44,0,6] <= 96.45
 obs_face_o44_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[44,1,6]
   <= 99.45
 obs_face_o44_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[44,2,6]
   <= 102.95
 obs_face_o44_e3_j6: z[7,0] - obstacle_slack + 100 alpha[44,3,6] <= 99.95
 obs_alpha_sum_o44_j7: alpha[44,0,7] + alpha[44,1,7] + alpha[44,2,7]
   + alpha[44,3,7] >= 1
 obs_face_o44_e0_j7: z[8,2] - obstacle_slack + 100 alpha[44,0,7] <= 96.45
 obs_face_o44_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[44,1,7]
   <= 99.45
 obs_face_o44_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[44,2,7]
   <= 102.95
 obs_face_o44_e3_j7: z[8,0] - obstacle_slack + 100 alpha[44,3,7] <= 99.95
 obs_alpha_sum_o44_j8: alpha[44,0,8] + alpha[44,1,8] + alpha[44,2,8]
   + alpha[44,3,8] >= 1
 obs_face_o44_e0_j8: z[9,2] - obstacle_slack + 100 alpha[44,0,8] <= 96.45
 obs_face_o44_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[44,1,8]
   <= 99.45
 obs_face_o44_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[44,2,8]
   <= 102.95
 obs_face_o44_e3_j8: z[9,0] - obstacle_slack + 100 alpha[44,3,8] <= 99.95
 obs_alpha_sum_o44_j9: alpha[44,0,9] + alpha[44,1,9] + alpha[44,2,9]
   + alpha[44,3,9] >= 1
 obs_face_o44_e0_j9: z[10,2] - obstacle_slack + 100 alpha[44,0,9] <= 96.45
 obs_face_o44_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[44,1,9]
   <= 99.45
 obs_face_o44_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[44,2,9]
   <= 102.95
 obs_face_o44_e3_j9: z[10,0] - obstacle_slack + 100 alpha[44,3,9] <= 99.95
 obs_alpha_sum_o44_j10: alpha[44,0,10] + alpha[44,1,10] + alpha[44,2,10]
   + alpha[44,3,10] >= 1
 obs_face_o44_e0_j10: z[11,2] - obstacle_slack + 100 alpha[44,0,10]
   <= 96.45
 obs_face_o44_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[44,1,10]
   <= 99.45
 obs_face_o44_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[44,2,10]
   <= 102.95
 obs_face_o44_e3_j10: z[11,0] - obstacle_slack + 100 alpha[44,3,10]
   <= 99.95
 obs_alpha_sum_o44_j11: alpha[44,0,11] + alpha[44,1,11] + alpha[44,2,11]
   + alpha[44,3,11] >= 1
 obs_face_o44_e0_j11: z[12,2] - obstacle_slack + 100 alpha[44,0,11]
   <= 96.45
 obs_face_o44_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[44,1,11]
   <= 99.45
 obs_face_o44_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[44,2,11]
   <= 102.95
 obs_face_o44_e3_j11: z[12,0] - obstacle_slack + 100 alpha[44,3,11]
   <= 99.95
 obs_alpha_sum_o44_j12: alpha[44,0,12] + alpha[44,1,12] + alpha[44,2,12]
   + alpha[44,3,12] >= 1
 obs_face_o44_e0_j12: z[13,2] - obstacle_slack + 100 alpha[44,0,12]
   <= 96.45
 obs_face_o44_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[44,1,12]
   <= 99.45
 obs_face_o44_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[44,2,12]
   <= 102.95
 obs_face_o44_e3_j12: z[13,0] - obstacle_slack + 100 alpha[44,3,12]
   <= 99.95
 obs_alpha_sum_o44_j13: alpha[44,0,13] + alpha[44,1,13] + alpha[44,2,13]
   + alpha[44,3,13] >= 1
 obs_face_o44_e0_j13: z[14,2] - obstacle_slack + 100 alpha[44,0,13]
   <= 96.45
 obs_face_o44_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[44,1,13]
   <= 99.45
 obs_face_o44_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[44,2,13]
   <= 102.95
 obs_face_o44_e3_j13: z[14,0] - obstacle_slack + 100 alpha[44,3,13]
   <= 99.95
 obs_alpha_sum_o44_j14: alpha[44,0,14] + alpha[44,1,14] + alpha[44,2,14]
   + alpha[44,3,14] >= 1
 obs_face_o44_e0_j14: z[15,2] - obstacle_slack + 100 alpha[44,0,14]
   <= 96.45
 obs_face_o44_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[44,1,14]
   <= 99.45
 obs_face_o44_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[44,2,14]
   <= 102.95
 obs_face_o44_e3_j14: z[15,0] - obstacle_slack + 100 alpha[44,3,14]
   <= 99.95
 obs_alpha_sum_o44_j15: alpha[44,0,15] + alpha[44,1,15] + alpha[44,2,15]
   + alpha[44,3,15] >= 1
 obs_face_o44_e0_j15: z[16,2] - obstacle_slack + 100 alpha[44,0,15]
   <= 96.45
 obs_face_o44_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[44,1,15]
   <= 99.45
 obs_face_o44_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[44,2,15]
   <= 102.95
 obs_face_o44_e3_j15: z[16,0] - obstacle_slack + 100 alpha[44,3,15]
   <= 99.95
 obs_alpha_sum_o44_j16: alpha[44,0,16] + alpha[44,1,16] + alpha[44,2,16]
   + alpha[44,3,16] >= 1
 obs_face_o44_e0_j16: z[17,2] - obstacle_slack + 100 alpha[44,0,16]
   <= 96.45
 obs_face_o44_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[44,1,16]
   <= 99.45
 obs_face_o44_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[44,2,16]
   <= 102.95
 obs_face_o44_e3_j16: z[17,0] - obstacle_slack + 100 alpha[44,3,16]
   <= 99.95
 obs_alpha_sum_o44_j17: alpha[44,0,17] + alpha[44,1,17] + alpha[44,2,17]
   + alpha[44,3,17] >= 1
 obs_face_o44_e0_j17: z[18,2] - obstacle_slack + 100 alpha[44,0,17]
   <= 96.45
 obs_face_o44_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[44,1,17]
   <= 99.45
 obs_face_o44_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[44,2,17]
   <= 102.95
 obs_face_o44_e3_j17: z[18,0] - obstacle_slack + 100 alpha[44,3,17]
   <= 99.95
 obs_alpha_sum_o44_j18: alpha[44,0,18] + alpha[44,1,18] + alpha[44,2,18]
   + alpha[44,3,18] >= 1
 obs_face_o44_e0_j18: z[19,2] - obstacle_slack + 100 alpha[44,0,18]
   <= 96.45
 obs_face_o44_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[44,1,18]
   <= 99.45
 obs_face_o44_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[44,2,18]
   <= 102.95
 obs_face_o44_e3_j18: z[19,0] - obstacle_slack + 100 alpha[44,3,18]
   <= 99.95
 obs_alpha_sum_o44_j19: alpha[44,0,19] + alpha[44,1,19] + alpha[44,2,19]
   + alpha[44,3,19] >= 1
 obs_face_o44_e0_j19: z[20,2] - obstacle_slack + 100 alpha[44,0,19]
   <= 96.45
 obs_face_o44_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[44,1,19]
   <= 99.45
 obs_face_o44_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[44,2,19]
   <= 102.95
 obs_face_o44_e3_j19: z[20,0] - obstacle_slack + 100 alpha[44,3,19]
   <= 99.95
 obs_alpha_sum_o44_j20: alpha[44,0,20] + alpha[44,1,20] + alpha[44,2,20]
   + alpha[44,3,20] >= 1
 obs_face_o44_e0_j20: z[21,2] - obstacle_slack + 100 alpha[44,0,20]
   <= 96.45
 obs_face_o44_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[44,1,20]
   <= 99.45
 obs_face_o44_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[44,2,20]
   <= 102.95
 obs_face_o44_e3_j20: z[21,0] - obstacle_slack + 100 alpha[44,3,20]
   <= 99.95
 obs_alpha_sum_o44_j21: alpha[44,0,21] + alpha[44,1,21] + alpha[44,2,21]
   + alpha[44,3,21] >= 1
 obs_face_o44_e0_j21: z[22,2] - obstacle_slack + 100 alpha[44,0,21]
   <= 96.45
 obs_face_o44_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[44,1,21]
   <= 99.45
 obs_face_o44_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[44,2,21]
   <= 102.95
 obs_face_o44_e3_j21: z[22,0] - obstacle_slack + 100 alpha[44,3,21]
   <= 99.95
 obs_alpha_sum_o44_j22: alpha[44,0,22] + alpha[44,1,22] + alpha[44,2,22]
   + alpha[44,3,22] >= 1
 obs_face_o44_e0_j22: z[23,2] - obstacle_slack + 100 alpha[44,0,22]
   <= 96.45
 obs_face_o44_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[44,1,22]
   <= 99.45
 obs_face_o44_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[44,2,22]
   <= 102.95
 obs_face_o44_e3_j22: z[23,0] - obstacle_slack + 100 alpha[44,3,22]
   <= 99.95
 obs_alpha_sum_o44_j23: alpha[44,0,23] + alpha[44,1,23] + alpha[44,2,23]
   + alpha[44,3,23] >= 1
 obs_face_o44_e0_j23: z[24,2] - obstacle_slack + 100 alpha[44,0,23]
   <= 96.45
 obs_face_o44_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[44,1,23]
   <= 99.45
 obs_face_o44_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[44,2,23]
   <= 102.95
 obs_face_o44_e3_j23: z[24,0] - obstacle_slack + 100 alpha[44,3,23]
   <= 99.95
 obs_alpha_sum_o44_j24: alpha[44,0,24] + alpha[44,1,24] + alpha[44,2,24]
   + alpha[44,3,24] >= 1
 obs_face_o44_e0_j24: z[25,2] - obstacle_slack + 100 alpha[44,0,24]
   <= 96.45
 obs_face_o44_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[44,1,24]
   <= 99.45
 obs_face_o44_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[44,2,24]
   <= 102.95
 obs_face_o44_e3_j24: z[25,0] - obstacle_slack + 100 alpha[44,3,24]
   <= 99.95
 obs_alpha_sum_o44_j25: alpha[44,0,25] + alpha[44,1,25] + alpha[44,2,25]
   + alpha[44,3,25] >= 1
 obs_face_o44_e0_j25: z[26,2] - obstacle_slack + 100 alpha[44,0,25]
   <= 96.45
 obs_face_o44_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[44,1,25]
   <= 99.45
 obs_face_o44_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[44,2,25]
   <= 102.95
 obs_face_o44_e3_j25: z[26,0] - obstacle_slack + 100 alpha[44,3,25]
   <= 99.95
 obs_alpha_sum_o44_j26: alpha[44,0,26] + alpha[44,1,26] + alpha[44,2,26]
   + alpha[44,3,26] >= 1
 obs_face_o44_e0_j26: z[27,2] - obstacle_slack + 100 alpha[44,0,26]
   <= 96.45
 obs_face_o44_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[44,1,26]
   <= 99.45
 obs_face_o44_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[44,2,26]
   <= 102.95
 obs_face_o44_e3_j26: z[27,0] - obstacle_slack + 100 alpha[44,3,26]
   <= 99.95
 obs_alpha_sum_o44_j27: alpha[44,0,27] + alpha[44,1,27] + alpha[44,2,27]
   + alpha[44,3,27] >= 1
 obs_face_o44_e0_j27: z[28,2] - obstacle_slack + 100 alpha[44,0,27]
   <= 96.45
 obs_face_o44_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[44,1,27]
   <= 99.45
 obs_face_o44_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[44,2,27]
   <= 102.95
 obs_face_o44_e3_j27: z[28,0] - obstacle_slack + 100 alpha[44,3,27]
   <= 99.95
 obs_alpha_sum_o44_j28: alpha[44,0,28] + alpha[44,1,28] + alpha[44,2,28]
   + alpha[44,3,28] >= 1
 obs_face_o44_e0_j28: z[29,2] - obstacle_slack + 100 alpha[44,0,28]
   <= 96.45
 obs_face_o44_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[44,1,28]
   <= 99.45
 obs_face_o44_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[44,2,28]
   <= 102.95
 obs_face_o44_e3_j28: z[29,0] - obstacle_slack + 100 alpha[44,3,28]
   <= 99.95
 obs_alpha_sum_o44_j29: alpha[44,0,29] + alpha[44,1,29] + alpha[44,2,29]
   + alpha[44,3,29] >= 1
 obs_face_o44_e0_j29: z[30,2] - obstacle_slack + 100 alpha[44,0,29]
   <= 96.45
 obs_face_o44_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[44,1,29]
   <= 99.45
 obs_face_o44_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[44,2,29]
   <= 102.95
 obs_face_o44_e3_j29: z[30,0] - obstacle_slack + 100 alpha[44,3,29]
   <= 99.95
 obs_alpha_sum_o45_j0: alpha[45,0,0] + alpha[45,1,0] + alpha[45,2,0]
   + alpha[45,3,0] >= 1
 obs_face_o45_e0_j0: z[1,2] - obstacle_slack + 100 alpha[45,0,0] <= 96.2
 obs_face_o45_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[45,1,0]
   <= 99.45
 obs_face_o45_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[45,2,0]
   <= 103.2
 obs_face_o45_e3_j0: z[1,0] - obstacle_slack + 100 alpha[45,3,0] <= 99.95
 obs_alpha_sum_o45_j1: alpha[45,0,1] + alpha[45,1,1] + alpha[45,2,1]
   + alpha[45,3,1] >= 1
 obs_face_o45_e0_j1: z[2,2] - obstacle_slack + 100 alpha[45,0,1] <= 96.2
 obs_face_o45_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[45,1,1]
   <= 99.45
 obs_face_o45_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[45,2,1]
   <= 103.2
 obs_face_o45_e3_j1: z[2,0] - obstacle_slack + 100 alpha[45,3,1] <= 99.95
 obs_alpha_sum_o45_j2: alpha[45,0,2] + alpha[45,1,2] + alpha[45,2,2]
   + alpha[45,3,2] >= 1
 obs_face_o45_e0_j2: z[3,2] - obstacle_slack + 100 alpha[45,0,2] <= 96.2
 obs_face_o45_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[45,1,2]
   <= 99.45
 obs_face_o45_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[45,2,2]
   <= 103.2
 obs_face_o45_e3_j2: z[3,0] - obstacle_slack + 100 alpha[45,3,2] <= 99.95
 obs_alpha_sum_o45_j3: alpha[45,0,3] + alpha[45,1,3] + alpha[45,2,3]
   + alpha[45,3,3] >= 1
 obs_face_o45_e0_j3: z[4,2] - obstacle_slack + 100 alpha[45,0,3] <= 96.2
 obs_face_o45_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[45,1,3]
   <= 99.45
 obs_face_o45_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[45,2,3]
   <= 103.2
 obs_face_o45_e3_j3: z[4,0] - obstacle_slack + 100 alpha[45,3,3] <= 99.95
 obs_alpha_sum_o45_j4: alpha[45,0,4] + alpha[45,1,4] + alpha[45,2,4]
   + alpha[45,3,4] >= 1
 obs_face_o45_e0_j4: z[5,2] - obstacle_slack + 100 alpha[45,0,4] <= 96.2
 obs_face_o45_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[45,1,4]
   <= 99.45
 obs_face_o45_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[45,2,4]
   <= 103.2
 obs_face_o45_e3_j4: z[5,0] - obstacle_slack + 100 alpha[45,3,4] <= 99.95
 obs_alpha_sum_o45_j5: alpha[45,0,5] + alpha[45,1,5] + alpha[45,2,5]
   + alpha[45,3,5] >= 1
 obs_face_o45_e0_j5: z[6,2] - obstacle_slack + 100 alpha[45,0,5] <= 96.2
 obs_face_o45_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[45,1,5]
   <= 99.45
 obs_face_o45_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[45,2,5]
   <= 103.2
 obs_face_o45_e3_j5: z[6,0] - obstacle_slack + 100 alpha[45,3,5] <= 99.95
 obs_alpha_sum_o45_j6: alpha[45,0,6] + alpha[45,1,6] + alpha[45,2,6]
   + alpha[45,3,6] >= 1
 obs_face_o45_e0_j6: z[7,2] - obstacle_slack + 100 alpha[45,0,6] <= 96.2
 obs_face_o45_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[45,1,6]
   <= 99.45
 obs_face_o45_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[45,2,6]
   <= 103.2
 obs_face_o45_e3_j6: z[7,0] - obstacle_slack + 100 alpha[45,3,6] <= 99.95
 obs_alpha_sum_o45_j7: alpha[45,0,7] + alpha[45,1,7] + alpha[45,2,7]
   + alpha[45,3,7] >= 1
 obs_face_o45_e0_j7: z[8,2] - obstacle_slack + 100 alpha[45,0,7] <= 96.2
 obs_face_o45_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[45,1,7]
   <= 99.45
 obs_face_o45_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[45,2,7]
   <= 103.2
 obs_face_o45_e3_j7: z[8,0] - obstacle_slack + 100 alpha[45,3,7] <= 99.95
 obs_alpha_sum_o45_j8: alpha[45,0,8] + alpha[45,1,8] + alpha[45,2,8]
   + alpha[45,3,8] >= 1
 obs_face_o45_e0_j8: z[9,2] - obstacle_slack + 100 alpha[45,0,8] <= 96.2
 obs_face_o45_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[45,1,8]
   <= 99.45
 obs_face_o45_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[45,2,8]
   <= 103.2
 obs_face_o45_e3_j8: z[9,0] - obstacle_slack + 100 alpha[45,3,8] <= 99.95
 obs_alpha_sum_o45_j9: alpha[45,0,9] + alpha[45,1,9] + alpha[45,2,9]
   + alpha[45,3,9] >= 1
 obs_face_o45_e0_j9: z[10,2] - obstacle_slack + 100 alpha[45,0,9] <= 96.2
 obs_face_o45_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[45,1,9]
   <= 99.45
 obs_face_o45_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[45,2,9]
   <= 103.2
 obs_face_o45_e3_j9: z[10,0] - obstacle_slack + 100 alpha[45,3,9] <= 99.95
 obs_alpha_sum_o45_j10: alpha[45,0,10] + alpha[45,1,10] + alpha[45,2,10]
   + alpha[45,3,10] >= 1
 obs_face_o45_e0_j10: z[11,2] - obstacle_slack + 100 alpha[45,0,10]
   <= 96.2
 obs_face_o45_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[45,1,10]
   <= 99.45
 obs_face_o45_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[45,2,10]
   <= 103.2
 obs_face_o45_e3_j10: z[11,0] - obstacle_slack + 100 alpha[45,3,10]
   <= 99.95
 obs_alpha_sum_o45_j11: alpha[45,0,11] + alpha[45,1,11] + alpha[45,2,11]
   + alpha[45,3,11] >= 1
 obs_face_o45_e0_j11: z[12,2] - obstacle_slack + 100 alpha[45,0,11]
   <= 96.2
 obs_face_o45_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[45,1,11]
   <= 99.45
 obs_face_o45_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[45,2,11]
   <= 103.2
 obs_face_o45_e3_j11: z[12,0] - obstacle_slack + 100 alpha[45,3,11]
   <= 99.95
 obs_alpha_sum_o45_j12: alpha[45,0,12] + alpha[45,1,12] + alpha[45,2,12]
   + alpha[45,3,12] >= 1
 obs_face_o45_e0_j12: z[13,2] - obstacle_slack + 100 alpha[45,0,12]
   <= 96.2
 obs_face_o45_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[45,1,12]
   <= 99.45
 obs_face_o45_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[45,2,12]
   <= 103.2
 obs_face_o45_e3_j12: z[13,0] - obstacle_slack + 100 alpha[45,3,12]
   <= 99.95
 obs_alpha_sum_o45_j13: alpha[45,0,13] + alpha[45,1,13] + alpha[45,2,13]
   + alpha[45,3,13] >= 1
 obs_face_o45_e0_j13: z[14,2] - obstacle_slack + 100 alpha[45,0,13]
   <= 96.2
 obs_face_o45_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[45,1,13]
   <= 99.45
 obs_face_o45_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[45,2,13]
   <= 103.2
 obs_face_o45_e3_j13: z[14,0] - obstacle_slack + 100 alpha[45,3,13]
   <= 99.95
 obs_alpha_sum_o45_j14: alpha[45,0,14] + alpha[45,1,14] + alpha[45,2,14]
   + alpha[45,3,14] >= 1
 obs_face_o45_e0_j14: z[15,2] - obstacle_slack + 100 alpha[45,0,14]
   <= 96.2
 obs_face_o45_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[45,1,14]
   <= 99.45
 obs_face_o45_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[45,2,14]
   <= 103.2
 obs_face_o45_e3_j14: z[15,0] - obstacle_slack + 100 alpha[45,3,14]
   <= 99.95
 obs_alpha_sum_o45_j15: alpha[45,0,15] + alpha[45,1,15] + alpha[45,2,15]
   + alpha[45,3,15] >= 1
 obs_face_o45_e0_j15: z[16,2] - obstacle_slack + 100 alpha[45,0,15]
   <= 96.2
 obs_face_o45_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[45,1,15]
   <= 99.45
 obs_face_o45_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[45,2,15]
   <= 103.2
 obs_face_o45_e3_j15: z[16,0] - obstacle_slack + 100 alpha[45,3,15]
   <= 99.95
 obs_alpha_sum_o45_j16: alpha[45,0,16] + alpha[45,1,16] + alpha[45,2,16]
   + alpha[45,3,16] >= 1
 obs_face_o45_e0_j16: z[17,2] - obstacle_slack + 100 alpha[45,0,16]
   <= 96.2
 obs_face_o45_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[45,1,16]
   <= 99.45
 obs_face_o45_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[45,2,16]
   <= 103.2
 obs_face_o45_e3_j16: z[17,0] - obstacle_slack + 100 alpha[45,3,16]
   <= 99.95
 obs_alpha_sum_o45_j17: alpha[45,0,17] + alpha[45,1,17] + alpha[45,2,17]
   + alpha[45,3,17] >= 1
 obs_face_o45_e0_j17: z[18,2] - obstacle_slack + 100 alpha[45,0,17]
   <= 96.2
 obs_face_o45_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[45,1,17]
   <= 99.45
 obs_face_o45_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[45,2,17]
   <= 103.2
 obs_face_o45_e3_j17: z[18,0] - obstacle_slack + 100 alpha[45,3,17]
   <= 99.95
 obs_alpha_sum_o45_j18: alpha[45,0,18] + alpha[45,1,18] + alpha[45,2,18]
   + alpha[45,3,18] >= 1
 obs_face_o45_e0_j18: z[19,2] - obstacle_slack + 100 alpha[45,0,18]
   <= 96.2
 obs_face_o45_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[45,1,18]
   <= 99.45
 obs_face_o45_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[45,2,18]
   <= 103.2
 obs_face_o45_e3_j18: z[19,0] - obstacle_slack + 100 alpha[45,3,18]
   <= 99.95
 obs_alpha_sum_o45_j19: alpha[45,0,19] + alpha[45,1,19] + alpha[45,2,19]
   + alpha[45,3,19] >= 1
 obs_face_o45_e0_j19: z[20,2] - obstacle_slack + 100 alpha[45,0,19]
   <= 96.2
 obs_face_o45_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[45,1,19]
   <= 99.45
 obs_face_o45_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[45,2,19]
   <= 103.2
 obs_face_o45_e3_j19: z[20,0] - obstacle_slack + 100 alpha[45,3,19]
   <= 99.95
 obs_alpha_sum_o45_j20: alpha[45,0,20] + alpha[45,1,20] + alpha[45,2,20]
   + alpha[45,3,20] >= 1
 obs_face_o45_e0_j20: z[21,2] - obstacle_slack + 100 alpha[45,0,20]
   <= 96.2
 obs_face_o45_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[45,1,20]
   <= 99.45
 obs_face_o45_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[45,2,20]
   <= 103.2
 obs_face_o45_e3_j20: z[21,0] - obstacle_slack + 100 alpha[45,3,20]
   <= 99.95
 obs_alpha_sum_o45_j21: alpha[45,0,21] + alpha[45,1,21] + alpha[45,2,21]
   + alpha[45,3,21] >= 1
 obs_face_o45_e0_j21: z[22,2] - obstacle_slack + 100 alpha[45,0,21]
   <= 96.2
 obs_face_o45_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[45,1,21]
   <= 99.45
 obs_face_o45_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[45,2,21]
   <= 103.2
 obs_face_o45_e3_j21: z[22,0] - obstacle_slack + 100 alpha[45,3,21]
   <= 99.95
 obs_alpha_sum_o45_j22: alpha[45,0,22] + alpha[45,1,22] + alpha[45,2,22]
   + alpha[45,3,22] >= 1
 obs_face_o45_e0_j22: z[23,2] - obstacle_slack + 100 alpha[45,0,22]
   <= 96.2
 obs_face_o45_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[45,1,22]
   <= 99.45
 obs_face_o45_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[45,2,22]
   <= 103.2
 obs_face_o45_e3_j22: z[23,0] - obstacle_slack + 100 alpha[45,3,22]
   <= 99.95
 obs_alpha_sum_o45_j23: alpha[45,0,23] + alpha[45,1,23] + alpha[45,2,23]
   + alpha[45,3,23] >= 1
 obs_face_o45_e0_j23: z[24,2] - obstacle_slack + 100 alpha[45,0,23]
   <= 96.2
 obs_face_o45_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[45,1,23]
   <= 99.45
 obs_face_o45_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[45,2,23]
   <= 103.2
 obs_face_o45_e3_j23: z[24,0] - obstacle_slack + 100 alpha[45,3,23]
   <= 99.95
 obs_alpha_sum_o45_j24: alpha[45,0,24] + alpha[45,1,24] + alpha[45,2,24]
   + alpha[45,3,24] >= 1
 obs_face_o45_e0_j24: z[25,2] - obstacle_slack + 100 alpha[45,0,24]
   <= 96.2
 obs_face_o45_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[45,1,24]
   <= 99.45
 obs_face_o45_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[45,2,24]
   <= 103.2
 obs_face_o45_e3_j24: z[25,0] - obstacle_slack + 100 alpha[45,3,24]
   <= 99.95
 obs_alpha_sum_o45_j25: alpha[45,0,25] + alpha[45,1,25] + alpha[45,2,25]
   + alpha[45,3,25] >= 1
 obs_face_o45_e0_j25: z[26,2] - obstacle_slack + 100 alpha[45,0,25]
   <= 96.2
 obs_face_o45_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[45,1,25]
   <= 99.45
 obs_face_o45_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[45,2,25]
   <= 103.2
 obs_face_o45_e3_j25: z[26,0] - obstacle_slack + 100 alpha[45,3,25]
   <= 99.95
 obs_alpha_sum_o45_j26: alpha[45,0,26] + alpha[45,1,26] + alpha[45,2,26]
   + alpha[45,3,26] >= 1
 obs_face_o45_e0_j26: z[27,2] - obstacle_slack + 100 alpha[45,0,26]
   <= 96.2
 obs_face_o45_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[45,1,26]
   <= 99.45
 obs_face_o45_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[45,2,26]
   <= 103.2
 obs_face_o45_e3_j26: z[27,0] - obstacle_slack + 100 alpha[45,3,26]
   <= 99.95
 obs_alpha_sum_o45_j27: alpha[45,0,27] + alpha[45,1,27] + alpha[45,2,27]
   + alpha[45,3,27] >= 1
 obs_face_o45_e0_j27: z[28,2] - obstacle_slack + 100 alpha[45,0,27]
   <= 96.2
 obs_face_o45_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[45,1,27]
   <= 99.45
 obs_face_o45_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[45,2,27]
   <= 103.2
 obs_face_o45_e3_j27: z[28,0] - obstacle_slack + 100 alpha[45,3,27]
   <= 99.95
 obs_alpha_sum_o45_j28: alpha[45,0,28] + alpha[45,1,28] + alpha[45,2,28]
   + alpha[45,3,28] >= 1
 obs_face_o45_e0_j28: z[29,2] - obstacle_slack + 100 alpha[45,0,28]
   <= 96.2
 obs_face_o45_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[45,1,28]
   <= 99.45
 obs_face_o45_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[45,2,28]
   <= 103.2
 obs_face_o45_e3_j28: z[29,0] - obstacle_slack + 100 alpha[45,3,28]
   <= 99.95
 obs_alpha_sum_o45_j29: alpha[45,0,29] + alpha[45,1,29] + alpha[45,2,29]
   + alpha[45,3,29] >= 1
 obs_face_o45_e0_j29: z[30,2] - obstacle_slack + 100 alpha[45,0,29]
   <= 96.2
 obs_face_o45_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[45,1,29]
   <= 99.45
 obs_face_o45_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[45,2,29]
   <= 103.2
 obs_face_o45_e3_j29: z[30,0] - obstacle_slack + 100 alpha[45,3,29]
   <= 99.95
 obs_alpha_sum_o46_j0: alpha[46,0,0] + alpha[46,1,0] + alpha[46,2,0]
   + alpha[46,3,0] >= 1
 obs_face_o46_e0_j0: z[1,2] - obstacle_slack + 100 alpha[46,0,0] <= 95.95
 obs_face_o46_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[46,1,0]
   <= 99.45
 obs_face_o46_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[46,2,0]
   <= 103.45
 obs_face_o46_e3_j0: z[1,0] - obstacle_slack + 100 alpha[46,3,0] <= 99.95
 obs_alpha_sum_o46_j1: alpha[46,0,1] + alpha[46,1,1] + alpha[46,2,1]
   + alpha[46,3,1] >= 1
 obs_face_o46_e0_j1: z[2,2] - obstacle_slack + 100 alpha[46,0,1] <= 95.95
 obs_face_o46_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[46,1,1]
   <= 99.45
 obs_face_o46_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[46,2,1]
   <= 103.45
 obs_face_o46_e3_j1: z[2,0] - obstacle_slack + 100 alpha[46,3,1] <= 99.95
 obs_alpha_sum_o46_j2: alpha[46,0,2] + alpha[46,1,2] + alpha[46,2,2]
   + alpha[46,3,2] >= 1
 obs_face_o46_e0_j2: z[3,2] - obstacle_slack + 100 alpha[46,0,2] <= 95.95
 obs_face_o46_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[46,1,2]
   <= 99.45
 obs_face_o46_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[46,2,2]
   <= 103.45
 obs_face_o46_e3_j2: z[3,0] - obstacle_slack + 100 alpha[46,3,2] <= 99.95
 obs_alpha_sum_o46_j3: alpha[46,0,3] + alpha[46,1,3] + alpha[46,2,3]
   + alpha[46,3,3] >= 1
 obs_face_o46_e0_j3: z[4,2] - obstacle_slack + 100 alpha[46,0,3] <= 95.95
 obs_face_o46_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[46,1,3]
   <= 99.45
 obs_face_o46_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[46,2,3]
   <= 103.45
 obs_face_o46_e3_j3: z[4,0] - obstacle_slack + 100 alpha[46,3,3] <= 99.95
 obs_alpha_sum_o46_j4: alpha[46,0,4] + alpha[46,1,4] + alpha[46,2,4]
   + alpha[46,3,4] >= 1
 obs_face_o46_e0_j4: z[5,2] - obstacle_slack + 100 alpha[46,0,4] <= 95.95
 obs_face_o46_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[46,1,4]
   <= 99.45
 obs_face_o46_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[46,2,4]
   <= 103.45
 obs_face_o46_e3_j4: z[5,0] - obstacle_slack + 100 alpha[46,3,4] <= 99.95
 obs_alpha_sum_o46_j5: alpha[46,0,5] + alpha[46,1,5] + alpha[46,2,5]
   + alpha[46,3,5] >= 1
 obs_face_o46_e0_j5: z[6,2] - obstacle_slack + 100 alpha[46,0,5] <= 95.95
 obs_face_o46_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[46,1,5]
   <= 99.45
 obs_face_o46_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[46,2,5]
   <= 103.45
 obs_face_o46_e3_j5: z[6,0] - obstacle_slack + 100 alpha[46,3,5] <= 99.95
 obs_alpha_sum_o46_j6: alpha[46,0,6] + alpha[46,1,6] + alpha[46,2,6]
   + alpha[46,3,6] >= 1
 obs_face_o46_e0_j6: z[7,2] - obstacle_slack + 100 alpha[46,0,6] <= 95.95
 obs_face_o46_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[46,1,6]
   <= 99.45
 obs_face_o46_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[46,2,6]
   <= 103.45
 obs_face_o46_e3_j6: z[7,0] - obstacle_slack + 100 alpha[46,3,6] <= 99.95
 obs_alpha_sum_o46_j7: alpha[46,0,7] + alpha[46,1,7] + alpha[46,2,7]
   + alpha[46,3,7] >= 1
 obs_face_o46_e0_j7: z[8,2] - obstacle_slack + 100 alpha[46,0,7] <= 95.95
 obs_face_o46_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[46,1,7]
   <= 99.45
 obs_face_o46_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[46,2,7]
   <= 103.45
 obs_face_o46_e3_j7: z[8,0] - obstacle_slack + 100 alpha[46,3,7] <= 99.95
 obs_alpha_sum_o46_j8: alpha[46,0,8] + alpha[46,1,8] + alpha[46,2,8]
   + alpha[46,3,8] >= 1
 obs_face_o46_e0_j8: z[9,2] - obstacle_slack + 100 alpha[46,0,8] <= 95.95
 obs_face_o46_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[46,1,8]
   <= 99.45
 obs_face_o46_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[46,2,8]
   <= 103.45
 obs_face_o46_e3_j8: z[9,0] - obstacle_slack + 100 alpha[46,3,8] <= 99.95
 obs_alpha_sum_o46_j9: alpha[46,0,9] + alpha[46,1,9] + alpha[46,2,9]
   + alpha[46,3,9] >= 1
 obs_face_o46_e0_j9: z[10,2] - obstacle_slack + 100 alpha[46,0,9] <= 95.95
 obs_face_o46_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[46,1,9]
   <= 99.45
 obs_face_o46_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[46,2,9]
   <= 103.45
 obs_face_o46_e3_j9: z[10,0] - obstacle_slack + 100 alpha[46,3,9] <= 99.95
 obs_alpha_sum_o46_j10: alpha[46,0,10] + alpha[46,1,10] + alpha[46,2,10]
   + alpha[46,3,10] >= 1
 obs_face_o46_e0_j10: z[11,2] - obstacle_slack + 100 alpha[46,0,10]
   <= 95.95
 obs_face_o46_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[46,1,10]
   <= 99.45
 obs_face_o46_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[46,2,10]
   <= 103.45
 obs_face_o46_e3_j10: z[11,0] - obstacle_slack + 100 alpha[46,3,10]
   <= 99.95
 obs_alpha_sum_o46_j11: alpha[46,0,11] + alpha[46,1,11] + alpha[46,2,11]
   + alpha[46,3,11] >= 1
 obs_face_o46_e0_j11: z[12,2] - obstacle_slack + 100 alpha[46,0,11]
   <= 95.95
 obs_face_o46_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[46,1,11]
   <= 99.45
 obs_face_o46_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[46,2,11]
   <= 103.45
 obs_face_o46_e3_j11: z[12,0] - obstacle_slack + 100 alpha[46,3,11]
   <= 99.95
 obs_alpha_sum_o46_j12: alpha[46,0,12] + alpha[46,1,12] + alpha[46,2,12]
   + alpha[46,3,12] >= 1
 obs_face_o46_e0_j12: z[13,2] - obstacle_slack + 100 alpha[46,0,12]
   <= 95.95
 obs_face_o46_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[46,1,12]
   <= 99.45
 obs_face_o46_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[46,2,12]
   <= 103.45
 obs_face_o46_e3_j12: z[13,0] - obstacle_slack + 100 alpha[46,3,12]
   <= 99.95
 obs_alpha_sum_o46_j13: alpha[46,0,13] + alpha[46,1,13] + alpha[46,2,13]
   + alpha[46,3,13] >= 1
 obs_face_o46_e0_j13: z[14,2] - obstacle_slack + 100 alpha[46,0,13]
   <= 95.95
 obs_face_o46_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[46,1,13]
   <= 99.45
 obs_face_o46_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[46,2,13]
   <= 103.45
 obs_face_o46_e3_j13: z[14,0] - obstacle_slack + 100 alpha[46,3,13]
   <= 99.95
 obs_alpha_sum_o46_j14: alpha[46,0,14] + alpha[46,1,14] + alpha[46,2,14]
   + alpha[46,3,14] >= 1
 obs_face_o46_e0_j14: z[15,2] - obstacle_slack + 100 alpha[46,0,14]
   <= 95.95
 obs_face_o46_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[46,1,14]
   <= 99.45
 obs_face_o46_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[46,2,14]
   <= 103.45
 obs_face_o46_e3_j14: z[15,0] - obstacle_slack + 100 alpha[46,3,14]
   <= 99.95
 obs_alpha_sum_o46_j15: alpha[46,0,15] + alpha[46,1,15] + alpha[46,2,15]
   + alpha[46,3,15] >= 1
 obs_face_o46_e0_j15: z[16,2] - obstacle_slack + 100 alpha[46,0,15]
   <= 95.95
 obs_face_o46_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[46,1,15]
   <= 99.45
 obs_face_o46_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[46,2,15]
   <= 103.45
 obs_face_o46_e3_j15: z[16,0] - obstacle_slack + 100 alpha[46,3,15]
   <= 99.95
 obs_alpha_sum_o46_j16: alpha[46,0,16] + alpha[46,1,16] + alpha[46,2,16]
   + alpha[46,3,16] >= 1
 obs_face_o46_e0_j16: z[17,2] - obstacle_slack + 100 alpha[46,0,16]
   <= 95.95
 obs_face_o46_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[46,1,16]
   <= 99.45
 obs_face_o46_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[46,2,16]
   <= 103.45
 obs_face_o46_e3_j16: z[17,0] - obstacle_slack + 100 alpha[46,3,16]
   <= 99.95
 obs_alpha_sum_o46_j17: alpha[46,0,17] + alpha[46,1,17] + alpha[46,2,17]
   + alpha[46,3,17] >= 1
 obs_face_o46_e0_j17: z[18,2] - obstacle_slack + 100 alpha[46,0,17]
   <= 95.95
 obs_face_o46_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[46,1,17]
   <= 99.45
 obs_face_o46_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[46,2,17]
   <= 103.45
 obs_face_o46_e3_j17: z[18,0] - obstacle_slack + 100 alpha[46,3,17]
   <= 99.95
 obs_alpha_sum_o46_j18: alpha[46,0,18] + alpha[46,1,18] + alpha[46,2,18]
   + alpha[46,3,18] >= 1
 obs_face_o46_e0_j18: z[19,2] - obstacle_slack + 100 alpha[46,0,18]
   <= 95.95
 obs_face_o46_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[46,1,18]
   <= 99.45
 obs_face_o46_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[46,2,18]
   <= 103.45
 obs_face_o46_e3_j18: z[19,0] - obstacle_slack + 100 alpha[46,3,18]
   <= 99.95
 obs_alpha_sum_o46_j19: alpha[46,0,19] + alpha[46,1,19] + alpha[46,2,19]
   + alpha[46,3,19] >= 1
 obs_face_o46_e0_j19: z[20,2] - obstacle_slack + 100 alpha[46,0,19]
   <= 95.95
 obs_face_o46_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[46,1,19]
   <= 99.45
 obs_face_o46_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[46,2,19]
   <= 103.45
 obs_face_o46_e3_j19: z[20,0] - obstacle_slack + 100 alpha[46,3,19]
   <= 99.95
 obs_alpha_sum_o46_j20: alpha[46,0,20] + alpha[46,1,20] + alpha[46,2,20]
   + alpha[46,3,20] >= 1
 obs_face_o46_e0_j20: z[21,2] - obstacle_slack + 100 alpha[46,0,20]
   <= 95.95
 obs_face_o46_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[46,1,20]
   <= 99.45
 obs_face_o46_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[46,2,20]
   <= 103.45
 obs_face_o46_e3_j20: z[21,0] - obstacle_slack + 100 alpha[46,3,20]
   <= 99.95
 obs_alpha_sum_o46_j21: alpha[46,0,21] + alpha[46,1,21] + alpha[46,2,21]
   + alpha[46,3,21] >= 1
 obs_face_o46_e0_j21: z[22,2] - obstacle_slack + 100 alpha[46,0,21]
   <= 95.95
 obs_face_o46_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[46,1,21]
   <= 99.45
 obs_face_o46_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[46,2,21]
   <= 103.45
 obs_face_o46_e3_j21: z[22,0] - obstacle_slack + 100 alpha[46,3,21]
   <= 99.95
 obs_alpha_sum_o46_j22: alpha[46,0,22] + alpha[46,1,22] + alpha[46,2,22]
   + alpha[46,3,22] >= 1
 obs_face_o46_e0_j22: z[23,2] - obstacle_slack + 100 alpha[46,0,22]
   <= 95.95
 obs_face_o46_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[46,1,22]
   <= 99.45
 obs_face_o46_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[46,2,22]
   <= 103.45
 obs_face_o46_e3_j22: z[23,0] - obstacle_slack + 100 alpha[46,3,22]
   <= 99.95
 obs_alpha_sum_o46_j23: alpha[46,0,23] + alpha[46,1,23] + alpha[46,2,23]
   + alpha[46,3,23] >= 1
 obs_face_o46_e0_j23: z[24,2] - obstacle_slack + 100 alpha[46,0,23]
   <= 95.95
 obs_face_o46_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[46,1,23]
   <= 99.45
 obs_face_o46_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[46,2,23]
   <= 103.45
 obs_face_o46_e3_j23: z[24,0] - obstacle_slack + 100 alpha[46,3,23]
   <= 99.95
 obs_alpha_sum_o46_j24: alpha[46,0,24] + alpha[46,1,24] + alpha[46,2,24]
   + alpha[46,3,24] >= 1
 obs_face_o46_e0_j24: z[25,2] - obstacle_slack + 100 alpha[46,0,24]
   <= 95.95
 obs_face_o46_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[46,1,24]
   <= 99.45
 obs_face_o46_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[46,2,24]
   <= 103.45
 obs_face_o46_e3_j24: z[25,0] - obstacle_slack + 100 alpha[46,3,24]
   <= 99.95
 obs_alpha_sum_o46_j25: alpha[46,0,25] + alpha[46,1,25] + alpha[46,2,25]
   + alpha[46,3,25] >= 1
 obs_face_o46_e0_j25: z[26,2] - obstacle_slack + 100 alpha[46,0,25]
   <= 95.95
 obs_face_o46_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[46,1,25]
   <= 99.45
 obs_face_o46_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[46,2,25]
   <= 103.45
 obs_face_o46_e3_j25: z[26,0] - obstacle_slack + 100 alpha[46,3,25]
   <= 99.95
 obs_alpha_sum_o46_j26: alpha[46,0,26] + alpha[46,1,26] + alpha[46,2,26]
   + alpha[46,3,26] >= 1
 obs_face_o46_e0_j26: z[27,2] - obstacle_slack + 100 alpha[46,0,26]
   <= 95.95
 obs_face_o46_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[46,1,26]
   <= 99.45
 obs_face_o46_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[46,2,26]
   <= 103.45
 obs_face_o46_e3_j26: z[27,0] - obstacle_slack + 100 alpha[46,3,26]
   <= 99.95
 obs_alpha_sum_o46_j27: alpha[46,0,27] + alpha[46,1,27] + alpha[46,2,27]
   + alpha[46,3,27] >= 1
 obs_face_o46_e0_j27: z[28,2] - obstacle_slack + 100 alpha[46,0,27]
   <= 95.95
 obs_face_o46_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[46,1,27]
   <= 99.45
 obs_face_o46_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[46,2,27]
   <= 103.45
 obs_face_o46_e3_j27: z[28,0] - obstacle_slack + 100 alpha[46,3,27]
   <= 99.95
 obs_alpha_sum_o46_j28: alpha[46,0,28] + alpha[46,1,28] + alpha[46,2,28]
   + alpha[46,3,28] >= 1
 obs_face_o46_e0_j28: z[29,2] - obstacle_slack + 100 alpha[46,0,28]
   <= 95.95
 obs_face_o46_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[46,1,28]
   <= 99.45
 obs_face_o46_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[46,2,28]
   <= 103.45
 obs_face_o46_e3_j28: z[29,0] - obstacle_slack + 100 alpha[46,3,28]
   <= 99.95
 obs_alpha_sum_o46_j29: alpha[46,0,29] + alpha[46,1,29] + alpha[46,2,29]
   + alpha[46,3,29] >= 1
 obs_face_o46_e0_j29: z[30,2] - obstacle_slack + 100 alpha[46,0,29]
   <= 95.95
 obs_face_o46_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[46,1,29]
   <= 99.45
 obs_face_o46_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[46,2,29]
   <= 103.45
 obs_face_o46_e3_j29: z[30,0] - obstacle_slack + 100 alpha[46,3,29]
   <= 99.95
 obs_alpha_sum_o47_j0: alpha[47,0,0] + alpha[47,1,0] + alpha[47,2,0]
   + alpha[47,3,0] >= 1
 obs_face_o47_e0_j0: z[1,2] - obstacle_slack + 100 alpha[47,0,0] <= 95.7
 obs_face_o47_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[47,1,0]
   <= 99.45
 obs_face_o47_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[47,2,0]
   <= 103.7
 obs_face_o47_e3_j0: z[1,0] - obstacle_slack + 100 alpha[47,3,0] <= 99.95
 obs_alpha_sum_o47_j1: alpha[47,0,1] + alpha[47,1,1] + alpha[47,2,1]
   + alpha[47,3,1] >= 1
 obs_face_o47_e0_j1: z[2,2] - obstacle_slack + 100 alpha[47,0,1] <= 95.7
 obs_face_o47_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[47,1,1]
   <= 99.45
 obs_face_o47_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[47,2,1]
   <= 103.7
 obs_face_o47_e3_j1: z[2,0] - obstacle_slack + 100 alpha[47,3,1] <= 99.95
 obs_alpha_sum_o47_j2: alpha[47,0,2] + alpha[47,1,2] + alpha[47,2,2]
   + alpha[47,3,2] >= 1
 obs_face_o47_e0_j2: z[3,2] - obstacle_slack + 100 alpha[47,0,2] <= 95.7
 obs_face_o47_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[47,1,2]
   <= 99.45
 obs_face_o47_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[47,2,2]
   <= 103.7
 obs_face_o47_e3_j2: z[3,0] - obstacle_slack + 100 alpha[47,3,2] <= 99.95
 obs_alpha_sum_o47_j3: alpha[47,0,3] + alpha[47,1,3] + alpha[47,2,3]
   + alpha[47,3,3] >= 1
 obs_face_o47_e0_j3: z[4,2] - obstacle_slack + 100 alpha[47,0,3] <= 95.7
 obs_face_o47_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[47,1,3]
   <= 99.45
 obs_face_o47_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[47,2,3]
   <= 103.7
 obs_face_o47_e3_j3: z[4,0] - obstacle_slack + 100 alpha[47,3,3] <= 99.95
 obs_alpha_sum_o47_j4: alpha[47,0,4] + alpha[47,1,4] + alpha[47,2,4]
   + alpha[47,3,4] >= 1
 obs_face_o47_e0_j4: z[5,2] - obstacle_slack + 100 alpha[47,0,4] <= 95.7
 obs_face_o47_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[47,1,4]
   <= 99.45
 obs_face_o47_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[47,2,4]
   <= 103.7
 obs_face_o47_e3_j4: z[5,0] - obstacle_slack + 100 alpha[47,3,4] <= 99.95
 obs_alpha_sum_o47_j5: alpha[47,0,5] + alpha[47,1,5] + alpha[47,2,5]
   + alpha[47,3,5] >= 1
 obs_face_o47_e0_j5: z[6,2] - obstacle_slack + 100 alpha[47,0,5] <= 95.7
 obs_face_o47_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[47,1,5]
   <= 99.45
 obs_face_o47_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[47,2,5]
   <= 103.7
 obs_face_o47_e3_j5: z[6,0] - obstacle_slack + 100 alpha[47,3,5] <= 99.95
 obs_alpha_sum_o47_j6: alpha[47,0,6] + alpha[47,1,6] + alpha[47,2,6]
   + alpha[47,3,6] >= 1
 obs_face_o47_e0_j6: z[7,2] - obstacle_slack + 100 alpha[47,0,6] <= 95.7
 obs_face_o47_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[47,1,6]
   <= 99.45
 obs_face_o47_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[47,2,6]
   <= 103.7
 obs_face_o47_e3_j6: z[7,0] - obstacle_slack + 100 alpha[47,3,6] <= 99.95
 obs_alpha_sum_o47_j7: alpha[47,0,7] + alpha[47,1,7] + alpha[47,2,7]
   + alpha[47,3,7] >= 1
 obs_face_o47_e0_j7: z[8,2] - obstacle_slack + 100 alpha[47,0,7] <= 95.7
 obs_face_o47_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[47,1,7]
   <= 99.45
 obs_face_o47_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[47,2,7]
   <= 103.7
 obs_face_o47_e3_j7: z[8,0] - obstacle_slack + 100 alpha[47,3,7] <= 99.95
 obs_alpha_sum_o47_j8: alpha[47,0,8] + alpha[47,1,8] + alpha[47,2,8]
   + alpha[47,3,8] >= 1
 obs_face_o47_e0_j8: z[9,2] - obstacle_slack + 100 alpha[47,0,8] <= 95.7
 obs_face_o47_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[47,1,8]
   <= 99.45
 obs_face_o47_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[47,2,8]
   <= 103.7
 obs_face_o47_e3_j8: z[9,0] - obstacle_slack + 100 alpha[47,3,8] <= 99.95
 obs_alpha_sum_o47_j9: alpha[47,0,9] + alpha[47,1,9] + alpha[47,2,9]
   + alpha[47,3,9] >= 1
 obs_face_o47_e0_j9: z[10,2] - obstacle_slack + 100 alpha[47,0,9] <= 95.7
 obs_face_o47_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[47,1,9]
   <= 99.45
 obs_face_o47_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[47,2,9]
   <= 103.7
 obs_face_o47_e3_j9: z[10,0] - obstacle_slack + 100 alpha[47,3,9] <= 99.95
 obs_alpha_sum_o47_j10: alpha[47,0,10] + alpha[47,1,10] + alpha[47,2,10]
   + alpha[47,3,10] >= 1
 obs_face_o47_e0_j10: z[11,2] - obstacle_slack + 100 alpha[47,0,10]
   <= 95.7
 obs_face_o47_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[47,1,10]
   <= 99.45
 obs_face_o47_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[47,2,10]
   <= 103.7
 obs_face_o47_e3_j10: z[11,0] - obstacle_slack + 100 alpha[47,3,10]
   <= 99.95
 obs_alpha_sum_o47_j11: alpha[47,0,11] + alpha[47,1,11] + alpha[47,2,11]
   + alpha[47,3,11] >= 1
 obs_face_o47_e0_j11: z[12,2] - obstacle_slack + 100 alpha[47,0,11]
   <= 95.7
 obs_face_o47_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[47,1,11]
   <= 99.45
 obs_face_o47_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[47,2,11]
   <= 103.7
 obs_face_o47_e3_j11: z[12,0] - obstacle_slack + 100 alpha[47,3,11]
   <= 99.95
 obs_alpha_sum_o47_j12: alpha[47,0,12] + alpha[47,1,12] + alpha[47,2,12]
   + alpha[47,3,12] >= 1
 obs_face_o47_e0_j12: z[13,2] - obstacle_slack + 100 alpha[47,0,12]
   <= 95.7
 obs_face_o47_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[47,1,12]
   <= 99.45
 obs_face_o47_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[47,2,12]
   <= 103.7
 obs_face_o47_e3_j12: z[13,0] - obstacle_slack + 100 alpha[47,3,12]
   <= 99.95
 obs_alpha_sum_o47_j13: alpha[47,0,13] + alpha[47,1,13] + alpha[47,2,13]
   + alpha[47,3,13] >= 1
 obs_face_o47_e0_j13: z[14,2] - obstacle_slack + 100 alpha[47,0,13]
   <= 95.7
 obs_face_o47_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[47,1,13]
   <= 99.45
 obs_face_o47_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[47,2,13]
   <= 103.7
 obs_face_o47_e3_j13: z[14,0] - obstacle_slack + 100 alpha[47,3,13]
   <= 99.95
 obs_alpha_sum_o47_j14: alpha[47,0,14] + alpha[47,1,14] + alpha[47,2,14]
   + alpha[47,3,14] >= 1
 obs_face_o47_e0_j14: z[15,2] - obstacle_slack + 100 alpha[47,0,14]
   <= 95.7
 obs_face_o47_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[47,1,14]
   <= 99.45
 obs_face_o47_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[47,2,14]
   <= 103.7
 obs_face_o47_e3_j14: z[15,0] - obstacle_slack + 100 alpha[47,3,14]
   <= 99.95
 obs_alpha_sum_o47_j15: alpha[47,0,15] + alpha[47,1,15] + alpha[47,2,15]
   + alpha[47,3,15] >= 1
 obs_face_o47_e0_j15: z[16,2] - obstacle_slack + 100 alpha[47,0,15]
   <= 95.7
 obs_face_o47_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[47,1,15]
   <= 99.45
 obs_face_o47_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[47,2,15]
   <= 103.7
 obs_face_o47_e3_j15: z[16,0] - obstacle_slack + 100 alpha[47,3,15]
   <= 99.95
 obs_alpha_sum_o47_j16: alpha[47,0,16] + alpha[47,1,16] + alpha[47,2,16]
   + alpha[47,3,16] >= 1
 obs_face_o47_e0_j16: z[17,2] - obstacle_slack + 100 alpha[47,0,16]
   <= 95.7
 obs_face_o47_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[47,1,16]
   <= 99.45
 obs_face_o47_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[47,2,16]
   <= 103.7
 obs_face_o47_e3_j16: z[17,0] - obstacle_slack + 100 alpha[47,3,16]
   <= 99.95
 obs_alpha_sum_o47_j17: alpha[47,0,17] + alpha[47,1,17] + alpha[47,2,17]
   + alpha[47,3,17] >= 1
 obs_face_o47_e0_j17: z[18,2] - obstacle_slack + 100 alpha[47,0,17]
   <= 95.7
 obs_face_o47_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[47,1,17]
   <= 99.45
 obs_face_o47_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[47,2,17]
   <= 103.7
 obs_face_o47_e3_j17: z[18,0] - obstacle_slack + 100 alpha[47,3,17]
   <= 99.95
 obs_alpha_sum_o47_j18: alpha[47,0,18] + alpha[47,1,18] + alpha[47,2,18]
   + alpha[47,3,18] >= 1
 obs_face_o47_e0_j18: z[19,2] - obstacle_slack + 100 alpha[47,0,18]
   <= 95.7
 obs_face_o47_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[47,1,18]
   <= 99.45
 obs_face_o47_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[47,2,18]
   <= 103.7
 obs_face_o47_e3_j18: z[19,0] - obstacle_slack + 100 alpha[47,3,18]
   <= 99.95
 obs_alpha_sum_o47_j19: alpha[47,0,19] + alpha[47,1,19] + alpha[47,2,19]
   + alpha[47,3,19] >= 1
 obs_face_o47_e0_j19: z[20,2] - obstacle_slack + 100 alpha[47,0,19]
   <= 95.7
 obs_face_o47_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[47,1,19]
   <= 99.45
 obs_face_o47_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[47,2,19]
   <= 103.7
 obs_face_o47_e3_j19: z[20,0] - obstacle_slack + 100 alpha[47,3,19]
   <= 99.95
 obs_alpha_sum_o47_j20: alpha[47,0,20] + alpha[47,1,20] + alpha[47,2,20]
   + alpha[47,3,20] >= 1
 obs_face_o47_e0_j20: z[21,2] - obstacle_slack + 100 alpha[47,0,20]
   <= 95.7
 obs_face_o47_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[47,1,20]
   <= 99.45
 obs_face_o47_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[47,2,20]
   <= 103.7
 obs_face_o47_e3_j20: z[21,0] - obstacle_slack + 100 alpha[47,3,20]
   <= 99.95
 obs_alpha_sum_o47_j21: alpha[47,0,21] + alpha[47,1,21] + alpha[47,2,21]
   + alpha[47,3,21] >= 1
 obs_face_o47_e0_j21: z[22,2] - obstacle_slack + 100 alpha[47,0,21]
   <= 95.7
 obs_face_o47_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[47,1,21]
   <= 99.45
 obs_face_o47_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[47,2,21]
   <= 103.7
 obs_face_o47_e3_j21: z[22,0] - obstacle_slack + 100 alpha[47,3,21]
   <= 99.95
 obs_alpha_sum_o47_j22: alpha[47,0,22] + alpha[47,1,22] + alpha[47,2,22]
   + alpha[47,3,22] >= 1
 obs_face_o47_e0_j22: z[23,2] - obstacle_slack + 100 alpha[47,0,22]
   <= 95.7
 obs_face_o47_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[47,1,22]
   <= 99.45
 obs_face_o47_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[47,2,22]
   <= 103.7
 obs_face_o47_e3_j22: z[23,0] - obstacle_slack + 100 alpha[47,3,22]
   <= 99.95
 obs_alpha_sum_o47_j23: alpha[47,0,23] + alpha[47,1,23] + alpha[47,2,23]
   + alpha[47,3,23] >= 1
 obs_face_o47_e0_j23: z[24,2] - obstacle_slack + 100 alpha[47,0,23]
   <= 95.7
 obs_face_o47_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[47,1,23]
   <= 99.45
 obs_face_o47_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[47,2,23]
   <= 103.7
 obs_face_o47_e3_j23: z[24,0] - obstacle_slack + 100 alpha[47,3,23]
   <= 99.95
 obs_alpha_sum_o47_j24: alpha[47,0,24] + alpha[47,1,24] + alpha[47,2,24]
   + alpha[47,3,24] >= 1
 obs_face_o47_e0_j24: z[25,2] - obstacle_slack + 100 alpha[47,0,24]
   <= 95.7
 obs_face_o47_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[47,1,24]
   <= 99.45
 obs_face_o47_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[47,2,24]
   <= 103.7
 obs_face_o47_e3_j24: z[25,0] - obstacle_slack + 100 alpha[47,3,24]
   <= 99.95
 obs_alpha_sum_o47_j25: alpha[47,0,25] + alpha[47,1,25] + alpha[47,2,25]
   + alpha[47,3,25] >= 1
 obs_face_o47_e0_j25: z[26,2] - obstacle_slack + 100 alpha[47,0,25]
   <= 95.7
 obs_face_o47_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[47,1,25]
   <= 99.45
 obs_face_o47_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[47,2,25]
   <= 103.7
 obs_face_o47_e3_j25: z[26,0] - obstacle_slack + 100 alpha[47,3,25]
   <= 99.95
 obs_alpha_sum_o47_j26: alpha[47,0,26] + alpha[47,1,26] + alpha[47,2,26]
   + alpha[47,3,26] >= 1
 obs_face_o47_e0_j26: z[27,2] - obstacle_slack + 100 alpha[47,0,26]
   <= 95.7
 obs_face_o47_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[47,1,26]
   <= 99.45
 obs_face_o47_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[47,2,26]
   <= 103.7
 obs_face_o47_e3_j26: z[27,0] - obstacle_slack + 100 alpha[47,3,26]
   <= 99.95
 obs_alpha_sum_o47_j27: alpha[47,0,27] + alpha[47,1,27] + alpha[47,2,27]
   + alpha[47,3,27] >= 1
 obs_face_o47_e0_j27: z[28,2] - obstacle_slack + 100 alpha[47,0,27]
   <= 95.7
 obs_face_o47_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[47,1,27]
   <= 99.45
 obs_face_o47_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[47,2,27]
   <= 103.7
 obs_face_o47_e3_j27: z[28,0] - obstacle_slack + 100 alpha[47,3,27]
   <= 99.95
 obs_alpha_sum_o47_j28: alpha[47,0,28] + alpha[47,1,28] + alpha[47,2,28]
   + alpha[47,3,28] >= 1
 obs_face_o47_e0_j28: z[29,2] - obstacle_slack + 100 alpha[47,0,28]
   <= 95.7
 obs_face_o47_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[47,1,28]
   <= 99.45
 obs_face_o47_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[47,2,28]
   <= 103.7
 obs_face_o47_e3_j28: z[29,0] - obstacle_slack + 100 alpha[47,3,28]
   <= 99.95
 obs_alpha_sum_o47_j29: alpha[47,0,29] + alpha[47,1,29] + alpha[47,2,29]
   + alpha[47,3,29] >= 1
 obs_face_o47_e0_j29: z[30,2] - obstacle_slack + 100 alpha[47,0,29]
   <= 95.7
 obs_face_o47_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[47,1,29]
   <= 99.45
 obs_face_o47_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[47,2,29]
   <= 103.7
 obs_face_o47_e3_j29: z[30,0] - obstacle_slack + 100 alpha[47,3,29]
   <= 99.95
 obs_alpha_sum_o48_j0: alpha[48,0,0] + alpha[48,1,0] + alpha[48,2,0]
   + alpha[48,3,0] >= 1
 obs_face_o48_e0_j0: z[1,2] - obstacle_slack + 100 alpha[48,0,0] <= 96.7
 obs_face_o48_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[48,1,0] <= 99.7
 obs_face_o48_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[48,2,0]
   <= 102.7
 obs_face_o48_e3_j0: z[1,0] - obstacle_slack + 100 alpha[48,3,0] <= 99.7
 obs_alpha_sum_o48_j1: alpha[48,0,1] + alpha[48,1,1] + alpha[48,2,1]
   + alpha[48,3,1] >= 1
 obs_face_o48_e0_j1: z[2,2] - obstacle_slack + 100 alpha[48,0,1] <= 96.7
 obs_face_o48_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[48,1,1] <= 99.7
 obs_face_o48_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[48,2,1]
   <= 102.7
 obs_face_o48_e3_j1: z[2,0] - obstacle_slack + 100 alpha[48,3,1] <= 99.7
 obs_alpha_sum_o48_j2: alpha[48,0,2] + alpha[48,1,2] + alpha[48,2,2]
   + alpha[48,3,2] >= 1
 obs_face_o48_e0_j2: z[3,2] - obstacle_slack + 100 alpha[48,0,2] <= 96.7
 obs_face_o48_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[48,1,2] <= 99.7
 obs_face_o48_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[48,2,2]
   <= 102.7
 obs_face_o48_e3_j2: z[3,0] - obstacle_slack + 100 alpha[48,3,2] <= 99.7
 obs_alpha_sum_o48_j3: alpha[48,0,3] + alpha[48,1,3] + alpha[48,2,3]
   + alpha[48,3,3] >= 1
 obs_face_o48_e0_j3: z[4,2] - obstacle_slack + 100 alpha[48,0,3] <= 96.7
 obs_face_o48_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[48,1,3] <= 99.7
 obs_face_o48_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[48,2,3]
   <= 102.7
 obs_face_o48_e3_j3: z[4,0] - obstacle_slack + 100 alpha[48,3,3] <= 99.7
 obs_alpha_sum_o48_j4: alpha[48,0,4] + alpha[48,1,4] + alpha[48,2,4]
   + alpha[48,3,4] >= 1
 obs_face_o48_e0_j4: z[5,2] - obstacle_slack + 100 alpha[48,0,4] <= 96.7
 obs_face_o48_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[48,1,4] <= 99.7
 obs_face_o48_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[48,2,4]
   <= 102.7
 obs_face_o48_e3_j4: z[5,0] - obstacle_slack + 100 alpha[48,3,4] <= 99.7
 obs_alpha_sum_o48_j5: alpha[48,0,5] + alpha[48,1,5] + alpha[48,2,5]
   + alpha[48,3,5] >= 1
 obs_face_o48_e0_j5: z[6,2] - obstacle_slack + 100 alpha[48,0,5] <= 96.7
 obs_face_o48_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[48,1,5] <= 99.7
 obs_face_o48_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[48,2,5]
   <= 102.7
 obs_face_o48_e3_j5: z[6,0] - obstacle_slack + 100 alpha[48,3,5] <= 99.7
 obs_alpha_sum_o48_j6: alpha[48,0,6] + alpha[48,1,6] + alpha[48,2,6]
   + alpha[48,3,6] >= 1
 obs_face_o48_e0_j6: z[7,2] - obstacle_slack + 100 alpha[48,0,6] <= 96.7
 obs_face_o48_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[48,1,6] <= 99.7
 obs_face_o48_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[48,2,6]
   <= 102.7
 obs_face_o48_e3_j6: z[7,0] - obstacle_slack + 100 alpha[48,3,6] <= 99.7
 obs_alpha_sum_o48_j7: alpha[48,0,7] + alpha[48,1,7] + alpha[48,2,7]
   + alpha[48,3,7] >= 1
 obs_face_o48_e0_j7: z[8,2] - obstacle_slack + 100 alpha[48,0,7] <= 96.7
 obs_face_o48_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[48,1,7] <= 99.7
 obs_face_o48_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[48,2,7]
   <= 102.7
 obs_face_o48_e3_j7: z[8,0] - obstacle_slack + 100 alpha[48,3,7] <= 99.7
 obs_alpha_sum_o48_j8: alpha[48,0,8] + alpha[48,1,8] + alpha[48,2,8]
   + alpha[48,3,8] >= 1
 obs_face_o48_e0_j8: z[9,2] - obstacle_slack + 100 alpha[48,0,8] <= 96.7
 obs_face_o48_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[48,1,8] <= 99.7
 obs_face_o48_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[48,2,8]
   <= 102.7
 obs_face_o48_e3_j8: z[9,0] - obstacle_slack + 100 alpha[48,3,8] <= 99.7
 obs_alpha_sum_o48_j9: alpha[48,0,9] + alpha[48,1,9] + alpha[48,2,9]
   + alpha[48,3,9] >= 1
 obs_face_o48_e0_j9: z[10,2] - obstacle_slack + 100 alpha[48,0,9] <= 96.7
 obs_face_o48_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[48,1,9]
   <= 99.7
 obs_face_o48_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[48,2,9]
   <= 102.7
 obs_face_o48_e3_j9: z[10,0] - obstacle_slack + 100 alpha[48,3,9] <= 99.7
 obs_alpha_sum_o48_j10: alpha[48,0,10] + alpha[48,1,10] + alpha[48,2,10]
   + alpha[48,3,10] >= 1
 obs_face_o48_e0_j10: z[11,2] - obstacle_slack + 100 alpha[48,0,10]
   <= 96.7
 obs_face_o48_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[48,1,10]
   <= 99.7
 obs_face_o48_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[48,2,10]
   <= 102.7
 obs_face_o48_e3_j10: z[11,0] - obstacle_slack + 100 alpha[48,3,10]
   <= 99.7
 obs_alpha_sum_o48_j11: alpha[48,0,11] + alpha[48,1,11] + alpha[48,2,11]
   + alpha[48,3,11] >= 1
 obs_face_o48_e0_j11: z[12,2] - obstacle_slack + 100 alpha[48,0,11]
   <= 96.7
 obs_face_o48_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[48,1,11]
   <= 99.7
 obs_face_o48_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[48,2,11]
   <= 102.7
 obs_face_o48_e3_j11: z[12,0] - obstacle_slack + 100 alpha[48,3,11]
   <= 99.7
 obs_alpha_sum_o48_j12: alpha[48,0,12] + alpha[48,1,12] + alpha[48,2,12]
   + alpha[48,3,12] >= 1
 obs_face_o48_e0_j12: z[13,2] - obstacle_slack + 100 alpha[48,0,12]
   <= 96.7
 obs_face_o48_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[48,1,12]
   <= 99.7
 obs_face_o48_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[48,2,12]
   <= 102.7
 obs_face_o48_e3_j12: z[13,0] - obstacle_slack + 100 alpha[48,3,12]
   <= 99.7
 obs_alpha_sum_o48_j13: alpha[48,0,13] + alpha[48,1,13] + alpha[48,2,13]
   + alpha[48,3,13] >= 1
 obs_face_o48_e0_j13: z[14,2] - obstacle_slack + 100 alpha[48,0,13]
   <= 96.7
 obs_face_o48_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[48,1,13]
   <= 99.7
 obs_face_o48_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[48,2,13]
   <= 102.7
 obs_face_o48_e3_j13: z[14,0] - obstacle_slack + 100 alpha[48,3,13]
   <= 99.7
 obs_alpha_sum_o48_j14: alpha[48,0,14] + alpha[48,1,14] + alpha[48,2,14]
   + alpha[48,3,14] >= 1
 obs_face_o48_e0_j14: z[15,2] - obstacle_slack + 100 alpha[48,0,14]
   <= 96.7
 obs_face_o48_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[48,1,14]
   <= 99.7
 obs_face_o48_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[48,2,14]
   <= 102.7
 obs_face_o48_e3_j14: z[15,0] - obstacle_slack + 100 alpha[48,3,14]
   <= 99.7
 obs_alpha_sum_o48_j15: alpha[48,0,15] + alpha[48,1,15] + alpha[48,2,15]
   + alpha[48,3,15] >= 1
 obs_face_o48_e0_j15: z[16,2] - obstacle_slack + 100 alpha[48,0,15]
   <= 96.7
 obs_face_o48_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[48,1,15]
   <= 99.7
 obs_face_o48_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[48,2,15]
   <= 102.7
 obs_face_o48_e3_j15: z[16,0] - obstacle_slack + 100 alpha[48,3,15]
   <= 99.7
 obs_alpha_sum_o48_j16: alpha[48,0,16] + alpha[48,1,16] + alpha[48,2,16]
   + alpha[48,3,16] >= 1
 obs_face_o48_e0_j16: z[17,2] - obstacle_slack + 100 alpha[48,0,16]
   <= 96.7
 obs_face_o48_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[48,1,16]
   <= 99.7
 obs_face_o48_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[48,2,16]
   <= 102.7
 obs_face_o48_e3_j16: z[17,0] - obstacle_slack + 100 alpha[48,3,16]
   <= 99.7
 obs_alpha_sum_o48_j17: alpha[48,0,17] + alpha[48,1,17] + alpha[48,2,17]
   + alpha[48,3,17] >= 1
 obs_face_o48_e0_j17: z[18,2] - obstacle_slack + 100 alpha[48,0,17]
   <= 96.7
 obs_face_o48_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[48,1,17]
   <= 99.7
 obs_face_o48_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[48,2,17]
   <= 102.7
 obs_face_o48_e3_j17: z[18,0] - obstacle_slack + 100 alpha[48,3,17]
   <= 99.7
 obs_alpha_sum_o48_j18: alpha[48,0,18] + alpha[48,1,18] + alpha[48,2,18]
   + alpha[48,3,18] >= 1
 obs_face_o48_e0_j18: z[19,2] - obstacle_slack + 100 alpha[48,0,18]
   <= 96.7
 obs_face_o48_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[48,1,18]
   <= 99.7
 obs_face_o48_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[48,2,18]
   <= 102.7
 obs_face_o48_e3_j18: z[19,0] - obstacle_slack + 100 alpha[48,3,18]
   <= 99.7
 obs_alpha_sum_o48_j19: alpha[48,0,19] + alpha[48,1,19] + alpha[48,2,19]
   + alpha[48,3,19] >= 1
 obs_face_o48_e0_j19: z[20,2] - obstacle_slack + 100 alpha[48,0,19]
   <= 96.7
 obs_face_o48_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[48,1,19]
   <= 99.7
 obs_face_o48_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[48,2,19]
   <= 102.7
 obs_face_o48_e3_j19: z[20,0] - obstacle_slack + 100 alpha[48,3,19]
   <= 99.7
 obs_alpha_sum_o48_j20: alpha[48,0,20] + alpha[48,1,20] + alpha[48,2,20]
   + alpha[48,3,20] >= 1
 obs_face_o48_e0_j20: z[21,2] - obstacle_slack + 100 alpha[48,0,20]
   <= 96.7
 obs_face_o48_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[48,1,20]
   <= 99.7
 obs_face_o48_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[48,2,20]
   <= 102.7
 obs_face_o48_e3_j20: z[21,0] - obstacle_slack + 100 alpha[48,3,20]
   <= 99.7
 obs_alpha_sum_o48_j21: alpha[48,0,21] + alpha[48,1,21] + alpha[48,2,21]
   + alpha[48,3,21] >= 1
 obs_face_o48_e0_j21: z[22,2] - obstacle_slack + 100 alpha[48,0,21]
   <= 96.7
 obs_face_o48_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[48,1,21]
   <= 99.7
 obs_face_o48_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[48,2,21]
   <= 102.7
 obs_face_o48_e3_j21: z[22,0] - obstacle_slack + 100 alpha[48,3,21]
   <= 99.7
 obs_alpha_sum_o48_j22: alpha[48,0,22] + alpha[48,1,22] + alpha[48,2,22]
   + alpha[48,3,22] >= 1
 obs_face_o48_e0_j22: z[23,2] - obstacle_slack + 100 alpha[48,0,22]
   <= 96.7
 obs_face_o48_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[48,1,22]
   <= 99.7
 obs_face_o48_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[48,2,22]
   <= 102.7
 obs_face_o48_e3_j22: z[23,0] - obstacle_slack + 100 alpha[48,3,22]
   <= 99.7
 obs_alpha_sum_o48_j23: alpha[48,0,23] + alpha[48,1,23] + alpha[48,2,23]
   + alpha[48,3,23] >= 1
 obs_face_o48_e0_j23: z[24,2] - obstacle_slack + 100 alpha[48,0,23]
   <= 96.7
 obs_face_o48_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[48,1,23]
   <= 99.7
 obs_face_o48_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[48,2,23]
   <= 102.7
 obs_face_o48_e3_j23: z[24,0] - obstacle_slack + 100 alpha[48,3,23]
   <= 99.7
 obs_alpha_sum_o48_j24: alpha[48,0,24] + alpha[48,1,24] + alpha[48,2,24]
   + alpha[48,3,24] >= 1
 obs_face_o48_e0_j24: z[25,2] - obstacle_slack + 100 alpha[48,0,24]
   <= 96.7
 obs_face_o48_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[48,1,24]
   <= 99.7
 obs_face_o48_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[48,2,24]
   <= 102.7
 obs_face_o48_e3_j24: z[25,0] - obstacle_slack + 100 alpha[48,3,24]
   <= 99.7
 obs_alpha_sum_o48_j25: alpha[48,0,25] + alpha[48,1,25] + alpha[48,2,25]
   + alpha[48,3,25] >= 1
 obs_face_o48_e0_j25: z[26,2] - obstacle_slack + 100 alpha[48,0,25]
   <= 96.7
 obs_face_o48_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[48,1,25]
   <= 99.7
 obs_face_o48_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[48,2,25]
   <= 102.7
 obs_face_o48_e3_j25: z[26,0] - obstacle_slack + 100 alpha[48,3,25]
   <= 99.7
 obs_alpha_sum_o48_j26: alpha[48,0,26] + alpha[48,1,26] + alpha[48,2,26]
   + alpha[48,3,26] >= 1
 obs_face_o48_e0_j26: z[27,2] - obstacle_slack + 100 alpha[48,0,26]
   <= 96.7
 obs_face_o48_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[48,1,26]
   <= 99.7
 obs_face_o48_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[48,2,26]
   <= 102.7
 obs_face_o48_e3_j26: z[27,0] - obstacle_slack + 100 alpha[48,3,26]
   <= 99.7
 obs_alpha_sum_o48_j27: alpha[48,0,27] + alpha[48,1,27] + alpha[48,2,27]
   + alpha[48,3,27] >= 1
 obs_face_o48_e0_j27: z[28,2] - obstacle_slack + 100 alpha[48,0,27]
   <= 96.7
 obs_face_o48_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[48,1,27]
   <= 99.7
 obs_face_o48_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[48,2,27]
   <= 102.7
 obs_face_o48_e3_j27: z[28,0] - obstacle_slack + 100 alpha[48,3,27]
   <= 99.7
 obs_alpha_sum_o48_j28: alpha[48,0,28] + alpha[48,1,28] + alpha[48,2,28]
   + alpha[48,3,28] >= 1
 obs_face_o48_e0_j28: z[29,2] - obstacle_slack + 100 alpha[48,0,28]
   <= 96.7
 obs_face_o48_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[48,1,28]
   <= 99.7
 obs_face_o48_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[48,2,28]
   <= 102.7
 obs_face_o48_e3_j28: z[29,0] - obstacle_slack + 100 alpha[48,3,28]
   <= 99.7
 obs_alpha_sum_o48_j29: alpha[48,0,29] + alpha[48,1,29] + alpha[48,2,29]
   + alpha[48,3,29] >= 1
 obs_face_o48_e0_j29: z[30,2] - obstacle_slack + 100 alpha[48,0,29]
   <= 96.7
 obs_face_o48_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[48,1,29]
   <= 99.7
 obs_face_o48_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[48,2,29]
   <= 102.7
 obs_face_o48_e3_j29: z[30,0] - obstacle_slack + 100 alpha[48,3,29]
   <= 99.7
 obs_alpha_sum_o49_j0: alpha[49,0,0] + alpha[49,1,0] + alpha[49,2,0]
   + alpha[49,3,0] >= 1
 obs_face_o49_e0_j0: z[1,2] - obstacle_slack + 100 alpha[49,0,0] <= 96.45
 obs_face_o49_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[49,1,0] <= 99.7
 obs_face_o49_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[49,2,0]
   <= 102.95
 obs_face_o49_e3_j0: z[1,0] - obstacle_slack + 100 alpha[49,3,0] <= 99.7
 obs_alpha_sum_o49_j1: alpha[49,0,1] + alpha[49,1,1] + alpha[49,2,1]
   + alpha[49,3,1] >= 1
 obs_face_o49_e0_j1: z[2,2] - obstacle_slack + 100 alpha[49,0,1] <= 96.45
 obs_face_o49_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[49,1,1] <= 99.7
 obs_face_o49_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[49,2,1]
   <= 102.95
 obs_face_o49_e3_j1: z[2,0] - obstacle_slack + 100 alpha[49,3,1] <= 99.7
 obs_alpha_sum_o49_j2: alpha[49,0,2] + alpha[49,1,2] + alpha[49,2,2]
   + alpha[49,3,2] >= 1
 obs_face_o49_e0_j2: z[3,2] - obstacle_slack + 100 alpha[49,0,2] <= 96.45
 obs_face_o49_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[49,1,2] <= 99.7
 obs_face_o49_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[49,2,2]
   <= 102.95
 obs_face_o49_e3_j2: z[3,0] - obstacle_slack + 100 alpha[49,3,2] <= 99.7
 obs_alpha_sum_o49_j3: alpha[49,0,3] + alpha[49,1,3] + alpha[49,2,3]
   + alpha[49,3,3] >= 1
 obs_face_o49_e0_j3: z[4,2] - obstacle_slack + 100 alpha[49,0,3] <= 96.45
 obs_face_o49_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[49,1,3] <= 99.7
 obs_face_o49_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[49,2,3]
   <= 102.95
 obs_face_o49_e3_j3: z[4,0] - obstacle_slack + 100 alpha[49,3,3] <= 99.7
 obs_alpha_sum_o49_j4: alpha[49,0,4] + alpha[49,1,4] + alpha[49,2,4]
   + alpha[49,3,4] >= 1
 obs_face_o49_e0_j4: z[5,2] - obstacle_slack + 100 alpha[49,0,4] <= 96.45
 obs_face_o49_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[49,1,4] <= 99.7
 obs_face_o49_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[49,2,4]
   <= 102.95
 obs_face_o49_e3_j4: z[5,0] - obstacle_slack + 100 alpha[49,3,4] <= 99.7
 obs_alpha_sum_o49_j5: alpha[49,0,5] + alpha[49,1,5] + alpha[49,2,5]
   + alpha[49,3,5] >= 1
 obs_face_o49_e0_j5: z[6,2] - obstacle_slack + 100 alpha[49,0,5] <= 96.45
 obs_face_o49_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[49,1,5] <= 99.7
 obs_face_o49_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[49,2,5]
   <= 102.95
 obs_face_o49_e3_j5: z[6,0] - obstacle_slack + 100 alpha[49,3,5] <= 99.7
 obs_alpha_sum_o49_j6: alpha[49,0,6] + alpha[49,1,6] + alpha[49,2,6]
   + alpha[49,3,6] >= 1
 obs_face_o49_e0_j6: z[7,2] - obstacle_slack + 100 alpha[49,0,6] <= 96.45
 obs_face_o49_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[49,1,6] <= 99.7
 obs_face_o49_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[49,2,6]
   <= 102.95
 obs_face_o49_e3_j6: z[7,0] - obstacle_slack + 100 alpha[49,3,6] <= 99.7
 obs_alpha_sum_o49_j7: alpha[49,0,7] + alpha[49,1,7] + alpha[49,2,7]
   + alpha[49,3,7] >= 1
 obs_face_o49_e0_j7: z[8,2] - obstacle_slack + 100 alpha[49,0,7] <= 96.45
 obs_face_o49_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[49,1,7] <= 99.7
 obs_face_o49_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[49,2,7]
   <= 102.95
 obs_face_o49_e3_j7: z[8,0] - obstacle_slack + 100 alpha[49,3,7] <= 99.7
 obs_alpha_sum_o49_j8: alpha[49,0,8] + alpha[49,1,8] + alpha[49,2,8]
   + alpha[49,3,8] >= 1
 obs_face_o49_e0_j8: z[9,2] - obstacle_slack + 100 alpha[49,0,8] <= 96.45
 obs_face_o49_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[49,1,8] <= 99.7
 obs_face_o49_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[49,2,8]
   <= 102.95
 obs_face_o49_e3_j8: z[9,0] - obstacle_slack + 100 alpha[49,3,8] <= 99.7
 obs_alpha_sum_o49_j9: alpha[49,0,9] + alpha[49,1,9] + alpha[49,2,9]
   + alpha[49,3,9] >= 1
 obs_face_o49_e0_j9: z[10,2] - obstacle_slack + 100 alpha[49,0,9] <= 96.45
 obs_face_o49_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[49,1,9]
   <= 99.7
 obs_face_o49_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[49,2,9]
   <= 102.95
 obs_face_o49_e3_j9: z[10,0] - obstacle_slack + 100 alpha[49,3,9] <= 99.7
 obs_alpha_sum_o49_j10: alpha[49,0,10] + alpha[49,1,10] + alpha[49,2,10]
   + alpha[49,3,10] >= 1
 obs_face_o49_e0_j10: z[11,2] - obstacle_slack + 100 alpha[49,0,10]
   <= 96.45
 obs_face_o49_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[49,1,10]
   <= 99.7
 obs_face_o49_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[49,2,10]
   <= 102.95
 obs_face_o49_e3_j10: z[11,0] - obstacle_slack + 100 alpha[49,3,10]
   <= 99.7
 obs_alpha_sum_o49_j11: alpha[49,0,11] + alpha[49,1,11] + alpha[49,2,11]
   + alpha[49,3,11] >= 1
 obs_face_o49_e0_j11: z[12,2] - obstacle_slack + 100 alpha[49,0,11]
   <= 96.45
 obs_face_o49_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[49,1,11]
   <= 99.7
 obs_face_o49_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[49,2,11]
   <= 102.95
 obs_face_o49_e3_j11: z[12,0] - obstacle_slack + 100 alpha[49,3,11]
   <= 99.7
 obs_alpha_sum_o49_j12: alpha[49,0,12] + alpha[49,1,12] + alpha[49,2,12]
   + alpha[49,3,12] >= 1
 obs_face_o49_e0_j12: z[13,2] - obstacle_slack + 100 alpha[49,0,12]
   <= 96.45
 obs_face_o49_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[49,1,12]
   <= 99.7
 obs_face_o49_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[49,2,12]
   <= 102.95
 obs_face_o49_e3_j12: z[13,0] - obstacle_slack + 100 alpha[49,3,12]
   <= 99.7
 obs_alpha_sum_o49_j13: alpha[49,0,13] + alpha[49,1,13] + alpha[49,2,13]
   + alpha[49,3,13] >= 1
 obs_face_o49_e0_j13: z[14,2] - obstacle_slack + 100 alpha[49,0,13]
   <= 96.45
 obs_face_o49_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[49,1,13]
   <= 99.7
 obs_face_o49_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[49,2,13]
   <= 102.95
 obs_face_o49_e3_j13: z[14,0] - obstacle_slack + 100 alpha[49,3,13]
   <= 99.7
 obs_alpha_sum_o49_j14: alpha[49,0,14] + alpha[49,1,14] + alpha[49,2,14]
   + alpha[49,3,14] >= 1
 obs_face_o49_e0_j14: z[15,2] - obstacle_slack + 100 alpha[49,0,14]
   <= 96.45
 obs_face_o49_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[49,1,14]
   <= 99.7
 obs_face_o49_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[49,2,14]
   <= 102.95
 obs_face_o49_e3_j14: z[15,0] - obstacle_slack + 100 alpha[49,3,14]
   <= 99.7
 obs_alpha_sum_o49_j15: alpha[49,0,15] + alpha[49,1,15] + alpha[49,2,15]
   + alpha[49,3,15] >= 1
 obs_face_o49_e0_j15: z[16,2] - obstacle_slack + 100 alpha[49,0,15]
   <= 96.45
 obs_face_o49_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[49,1,15]
   <= 99.7
 obs_face_o49_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[49,2,15]
   <= 102.95
 obs_face_o49_e3_j15: z[16,0] - obstacle_slack + 100 alpha[49,3,15]
   <= 99.7
 obs_alpha_sum_o49_j16: alpha[49,0,16] + alpha[49,1,16] + alpha[49,2,16]
   + alpha[49,3,16] >= 1
 obs_face_o49_e0_j16: z[17,2] - obstacle_slack + 100 alpha[49,0,16]
   <= 96.45
 obs_face_o49_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[49,1,16]
   <= 99.7
 obs_face_o49_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[49,2,16]
   <= 102.95
 obs_face_o49_e3_j16: z[17,0] - obstacle_slack + 100 alpha[49,3,16]
   <= 99.7
 obs_alpha_sum_o49_j17: alpha[49,0,17] + alpha[49,1,17] + alpha[49,2,17]
   + alpha[49,3,17] >= 1
 obs_face_o49_e0_j17: z[18,2] - obstacle_slack + 100 alpha[49,0,17]
   <= 96.45
 obs_face_o49_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[49,1,17]
   <= 99.7
 obs_face_o49_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[49,2,17]
   <= 102.95
 obs_face_o49_e3_j17: z[18,0] - obstacle_slack + 100 alpha[49,3,17]
   <= 99.7
 obs_alpha_sum_o49_j18: alpha[49,0,18] + alpha[49,1,18] + alpha[49,2,18]
   + alpha[49,3,18] >= 1
 obs_face_o49_e0_j18: z[19,2] - obstacle_slack + 100 alpha[49,0,18]
   <= 96.45
 obs_face_o49_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[49,1,18]
   <= 99.7
 obs_face_o49_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[49,2,18]
   <= 102.95
 obs_face_o49_e3_j18: z[19,0] - obstacle_slack + 100 alpha[49,3,18]
   <= 99.7
 obs_alpha_sum_o49_j19: alpha[49,0,19] + alpha[49,1,19] + alpha[49,2,19]
   + alpha[49,3,19] >= 1
 obs_face_o49_e0_j19: z[20,2] - obstacle_slack + 100 alpha[49,0,19]
   <= 96.45
 obs_face_o49_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[49,1,19]
   <= 99.7
 obs_face_o49_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[49,2,19]
   <= 102.95
 obs_face_o49_e3_j19: z[20,0] - obstacle_slack + 100 alpha[49,3,19]
   <= 99.7
 obs_alpha_sum_o49_j20: alpha[49,0,20] + alpha[49,1,20] + alpha[49,2,20]
   + alpha[49,3,20] >= 1
 obs_face_o49_e0_j20: z[21,2] - obstacle_slack + 100 alpha[49,0,20]
   <= 96.45
 obs_face_o49_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[49,1,20]
   <= 99.7
 obs_face_o49_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[49,2,20]
   <= 102.95
 obs_face_o49_e3_j20: z[21,0] - obstacle_slack + 100 alpha[49,3,20]
   <= 99.7
 obs_alpha_sum_o49_j21: alpha[49,0,21] + alpha[49,1,21] + alpha[49,2,21]
   + alpha[49,3,21] >= 1
 obs_face_o49_e0_j21: z[22,2] - obstacle_slack + 100 alpha[49,0,21]
   <= 96.45
 obs_face_o49_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[49,1,21]
   <= 99.7
 obs_face_o49_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[49,2,21]
   <= 102.95
 obs_face_o49_e3_j21: z[22,0] - obstacle_slack + 100 alpha[49,3,21]
   <= 99.7
 obs_alpha_sum_o49_j22: alpha[49,0,22] + alpha[49,1,22] + alpha[49,2,22]
   + alpha[49,3,22] >= 1
 obs_face_o49_e0_j22: z[23,2] - obstacle_slack + 100 alpha[49,0,22]
   <= 96.45
 obs_face_o49_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[49,1,22]
   <= 99.7
 obs_face_o49_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[49,2,22]
   <= 102.95
 obs_face_o49_e3_j22: z[23,0] - obstacle_slack + 100 alpha[49,3,22]
   <= 99.7
 obs_alpha_sum_o49_j23: alpha[49,0,23] + alpha[49,1,23] + alpha[49,2,23]
   + alpha[49,3,23] >= 1
 obs_face_o49_e0_j23: z[24,2] - obstacle_slack + 100 alpha[49,0,23]
   <= 96.45
 obs_face_o49_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[49,1,23]
   <= 99.7
 obs_face_o49_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[49,2,23]
   <= 102.95
 obs_face_o49_e3_j23: z[24,0] - obstacle_slack + 100 alpha[49,3,23]
   <= 99.7
 obs_alpha_sum_o49_j24: alpha[49,0,24] + alpha[49,1,24] + alpha[49,2,24]
   + alpha[49,3,24] >= 1
 obs_face_o49_e0_j24: z[25,2] - obstacle_slack + 100 alpha[49,0,24]
   <= 96.45
 obs_face_o49_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[49,1,24]
   <= 99.7
 obs_face_o49_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[49,2,24]
   <= 102.95
 obs_face_o49_e3_j24: z[25,0] - obstacle_slack + 100 alpha[49,3,24]
   <= 99.7
 obs_alpha_sum_o49_j25: alpha[49,0,25] + alpha[49,1,25] + alpha[49,2,25]
   + alpha[49,3,25] >= 1
 obs_face_o49_e0_j25: z[26,2] - obstacle_slack + 100 alpha[49,0,25]
   <= 96.45
 obs_face_o49_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[49,1,25]
   <= 99.7
 obs_face_o49_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[49,2,25]
   <= 102.95
 obs_face_o49_e3_j25: z[26,0] - obstacle_slack + 100 alpha[49,3,25]
   <= 99.7
 obs_alpha_sum_o49_j26: alpha[49,0,26] + alpha[49,1,26] + alpha[49,2,26]
   + alpha[49,3,26] >= 1
 obs_face_o49_e0_j26: z[27,2] - obstacle_slack + 100 alpha[49,0,26]
   <= 96.45
 obs_face_o49_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[49,1,26]
   <= 99.7
 obs_face_o49_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[49,2,26]
   <= 102.95
 obs_face_o49_e3_j26: z[27,0] - obstacle_slack + 100 alpha[49,3,26]
   <= 99.7
 obs_alpha_sum_o49_j27: alpha[49,0,27] + alpha[49,1,27] + alpha[49,2,27]
   + alpha[49,3,27] >= 1
 obs_face_o49_e0_j27: z[28,2] - obstacle_slack + 100 alpha[49,0,27]
   <= 96.45
 obs_face_o49_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[49,1,27]
   <= 99.7
 obs_face_o49_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[49,2,27]
   <= 102.95
 obs_face_o49_e3_j27: z[28,0] - obstacle_slack + 100 alpha[49,3,27]
   <= 99.7
 obs_alpha_sum_o49_j28: alpha[49,0,28] + alpha[49,1,28] + alpha[49,2,28]
   + alpha[49,3,28] >= 1
 obs_face_o49_e0_j28: z[29,2] - obstacle_slack + 100 alpha[49,0,28]
   <= 96.45
 obs_face_o49_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[49,1,28]
   <= 99.7
 obs_face_o49_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[49,2,28]
   <= 102.95
 obs_face_o49_e3_j28: z[29,0] - obstacle_slack + 100 alpha[49,3,28]
   <= 99.7
 obs_alpha_sum_o49_j29: alpha[49,0,29] + alpha[49,1,29] + alpha[49,2,29]
   + alpha[49,3,29] >= 1
 obs_face_o49_e0_j29: z[30,2] - obstacle_slack + 100 alpha[49,0,29]
   <= 96.45
 obs_face_o49_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[49,1,29]
   <= 99.7
 obs_face_o49_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[49,2,29]
   <= 102.95
 obs_face_o49_e3_j29: z[30,0] - obstacle_slack + 100 alpha[49,3,29]
   <= 99.7
 obs_alpha_sum_o50_j0: alpha[50,0,0] + alpha[50,1,0] + alpha[50,2,0]
   + alpha[50,3,0] >= 1
 obs_face_o50_e0_j0: z[1,2] - obstacle_slack + 100 alpha[50,0,0] <= 96.2
 obs_face_o50_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[50,1,0] <= 99.7
 obs_face_o50_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[50,2,0]
   <= 103.2
 obs_face_o50_e3_j0: z[1,0] - obstacle_slack + 100 alpha[50,3,0] <= 99.7
 obs_alpha_sum_o50_j1: alpha[50,0,1] + alpha[50,1,1] + alpha[50,2,1]
   + alpha[50,3,1] >= 1
 obs_face_o50_e0_j1: z[2,2] - obstacle_slack + 100 alpha[50,0,1] <= 96.2
 obs_face_o50_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[50,1,1] <= 99.7
 obs_face_o50_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[50,2,1]
   <= 103.2
 obs_face_o50_e3_j1: z[2,0] - obstacle_slack + 100 alpha[50,3,1] <= 99.7
 obs_alpha_sum_o50_j2: alpha[50,0,2] + alpha[50,1,2] + alpha[50,2,2]
   + alpha[50,3,2] >= 1
 obs_face_o50_e0_j2: z[3,2] - obstacle_slack + 100 alpha[50,0,2] <= 96.2
 obs_face_o50_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[50,1,2] <= 99.7
 obs_face_o50_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[50,2,2]
   <= 103.2
 obs_face_o50_e3_j2: z[3,0] - obstacle_slack + 100 alpha[50,3,2] <= 99.7
 obs_alpha_sum_o50_j3: alpha[50,0,3] + alpha[50,1,3] + alpha[50,2,3]
   + alpha[50,3,3] >= 1
 obs_face_o50_e0_j3: z[4,2] - obstacle_slack + 100 alpha[50,0,3] <= 96.2
 obs_face_o50_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[50,1,3] <= 99.7
 obs_face_o50_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[50,2,3]
   <= 103.2
 obs_face_o50_e3_j3: z[4,0] - obstacle_slack + 100 alpha[50,3,3] <= 99.7
 obs_alpha_sum_o50_j4: alpha[50,0,4] + alpha[50,1,4] + alpha[50,2,4]
   + alpha[50,3,4] >= 1
 obs_face_o50_e0_j4: z[5,2] - obstacle_slack + 100 alpha[50,0,4] <= 96.2
 obs_face_o50_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[50,1,4] <= 99.7
 obs_face_o50_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[50,2,4]
   <= 103.2
 obs_face_o50_e3_j4: z[5,0] - obstacle_slack + 100 alpha[50,3,4] <= 99.7
 obs_alpha_sum_o50_j5: alpha[50,0,5] + alpha[50,1,5] + alpha[50,2,5]
   + alpha[50,3,5] >= 1
 obs_face_o50_e0_j5: z[6,2] - obstacle_slack + 100 alpha[50,0,5] <= 96.2
 obs_face_o50_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[50,1,5] <= 99.7
 obs_face_o50_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[50,2,5]
   <= 103.2
 obs_face_o50_e3_j5: z[6,0] - obstacle_slack + 100 alpha[50,3,5] <= 99.7
 obs_alpha_sum_o50_j6: alpha[50,0,6] + alpha[50,1,6] + alpha[50,2,6]
   + alpha[50,3,6] >= 1
 obs_face_o50_e0_j6: z[7,2] - obstacle_slack + 100 alpha[50,0,6] <= 96.2
 obs_face_o50_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[50,1,6] <= 99.7
 obs_face_o50_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[50,2,6]
   <= 103.2
 obs_face_o50_e3_j6: z[7,0] - obstacle_slack + 100 alpha[50,3,6] <= 99.7
 obs_alpha_sum_o50_j7: alpha[50,0,7] + alpha[50,1,7] + alpha[50,2,7]
   + alpha[50,3,7] >= 1
 obs_face_o50_e0_j7: z[8,2] - obstacle_slack + 100 alpha[50,0,7] <= 96.2
 obs_face_o50_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[50,1,7] <= 99.7
 obs_face_o50_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[50,2,7]
   <= 103.2
 obs_face_o50_e3_j7: z[8,0] - obstacle_slack + 100 alpha[50,3,7] <= 99.7
 obs_alpha_sum_o50_j8: alpha[50,0,8] + alpha[50,1,8] + alpha[50,2,8]
   + alpha[50,3,8] >= 1
 obs_face_o50_e0_j8: z[9,2] - obstacle_slack + 100 alpha[50,0,8] <= 96.2
 obs_face_o50_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[50,1,8] <= 99.7
 obs_face_o50_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[50,2,8]
   <= 103.2
 obs_face_o50_e3_j8: z[9,0] - obstacle_slack + 100 alpha[50,3,8] <= 99.7
 obs_alpha_sum_o50_j9: alpha[50,0,9] + alpha[50,1,9] + alpha[50,2,9]
   + alpha[50,3,9] >= 1
 obs_face_o50_e0_j9: z[10,2] - obstacle_slack + 100 alpha[50,0,9] <= 96.2
 obs_face_o50_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[50,1,9]
   <= 99.7
 obs_face_o50_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[50,2,9]
   <= 103.2
 obs_face_o50_e3_j9: z[10,0] - obstacle_slack + 100 alpha[50,3,9] <= 99.7
 obs_alpha_sum_o50_j10: alpha[50,0,10] + alpha[50,1,10] + alpha[50,2,10]
   + alpha[50,3,10] >= 1
 obs_face_o50_e0_j10: z[11,2] - obstacle_slack + 100 alpha[50,0,10]
   <= 96.2
 obs_face_o50_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[50,1,10]
   <= 99.7
 obs_face_o50_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[50,2,10]
   <= 103.2
 obs_face_o50_e3_j10: z[11,0] - obstacle_slack + 100 alpha[50,3,10]
   <= 99.7
 obs_alpha_sum_o50_j11: alpha[50,0,11] + alpha[50,1,11] + alpha[50,2,11]
   + alpha[50,3,11] >= 1
 obs_face_o50_e0_j11: z[12,2] - obstacle_slack + 100 alpha[50,0,11]
   <= 96.2
 obs_face_o50_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[50,1,11]
   <= 99.7
 obs_face_o50_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[50,2,11]
   <= 103.2
 obs_face_o50_e3_j11: z[12,0] - obstacle_slack + 100 alpha[50,3,11]
   <= 99.7
 obs_alpha_sum_o50_j12: alpha[50,0,12] + alpha[50,1,12] + alpha[50,2,12]
   + alpha[50,3,12] >= 1
 obs_face_o50_e0_j12: z[13,2] - obstacle_slack + 100 alpha[50,0,12]
   <= 96.2
 obs_face_o50_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[50,1,12]
   <= 99.7
 obs_face_o50_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[50,2,12]
   <= 103.2
 obs_face_o50_e3_j12: z[13,0] - obstacle_slack + 100 alpha[50,3,12]
   <= 99.7
 obs_alpha_sum_o50_j13: alpha[50,0,13] + alpha[50,1,13] + alpha[50,2,13]
   + alpha[50,3,13] >= 1
 obs_face_o50_e0_j13: z[14,2] - obstacle_slack + 100 alpha[50,0,13]
   <= 96.2
 obs_face_o50_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[50,1,13]
   <= 99.7
 obs_face_o50_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[50,2,13]
   <= 103.2
 obs_face_o50_e3_j13: z[14,0] - obstacle_slack + 100 alpha[50,3,13]
   <= 99.7
 obs_alpha_sum_o50_j14: alpha[50,0,14] + alpha[50,1,14] + alpha[50,2,14]
   + alpha[50,3,14] >= 1
 obs_face_o50_e0_j14: z[15,2] - obstacle_slack + 100 alpha[50,0,14]
   <= 96.2
 obs_face_o50_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[50,1,14]
   <= 99.7
 obs_face_o50_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[50,2,14]
   <= 103.2
 obs_face_o50_e3_j14: z[15,0] - obstacle_slack + 100 alpha[50,3,14]
   <= 99.7
 obs_alpha_sum_o50_j15: alpha[50,0,15] + alpha[50,1,15] + alpha[50,2,15]
   + alpha[50,3,15] >= 1
 obs_face_o50_e0_j15: z[16,2] - obstacle_slack + 100 alpha[50,0,15]
   <= 96.2
 obs_face_o50_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[50,1,15]
   <= 99.7
 obs_face_o50_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[50,2,15]
   <= 103.2
 obs_face_o50_e3_j15: z[16,0] - obstacle_slack + 100 alpha[50,3,15]
   <= 99.7
 obs_alpha_sum_o50_j16: alpha[50,0,16] + alpha[50,1,16] + alpha[50,2,16]
   + alpha[50,3,16] >= 1
 obs_face_o50_e0_j16: z[17,2] - obstacle_slack + 100 alpha[50,0,16]
   <= 96.2
 obs_face_o50_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[50,1,16]
   <= 99.7
 obs_face_o50_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[50,2,16]
   <= 103.2
 obs_face_o50_e3_j16: z[17,0] - obstacle_slack + 100 alpha[50,3,16]
   <= 99.7
 obs_alpha_sum_o50_j17: alpha[50,0,17] + alpha[50,1,17] + alpha[50,2,17]
   + alpha[50,3,17] >= 1
 obs_face_o50_e0_j17: z[18,2] - obstacle_slack + 100 alpha[50,0,17]
   <= 96.2
 obs_face_o50_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[50,1,17]
   <= 99.7
 obs_face_o50_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[50,2,17]
   <= 103.2
 obs_face_o50_e3_j17: z[18,0] - obstacle_slack + 100 alpha[50,3,17]
   <= 99.7
 obs_alpha_sum_o50_j18: alpha[50,0,18] + alpha[50,1,18] + alpha[50,2,18]
   + alpha[50,3,18] >= 1
 obs_face_o50_e0_j18: z[19,2] - obstacle_slack + 100 alpha[50,0,18]
   <= 96.2
 obs_face_o50_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[50,1,18]
   <= 99.7
 obs_face_o50_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[50,2,18]
   <= 103.2
 obs_face_o50_e3_j18: z[19,0] - obstacle_slack + 100 alpha[50,3,18]
   <= 99.7
 obs_alpha_sum_o50_j19: alpha[50,0,19] + alpha[50,1,19] + alpha[50,2,19]
   + alpha[50,3,19] >= 1
 obs_face_o50_e0_j19: z[20,2] - obstacle_slack + 100 alpha[50,0,19]
   <= 96.2
 obs_face_o50_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[50,1,19]
   <= 99.7
 obs_face_o50_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[50,2,19]
   <= 103.2
 obs_face_o50_e3_j19: z[20,0] - obstacle_slack + 100 alpha[50,3,19]
   <= 99.7
 obs_alpha_sum_o50_j20: alpha[50,0,20] + alpha[50,1,20] + alpha[50,2,20]
   + alpha[50,3,20] >= 1
 obs_face_o50_e0_j20: z[21,2] - obstacle_slack + 100 alpha[50,0,20]
   <= 96.2
 obs_face_o50_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[50,1,20]
   <= 99.7
 obs_face_o50_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[50,2,20]
   <= 103.2
 obs_face_o50_e3_j20: z[21,0] - obstacle_slack + 100 alpha[50,3,20]
   <= 99.7
 obs_alpha_sum_o50_j21: alpha[50,0,21] + alpha[50,1,21] + alpha[50,2,21]
   + alpha[50,3,21] >= 1
 obs_face_o50_e0_j21: z[22,2] - obstacle_slack + 100 alpha[50,0,21]
   <= 96.2
 obs_face_o50_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[50,1,21]
   <= 99.7
 obs_face_o50_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[50,2,21]
   <= 103.2
 obs_face_o50_e3_j21: z[22,0] - obstacle_slack + 100 alpha[50,3,21]
   <= 99.7
 obs_alpha_sum_o50_j22: alpha[50,0,22] + alpha[50,1,22] + alpha[50,2,22]
   + alpha[50,3,22] >= 1
 obs_face_o50_e0_j22: z[23,2] - obstacle_slack + 100 alpha[50,0,22]
   <= 96.2
 obs_face_o50_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[50,1,22]
   <= 99.7
 obs_face_o50_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[50,2,22]
   <= 103.2
 obs_face_o50_e3_j22: z[23,0] - obstacle_slack + 100 alpha[50,3,22]
   <= 99.7
 obs_alpha_sum_o50_j23: alpha[50,0,23] + alpha[50,1,23] + alpha[50,2,23]
   + alpha[50,3,23] >= 1
 obs_face_o50_e0_j23: z[24,2] - obstacle_slack + 100 alpha[50,0,23]
   <= 96.2
 obs_face_o50_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[50,1,23]
   <= 99.7
 obs_face_o50_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[50,2,23]
   <= 103.2
 obs_face_o50_e3_j23: z[24,0] - obstacle_slack + 100 alpha[50,3,23]
   <= 99.7
 obs_alpha_sum_o50_j24: alpha[50,0,24] + alpha[50,1,24] + alpha[50,2,24]
   + alpha[50,3,24] >= 1
 obs_face_o50_e0_j24: z[25,2] - obstacle_slack + 100 alpha[50,0,24]
   <= 96.2
 obs_face_o50_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[50,1,24]
   <= 99.7
 obs_face_o50_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[50,2,24]
   <= 103.2
 obs_face_o50_e3_j24: z[25,0] - obstacle_slack + 100 alpha[50,3,24]
   <= 99.7
 obs_alpha_sum_o50_j25: alpha[50,0,25] + alpha[50,1,25] + alpha[50,2,25]
   + alpha[50,3,25] >= 1
 obs_face_o50_e0_j25: z[26,2] - obstacle_slack + 100 alpha[50,0,25]
   <= 96.2
 obs_face_o50_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[50,1,25]
   <= 99.7
 obs_face_o50_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[50,2,25]
   <= 103.2
 obs_face_o50_e3_j25: z[26,0] - obstacle_slack + 100 alpha[50,3,25]
   <= 99.7
 obs_alpha_sum_o50_j26: alpha[50,0,26] + alpha[50,1,26] + alpha[50,2,26]
   + alpha[50,3,26] >= 1
 obs_face_o50_e0_j26: z[27,2] - obstacle_slack + 100 alpha[50,0,26]
   <= 96.2
 obs_face_o50_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[50,1,26]
   <= 99.7
 obs_face_o50_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[50,2,26]
   <= 103.2
 obs_face_o50_e3_j26: z[27,0] - obstacle_slack + 100 alpha[50,3,26]
   <= 99.7
 obs_alpha_sum_o50_j27: alpha[50,0,27] + alpha[50,1,27] + alpha[50,2,27]
   + alpha[50,3,27] >= 1
 obs_face_o50_e0_j27: z[28,2] - obstacle_slack + 100 alpha[50,0,27]
   <= 96.2
 obs_face_o50_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[50,1,27]
   <= 99.7
 obs_face_o50_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[50,2,27]
   <= 103.2
 obs_face_o50_e3_j27: z[28,0] - obstacle_slack + 100 alpha[50,3,27]
   <= 99.7
 obs_alpha_sum_o50_j28: alpha[50,0,28] + alpha[50,1,28] + alpha[50,2,28]
   + alpha[50,3,28] >= 1
 obs_face_o50_e0_j28: z[29,2] - obstacle_slack + 100 alpha[50,0,28]
   <= 96.2
 obs_face_o50_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[50,1,28]
   <= 99.7
 obs_face_o50_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[50,2,28]
   <= 103.2
 obs_face_o50_e3_j28: z[29,0] - obstacle_slack + 100 alpha[50,3,28]
   <= 99.7
 obs_alpha_sum_o50_j29: alpha[50,0,29] + alpha[50,1,29] + alpha[50,2,29]
   + alpha[50,3,29] >= 1
 obs_face_o50_e0_j29: z[30,2] - obstacle_slack + 100 alpha[50,0,29]
   <= 96.2
 obs_face_o50_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[50,1,29]
   <= 99.7
 obs_face_o50_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[50,2,29]
   <= 103.2
 obs_face_o50_e3_j29: z[30,0] - obstacle_slack + 100 alpha[50,3,29]
   <= 99.7
 obs_alpha_sum_o51_j0: alpha[51,0,0] + alpha[51,1,0] + alpha[51,2,0]
   + alpha[51,3,0] >= 1
 obs_face_o51_e0_j0: z[1,2] - obstacle_slack + 100 alpha[51,0,0] <= 95.95
 obs_face_o51_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[51,1,0] <= 99.7
 obs_face_o51_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[51,2,0]
   <= 103.45
 obs_face_o51_e3_j0: z[1,0] - obstacle_slack + 100 alpha[51,3,0] <= 99.7
 obs_alpha_sum_o51_j1: alpha[51,0,1] + alpha[51,1,1] + alpha[51,2,1]
   + alpha[51,3,1] >= 1
 obs_face_o51_e0_j1: z[2,2] - obstacle_slack + 100 alpha[51,0,1] <= 95.95
 obs_face_o51_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[51,1,1] <= 99.7
 obs_face_o51_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[51,2,1]
   <= 103.45
 obs_face_o51_e3_j1: z[2,0] - obstacle_slack + 100 alpha[51,3,1] <= 99.7
 obs_alpha_sum_o51_j2: alpha[51,0,2] + alpha[51,1,2] + alpha[51,2,2]
   + alpha[51,3,2] >= 1
 obs_face_o51_e0_j2: z[3,2] - obstacle_slack + 100 alpha[51,0,2] <= 95.95
 obs_face_o51_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[51,1,2] <= 99.7
 obs_face_o51_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[51,2,2]
   <= 103.45
 obs_face_o51_e3_j2: z[3,0] - obstacle_slack + 100 alpha[51,3,2] <= 99.7
 obs_alpha_sum_o51_j3: alpha[51,0,3] + alpha[51,1,3] + alpha[51,2,3]
   + alpha[51,3,3] >= 1
 obs_face_o51_e0_j3: z[4,2] - obstacle_slack + 100 alpha[51,0,3] <= 95.95
 obs_face_o51_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[51,1,3] <= 99.7
 obs_face_o51_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[51,2,3]
   <= 103.45
 obs_face_o51_e3_j3: z[4,0] - obstacle_slack + 100 alpha[51,3,3] <= 99.7
 obs_alpha_sum_o51_j4: alpha[51,0,4] + alpha[51,1,4] + alpha[51,2,4]
   + alpha[51,3,4] >= 1
 obs_face_o51_e0_j4: z[5,2] - obstacle_slack + 100 alpha[51,0,4] <= 95.95
 obs_face_o51_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[51,1,4] <= 99.7
 obs_face_o51_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[51,2,4]
   <= 103.45
 obs_face_o51_e3_j4: z[5,0] - obstacle_slack + 100 alpha[51,3,4] <= 99.7
 obs_alpha_sum_o51_j5: alpha[51,0,5] + alpha[51,1,5] + alpha[51,2,5]
   + alpha[51,3,5] >= 1
 obs_face_o51_e0_j5: z[6,2] - obstacle_slack + 100 alpha[51,0,5] <= 95.95
 obs_face_o51_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[51,1,5] <= 99.7
 obs_face_o51_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[51,2,5]
   <= 103.45
 obs_face_o51_e3_j5: z[6,0] - obstacle_slack + 100 alpha[51,3,5] <= 99.7
 obs_alpha_sum_o51_j6: alpha[51,0,6] + alpha[51,1,6] + alpha[51,2,6]
   + alpha[51,3,6] >= 1
 obs_face_o51_e0_j6: z[7,2] - obstacle_slack + 100 alpha[51,0,6] <= 95.95
 obs_face_o51_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[51,1,6] <= 99.7
 obs_face_o51_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[51,2,6]
   <= 103.45
 obs_face_o51_e3_j6: z[7,0] - obstacle_slack + 100 alpha[51,3,6] <= 99.7
 obs_alpha_sum_o51_j7: alpha[51,0,7] + alpha[51,1,7] + alpha[51,2,7]
   + alpha[51,3,7] >= 1
 obs_face_o51_e0_j7: z[8,2] - obstacle_slack + 100 alpha[51,0,7] <= 95.95
 obs_face_o51_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[51,1,7] <= 99.7
 obs_face_o51_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[51,2,7]
   <= 103.45
 obs_face_o51_e3_j7: z[8,0] - obstacle_slack + 100 alpha[51,3,7] <= 99.7
 obs_alpha_sum_o51_j8: alpha[51,0,8] + alpha[51,1,8] + alpha[51,2,8]
   + alpha[51,3,8] >= 1
 obs_face_o51_e0_j8: z[9,2] - obstacle_slack + 100 alpha[51,0,8] <= 95.95
 obs_face_o51_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[51,1,8] <= 99.7
 obs_face_o51_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[51,2,8]
   <= 103.45
 obs_face_o51_e3_j8: z[9,0] - obstacle_slack + 100 alpha[51,3,8] <= 99.7
 obs_alpha_sum_o51_j9: alpha[51,0,9] + alpha[51,1,9] + alpha[51,2,9]
   + alpha[51,3,9] >= 1
 obs_face_o51_e0_j9: z[10,2] - obstacle_slack + 100 alpha[51,0,9] <= 95.95
 obs_face_o51_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[51,1,9]
   <= 99.7
 obs_face_o51_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[51,2,9]
   <= 103.45
 obs_face_o51_e3_j9: z[10,0] - obstacle_slack + 100 alpha[51,3,9] <= 99.7
 obs_alpha_sum_o51_j10: alpha[51,0,10] + alpha[51,1,10] + alpha[51,2,10]
   + alpha[51,3,10] >= 1
 obs_face_o51_e0_j10: z[11,2] - obstacle_slack + 100 alpha[51,0,10]
   <= 95.95
 obs_face_o51_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[51,1,10]
   <= 99.7
 obs_face_o51_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[51,2,10]
   <= 103.45
 obs_face_o51_e3_j10: z[11,0] - obstacle_slack + 100 alpha[51,3,10]
   <= 99.7
 obs_alpha_sum_o51_j11: alpha[51,0,11] + alpha[51,1,11] + alpha[51,2,11]
   + alpha[51,3,11] >= 1
 obs_face_o51_e0_j11: z[12,2] - obstacle_slack + 100 alpha[51,0,11]
   <= 95.95
 obs_face_o51_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[51,1,11]
   <= 99.7
 obs_face_o51_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[51,2,11]
   <= 103.45
 obs_face_o51_e3_j11: z[12,0] - obstacle_slack + 100 alpha[51,3,11]
   <= 99.7
 obs_alpha_sum_o51_j12: alpha[51,0,12] + alpha[51,1,12] + alpha[51,2,12]
   + alpha[51,3,12] >= 1
 obs_face_o51_e0_j12: z[13,2] - obstacle_slack + 100 alpha[51,0,12]
   <= 95.95
 obs_face_o51_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[51,1,12]
   <= 99.7
 obs_face_o51_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[51,2,12]
   <= 103.45
 obs_face_o51_e3_j12: z[13,0] - obstacle_slack + 100 alpha[51,3,12]
   <= 99.7
 obs_alpha_sum_o51_j13: alpha[51,0,13] + alpha[51,1,13] + alpha[51,2,13]
   + alpha[51,3,13] >= 1
 obs_face_o51_e0_j13: z[14,2] - obstacle_slack + 100 alpha[51,0,13]
   <= 95.95
 obs_face_o51_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[51,1,13]
   <= 99.7
 obs_face_o51_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[51,2,13]
   <= 103.45
 obs_face_o51_e3_j13: z[14,0] - obstacle_slack + 100 alpha[51,3,13]
   <= 99.7
 obs_alpha_sum_o51_j14: alpha[51,0,14] + alpha[51,1,14] + alpha[51,2,14]
   + alpha[51,3,14] >= 1
 obs_face_o51_e0_j14: z[15,2] - obstacle_slack + 100 alpha[51,0,14]
   <= 95.95
 obs_face_o51_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[51,1,14]
   <= 99.7
 obs_face_o51_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[51,2,14]
   <= 103.45
 obs_face_o51_e3_j14: z[15,0] - obstacle_slack + 100 alpha[51,3,14]
   <= 99.7
 obs_alpha_sum_o51_j15: alpha[51,0,15] + alpha[51,1,15] + alpha[51,2,15]
   + alpha[51,3,15] >= 1
 obs_face_o51_e0_j15: z[16,2] - obstacle_slack + 100 alpha[51,0,15]
   <= 95.95
 obs_face_o51_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[51,1,15]
   <= 99.7
 obs_face_o51_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[51,2,15]
   <= 103.45
 obs_face_o51_e3_j15: z[16,0] - obstacle_slack + 100 alpha[51,3,15]
   <= 99.7
 obs_alpha_sum_o51_j16: alpha[51,0,16] + alpha[51,1,16] + alpha[51,2,16]
   + alpha[51,3,16] >= 1
 obs_face_o51_e0_j16: z[17,2] - obstacle_slack + 100 alpha[51,0,16]
   <= 95.95
 obs_face_o51_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[51,1,16]
   <= 99.7
 obs_face_o51_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[51,2,16]
   <= 103.45
 obs_face_o51_e3_j16: z[17,0] - obstacle_slack + 100 alpha[51,3,16]
   <= 99.7
 obs_alpha_sum_o51_j17: alpha[51,0,17] + alpha[51,1,17] + alpha[51,2,17]
   + alpha[51,3,17] >= 1
 obs_face_o51_e0_j17: z[18,2] - obstacle_slack + 100 alpha[51,0,17]
   <= 95.95
 obs_face_o51_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[51,1,17]
   <= 99.7
 obs_face_o51_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[51,2,17]
   <= 103.45
 obs_face_o51_e3_j17: z[18,0] - obstacle_slack + 100 alpha[51,3,17]
   <= 99.7
 obs_alpha_sum_o51_j18: alpha[51,0,18] + alpha[51,1,18] + alpha[51,2,18]
   + alpha[51,3,18] >= 1
 obs_face_o51_e0_j18: z[19,2] - obstacle_slack + 100 alpha[51,0,18]
   <= 95.95
 obs_face_o51_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[51,1,18]
   <= 99.7
 obs_face_o51_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[51,2,18]
   <= 103.45
 obs_face_o51_e3_j18: z[19,0] - obstacle_slack + 100 alpha[51,3,18]
   <= 99.7
 obs_alpha_sum_o51_j19: alpha[51,0,19] + alpha[51,1,19] + alpha[51,2,19]
   + alpha[51,3,19] >= 1
 obs_face_o51_e0_j19: z[20,2] - obstacle_slack + 100 alpha[51,0,19]
   <= 95.95
 obs_face_o51_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[51,1,19]
   <= 99.7
 obs_face_o51_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[51,2,19]
   <= 103.45
 obs_face_o51_e3_j19: z[20,0] - obstacle_slack + 100 alpha[51,3,19]
   <= 99.7
 obs_alpha_sum_o51_j20: alpha[51,0,20] + alpha[51,1,20] + alpha[51,2,20]
   + alpha[51,3,20] >= 1
 obs_face_o51_e0_j20: z[21,2] - obstacle_slack + 100 alpha[51,0,20]
   <= 95.95
 obs_face_o51_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[51,1,20]
   <= 99.7
 obs_face_o51_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[51,2,20]
   <= 103.45
 obs_face_o51_e3_j20: z[21,0] - obstacle_slack + 100 alpha[51,3,20]
   <= 99.7
 obs_alpha_sum_o51_j21: alpha[51,0,21] + alpha[51,1,21] + alpha[51,2,21]
   + alpha[51,3,21] >= 1
 obs_face_o51_e0_j21: z[22,2] - obstacle_slack + 100 alpha[51,0,21]
   <= 95.95
 obs_face_o51_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[51,1,21]
   <= 99.7
 obs_face_o51_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[51,2,21]
   <= 103.45
 obs_face_o51_e3_j21: z[22,0] - obstacle_slack + 100 alpha[51,3,21]
   <= 99.7
 obs_alpha_sum_o51_j22: alpha[51,0,22] + alpha[51,1,22] + alpha[51,2,22]
   + alpha[51,3,22] >= 1
 obs_face_o51_e0_j22: z[23,2] - obstacle_slack + 100 alpha[51,0,22]
   <= 95.95
 obs_face_o51_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[51,1,22]
   <= 99.7
 obs_face_o51_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[51,2,22]
   <= 103.45
 obs_face_o51_e3_j22: z[23,0] - obstacle_slack + 100 alpha[51,3,22]
   <= 99.7
 obs_alpha_sum_o51_j23: alpha[51,0,23] + alpha[51,1,23] + alpha[51,2,23]
   + alpha[51,3,23] >= 1
 obs_face_o51_e0_j23: z[24,2] - obstacle_slack + 100 alpha[51,0,23]
   <= 95.95
 obs_face_o51_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[51,1,23]
   <= 99.7
 obs_face_o51_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[51,2,23]
   <= 103.45
 obs_face_o51_e3_j23: z[24,0] - obstacle_slack + 100 alpha[51,3,23]
   <= 99.7
 obs_alpha_sum_o51_j24: alpha[51,0,24] + alpha[51,1,24] + alpha[51,2,24]
   + alpha[51,3,24] >= 1
 obs_face_o51_e0_j24: z[25,2] - obstacle_slack + 100 alpha[51,0,24]
   <= 95.95
 obs_face_o51_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[51,1,24]
   <= 99.7
 obs_face_o51_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[51,2,24]
   <= 103.45
 obs_face_o51_e3_j24: z[25,0] - obstacle_slack + 100 alpha[51,3,24]
   <= 99.7
 obs_alpha_sum_o51_j25: alpha[51,0,25] + alpha[51,1,25] + alpha[51,2,25]
   + alpha[51,3,25] >= 1
 obs_face_o51_e0_j25: z[26,2] - obstacle_slack + 100 alpha[51,0,25]
   <= 95.95
 obs_face_o51_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[51,1,25]
   <= 99.7
 obs_face_o51_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[51,2,25]
   <= 103.45
 obs_face_o51_e3_j25: z[26,0] - obstacle_slack + 100 alpha[51,3,25]
   <= 99.7
 obs_alpha_sum_o51_j26: alpha[51,0,26] + alpha[51,1,26] + alpha[51,2,26]
   + alpha[51,3,26] >= 1
 obs_face_o51_e0_j26: z[27,2] - obstacle_slack + 100 alpha[51,0,26]
   <= 95.95
 obs_face_o51_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[51,1,26]
   <= 99.7
 obs_face_o51_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[51,2,26]
   <= 103.45
 obs_face_o51_e3_j26: z[27,0] - obstacle_slack + 100 alpha[51,3,26]
   <= 99.7
 obs_alpha_sum_o51_j27: alpha[51,0,27] + alpha[51,1,27] + alpha[51,2,27]
   + alpha[51,3,27] >= 1
 obs_face_o51_e0_j27: z[28,2] - obstacle_slack + 100 alpha[51,0,27]
   <= 95.95
 obs_face_o51_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[51,1,27]
   <= 99.7
 obs_face_o51_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[51,2,27]
   <= 103.45
 obs_face_o51_e3_j27: z[28,0] - obstacle_slack + 100 alpha[51,3,27]
   <= 99.7
 obs_alpha_sum_o51_j28: alpha[51,0,28] + alpha[51,1,28] + alpha[51,2,28]
   + alpha[51,3,28] >= 1
 obs_face_o51_e0_j28: z[29,2] - obstacle_slack + 100 alpha[51,0,28]
   <= 95.95
 obs_face_o51_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[51,1,28]
   <= 99.7
 obs_face_o51_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[51,2,28]
   <= 103.45
 obs_face_o51_e3_j28: z[29,0] - obstacle_slack + 100 alpha[51,3,28]
   <= 99.7
 obs_alpha_sum_o51_j29: alpha[51,0,29] + alpha[51,1,29] + alpha[51,2,29]
   + alpha[51,3,29] >= 1
 obs_face_o51_e0_j29: z[30,2] - obstacle_slack + 100 alpha[51,0,29]
   <= 95.95
 obs_face_o51_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[51,1,29]
   <= 99.7
 obs_face_o51_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[51,2,29]
   <= 103.45
 obs_face_o51_e3_j29: z[30,0] - obstacle_slack + 100 alpha[51,3,29]
   <= 99.7
 obs_alpha_sum_o52_j0: alpha[52,0,0] + alpha[52,1,0] + alpha[52,2,0]
   + alpha[52,3,0] >= 1
 obs_face_o52_e0_j0: z[1,2] - obstacle_slack + 100 alpha[52,0,0] <= 95.7
 obs_face_o52_e1_j0: - z[1,0] - obstacle_slack + 100 alpha[52,1,0] <= 99.7
 obs_face_o52_e2_j0: - z[1,2] - obstacle_slack + 100 alpha[52,2,0]
   <= 103.7
 obs_face_o52_e3_j0: z[1,0] - obstacle_slack + 100 alpha[52,3,0] <= 99.7
 obs_alpha_sum_o52_j1: alpha[52,0,1] + alpha[52,1,1] + alpha[52,2,1]
   + alpha[52,3,1] >= 1
 obs_face_o52_e0_j1: z[2,2] - obstacle_slack + 100 alpha[52,0,1] <= 95.7
 obs_face_o52_e1_j1: - z[2,0] - obstacle_slack + 100 alpha[52,1,1] <= 99.7
 obs_face_o52_e2_j1: - z[2,2] - obstacle_slack + 100 alpha[52,2,1]
   <= 103.7
 obs_face_o52_e3_j1: z[2,0] - obstacle_slack + 100 alpha[52,3,1] <= 99.7
 obs_alpha_sum_o52_j2: alpha[52,0,2] + alpha[52,1,2] + alpha[52,2,2]
   + alpha[52,3,2] >= 1
 obs_face_o52_e0_j2: z[3,2] - obstacle_slack + 100 alpha[52,0,2] <= 95.7
 obs_face_o52_e1_j2: - z[3,0] - obstacle_slack + 100 alpha[52,1,2] <= 99.7
 obs_face_o52_e2_j2: - z[3,2] - obstacle_slack + 100 alpha[52,2,2]
   <= 103.7
 obs_face_o52_e3_j2: z[3,0] - obstacle_slack + 100 alpha[52,3,2] <= 99.7
 obs_alpha_sum_o52_j3: alpha[52,0,3] + alpha[52,1,3] + alpha[52,2,3]
   + alpha[52,3,3] >= 1
 obs_face_o52_e0_j3: z[4,2] - obstacle_slack + 100 alpha[52,0,3] <= 95.7
 obs_face_o52_e1_j3: - z[4,0] - obstacle_slack + 100 alpha[52,1,3] <= 99.7
 obs_face_o52_e2_j3: - z[4,2] - obstacle_slack + 100 alpha[52,2,3]
   <= 103.7
 obs_face_o52_e3_j3: z[4,0] - obstacle_slack + 100 alpha[52,3,3] <= 99.7
 obs_alpha_sum_o52_j4: alpha[52,0,4] + alpha[52,1,4] + alpha[52,2,4]
   + alpha[52,3,4] >= 1
 obs_face_o52_e0_j4: z[5,2] - obstacle_slack + 100 alpha[52,0,4] <= 95.7
 obs_face_o52_e1_j4: - z[5,0] - obstacle_slack + 100 alpha[52,1,4] <= 99.7
 obs_face_o52_e2_j4: - z[5,2] - obstacle_slack + 100 alpha[52,2,4]
   <= 103.7
 obs_face_o52_e3_j4: z[5,0] - obstacle_slack + 100 alpha[52,3,4] <= 99.7
 obs_alpha_sum_o52_j5: alpha[52,0,5] + alpha[52,1,5] + alpha[52,2,5]
   + alpha[52,3,5] >= 1
 obs_face_o52_e0_j5: z[6,2] - obstacle_slack + 100 alpha[52,0,5] <= 95.7
 obs_face_o52_e1_j5: - z[6,0] - obstacle_slack + 100 alpha[52,1,5] <= 99.7
 obs_face_o52_e2_j5: - z[6,2] - obstacle_slack + 100 alpha[52,2,5]
   <= 103.7
 obs_face_o52_e3_j5: z[6,0] - obstacle_slack + 100 alpha[52,3,5] <= 99.7
 obs_alpha_sum_o52_j6: alpha[52,0,6] + alpha[52,1,6] + alpha[52,2,6]
   + alpha[52,3,6] >= 1
 obs_face_o52_e0_j6: z[7,2] - obstacle_slack + 100 alpha[52,0,6] <= 95.7
 obs_face_o52_e1_j6: - z[7,0] - obstacle_slack + 100 alpha[52,1,6] <= 99.7
 obs_face_o52_e2_j6: - z[7,2] - obstacle_slack + 100 alpha[52,2,6]
   <= 103.7
 obs_face_o52_e3_j6: z[7,0] - obstacle_slack + 100 alpha[52,3,6] <= 99.7
 obs_alpha_sum_o52_j7: alpha[52,0,7] + alpha[52,1,7] + alpha[52,2,7]
   + alpha[52,3,7] >= 1
 obs_face_o52_e0_j7: z[8,2] - obstacle_slack + 100 alpha[52,0,7] <= 95.7
 obs_face_o52_e1_j7: - z[8,0] - obstacle_slack + 100 alpha[52,1,7] <= 99.7
 obs_face_o52_e2_j7: - z[8,2] - obstacle_slack + 100 alpha[52,2,7]
   <= 103.7
 obs_face_o52_e3_j7: z[8,0] - obstacle_slack + 100 alpha[52,3,7] <= 99.7
 obs_alpha_sum_o52_j8: alpha[52,0,8] + alpha[52,1,8] + alpha[52,2,8]
   + alpha[52,3,8] >= 1
 obs_face_o52_e0_j8: z[9,2] - obstacle_slack + 100 alpha[52,0,8] <= 95.7
 obs_face_o52_e1_j8: - z[9,0] - obstacle_slack + 100 alpha[52,1,8] <= 99.7
 obs_face_o52_e2_j8: - z[9,2] - obstacle_slack + 100 alpha[52,2,8]
   <= 103.7
 obs_face_o52_e3_j8: z[9,0] - obstacle_slack + 100 alpha[52,3,8] <= 99.7
 obs_alpha_sum_o52_j9: alpha[52,0,9] + alpha[52,1,9] + alpha[52,2,9]
   + alpha[52,3,9] >= 1
 obs_face_o52_e0_j9: z[10,2] - obstacle_slack + 100 alpha[52,0,9] <= 95.7
 obs_face_o52_e1_j9: - z[10,0] - obstacle_slack + 100 alpha[52,1,9]
   <= 99.7
 obs_face_o52_e2_j9: - z[10,2] - obstacle_slack + 100 alpha[52,2,9]
   <= 103.7
 obs_face_o52_e3_j9: z[10,0] - obstacle_slack + 100 alpha[52,3,9] <= 99.7
 obs_alpha_sum_o52_j10: alpha[52,0,10] + alpha[52,1,10] + alpha[52,2,10]
   + alpha[52,3,10] >= 1
 obs_face_o52_e0_j10: z[11,2] - obstacle_slack + 100 alpha[52,0,10]
   <= 95.7
 obs_face_o52_e1_j10: - z[11,0] - obstacle_slack + 100 alpha[52,1,10]
   <= 99.7
 obs_face_o52_e2_j10: - z[11,2] - obstacle_slack + 100 alpha[52,2,10]
   <= 103.7
 obs_face_o52_e3_j10: z[11,0] - obstacle_slack + 100 alpha[52,3,10]
   <= 99.7
 obs_alpha_sum_o52_j11: alpha[52,0,11] + alpha[52,1,11] + alpha[52,2,11]
   + alpha[52,3,11] >= 1
 obs_face_o52_e0_j11: z[12,2] - obstacle_slack + 100 alpha[52,0,11]
   <= 95.7
 obs_face_o52_e1_j11: - z[12,0] - obstacle_slack + 100 alpha[52,1,11]
   <= 99.7
 obs_face_o52_e2_j11: - z[12,2] - obstacle_slack + 100 alpha[52,2,11]
   <= 103.7
 obs_face_o52_e3_j11: z[12,0] - obstacle_slack + 100 alpha[52,3,11]
   <= 99.7
 obs_alpha_sum_o52_j12: alpha[52,0,12] + alpha[52,1,12] + alpha[52,2,12]
   + alpha[52,3,12] >= 1
 obs_face_o52_e0_j12: z[13,2] - obstacle_slack + 100 alpha[52,0,12]
   <= 95.7
 obs_face_o52_e1_j12: - z[13,0] - obstacle_slack + 100 alpha[52,1,12]
   <= 99.7
 obs_face_o52_e2_j12: - z[13,2] - obstacle_slack + 100 alpha[52,2,12]
   <= 103.7
 obs_face_o52_e3_j12: z[13,0] - obstacle_slack + 100 alpha[52,3,12]
   <= 99.7
 obs_alpha_sum_o52_j13: alpha[52,0,13] + alpha[52,1,13] + alpha[52,2,13]
   + alpha[52,3,13] >= 1
 obs_face_o52_e0_j13: z[14,2] - obstacle_slack + 100 alpha[52,0,13]
   <= 95.7
 obs_face_o52_e1_j13: - z[14,0] - obstacle_slack + 100 alpha[52,1,13]
   <= 99.7
 obs_face_o52_e2_j13: - z[14,2] - obstacle_slack + 100 alpha[52,2,13]
   <= 103.7
 obs_face_o52_e3_j13: z[14,0] - obstacle_slack + 100 alpha[52,3,13]
   <= 99.7
 obs_alpha_sum_o52_j14: alpha[52,0,14] + alpha[52,1,14] + alpha[52,2,14]
   + alpha[52,3,14] >= 1
 obs_face_o52_e0_j14: z[15,2] - obstacle_slack + 100 alpha[52,0,14]
   <= 95.7
 obs_face_o52_e1_j14: - z[15,0] - obstacle_slack + 100 alpha[52,1,14]
   <= 99.7
 obs_face_o52_e2_j14: - z[15,2] - obstacle_slack + 100 alpha[52,2,14]
   <= 103.7
 obs_face_o52_e3_j14: z[15,0] - obstacle_slack + 100 alpha[52,3,14]
   <= 99.7
 obs_alpha_sum_o52_j15: alpha[52,0,15] + alpha[52,1,15] + alpha[52,2,15]
   + alpha[52,3,15] >= 1
 obs_face_o52_e0_j15: z[16,2] - obstacle_slack + 100 alpha[52,0,15]
   <= 95.7
 obs_face_o52_e1_j15: - z[16,0] - obstacle_slack + 100 alpha[52,1,15]
   <= 99.7
 obs_face_o52_e2_j15: - z[16,2] - obstacle_slack + 100 alpha[52,2,15]
   <= 103.7
 obs_face_o52_e3_j15: z[16,0] - obstacle_slack + 100 alpha[52,3,15]
   <= 99.7
 obs_alpha_sum_o52_j16: alpha[52,0,16] + alpha[52,1,16] + alpha[52,2,16]
   + alpha[52,3,16] >= 1
 obs_face_o52_e0_j16: z[17,2] - obstacle_slack + 100 alpha[52,0,16]
   <= 95.7
 obs_face_o52_e1_j16: - z[17,0] - obstacle_slack + 100 alpha[52,1,16]
   <= 99.7
 obs_face_o52_e2_j16: - z[17,2] - obstacle_slack + 100 alpha[52,2,16]
   <= 103.7
 obs_face_o52_e3_j16: z[17,0] - obstacle_slack + 100 alpha[52,3,16]
   <= 99.7
 obs_alpha_sum_o52_j17: alpha[52,0,17] + alpha[52,1,17] + alpha[52,2,17]
   + alpha[52,3,17] >= 1
 obs_face_o52_e0_j17: z[18,2] - obstacle_slack + 100 alpha[52,0,17]
   <= 95.7
 obs_face_o52_e1_j17: - z[18,0] - obstacle_slack + 100 alpha[52,1,17]
   <= 99.7
 obs_face_o52_e2_j17: - z[18,2] - obstacle_slack + 100 alpha[52,2,17]
   <= 103.7
 obs_face_o52_e3_j17: z[18,0] - obstacle_slack + 100 alpha[52,3,17]
   <= 99.7
 obs_alpha_sum_o52_j18: alpha[52,0,18] + alpha[52,1,18] + alpha[52,2,18]
   + alpha[52,3,18] >= 1
 obs_face_o52_e0_j18: z[19,2] - obstacle_slack + 100 alpha[52,0,18]
   <= 95.7
 obs_face_o52_e1_j18: - z[19,0] - obstacle_slack + 100 alpha[52,1,18]
   <= 99.7
 obs_face_o52_e2_j18: - z[19,2] - obstacle_slack + 100 alpha[52,2,18]
   <= 103.7
 obs_face_o52_e3_j18: z[19,0] - obstacle_slack + 100 alpha[52,3,18]
   <= 99.7
 obs_alpha_sum_o52_j19: alpha[52,0,19] + alpha[52,1,19] + alpha[52,2,19]
   + alpha[52,3,19] >= 1
 obs_face_o52_e0_j19: z[20,2] - obstacle_slack + 100 alpha[52,0,19]
   <= 95.7
 obs_face_o52_e1_j19: - z[20,0] - obstacle_slack + 100 alpha[52,1,19]
   <= 99.7
 obs_face_o52_e2_j19: - z[20,2] - obstacle_slack + 100 alpha[52,2,19]
   <= 103.7
 obs_face_o52_e3_j19: z[20,0] - obstacle_slack + 100 alpha[52,3,19]
   <= 99.7
 obs_alpha_sum_o52_j20: alpha[52,0,20] + alpha[52,1,20] + alpha[52,2,20]
   + alpha[52,3,20] >= 1
 obs_face_o52_e0_j20: z[21,2] - obstacle_slack + 100 alpha[52,0,20]
   <= 95.7
 obs_face_o52_e1_j20: - z[21,0] - obstacle_slack + 100 alpha[52,1,20]
   <= 99.7
 obs_face_o52_e2_j20: - z[21,2] - obstacle_slack + 100 alpha[52,2,20]
   <= 103.7
 obs_face_o52_e3_j20: z[21,0] - obstacle_slack + 100 alpha[52,3,20]
   <= 99.7
 obs_alpha_sum_o52_j21: alpha[52,0,21] + alpha[52,1,21] + alpha[52,2,21]
   + alpha[52,3,21] >= 1
 obs_face_o52_e0_j21: z[22,2] - obstacle_slack + 100 alpha[52,0,21]
   <= 95.7
 obs_face_o52_e1_j21: - z[22,0] - obstacle_slack + 100 alpha[52,1,21]
   <= 99.7
 obs_face_o52_e2_j21: - z[22,2] - obstacle_slack + 100 alpha[52,2,21]
   <= 103.7
 obs_face_o52_e3_j21: z[22,0] - obstacle_slack + 100 alpha[52,3,21]
   <= 99.7
 obs_alpha_sum_o52_j22: alpha[52,0,22] + alpha[52,1,22] + alpha[52,2,22]
   + alpha[52,3,22] >= 1
 obs_face_o52_e0_j22: z[23,2] - obstacle_slack + 100 alpha[52,0,22]
   <= 95.7
 obs_face_o52_e1_j22: - z[23,0] - obstacle_slack + 100 alpha[52,1,22]
   <= 99.7
 obs_face_o52_e2_j22: - z[23,2] - obstacle_slack + 100 alpha[52,2,22]
   <= 103.7
 obs_face_o52_e3_j22: z[23,0] - obstacle_slack + 100 alpha[52,3,22]
   <= 99.7
 obs_alpha_sum_o52_j23: alpha[52,0,23] + alpha[52,1,23] + alpha[52,2,23]
   + alpha[52,3,23] >= 1
 obs_face_o52_e0_j23: z[24,2] - obstacle_slack + 100 alpha[52,0,23]
   <= 95.7
 obs_face_o52_e1_j23: - z[24,0] - obstacle_slack + 100 alpha[52,1,23]
   <= 99.7
 obs_face_o52_e2_j23: - z[24,2] - obstacle_slack + 100 alpha[52,2,23]
   <= 103.7
 obs_face_o52_e3_j23: z[24,0] - obstacle_slack + 100 alpha[52,3,23]
   <= 99.7
 obs_alpha_sum_o52_j24: alpha[52,0,24] + alpha[52,1,24] + alpha[52,2,24]
   + alpha[52,3,24] >= 1
 obs_face_o52_e0_j24: z[25,2] - obstacle_slack + 100 alpha[52,0,24]
   <= 95.7
 obs_face_o52_e1_j24: - z[25,0] - obstacle_slack + 100 alpha[52,1,24]
   <= 99.7
 obs_face_o52_e2_j24: - z[25,2] - obstacle_slack + 100 alpha[52,2,24]
   <= 103.7
 obs_face_o52_e3_j24: z[25,0] - obstacle_slack + 100 alpha[52,3,24]
   <= 99.7
 obs_alpha_sum_o52_j25: alpha[52,0,25] + alpha[52,1,25] + alpha[52,2,25]
   + alpha[52,3,25] >= 1
 obs_face_o52_e0_j25: z[26,2] - obstacle_slack + 100 alpha[52,0,25]
   <= 95.7
 obs_face_o52_e1_j25: - z[26,0] - obstacle_slack + 100 alpha[52,1,25]
   <= 99.7
 obs_face_o52_e2_j25: - z[26,2] - obstacle_slack + 100 alpha[52,2,25]
   <= 103.7
 obs_face_o52_e3_j25: z[26,0] - obstacle_slack + 100 alpha[52,3,25]
   <= 99.7
 obs_alpha_sum_o52_j26: alpha[52,0,26] + alpha[52,1,26] + alpha[52,2,26]
   + alpha[52,3,26] >= 1
 obs_face_o52_e0_j26: z[27,2] - obstacle_slack + 100 alpha[52,0,26]
   <= 95.7
 obs_face_o52_e1_j26: - z[27,0] - obstacle_slack + 100 alpha[52,1,26]
   <= 99.7
 obs_face_o52_e2_j26: - z[27,2] - obstacle_slack + 100 alpha[52,2,26]
   <= 103.7
 obs_face_o52_e3_j26: z[27,0] - obstacle_slack + 100 alpha[52,3,26]
   <= 99.7
 obs_alpha_sum_o52_j27: alpha[52,0,27] + alpha[52,1,27] + alpha[52,2,27]
   + alpha[52,3,27] >= 1
 obs_face_o52_e0_j27: z[28,2] - obstacle_slack + 100 alpha[52,0,27]
   <= 95.7
 obs_face_o52_e1_j27: - z[28,0] - obstacle_slack + 100 alpha[52,1,27]
   <= 99.7
 obs_face_o52_e2_j27: - z[28,2] - obstacle_slack + 100 alpha[52,2,27]
   <= 103.7
 obs_face_o52_e3_j27: z[28,0] - obstacle_slack + 100 alpha[52,3,27]
   <= 99.7
 obs_alpha_sum_o52_j28: alpha[52,0,28] + alpha[52,1,28] + alpha[52,2,28]
   + alpha[52,3,28] >= 1
 obs_face_o52_e0_j28: z[29,2] - obstacle_slack + 100 alpha[52,0,28]
   <= 95.7
 obs_face_o52_e1_j28: - z[29,0] - obstacle_slack + 100 alpha[52,1,28]
   <= 99.7
 obs_face_o52_e2_j28: - z[29,2] - obstacle_slack + 100 alpha[52,2,28]
   <= 103.7
 obs_face_o52_e3_j28: z[29,0] - obstacle_slack + 100 alpha[52,3,28]
   <= 99.7
 obs_alpha_sum_o52_j29: alpha[52,0,29] + alpha[52,1,29] + alpha[52,2,29]
   + alpha[52,3,29] >= 1
 obs_face_o52_e0_j29: z[30,2] - obstacle_slack + 100 alpha[52,0,29]
   <= 95.7
 obs_face_o52_e1_j29: - z[30,0] - obstacle_slack + 100 alpha[52,1,29]
   <= 99.7
 obs_face_o52_e2_j29: - z[30,2] - obstacle_slack + 100 alpha[52,2,29]
   <= 103.7
 obs_face_o52_e3_j29: z[30,0] - obstacle_slack + 100 alpha[52,3,29]
   <= 99.7
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
 alpha[4,0,0] alpha[4,0,1] alpha[4,0,2] alpha[4,0,3] alpha[4,0,4]
 alpha[4,0,5] alpha[4,0,6] alpha[4,0,7] alpha[4,0,8] alpha[4,0,9]
 alpha[4,0,10] alpha[4,0,11] alpha[4,0,12] alpha[4,0,13] alpha[4,0,14]
 alpha[4,0,15] alpha[4,0,16] alpha[4,0,17] alpha[4,0,18] alpha[4,0,19]
 alpha[4,0,20] alpha[4,0,21] alpha[4,0,22] alpha[4,0,23] alpha[4,0,24]
 alpha[4,0,25] alpha[4,0,26] alpha[4,0,27] alpha[4,0,28] alpha[4,0,29]
 alpha[4,1,0] alpha[4,1,1] alpha[4,1,2] alpha[4,1,3] alpha[4,1,4]
 alpha[4,1,5] alpha[4,1,6] alpha[4,1,7] alpha[4,1,8] alpha[4,1,9]
 alpha[4,1,10] alpha[4,1,11] alpha[4,1,12] alpha[4,1,13] alpha[4,1,14]
 alpha[4,1,15] alpha[4,1,16] alpha[4,1,17] alpha[4,1,18] alpha[4,1,19]
 alpha[4,1,20] alpha[4,1,21] alpha[4,1,22] alpha[4,1,23] alpha[4,1,24]
 alpha[4,1,25] alpha[4,1,26] alpha[4,1,27] alpha[4,1,28] alpha[4,1,29]
 alpha[4,2,0] alpha[4,2,1] alpha[4,2,2] alpha[4,2,3] alpha[4,2,4]
 alpha[4,2,5] alpha[4,2,6] alpha[4,2,7] alpha[4,2,8] alpha[4,2,9]
 alpha[4,2,10] alpha[4,2,11] alpha[4,2,12] alpha[4,2,13] alpha[4,2,14]
 alpha[4,2,15] alpha[4,2,16] alpha[4,2,17] alpha[4,2,18] alpha[4,2,19]
 alpha[4,2,20] alpha[4,2,21] alpha[4,2,22] alpha[4,2,23] alpha[4,2,24]
 alpha[4,2,25] alpha[4,2,26] alpha[4,2,27] alpha[4,2,28] alpha[4,2,29]
 alpha[4,3,0] alpha[4,3,1] alpha[4,3,2] alpha[4,3,3] alpha[4,3,4]
 alpha[4,3,5] alpha[4,3,6] alpha[4,3,7] alpha[4,3,8] alpha[4,3,9]
 alpha[4,3,10] alpha[4,3,11] alpha[4,3,12] alpha[4,3,13] alpha[4,3,14]
 alpha[4,3,15] alpha[4,3,16] alpha[4,3,17] alpha[4,3,18] alpha[4,3,19]
 alpha[4,3,20] alpha[4,3,21] alpha[4,3,22] alpha[4,3,23] alpha[4,3,24]
 alpha[4,3,25] alpha[4,3,26] alpha[4,3,27] alpha[4,3,28] alpha[4,3,29]
 alpha[5,0,0] alpha[5,0,1] alpha[5,0,2] alpha[5,0,3] alpha[5,0,4]
 alpha[5,0,5] alpha[5,0,6] alpha[5,0,7] alpha[5,0,8] alpha[5,0,9]
 alpha[5,0,10] alpha[5,0,11] alpha[5,0,12] alpha[5,0,13] alpha[5,0,14]
 alpha[5,0,15] alpha[5,0,16] alpha[5,0,17] alpha[5,0,18] alpha[5,0,19]
 alpha[5,0,20] alpha[5,0,21] alpha[5,0,22] alpha[5,0,23] alpha[5,0,24]
 alpha[5,0,25] alpha[5,0,26] alpha[5,0,27] alpha[5,0,28] alpha[5,0,29]
 alpha[5,1,0] alpha[5,1,1] alpha[5,1,2] alpha[5,1,3] alpha[5,1,4]
 alpha[5,1,5] alpha[5,1,6] alpha[5,1,7] alpha[5,1,8] alpha[5,1,9]
 alpha[5,1,10] alpha[5,1,11] alpha[5,1,12] alpha[5,1,13] alpha[5,1,14]
 alpha[5,1,15] alpha[5,1,16] alpha[5,1,17] alpha[5,1,18] alpha[5,1,19]
 alpha[5,1,20] alpha[5,1,21] alpha[5,1,22] alpha[5,1,23] alpha[5,1,24]
 alpha[5,1,25] alpha[5,1,26] alpha[5,1,27] alpha[5,1,28] alpha[5,1,29]
 alpha[5,2,0] alpha[5,2,1] alpha[5,2,2] alpha[5,2,3] alpha[5,2,4]
 alpha[5,2,5] alpha[5,2,6] alpha[5,2,7] alpha[5,2,8] alpha[5,2,9]
 alpha[5,2,10] alpha[5,2,11] alpha[5,2,12] alpha[5,2,13] alpha[5,2,14]
 alpha[5,2,15] alpha[5,2,16] alpha[5,2,17] alpha[5,2,18] alpha[5,2,19]
 alpha[5,2,20] alpha[5,2,21] alpha[5,2,22] alpha[5,2,23] alpha[5,2,24]
 alpha[5,2,25] alpha[5,2,26] alpha[5,2,27] alpha[5,2,28] alpha[5,2,29]
 alpha[5,3,0] alpha[5,3,1] alpha[5,3,2] alpha[5,3,3] alpha[5,3,4]
 alpha[5,3,5] alpha[5,3,6] alpha[5,3,7] alpha[5,3,8] alpha[5,3,9]
 alpha[5,3,10] alpha[5,3,11] alpha[5,3,12] alpha[5,3,13] alpha[5,3,14]
 alpha[5,3,15] alpha[5,3,16] alpha[5,3,17] alpha[5,3,18] alpha[5,3,19]
 alpha[5,3,20] alpha[5,3,21] alpha[5,3,22] alpha[5,3,23] alpha[5,3,24]
 alpha[5,3,25] alpha[5,3,26] alpha[5,3,27] alpha[5,3,28] alpha[5,3,29]
 alpha[6,0,0] alpha[6,0,1] alpha[6,0,2] alpha[6,0,3] alpha[6,0,4]
 alpha[6,0,5] alpha[6,0,6] alpha[6,0,7] alpha[6,0,8] alpha[6,0,9]
 alpha[6,0,10] alpha[6,0,11] alpha[6,0,12] alpha[6,0,13] alpha[6,0,14]
 alpha[6,0,15] alpha[6,0,16] alpha[6,0,17] alpha[6,0,18] alpha[6,0,19]
 alpha[6,0,20] alpha[6,0,21] alpha[6,0,22] alpha[6,0,23] alpha[6,0,24]
 alpha[6,0,25] alpha[6,0,26] alpha[6,0,27] alpha[6,0,28] alpha[6,0,29]
 alpha[6,1,0] alpha[6,1,1] alpha[6,1,2] alpha[6,1,3] alpha[6,1,4]
 alpha[6,1,5] alpha[6,1,6] alpha[6,1,7] alpha[6,1,8] alpha[6,1,9]
 alpha[6,1,10] alpha[6,1,11] alpha[6,1,12] alpha[6,1,13] alpha[6,1,14]
 alpha[6,1,15] alpha[6,1,16] alpha[6,1,17] alpha[6,1,18] alpha[6,1,19]
 alpha[6,1,20] alpha[6,1,21] alpha[6,1,22] alpha[6,1,23] alpha[6,1,24]
 alpha[6,1,25] alpha[6,1,26] alpha[6,1,27] alpha[6,1,28] alpha[6,1,29]
 alpha[6,2,0] alpha[6,2,1] alpha[6,2,2] alpha[6,2,3] alpha[6,2,4]
 alpha[6,2,5] alpha[6,2,6] alpha[6,2,7] alpha[6,2,8] alpha[6,2,9]
 alpha[6,2,10] alpha[6,2,11] alpha[6,2,12] alpha[6,2,13] alpha[6,2,14]
 alpha[6,2,15] alpha[6,2,16] alpha[6,2,17] alpha[6,2,18] alpha[6,2,19]
 alpha[6,2,20] alpha[6,2,21] alpha[6,2,22] alpha[6,2,23] alpha[6,2,24]
 alpha[6,2,25] alpha[6,2,26] alpha[6,2,27] alpha[6,2,28] alpha[6,2,29]
 alpha[6,3,0] alpha[6,3,1] alpha[6,3,2] alpha[6,3,3] alpha[6,3,4]
 alpha[6,3,5] alpha[6,3,6] alpha[6,3,7] alpha[6,3,8] alpha[6,3,9]
 alpha[6,3,10] alpha[6,3,11] alpha[6,3,12] alpha[6,3,13] alpha[6,3,14]
 alpha[6,3,15] alpha[6,3,16] alpha[6,3,17] alpha[6,3,18] alpha[6,3,19]
 alpha[6,3,20] alpha[6,3,21] alpha[6,3,22] alpha[6,3,23] alpha[6,3,24]
 alpha[6,3,25] alpha[6,3,26] alpha[6,3,27] alpha[6,3,28] alpha[6,3,29]
 alpha[7,0,0] alpha[7,0,1] alpha[7,0,2] alpha[7,0,3] alpha[7,0,4]
 alpha[7,0,5] alpha[7,0,6] alpha[7,0,7] alpha[7,0,8] alpha[7,0,9]
 alpha[7,0,10] alpha[7,0,11] alpha[7,0,12] alpha[7,0,13] alpha[7,0,14]
 alpha[7,0,15] alpha[7,0,16] alpha[7,0,17] alpha[7,0,18] alpha[7,0,19]
 alpha[7,0,20] alpha[7,0,21] alpha[7,0,22] alpha[7,0,23] alpha[7,0,24]
 alpha[7,0,25] alpha[7,0,26] alpha[7,0,27] alpha[7,0,28] alpha[7,0,29]
 alpha[7,1,0] alpha[7,1,1] alpha[7,1,2] alpha[7,1,3] alpha[7,1,4]
 alpha[7,1,5] alpha[7,1,6] alpha[7,1,7] alpha[7,1,8] alpha[7,1,9]
 alpha[7,1,10] alpha[7,1,11] alpha[7,1,12] alpha[7,1,13] alpha[7,1,14]
 alpha[7,1,15] alpha[7,1,16] alpha[7,1,17] alpha[7,1,18] alpha[7,1,19]
 alpha[7,1,20] alpha[7,1,21] alpha[7,1,22] alpha[7,1,23] alpha[7,1,24]
 alpha[7,1,25] alpha[7,1,26] alpha[7,1,27] alpha[7,1,28] alpha[7,1,29]
 alpha[7,2,0] alpha[7,2,1] alpha[7,2,2] alpha[7,2,3] alpha[7,2,4]
 alpha[7,2,5] alpha[7,2,6] alpha[7,2,7] alpha[7,2,8] alpha[7,2,9]
 alpha[7,2,10] alpha[7,2,11] alpha[7,2,12] alpha[7,2,13] alpha[7,2,14]
 alpha[7,2,15] alpha[7,2,16] alpha[7,2,17] alpha[7,2,18] alpha[7,2,19]
 alpha[7,2,20] alpha[7,2,21] alpha[7,2,22] alpha[7,2,23] alpha[7,2,24]
 alpha[7,2,25] alpha[7,2,26] alpha[7,2,27] alpha[7,2,28] alpha[7,2,29]
 alpha[7,3,0] alpha[7,3,1] alpha[7,3,2] alpha[7,3,3] alpha[7,3,4]
 alpha[7,3,5] alpha[7,3,6] alpha[7,3,7] alpha[7,3,8] alpha[7,3,9]
 alpha[7,3,10] alpha[7,3,11] alpha[7,3,12] alpha[7,3,13] alpha[7,3,14]
 alpha[7,3,15] alpha[7,3,16] alpha[7,3,17] alpha[7,3,18] alpha[7,3,19]
 alpha[7,3,20] alpha[7,3,21] alpha[7,3,22] alpha[7,3,23] alpha[7,3,24]
 alpha[7,3,25] alpha[7,3,26] alpha[7,3,27] alpha[7,3,28] alpha[7,3,29]
 alpha[8,0,0] alpha[8,0,1] alpha[8,0,2] alpha[8,0,3] alpha[8,0,4]
 alpha[8,0,5] alpha[8,0,6] alpha[8,0,7] alpha[8,0,8] alpha[8,0,9]
 alpha[8,0,10] alpha[8,0,11] alpha[8,0,12] alpha[8,0,13] alpha[8,0,14]
 alpha[8,0,15] alpha[8,0,16] alpha[8,0,17] alpha[8,0,18] alpha[8,0,19]
 alpha[8,0,20] alpha[8,0,21] alpha[8,0,22] alpha[8,0,23] alpha[8,0,24]
 alpha[8,0,25] alpha[8,0,26] alpha[8,0,27] alpha[8,0,28] alpha[8,0,29]
 alpha[8,1,0] alpha[8,1,1] alpha[8,1,2] alpha[8,1,3] alpha[8,1,4]
 alpha[8,1,5] alpha[8,1,6] alpha[8,1,7] alpha[8,1,8] alpha[8,1,9]
 alpha[8,1,10] alpha[8,1,11] alpha[8,1,12] alpha[8,1,13] alpha[8,1,14]
 alpha[8,1,15] alpha[8,1,16] alpha[8,1,17] alpha[8,1,18] alpha[8,1,19]
 alpha[8,1,20] alpha[8,1,21] alpha[8,1,22] alpha[8,1,23] alpha[8,1,24]
 alpha[8,1,25] alpha[8,1,26] alpha[8,1,27] alpha[8,1,28] alpha[8,1,29]
 alpha[8,2,0] alpha[8,2,1] alpha[8,2,2] alpha[8,2,3] alpha[8,2,4]
 alpha[8,2,5] alpha[8,2,6] alpha[8,2,7] alpha[8,2,8] alpha[8,2,9]
 alpha[8,2,10] alpha[8,2,11] alpha[8,2,12] alpha[8,2,13] alpha[8,2,14]
 alpha[8,2,15] alpha[8,2,16] alpha[8,2,17] alpha[8,2,18] alpha[8,2,19]
 alpha[8,2,20] alpha[8,2,21] alpha[8,2,22] alpha[8,2,23] alpha[8,2,24]
 alpha[8,2,25] alpha[8,2,26] alpha[8,2,27] alpha[8,2,28] alpha[8,2,29]
 alpha[8,3,0] alpha[8,3,1] alpha[8,3,2] alpha[8,3,3] alpha[8,3,4]
 alpha[8,3,5] alpha[8,3,6] alpha[8,3,7] alpha[8,3,8] alpha[8,3,9]
 alpha[8,3,10] alpha[8,3,11] alpha[8,3,12] alpha[8,3,13] alpha[8,3,14]
 alpha[8,3,15] alpha[8,3,16] alpha[8,3,17] alpha[8,3,18] alpha[8,3,19]
 alpha[8,3,20] alpha[8,3,21] alpha[8,3,22] alpha[8,3,23] alpha[8,3,24]
 alpha[8,3,25] alpha[8,3,26] alpha[8,3,27] alpha[8,3,28] alpha[8,3,29]
 alpha[9,0,0] alpha[9,0,1] alpha[9,0,2] alpha[9,0,3] alpha[9,0,4]
 alpha[9,0,5] alpha[9,0,6] alpha[9,0,7] alpha[9,0,8] alpha[9,0,9]
 alpha[9,0,10] alpha[9,0,11] alpha[9,0,12] alpha[9,0,13] alpha[9,0,14]
 alpha[9,0,15] alpha[9,0,16] alpha[9,0,17] alpha[9,0,18] alpha[9,0,19]
 alpha[9,0,20] alpha[9,0,21] alpha[9,0,22] alpha[9,0,23] alpha[9,0,24]
 alpha[9,0,25] alpha[9,0,26] alpha[9,0,27] alpha[9,0,28] alpha[9,0,29]
 alpha[9,1,0] alpha[9,1,1] alpha[9,1,2] alpha[9,1,3] alpha[9,1,4]
 alpha[9,1,5] alpha[9,1,6] alpha[9,1,7] alpha[9,1,8] alpha[9,1,9]
 alpha[9,1,10] alpha[9,1,11] alpha[9,1,12] alpha[9,1,13] alpha[9,1,14]
 alpha[9,1,15] alpha[9,1,16] alpha[9,1,17] alpha[9,1,18] alpha[9,1,19]
 alpha[9,1,20] alpha[9,1,21] alpha[9,1,22] alpha[9,1,23] alpha[9,1,24]
 alpha[9,1,25] alpha[9,1,26] alpha[9,1,27] alpha[9,1,28] alpha[9,1,29]
 alpha[9,2,0] alpha[9,2,1] alpha[9,2,2] alpha[9,2,3] alpha[9,2,4]
 alpha[9,2,5] alpha[9,2,6] alpha[9,2,7] alpha[9,2,8] alpha[9,2,9]
 alpha[9,2,10] alpha[9,2,11] alpha[9,2,12] alpha[9,2,13] alpha[9,2,14]
 alpha[9,2,15] alpha[9,2,16] alpha[9,2,17] alpha[9,2,18] alpha[9,2,19]
 alpha[9,2,20] alpha[9,2,21] alpha[9,2,22] alpha[9,2,23] alpha[9,2,24]
 alpha[9,2,25] alpha[9,2,26] alpha[9,2,27] alpha[9,2,28] alpha[9,2,29]
 alpha[9,3,0] alpha[9,3,1] alpha[9,3,2] alpha[9,3,3] alpha[9,3,4]
 alpha[9,3,5] alpha[9,3,6] alpha[9,3,7] alpha[9,3,8] alpha[9,3,9]
 alpha[9,3,10] alpha[9,3,11] alpha[9,3,12] alpha[9,3,13] alpha[9,3,14]
 alpha[9,3,15] alpha[9,3,16] alpha[9,3,17] alpha[9,3,18] alpha[9,3,19]
 alpha[9,3,20] alpha[9,3,21] alpha[9,3,22] alpha[9,3,23] alpha[9,3,24]
 alpha[9,3,25] alpha[9,3,26] alpha[9,3,27] alpha[9,3,28] alpha[9,3,29]
 alpha[10,0,0] alpha[10,0,1] alpha[10,0,2] alpha[10,0,3] alpha[10,0,4]
 alpha[10,0,5] alpha[10,0,6] alpha[10,0,7] alpha[10,0,8] alpha[10,0,9]
 alpha[10,0,10] alpha[10,0,11] alpha[10,0,12] alpha[10,0,13] alpha[10,0,14]
 alpha[10,0,15] alpha[10,0,16] alpha[10,0,17] alpha[10,0,18] alpha[10,0,19]
 alpha[10,0,20] alpha[10,0,21] alpha[10,0,22] alpha[10,0,23] alpha[10,0,24]
 alpha[10,0,25] alpha[10,0,26] alpha[10,0,27] alpha[10,0,28] alpha[10,0,29]
 alpha[10,1,0] alpha[10,1,1] alpha[10,1,2] alpha[10,1,3] alpha[10,1,4]
 alpha[10,1,5] alpha[10,1,6] alpha[10,1,7] alpha[10,1,8] alpha[10,1,9]
 alpha[10,1,10] alpha[10,1,11] alpha[10,1,12] alpha[10,1,13] alpha[10,1,14]
 alpha[10,1,15] alpha[10,1,16] alpha[10,1,17] alpha[10,1,18] alpha[10,1,19]
 alpha[10,1,20] alpha[10,1,21] alpha[10,1,22] alpha[10,1,23] alpha[10,1,24]
 alpha[10,1,25] alpha[10,1,26] alpha[10,1,27] alpha[10,1,28] alpha[10,1,29]
 alpha[10,2,0] alpha[10,2,1] alpha[10,2,2] alpha[10,2,3] alpha[10,2,4]
 alpha[10,2,5] alpha[10,2,6] alpha[10,2,7] alpha[10,2,8] alpha[10,2,9]
 alpha[10,2,10] alpha[10,2,11] alpha[10,2,12] alpha[10,2,13] alpha[10,2,14]
 alpha[10,2,15] alpha[10,2,16] alpha[10,2,17] alpha[10,2,18] alpha[10,2,19]
 alpha[10,2,20] alpha[10,2,21] alpha[10,2,22] alpha[10,2,23] alpha[10,2,24]
 alpha[10,2,25] alpha[10,2,26] alpha[10,2,27] alpha[10,2,28] alpha[10,2,29]
 alpha[10,3,0] alpha[10,3,1] alpha[10,3,2] alpha[10,3,3] alpha[10,3,4]
 alpha[10,3,5] alpha[10,3,6] alpha[10,3,7] alpha[10,3,8] alpha[10,3,9]
 alpha[10,3,10] alpha[10,3,11] alpha[10,3,12] alpha[10,3,13] alpha[10,3,14]
 alpha[10,3,15] alpha[10,3,16] alpha[10,3,17] alpha[10,3,18] alpha[10,3,19]
 alpha[10,3,20] alpha[10,3,21] alpha[10,3,22] alpha[10,3,23] alpha[10,3,24]
 alpha[10,3,25] alpha[10,3,26] alpha[10,3,27] alpha[10,3,28] alpha[10,3,29]
 alpha[11,0,0] alpha[11,0,1] alpha[11,0,2] alpha[11,0,3] alpha[11,0,4]
 alpha[11,0,5] alpha[11,0,6] alpha[11,0,7] alpha[11,0,8] alpha[11,0,9]
 alpha[11,0,10] alpha[11,0,11] alpha[11,0,12] alpha[11,0,13] alpha[11,0,14]
 alpha[11,0,15] alpha[11,0,16] alpha[11,0,17] alpha[11,0,18] alpha[11,0,19]
 alpha[11,0,20] alpha[11,0,21] alpha[11,0,22] alpha[11,0,23] alpha[11,0,24]
 alpha[11,0,25] alpha[11,0,26] alpha[11,0,27] alpha[11,0,28] alpha[11,0,29]
 alpha[11,1,0] alpha[11,1,1] alpha[11,1,2] alpha[11,1,3] alpha[11,1,4]
 alpha[11,1,5] alpha[11,1,6] alpha[11,1,7] alpha[11,1,8] alpha[11,1,9]
 alpha[11,1,10] alpha[11,1,11] alpha[11,1,12] alpha[11,1,13] alpha[11,1,14]
 alpha[11,1,15] alpha[11,1,16] alpha[11,1,17] alpha[11,1,18] alpha[11,1,19]
 alpha[11,1,20] alpha[11,1,21] alpha[11,1,22] alpha[11,1,23] alpha[11,1,24]
 alpha[11,1,25] alpha[11,1,26] alpha[11,1,27] alpha[11,1,28] alpha[11,1,29]
 alpha[11,2,0] alpha[11,2,1] alpha[11,2,2] alpha[11,2,3] alpha[11,2,4]
 alpha[11,2,5] alpha[11,2,6] alpha[11,2,7] alpha[11,2,8] alpha[11,2,9]
 alpha[11,2,10] alpha[11,2,11] alpha[11,2,12] alpha[11,2,13] alpha[11,2,14]
 alpha[11,2,15] alpha[11,2,16] alpha[11,2,17] alpha[11,2,18] alpha[11,2,19]
 alpha[11,2,20] alpha[11,2,21] alpha[11,2,22] alpha[11,2,23] alpha[11,2,24]
 alpha[11,2,25] alpha[11,2,26] alpha[11,2,27] alpha[11,2,28] alpha[11,2,29]
 alpha[11,3,0] alpha[11,3,1] alpha[11,3,2] alpha[11,3,3] alpha[11,3,4]
 alpha[11,3,5] alpha[11,3,6] alpha[11,3,7] alpha[11,3,8] alpha[11,3,9]
 alpha[11,3,10] alpha[11,3,11] alpha[11,3,12] alpha[11,3,13] alpha[11,3,14]
 alpha[11,3,15] alpha[11,3,16] alpha[11,3,17] alpha[11,3,18] alpha[11,3,19]
 alpha[11,3,20] alpha[11,3,21] alpha[11,3,22] alpha[11,3,23] alpha[11,3,24]
 alpha[11,3,25] alpha[11,3,26] alpha[11,3,27] alpha[11,3,28] alpha[11,3,29]
 alpha[12,0,0] alpha[12,0,1] alpha[12,0,2] alpha[12,0,3] alpha[12,0,4]
 alpha[12,0,5] alpha[12,0,6] alpha[12,0,7] alpha[12,0,8] alpha[12,0,9]
 alpha[12,0,10] alpha[12,0,11] alpha[12,0,12] alpha[12,0,13] alpha[12,0,14]
 alpha[12,0,15] alpha[12,0,16] alpha[12,0,17] alpha[12,0,18] alpha[12,0,19]
 alpha[12,0,20] alpha[12,0,21] alpha[12,0,22] alpha[12,0,23] alpha[12,0,24]
 alpha[12,0,25] alpha[12,0,26] alpha[12,0,27] alpha[12,0,28] alpha[12,0,29]
 alpha[12,1,0] alpha[12,1,1] alpha[12,1,2] alpha[12,1,3] alpha[12,1,4]
 alpha[12,1,5] alpha[12,1,6] alpha[12,1,7] alpha[12,1,8] alpha[12,1,9]
 alpha[12,1,10] alpha[12,1,11] alpha[12,1,12] alpha[12,1,13] alpha[12,1,14]
 alpha[12,1,15] alpha[12,1,16] alpha[12,1,17] alpha[12,1,18] alpha[12,1,19]
 alpha[12,1,20] alpha[12,1,21] alpha[12,1,22] alpha[12,1,23] alpha[12,1,24]
 alpha[12,1,25] alpha[12,1,26] alpha[12,1,27] alpha[12,1,28] alpha[12,1,29]
 alpha[12,2,0] alpha[12,2,1] alpha[12,2,2] alpha[12,2,3] alpha[12,2,4]
 alpha[12,2,5] alpha[12,2,6] alpha[12,2,7] alpha[12,2,8] alpha[12,2,9]
 alpha[12,2,10] alpha[12,2,11] alpha[12,2,12] alpha[12,2,13] alpha[12,2,14]
 alpha[12,2,15] alpha[12,2,16] alpha[12,2,17] alpha[12,2,18] alpha[12,2,19]
 alpha[12,2,20] alpha[12,2,21] alpha[12,2,22] alpha[12,2,23] alpha[12,2,24]
 alpha[12,2,25] alpha[12,2,26] alpha[12,2,27] alpha[12,2,28] alpha[12,2,29]
 alpha[12,3,0] alpha[12,3,1] alpha[12,3,2] alpha[12,3,3] alpha[12,3,4]
 alpha[12,3,5] alpha[12,3,6] alpha[12,3,7] alpha[12,3,8] alpha[12,3,9]
 alpha[12,3,10] alpha[12,3,11] alpha[12,3,12] alpha[12,3,13] alpha[12,3,14]
 alpha[12,3,15] alpha[12,3,16] alpha[12,3,17] alpha[12,3,18] alpha[12,3,19]
 alpha[12,3,20] alpha[12,3,21] alpha[12,3,22] alpha[12,3,23] alpha[12,3,24]
 alpha[12,3,25] alpha[12,3,26] alpha[12,3,27] alpha[12,3,28] alpha[12,3,29]
 alpha[13,0,0] alpha[13,0,1] alpha[13,0,2] alpha[13,0,3] alpha[13,0,4]
 alpha[13,0,5] alpha[13,0,6] alpha[13,0,7] alpha[13,0,8] alpha[13,0,9]
 alpha[13,0,10] alpha[13,0,11] alpha[13,0,12] alpha[13,0,13] alpha[13,0,14]
 alpha[13,0,15] alpha[13,0,16] alpha[13,0,17] alpha[13,0,18] alpha[13,0,19]
 alpha[13,0,20] alpha[13,0,21] alpha[13,0,22] alpha[13,0,23] alpha[13,0,24]
 alpha[13,0,25] alpha[13,0,26] alpha[13,0,27] alpha[13,0,28] alpha[13,0,29]
 alpha[13,1,0] alpha[13,1,1] alpha[13,1,2] alpha[13,1,3] alpha[13,1,4]
 alpha[13,1,5] alpha[13,1,6] alpha[13,1,7] alpha[13,1,8] alpha[13,1,9]
 alpha[13,1,10] alpha[13,1,11] alpha[13,1,12] alpha[13,1,13] alpha[13,1,14]
 alpha[13,1,15] alpha[13,1,16] alpha[13,1,17] alpha[13,1,18] alpha[13,1,19]
 alpha[13,1,20] alpha[13,1,21] alpha[13,1,22] alpha[13,1,23] alpha[13,1,24]
 alpha[13,1,25] alpha[13,1,26] alpha[13,1,27] alpha[13,1,28] alpha[13,1,29]
 alpha[13,2,0] alpha[13,2,1] alpha[13,2,2] alpha[13,2,3] alpha[13,2,4]
 alpha[13,2,5] alpha[13,2,6] alpha[13,2,7] alpha[13,2,8] alpha[13,2,9]
 alpha[13,2,10] alpha[13,2,11] alpha[13,2,12] alpha[13,2,13] alpha[13,2,14]
 alpha[13,2,15] alpha[13,2,16] alpha[13,2,17] alpha[13,2,18] alpha[13,2,19]
 alpha[13,2,20] alpha[13,2,21] alpha[13,2,22] alpha[13,2,23] alpha[13,2,24]
 alpha[13,2,25] alpha[13,2,26] alpha[13,2,27] alpha[13,2,28] alpha[13,2,29]
 alpha[13,3,0] alpha[13,3,1] alpha[13,3,2] alpha[13,3,3] alpha[13,3,4]
 alpha[13,3,5] alpha[13,3,6] alpha[13,3,7] alpha[13,3,8] alpha[13,3,9]
 alpha[13,3,10] alpha[13,3,11] alpha[13,3,12] alpha[13,3,13] alpha[13,3,14]
 alpha[13,3,15] alpha[13,3,16] alpha[13,3,17] alpha[13,3,18] alpha[13,3,19]
 alpha[13,3,20] alpha[13,3,21] alpha[13,3,22] alpha[13,3,23] alpha[13,3,24]
 alpha[13,3,25] alpha[13,3,26] alpha[13,3,27] alpha[13,3,28] alpha[13,3,29]
 alpha[14,0,0] alpha[14,0,1] alpha[14,0,2] alpha[14,0,3] alpha[14,0,4]
 alpha[14,0,5] alpha[14,0,6] alpha[14,0,7] alpha[14,0,8] alpha[14,0,9]
 alpha[14,0,10] alpha[14,0,11] alpha[14,0,12] alpha[14,0,13] alpha[14,0,14]
 alpha[14,0,15] alpha[14,0,16] alpha[14,0,17] alpha[14,0,18] alpha[14,0,19]
 alpha[14,0,20] alpha[14,0,21] alpha[14,0,22] alpha[14,0,23] alpha[14,0,24]
 alpha[14,0,25] alpha[14,0,26] alpha[14,0,27] alpha[14,0,28] alpha[14,0,29]
 alpha[14,1,0] alpha[14,1,1] alpha[14,1,2] alpha[14,1,3] alpha[14,1,4]
 alpha[14,1,5] alpha[14,1,6] alpha[14,1,7] alpha[14,1,8] alpha[14,1,9]
 alpha[14,1,10] alpha[14,1,11] alpha[14,1,12] alpha[14,1,13] alpha[14,1,14]
 alpha[14,1,15] alpha[14,1,16] alpha[14,1,17] alpha[14,1,18] alpha[14,1,19]
 alpha[14,1,20] alpha[14,1,21] alpha[14,1,22] alpha[14,1,23] alpha[14,1,24]
 alpha[14,1,25] alpha[14,1,26] alpha[14,1,27] alpha[14,1,28] alpha[14,1,29]
 alpha[14,2,0] alpha[14,2,1] alpha[14,2,2] alpha[14,2,3] alpha[14,2,4]
 alpha[14,2,5] alpha[14,2,6] alpha[14,2,7] alpha[14,2,8] alpha[14,2,9]
 alpha[14,2,10] alpha[14,2,11] alpha[14,2,12] alpha[14,2,13] alpha[14,2,14]
 alpha[14,2,15] alpha[14,2,16] alpha[14,2,17] alpha[14,2,18] alpha[14,2,19]
 alpha[14,2,20] alpha[14,2,21] alpha[14,2,22] alpha[14,2,23] alpha[14,2,24]
 alpha[14,2,25] alpha[14,2,26] alpha[14,2,27] alpha[14,2,28] alpha[14,2,29]
 alpha[14,3,0] alpha[14,3,1] alpha[14,3,2] alpha[14,3,3] alpha[14,3,4]
 alpha[14,3,5] alpha[14,3,6] alpha[14,3,7] alpha[14,3,8] alpha[14,3,9]
 alpha[14,3,10] alpha[14,3,11] alpha[14,3,12] alpha[14,3,13] alpha[14,3,14]
 alpha[14,3,15] alpha[14,3,16] alpha[14,3,17] alpha[14,3,18] alpha[14,3,19]
 alpha[14,3,20] alpha[14,3,21] alpha[14,3,22] alpha[14,3,23] alpha[14,3,24]
 alpha[14,3,25] alpha[14,3,26] alpha[14,3,27] alpha[14,3,28] alpha[14,3,29]
 alpha[15,0,0] alpha[15,0,1] alpha[15,0,2] alpha[15,0,3] alpha[15,0,4]
 alpha[15,0,5] alpha[15,0,6] alpha[15,0,7] alpha[15,0,8] alpha[15,0,9]
 alpha[15,0,10] alpha[15,0,11] alpha[15,0,12] alpha[15,0,13] alpha[15,0,14]
 alpha[15,0,15] alpha[15,0,16] alpha[15,0,17] alpha[15,0,18] alpha[15,0,19]
 alpha[15,0,20] alpha[15,0,21] alpha[15,0,22] alpha[15,0,23] alpha[15,0,24]
 alpha[15,0,25] alpha[15,0,26] alpha[15,0,27] alpha[15,0,28] alpha[15,0,29]
 alpha[15,1,0] alpha[15,1,1] alpha[15,1,2] alpha[15,1,3] alpha[15,1,4]
 alpha[15,1,5] alpha[15,1,6] alpha[15,1,7] alpha[15,1,8] alpha[15,1,9]
 alpha[15,1,10] alpha[15,1,11] alpha[15,1,12] alpha[15,1,13] alpha[15,1,14]
 alpha[15,1,15] alpha[15,1,16] alpha[15,1,17] alpha[15,1,18] alpha[15,1,19]
 alpha[15,1,20] alpha[15,1,21] alpha[15,1,22] alpha[15,1,23] alpha[15,1,24]
 alpha[15,1,25] alpha[15,1,26] alpha[15,1,27] alpha[15,1,28] alpha[15,1,29]
 alpha[15,2,0] alpha[15,2,1] alpha[15,2,2] alpha[15,2,3] alpha[15,2,4]
 alpha[15,2,5] alpha[15,2,6] alpha[15,2,7] alpha[15,2,8] alpha[15,2,9]
 alpha[15,2,10] alpha[15,2,11] alpha[15,2,12] alpha[15,2,13] alpha[15,2,14]
 alpha[15,2,15] alpha[15,2,16] alpha[15,2,17] alpha[15,2,18] alpha[15,2,19]
 alpha[15,2,20] alpha[15,2,21] alpha[15,2,22] alpha[15,2,23] alpha[15,2,24]
 alpha[15,2,25] alpha[15,2,26] alpha[15,2,27] alpha[15,2,28] alpha[15,2,29]
 alpha[15,3,0] alpha[15,3,1] alpha[15,3,2] alpha[15,3,3] alpha[15,3,4]
 alpha[15,3,5] alpha[15,3,6] alpha[15,3,7] alpha[15,3,8] alpha[15,3,9]
 alpha[15,3,10] alpha[15,3,11] alpha[15,3,12] alpha[15,3,13] alpha[15,3,14]
 alpha[15,3,15] alpha[15,3,16] alpha[15,3,17] alpha[15,3,18] alpha[15,3,19]
 alpha[15,3,20] alpha[15,3,21] alpha[15,3,22] alpha[15,3,23] alpha[15,3,24]
 alpha[15,3,25] alpha[15,3,26] alpha[15,3,27] alpha[15,3,28] alpha[15,3,29]
 alpha[16,0,0] alpha[16,0,1] alpha[16,0,2] alpha[16,0,3] alpha[16,0,4]
 alpha[16,0,5] alpha[16,0,6] alpha[16,0,7] alpha[16,0,8] alpha[16,0,9]
 alpha[16,0,10] alpha[16,0,11] alpha[16,0,12] alpha[16,0,13] alpha[16,0,14]
 alpha[16,0,15] alpha[16,0,16] alpha[16,0,17] alpha[16,0,18] alpha[16,0,19]
 alpha[16,0,20] alpha[16,0,21] alpha[16,0,22] alpha[16,0,23] alpha[16,0,24]
 alpha[16,0,25] alpha[16,0,26] alpha[16,0,27] alpha[16,0,28] alpha[16,0,29]
 alpha[16,1,0] alpha[16,1,1] alpha[16,1,2] alpha[16,1,3] alpha[16,1,4]
 alpha[16,1,5] alpha[16,1,6] alpha[16,1,7] alpha[16,1,8] alpha[16,1,9]
 alpha[16,1,10] alpha[16,1,11] alpha[16,1,12] alpha[16,1,13] alpha[16,1,14]
 alpha[16,1,15] alpha[16,1,16] alpha[16,1,17] alpha[16,1,18] alpha[16,1,19]
 alpha[16,1,20] alpha[16,1,21] alpha[16,1,22] alpha[16,1,23] alpha[16,1,24]
 alpha[16,1,25] alpha[16,1,26] alpha[16,1,27] alpha[16,1,28] alpha[16,1,29]
 alpha[16,2,0] alpha[16,2,1] alpha[16,2,2] alpha[16,2,3] alpha[16,2,4]
 alpha[16,2,5] alpha[16,2,6] alpha[16,2,7] alpha[16,2,8] alpha[16,2,9]
 alpha[16,2,10] alpha[16,2,11] alpha[16,2,12] alpha[16,2,13] alpha[16,2,14]
 alpha[16,2,15] alpha[16,2,16] alpha[16,2,17] alpha[16,2,18] alpha[16,2,19]
 alpha[16,2,20] alpha[16,2,21] alpha[16,2,22] alpha[16,2,23] alpha[16,2,24]
 alpha[16,2,25] alpha[16,2,26] alpha[16,2,27] alpha[16,2,28] alpha[16,2,29]
 alpha[16,3,0] alpha[16,3,1] alpha[16,3,2] alpha[16,3,3] alpha[16,3,4]
 alpha[16,3,5] alpha[16,3,6] alpha[16,3,7] alpha[16,3,8] alpha[16,3,9]
 alpha[16,3,10] alpha[16,3,11] alpha[16,3,12] alpha[16,3,13] alpha[16,3,14]
 alpha[16,3,15] alpha[16,3,16] alpha[16,3,17] alpha[16,3,18] alpha[16,3,19]
 alpha[16,3,20] alpha[16,3,21] alpha[16,3,22] alpha[16,3,23] alpha[16,3,24]
 alpha[16,3,25] alpha[16,3,26] alpha[16,3,27] alpha[16,3,28] alpha[16,3,29]
 alpha[17,0,0] alpha[17,0,1] alpha[17,0,2] alpha[17,0,3] alpha[17,0,4]
 alpha[17,0,5] alpha[17,0,6] alpha[17,0,7] alpha[17,0,8] alpha[17,0,9]
 alpha[17,0,10] alpha[17,0,11] alpha[17,0,12] alpha[17,0,13] alpha[17,0,14]
 alpha[17,0,15] alpha[17,0,16] alpha[17,0,17] alpha[17,0,18] alpha[17,0,19]
 alpha[17,0,20] alpha[17,0,21] alpha[17,0,22] alpha[17,0,23] alpha[17,0,24]
 alpha[17,0,25] alpha[17,0,26] alpha[17,0,27] alpha[17,0,28] alpha[17,0,29]
 alpha[17,1,0] alpha[17,1,1] alpha[17,1,2] alpha[17,1,3] alpha[17,1,4]
 alpha[17,1,5] alpha[17,1,6] alpha[17,1,7] alpha[17,1,8] alpha[17,1,9]
 alpha[17,1,10] alpha[17,1,11] alpha[17,1,12] alpha[17,1,13] alpha[17,1,14]
 alpha[17,1,15] alpha[17,1,16] alpha[17,1,17] alpha[17,1,18] alpha[17,1,19]
 alpha[17,1,20] alpha[17,1,21] alpha[17,1,22] alpha[17,1,23] alpha[17,1,24]
 alpha[17,1,25] alpha[17,1,26] alpha[17,1,27] alpha[17,1,28] alpha[17,1,29]
 alpha[17,2,0] alpha[17,2,1] alpha[17,2,2] alpha[17,2,3] alpha[17,2,4]
 alpha[17,2,5] alpha[17,2,6] alpha[17,2,7] alpha[17,2,8] alpha[17,2,9]
 alpha[17,2,10] alpha[17,2,11] alpha[17,2,12] alpha[17,2,13] alpha[17,2,14]
 alpha[17,2,15] alpha[17,2,16] alpha[17,2,17] alpha[17,2,18] alpha[17,2,19]
 alpha[17,2,20] alpha[17,2,21] alpha[17,2,22] alpha[17,2,23] alpha[17,2,24]
 alpha[17,2,25] alpha[17,2,26] alpha[17,2,27] alpha[17,2,28] alpha[17,2,29]
 alpha[17,3,0] alpha[17,3,1] alpha[17,3,2] alpha[17,3,3] alpha[17,3,4]
 alpha[17,3,5] alpha[17,3,6] alpha[17,3,7] alpha[17,3,8] alpha[17,3,9]
 alpha[17,3,10] alpha[17,3,11] alpha[17,3,12] alpha[17,3,13] alpha[17,3,14]
 alpha[17,3,15] alpha[17,3,16] alpha[17,3,17] alpha[17,3,18] alpha[17,3,19]
 alpha[17,3,20] alpha[17,3,21] alpha[17,3,22] alpha[17,3,23] alpha[17,3,24]
 alpha[17,3,25] alpha[17,3,26] alpha[17,3,27] alpha[17,3,28] alpha[17,3,29]
 alpha[18,0,0] alpha[18,0,1] alpha[18,0,2] alpha[18,0,3] alpha[18,0,4]
 alpha[18,0,5] alpha[18,0,6] alpha[18,0,7] alpha[18,0,8] alpha[18,0,9]
 alpha[18,0,10] alpha[18,0,11] alpha[18,0,12] alpha[18,0,13] alpha[18,0,14]
 alpha[18,0,15] alpha[18,0,16] alpha[18,0,17] alpha[18,0,18] alpha[18,0,19]
 alpha[18,0,20] alpha[18,0,21] alpha[18,0,22] alpha[18,0,23] alpha[18,0,24]
 alpha[18,0,25] alpha[18,0,26] alpha[18,0,27] alpha[18,0,28] alpha[18,0,29]
 alpha[18,1,0] alpha[18,1,1] alpha[18,1,2] alpha[18,1,3] alpha[18,1,4]
 alpha[18,1,5] alpha[18,1,6] alpha[18,1,7] alpha[18,1,8] alpha[18,1,9]
 alpha[18,1,10] alpha[18,1,11] alpha[18,1,12] alpha[18,1,13] alpha[18,1,14]
 alpha[18,1,15] alpha[18,1,16] alpha[18,1,17] alpha[18,1,18] alpha[18,1,19]
 alpha[18,1,20] alpha[18,1,21] alpha[18,1,22] alpha[18,1,23] alpha[18,1,24]
 alpha[18,1,25] alpha[18,1,26] alpha[18,1,27] alpha[18,1,28] alpha[18,1,29]
 alpha[18,2,0] alpha[18,2,1] alpha[18,2,2] alpha[18,2,3] alpha[18,2,4]
 alpha[18,2,5] alpha[18,2,6] alpha[18,2,7] alpha[18,2,8] alpha[18,2,9]
 alpha[18,2,10] alpha[18,2,11] alpha[18,2,12] alpha[18,2,13] alpha[18,2,14]
 alpha[18,2,15] alpha[18,2,16] alpha[18,2,17] alpha[18,2,18] alpha[18,2,19]
 alpha[18,2,20] alpha[18,2,21] alpha[18,2,22] alpha[18,2,23] alpha[18,2,24]
 alpha[18,2,25] alpha[18,2,26] alpha[18,2,27] alpha[18,2,28] alpha[18,2,29]
 alpha[18,3,0] alpha[18,3,1] alpha[18,3,2] alpha[18,3,3] alpha[18,3,4]
 alpha[18,3,5] alpha[18,3,6] alpha[18,3,7] alpha[18,3,8] alpha[18,3,9]
 alpha[18,3,10] alpha[18,3,11] alpha[18,3,12] alpha[18,3,13] alpha[18,3,14]
 alpha[18,3,15] alpha[18,3,16] alpha[18,3,17] alpha[18,3,18] alpha[18,3,19]
 alpha[18,3,20] alpha[18,3,21] alpha[18,3,22] alpha[18,3,23] alpha[18,3,24]
 alpha[18,3,25] alpha[18,3,26] alpha[18,3,27] alpha[18,3,28] alpha[18,3,29]
 alpha[19,0,0] alpha[19,0,1] alpha[19,0,2] alpha[19,0,3] alpha[19,0,4]
 alpha[19,0,5] alpha[19,0,6] alpha[19,0,7] alpha[19,0,8] alpha[19,0,9]
 alpha[19,0,10] alpha[19,0,11] alpha[19,0,12] alpha[19,0,13] alpha[19,0,14]
 alpha[19,0,15] alpha[19,0,16] alpha[19,0,17] alpha[19,0,18] alpha[19,0,19]
 alpha[19,0,20] alpha[19,0,21] alpha[19,0,22] alpha[19,0,23] alpha[19,0,24]
 alpha[19,0,25] alpha[19,0,26] alpha[19,0,27] alpha[19,0,28] alpha[19,0,29]
 alpha[19,1,0] alpha[19,1,1] alpha[19,1,2] alpha[19,1,3] alpha[19,1,4]
 alpha[19,1,5] alpha[19,1,6] alpha[19,1,7] alpha[19,1,8] alpha[19,1,9]
 alpha[19,1,10] alpha[19,1,11] alpha[19,1,12] alpha[19,1,13] alpha[19,1,14]
 alpha[19,1,15] alpha[19,1,16] alpha[19,1,17] alpha[19,1,18] alpha[19,1,19]
 alpha[19,1,20] alpha[19,1,21] alpha[19,1,22] alpha[19,1,23] alpha[19,1,24]
 alpha[19,1,25] alpha[19,1,26] alpha[19,1,27] alpha[19,1,28] alpha[19,1,29]
 alpha[19,2,0] alpha[19,2,1] alpha[19,2,2] alpha[19,2,3] alpha[19,2,4]
 alpha[19,2,5] alpha[19,2,6] alpha[19,2,7] alpha[19,2,8] alpha[19,2,9]
 alpha[19,2,10] alpha[19,2,11] alpha[19,2,12] alpha[19,2,13] alpha[19,2,14]
 alpha[19,2,15] alpha[19,2,16] alpha[19,2,17] alpha[19,2,18] alpha[19,2,19]
 alpha[19,2,20] alpha[19,2,21] alpha[19,2,22] alpha[19,2,23] alpha[19,2,24]
 alpha[19,2,25] alpha[19,2,26] alpha[19,2,27] alpha[19,2,28] alpha[19,2,29]
 alpha[19,3,0] alpha[19,3,1] alpha[19,3,2] alpha[19,3,3] alpha[19,3,4]
 alpha[19,3,5] alpha[19,3,6] alpha[19,3,7] alpha[19,3,8] alpha[19,3,9]
 alpha[19,3,10] alpha[19,3,11] alpha[19,3,12] alpha[19,3,13] alpha[19,3,14]
 alpha[19,3,15] alpha[19,3,16] alpha[19,3,17] alpha[19,3,18] alpha[19,3,19]
 alpha[19,3,20] alpha[19,3,21] alpha[19,3,22] alpha[19,3,23] alpha[19,3,24]
 alpha[19,3,25] alpha[19,3,26] alpha[19,3,27] alpha[19,3,28] alpha[19,3,29]
 alpha[20,0,0] alpha[20,0,1] alpha[20,0,2] alpha[20,0,3] alpha[20,0,4]
 alpha[20,0,5] alpha[20,0,6] alpha[20,0,7] alpha[20,0,8] alpha[20,0,9]
 alpha[20,0,10] alpha[20,0,11] alpha[20,0,12] alpha[20,0,13] alpha[20,0,14]
 alpha[20,0,15] alpha[20,0,16] alpha[20,0,17] alpha[20,0,18] alpha[20,0,19]
 alpha[20,0,20] alpha[20,0,21] alpha[20,0,22] alpha[20,0,23] alpha[20,0,24]
 alpha[20,0,25] alpha[20,0,26] alpha[20,0,27] alpha[20,0,28] alpha[20,0,29]
 alpha[20,1,0] alpha[20,1,1] alpha[20,1,2] alpha[20,1,3] alpha[20,1,4]
 alpha[20,1,5] alpha[20,1,6] alpha[20,1,7] alpha[20,1,8] alpha[20,1,9]
 alpha[20,1,10] alpha[20,1,11] alpha[20,1,12] alpha[20,1,13] alpha[20,1,14]
 alpha[20,1,15] alpha[20,1,16] alpha[20,1,17] alpha[20,1,18] alpha[20,1,19]
 alpha[20,1,20] alpha[20,1,21] alpha[20,1,22] alpha[20,1,23] alpha[20,1,24]
 alpha[20,1,25] alpha[20,1,26] alpha[20,1,27] alpha[20,1,28] alpha[20,1,29]
 alpha[20,2,0] alpha[20,2,1] alpha[20,2,2] alpha[20,2,3] alpha[20,2,4]
 alpha[20,2,5] alpha[20,2,6] alpha[20,2,7] alpha[20,2,8] alpha[20,2,9]
 alpha[20,2,10] alpha[20,2,11] alpha[20,2,12] alpha[20,2,13] alpha[20,2,14]
 alpha[20,2,15] alpha[20,2,16] alpha[20,2,17] alpha[20,2,18] alpha[20,2,19]
 alpha[20,2,20] alpha[20,2,21] alpha[20,2,22] alpha[20,2,23] alpha[20,2,24]
 alpha[20,2,25] alpha[20,2,26] alpha[20,2,27] alpha[20,2,28] alpha[20,2,29]
 alpha[20,3,0] alpha[20,3,1] alpha[20,3,2] alpha[20,3,3] alpha[20,3,4]
 alpha[20,3,5] alpha[20,3,6] alpha[20,3,7] alpha[20,3,8] alpha[20,3,9]
 alpha[20,3,10] alpha[20,3,11] alpha[20,3,12] alpha[20,3,13] alpha[20,3,14]
 alpha[20,3,15] alpha[20,3,16] alpha[20,3,17] alpha[20,3,18] alpha[20,3,19]
 alpha[20,3,20] alpha[20,3,21] alpha[20,3,22] alpha[20,3,23] alpha[20,3,24]
 alpha[20,3,25] alpha[20,3,26] alpha[20,3,27] alpha[20,3,28] alpha[20,3,29]
 alpha[21,0,0] alpha[21,0,1] alpha[21,0,2] alpha[21,0,3] alpha[21,0,4]
 alpha[21,0,5] alpha[21,0,6] alpha[21,0,7] alpha[21,0,8] alpha[21,0,9]
 alpha[21,0,10] alpha[21,0,11] alpha[21,0,12] alpha[21,0,13] alpha[21,0,14]
 alpha[21,0,15] alpha[21,0,16] alpha[21,0,17] alpha[21,0,18] alpha[21,0,19]
 alpha[21,0,20] alpha[21,0,21] alpha[21,0,22] alpha[21,0,23] alpha[21,0,24]
 alpha[21,0,25] alpha[21,0,26] alpha[21,0,27] alpha[21,0,28] alpha[21,0,29]
 alpha[21,1,0] alpha[21,1,1] alpha[21,1,2] alpha[21,1,3] alpha[21,1,4]
 alpha[21,1,5] alpha[21,1,6] alpha[21,1,7] alpha[21,1,8] alpha[21,1,9]
 alpha[21,1,10] alpha[21,1,11] alpha[21,1,12] alpha[21,1,13] alpha[21,1,14]
 alpha[21,1,15] alpha[21,1,16] alpha[21,1,17] alpha[21,1,18] alpha[21,1,19]
 alpha[21,1,20] alpha[21,1,21] alpha[21,1,22] alpha[21,1,23] alpha[21,1,24]
 alpha[21,1,25] alpha[21,1,26] alpha[21,1,27] alpha[21,1,28] alpha[21,1,29]
 alpha[21,2,0] alpha[21,2,1] alpha[21,2,2] alpha[21,2,3] alpha[21,2,4]
 alpha[21,2,5] alpha[21,2,6] alpha[21,2,7] alpha[21,2,8] alpha[21,2,9]
 alpha[21,2,10] alpha[21,2,11] alpha[21,2,12] alpha[21,2,13] alpha[21,2,14]
 alpha[21,2,15] alpha[21,2,16] alpha[21,2,17] alpha[21,2,18] alpha[21,2,19]
 alpha[21,2,20] alpha[21,2,21] alpha[21,2,22] alpha[21,2,23] alpha[21,2,24]
 alpha[21,2,25] alpha[21,2,26] alpha[21,2,27] alpha[21,2,28] alpha[21,2,29]
 alpha[21,3,0] alpha[21,3,1] alpha[21,3,2] alpha[21,3,3] alpha[21,3,4]
 alpha[21,3,5] alpha[21,3,6] alpha[21,3,7] alpha[21,3,8] alpha[21,3,9]
 alpha[21,3,10] alpha[21,3,11] alpha[21,3,12] alpha[21,3,13] alpha[21,3,14]
 alpha[21,3,15] alpha[21,3,16] alpha[21,3,17] alpha[21,3,18] alpha[21,3,19]
 alpha[21,3,20] alpha[21,3,21] alpha[21,3,22] alpha[21,3,23] alpha[21,3,24]
 alpha[21,3,25] alpha[21,3,26] alpha[21,3,27] alpha[21,3,28] alpha[21,3,29]
 alpha[22,0,0] alpha[22,0,1] alpha[22,0,2] alpha[22,0,3] alpha[22,0,4]
 alpha[22,0,5] alpha[22,0,6] alpha[22,0,7] alpha[22,0,8] alpha[22,0,9]
 alpha[22,0,10] alpha[22,0,11] alpha[22,0,12] alpha[22,0,13] alpha[22,0,14]
 alpha[22,0,15] alpha[22,0,16] alpha[22,0,17] alpha[22,0,18] alpha[22,0,19]
 alpha[22,0,20] alpha[22,0,21] alpha[22,0,22] alpha[22,0,23] alpha[22,0,24]
 alpha[22,0,25] alpha[22,0,26] alpha[22,0,27] alpha[22,0,28] alpha[22,0,29]
 alpha[22,1,0] alpha[22,1,1] alpha[22,1,2] alpha[22,1,3] alpha[22,1,4]
 alpha[22,1,5] alpha[22,1,6] alpha[22,1,7] alpha[22,1,8] alpha[22,1,9]
 alpha[22,1,10] alpha[22,1,11] alpha[22,1,12] alpha[22,1,13] alpha[22,1,14]
 alpha[22,1,15] alpha[22,1,16] alpha[22,1,17] alpha[22,1,18] alpha[22,1,19]
 alpha[22,1,20] alpha[22,1,21] alpha[22,1,22] alpha[22,1,23] alpha[22,1,24]
 alpha[22,1,25] alpha[22,1,26] alpha[22,1,27] alpha[22,1,28] alpha[22,1,29]
 alpha[22,2,0] alpha[22,2,1] alpha[22,2,2] alpha[22,2,3] alpha[22,2,4]
 alpha[22,2,5] alpha[22,2,6] alpha[22,2,7] alpha[22,2,8] alpha[22,2,9]
 alpha[22,2,10] alpha[22,2,11] alpha[22,2,12] alpha[22,2,13] alpha[22,2,14]
 alpha[22,2,15] alpha[22,2,16] alpha[22,2,17] alpha[22,2,18] alpha[22,2,19]
 alpha[22,2,20] alpha[22,2,21] alpha[22,2,22] alpha[22,2,23] alpha[22,2,24]
 alpha[22,2,25] alpha[22,2,26] alpha[22,2,27] alpha[22,2,28] alpha[22,2,29]
 alpha[22,3,0] alpha[22,3,1] alpha[22,3,2] alpha[22,3,3] alpha[22,3,4]
 alpha[22,3,5] alpha[22,3,6] alpha[22,3,7] alpha[22,3,8] alpha[22,3,9]
 alpha[22,3,10] alpha[22,3,11] alpha[22,3,12] alpha[22,3,13] alpha[22,3,14]
 alpha[22,3,15] alpha[22,3,16] alpha[22,3,17] alpha[22,3,18] alpha[22,3,19]
 alpha[22,3,20] alpha[22,3,21] alpha[22,3,22] alpha[22,3,23] alpha[22,3,24]
 alpha[22,3,25] alpha[22,3,26] alpha[22,3,27] alpha[22,3,28] alpha[22,3,29]
 alpha[23,0,0] alpha[23,0,1] alpha[23,0,2] alpha[23,0,3] alpha[23,0,4]
 alpha[23,0,5] alpha[23,0,6] alpha[23,0,7] alpha[23,0,8] alpha[23,0,9]
 alpha[23,0,10] alpha[23,0,11] alpha[23,0,12] alpha[23,0,13] alpha[23,0,14]
 alpha[23,0,15] alpha[23,0,16] alpha[23,0,17] alpha[23,0,18] alpha[23,0,19]
 alpha[23,0,20] alpha[23,0,21] alpha[23,0,22] alpha[23,0,23] alpha[23,0,24]
 alpha[23,0,25] alpha[23,0,26] alpha[23,0,27] alpha[23,0,28] alpha[23,0,29]
 alpha[23,1,0] alpha[23,1,1] alpha[23,1,2] alpha[23,1,3] alpha[23,1,4]
 alpha[23,1,5] alpha[23,1,6] alpha[23,1,7] alpha[23,1,8] alpha[23,1,9]
 alpha[23,1,10] alpha[23,1,11] alpha[23,1,12] alpha[23,1,13] alpha[23,1,14]
 alpha[23,1,15] alpha[23,1,16] alpha[23,1,17] alpha[23,1,18] alpha[23,1,19]
 alpha[23,1,20] alpha[23,1,21] alpha[23,1,22] alpha[23,1,23] alpha[23,1,24]
 alpha[23,1,25] alpha[23,1,26] alpha[23,1,27] alpha[23,1,28] alpha[23,1,29]
 alpha[23,2,0] alpha[23,2,1] alpha[23,2,2] alpha[23,2,3] alpha[23,2,4]
 alpha[23,2,5] alpha[23,2,6] alpha[23,2,7] alpha[23,2,8] alpha[23,2,9]
 alpha[23,2,10] alpha[23,2,11] alpha[23,2,12] alpha[23,2,13] alpha[23,2,14]
 alpha[23,2,15] alpha[23,2,16] alpha[23,2,17] alpha[23,2,18] alpha[23,2,19]
 alpha[23,2,20] alpha[23,2,21] alpha[23,2,22] alpha[23,2,23] alpha[23,2,24]
 alpha[23,2,25] alpha[23,2,26] alpha[23,2,27] alpha[23,2,28] alpha[23,2,29]
 alpha[23,3,0] alpha[23,3,1] alpha[23,3,2] alpha[23,3,3] alpha[23,3,4]
 alpha[23,3,5] alpha[23,3,6] alpha[23,3,7] alpha[23,3,8] alpha[23,3,9]
 alpha[23,3,10] alpha[23,3,11] alpha[23,3,12] alpha[23,3,13] alpha[23,3,14]
 alpha[23,3,15] alpha[23,3,16] alpha[23,3,17] alpha[23,3,18] alpha[23,3,19]
 alpha[23,3,20] alpha[23,3,21] alpha[23,3,22] alpha[23,3,23] alpha[23,3,24]
 alpha[23,3,25] alpha[23,3,26] alpha[23,3,27] alpha[23,3,28] alpha[23,3,29]
 alpha[24,0,0] alpha[24,0,1] alpha[24,0,2] alpha[24,0,3] alpha[24,0,4]
 alpha[24,0,5] alpha[24,0,6] alpha[24,0,7] alpha[24,0,8] alpha[24,0,9]
 alpha[24,0,10] alpha[24,0,11] alpha[24,0,12] alpha[24,0,13] alpha[24,0,14]
 alpha[24,0,15] alpha[24,0,16] alpha[24,0,17] alpha[24,0,18] alpha[24,0,19]
 alpha[24,0,20] alpha[24,0,21] alpha[24,0,22] alpha[24,0,23] alpha[24,0,24]
 alpha[24,0,25] alpha[24,0,26] alpha[24,0,27] alpha[24,0,28] alpha[24,0,29]
 alpha[24,1,0] alpha[24,1,1] alpha[24,1,2] alpha[24,1,3] alpha[24,1,4]
 alpha[24,1,5] alpha[24,1,6] alpha[24,1,7] alpha[24,1,8] alpha[24,1,9]
 alpha[24,1,10] alpha[24,1,11] alpha[24,1,12] alpha[24,1,13] alpha[24,1,14]
 alpha[24,1,15] alpha[24,1,16] alpha[24,1,17] alpha[24,1,18] alpha[24,1,19]
 alpha[24,1,20] alpha[24,1,21] alpha[24,1,22] alpha[24,1,23] alpha[24,1,24]
 alpha[24,1,25] alpha[24,1,26] alpha[24,1,27] alpha[24,1,28] alpha[24,1,29]
 alpha[24,2,0] alpha[24,2,1] alpha[24,2,2] alpha[24,2,3] alpha[24,2,4]
 alpha[24,2,5] alpha[24,2,6] alpha[24,2,7] alpha[24,2,8] alpha[24,2,9]
 alpha[24,2,10] alpha[24,2,11] alpha[24,2,12] alpha[24,2,13] alpha[24,2,14]
 alpha[24,2,15] alpha[24,2,16] alpha[24,2,17] alpha[24,2,18] alpha[24,2,19]
 alpha[24,2,20] alpha[24,2,21] alpha[24,2,22] alpha[24,2,23] alpha[24,2,24]
 alpha[24,2,25] alpha[24,2,26] alpha[24,2,27] alpha[24,2,28] alpha[24,2,29]
 alpha[24,3,0] alpha[24,3,1] alpha[24,3,2] alpha[24,3,3] alpha[24,3,4]
 alpha[24,3,5] alpha[24,3,6] alpha[24,3,7] alpha[24,3,8] alpha[24,3,9]
 alpha[24,3,10] alpha[24,3,11] alpha[24,3,12] alpha[24,3,13] alpha[24,3,14]
 alpha[24,3,15] alpha[24,3,16] alpha[24,3,17] alpha[24,3,18] alpha[24,3,19]
 alpha[24,3,20] alpha[24,3,21] alpha[24,3,22] alpha[24,3,23] alpha[24,3,24]
 alpha[24,3,25] alpha[24,3,26] alpha[24,3,27] alpha[24,3,28] alpha[24,3,29]
 alpha[25,0,0] alpha[25,0,1] alpha[25,0,2] alpha[25,0,3] alpha[25,0,4]
 alpha[25,0,5] alpha[25,0,6] alpha[25,0,7] alpha[25,0,8] alpha[25,0,9]
 alpha[25,0,10] alpha[25,0,11] alpha[25,0,12] alpha[25,0,13] alpha[25,0,14]
 alpha[25,0,15] alpha[25,0,16] alpha[25,0,17] alpha[25,0,18] alpha[25,0,19]
 alpha[25,0,20] alpha[25,0,21] alpha[25,0,22] alpha[25,0,23] alpha[25,0,24]
 alpha[25,0,25] alpha[25,0,26] alpha[25,0,27] alpha[25,0,28] alpha[25,0,29]
 alpha[25,1,0] alpha[25,1,1] alpha[25,1,2] alpha[25,1,3] alpha[25,1,4]
 alpha[25,1,5] alpha[25,1,6] alpha[25,1,7] alpha[25,1,8] alpha[25,1,9]
 alpha[25,1,10] alpha[25,1,11] alpha[25,1,12] alpha[25,1,13] alpha[25,1,14]
 alpha[25,1,15] alpha[25,1,16] alpha[25,1,17] alpha[25,1,18] alpha[25,1,19]
 alpha[25,1,20] alpha[25,1,21] alpha[25,1,22] alpha[25,1,23] alpha[25,1,24]
 alpha[25,1,25] alpha[25,1,26] alpha[25,1,27] alpha[25,1,28] alpha[25,1,29]
 alpha[25,2,0] alpha[25,2,1] alpha[25,2,2] alpha[25,2,3] alpha[25,2,4]
 alpha[25,2,5] alpha[25,2,6] alpha[25,2,7] alpha[25,2,8] alpha[25,2,9]
 alpha[25,2,10] alpha[25,2,11] alpha[25,2,12] alpha[25,2,13] alpha[25,2,14]
 alpha[25,2,15] alpha[25,2,16] alpha[25,2,17] alpha[25,2,18] alpha[25,2,19]
 alpha[25,2,20] alpha[25,2,21] alpha[25,2,22] alpha[25,2,23] alpha[25,2,24]
 alpha[25,2,25] alpha[25,2,26] alpha[25,2,27] alpha[25,2,28] alpha[25,2,29]
 alpha[25,3,0] alpha[25,3,1] alpha[25,3,2] alpha[25,3,3] alpha[25,3,4]
 alpha[25,3,5] alpha[25,3,6] alpha[25,3,7] alpha[25,3,8] alpha[25,3,9]
 alpha[25,3,10] alpha[25,3,11] alpha[25,3,12] alpha[25,3,13] alpha[25,3,14]
 alpha[25,3,15] alpha[25,3,16] alpha[25,3,17] alpha[25,3,18] alpha[25,3,19]
 alpha[25,3,20] alpha[25,3,21] alpha[25,3,22] alpha[25,3,23] alpha[25,3,24]
 alpha[25,3,25] alpha[25,3,26] alpha[25,3,27] alpha[25,3,28] alpha[25,3,29]
 alpha[26,0,0] alpha[26,0,1] alpha[26,0,2] alpha[26,0,3] alpha[26,0,4]
 alpha[26,0,5] alpha[26,0,6] alpha[26,0,7] alpha[26,0,8] alpha[26,0,9]
 alpha[26,0,10] alpha[26,0,11] alpha[26,0,12] alpha[26,0,13] alpha[26,0,14]
 alpha[26,0,15] alpha[26,0,16] alpha[26,0,17] alpha[26,0,18] alpha[26,0,19]
 alpha[26,0,20] alpha[26,0,21] alpha[26,0,22] alpha[26,0,23] alpha[26,0,24]
 alpha[26,0,25] alpha[26,0,26] alpha[26,0,27] alpha[26,0,28] alpha[26,0,29]
 alpha[26,1,0] alpha[26,1,1] alpha[26,1,2] alpha[26,1,3] alpha[26,1,4]
 alpha[26,1,5] alpha[26,1,6] alpha[26,1,7] alpha[26,1,8] alpha[26,1,9]
 alpha[26,1,10] alpha[26,1,11] alpha[26,1,12] alpha[26,1,13] alpha[26,1,14]
 alpha[26,1,15] alpha[26,1,16] alpha[26,1,17] alpha[26,1,18] alpha[26,1,19]
 alpha[26,1,20] alpha[26,1,21] alpha[26,1,22] alpha[26,1,23] alpha[26,1,24]
 alpha[26,1,25] alpha[26,1,26] alpha[26,1,27] alpha[26,1,28] alpha[26,1,29]
 alpha[26,2,0] alpha[26,2,1] alpha[26,2,2] alpha[26,2,3] alpha[26,2,4]
 alpha[26,2,5] alpha[26,2,6] alpha[26,2,7] alpha[26,2,8] alpha[26,2,9]
 alpha[26,2,10] alpha[26,2,11] alpha[26,2,12] alpha[26,2,13] alpha[26,2,14]
 alpha[26,2,15] alpha[26,2,16] alpha[26,2,17] alpha[26,2,18] alpha[26,2,19]
 alpha[26,2,20] alpha[26,2,21] alpha[26,2,22] alpha[26,2,23] alpha[26,2,24]
 alpha[26,2,25] alpha[26,2,26] alpha[26,2,27] alpha[26,2,28] alpha[26,2,29]
 alpha[26,3,0] alpha[26,3,1] alpha[26,3,2] alpha[26,3,3] alpha[26,3,4]
 alpha[26,3,5] alpha[26,3,6] alpha[26,3,7] alpha[26,3,8] alpha[26,3,9]
 alpha[26,3,10] alpha[26,3,11] alpha[26,3,12] alpha[26,3,13] alpha[26,3,14]
 alpha[26,3,15] alpha[26,3,16] alpha[26,3,17] alpha[26,3,18] alpha[26,3,19]
 alpha[26,3,20] alpha[26,3,21] alpha[26,3,22] alpha[26,3,23] alpha[26,3,24]
 alpha[26,3,25] alpha[26,3,26] alpha[26,3,27] alpha[26,3,28] alpha[26,3,29]
 alpha[27,0,0] alpha[27,0,1] alpha[27,0,2] alpha[27,0,3] alpha[27,0,4]
 alpha[27,0,5] alpha[27,0,6] alpha[27,0,7] alpha[27,0,8] alpha[27,0,9]
 alpha[27,0,10] alpha[27,0,11] alpha[27,0,12] alpha[27,0,13] alpha[27,0,14]
 alpha[27,0,15] alpha[27,0,16] alpha[27,0,17] alpha[27,0,18] alpha[27,0,19]
 alpha[27,0,20] alpha[27,0,21] alpha[27,0,22] alpha[27,0,23] alpha[27,0,24]
 alpha[27,0,25] alpha[27,0,26] alpha[27,0,27] alpha[27,0,28] alpha[27,0,29]
 alpha[27,1,0] alpha[27,1,1] alpha[27,1,2] alpha[27,1,3] alpha[27,1,4]
 alpha[27,1,5] alpha[27,1,6] alpha[27,1,7] alpha[27,1,8] alpha[27,1,9]
 alpha[27,1,10] alpha[27,1,11] alpha[27,1,12] alpha[27,1,13] alpha[27,1,14]
 alpha[27,1,15] alpha[27,1,16] alpha[27,1,17] alpha[27,1,18] alpha[27,1,19]
 alpha[27,1,20] alpha[27,1,21] alpha[27,1,22] alpha[27,1,23] alpha[27,1,24]
 alpha[27,1,25] alpha[27,1,26] alpha[27,1,27] alpha[27,1,28] alpha[27,1,29]
 alpha[27,2,0] alpha[27,2,1] alpha[27,2,2] alpha[27,2,3] alpha[27,2,4]
 alpha[27,2,5] alpha[27,2,6] alpha[27,2,7] alpha[27,2,8] alpha[27,2,9]
 alpha[27,2,10] alpha[27,2,11] alpha[27,2,12] alpha[27,2,13] alpha[27,2,14]
 alpha[27,2,15] alpha[27,2,16] alpha[27,2,17] alpha[27,2,18] alpha[27,2,19]
 alpha[27,2,20] alpha[27,2,21] alpha[27,2,22] alpha[27,2,23] alpha[27,2,24]
 alpha[27,2,25] alpha[27,2,26] alpha[27,2,27] alpha[27,2,28] alpha[27,2,29]
 alpha[27,3,0] alpha[27,3,1] alpha[27,3,2] alpha[27,3,3] alpha[27,3,4]
 alpha[27,3,5] alpha[27,3,6] alpha[27,3,7] alpha[27,3,8] alpha[27,3,9]
 alpha[27,3,10] alpha[27,3,11] alpha[27,3,12] alpha[27,3,13] alpha[27,3,14]
 alpha[27,3,15] alpha[27,3,16] alpha[27,3,17] alpha[27,3,18] alpha[27,3,19]
 alpha[27,3,20] alpha[27,3,21] alpha[27,3,22] alpha[27,3,23] alpha[27,3,24]
 alpha[27,3,25] alpha[27,3,26] alpha[27,3,27] alpha[27,3,28] alpha[27,3,29]
 alpha[28,0,0] alpha[28,0,1] alpha[28,0,2] alpha[28,0,3] alpha[28,0,4]
 alpha[28,0,5] alpha[28,0,6] alpha[28,0,7] alpha[28,0,8] alpha[28,0,9]
 alpha[28,0,10] alpha[28,0,11] alpha[28,0,12] alpha[28,0,13] alpha[28,0,14]
 alpha[28,0,15] alpha[28,0,16] alpha[28,0,17] alpha[28,0,18] alpha[28,0,19]
 alpha[28,0,20] alpha[28,0,21] alpha[28,0,22] alpha[28,0,23] alpha[28,0,24]
 alpha[28,0,25] alpha[28,0,26] alpha[28,0,27] alpha[28,0,28] alpha[28,0,29]
 alpha[28,1,0] alpha[28,1,1] alpha[28,1,2] alpha[28,1,3] alpha[28,1,4]
 alpha[28,1,5] alpha[28,1,6] alpha[28,1,7] alpha[28,1,8] alpha[28,1,9]
 alpha[28,1,10] alpha[28,1,11] alpha[28,1,12] alpha[28,1,13] alpha[28,1,14]
 alpha[28,1,15] alpha[28,1,16] alpha[28,1,17] alpha[28,1,18] alpha[28,1,19]
 alpha[28,1,20] alpha[28,1,21] alpha[28,1,22] alpha[28,1,23] alpha[28,1,24]
 alpha[28,1,25] alpha[28,1,26] alpha[28,1,27] alpha[28,1,28] alpha[28,1,29]
 alpha[28,2,0] alpha[28,2,1] alpha[28,2,2] alpha[28,2,3] alpha[28,2,4]
 alpha[28,2,5] alpha[28,2,6] alpha[28,2,7] alpha[28,2,8] alpha[28,2,9]
 alpha[28,2,10] alpha[28,2,11] alpha[28,2,12] alpha[28,2,13] alpha[28,2,14]
 alpha[28,2,15] alpha[28,2,16] alpha[28,2,17] alpha[28,2,18] alpha[28,2,19]
 alpha[28,2,20] alpha[28,2,21] alpha[28,2,22] alpha[28,2,23] alpha[28,2,24]
 alpha[28,2,25] alpha[28,2,26] alpha[28,2,27] alpha[28,2,28] alpha[28,2,29]
 alpha[28,3,0] alpha[28,3,1] alpha[28,3,2] alpha[28,3,3] alpha[28,3,4]
 alpha[28,3,5] alpha[28,3,6] alpha[28,3,7] alpha[28,3,8] alpha[28,3,9]
 alpha[28,3,10] alpha[28,3,11] alpha[28,3,12] alpha[28,3,13] alpha[28,3,14]
 alpha[28,3,15] alpha[28,3,16] alpha[28,3,17] alpha[28,3,18] alpha[28,3,19]
 alpha[28,3,20] alpha[28,3,21] alpha[28,3,22] alpha[28,3,23] alpha[28,3,24]
 alpha[28,3,25] alpha[28,3,26] alpha[28,3,27] alpha[28,3,28] alpha[28,3,29]
 alpha[29,0,0] alpha[29,0,1] alpha[29,0,2] alpha[29,0,3] alpha[29,0,4]
 alpha[29,0,5] alpha[29,0,6] alpha[29,0,7] alpha[29,0,8] alpha[29,0,9]
 alpha[29,0,10] alpha[29,0,11] alpha[29,0,12] alpha[29,0,13] alpha[29,0,14]
 alpha[29,0,15] alpha[29,0,16] alpha[29,0,17] alpha[29,0,18] alpha[29,0,19]
 alpha[29,0,20] alpha[29,0,21] alpha[29,0,22] alpha[29,0,23] alpha[29,0,24]
 alpha[29,0,25] alpha[29,0,26] alpha[29,0,27] alpha[29,0,28] alpha[29,0,29]
 alpha[29,1,0] alpha[29,1,1] alpha[29,1,2] alpha[29,1,3] alpha[29,1,4]
 alpha[29,1,5] alpha[29,1,6] alpha[29,1,7] alpha[29,1,8] alpha[29,1,9]
 alpha[29,1,10] alpha[29,1,11] alpha[29,1,12] alpha[29,1,13] alpha[29,1,14]
 alpha[29,1,15] alpha[29,1,16] alpha[29,1,17] alpha[29,1,18] alpha[29,1,19]
 alpha[29,1,20] alpha[29,1,21] alpha[29,1,22] alpha[29,1,23] alpha[29,1,24]
 alpha[29,1,25] alpha[29,1,26] alpha[29,1,27] alpha[29,1,28] alpha[29,1,29]
 alpha[29,2,0] alpha[29,2,1] alpha[29,2,2] alpha[29,2,3] alpha[29,2,4]
 alpha[29,2,5] alpha[29,2,6] alpha[29,2,7] alpha[29,2,8] alpha[29,2,9]
 alpha[29,2,10] alpha[29,2,11] alpha[29,2,12] alpha[29,2,13] alpha[29,2,14]
 alpha[29,2,15] alpha[29,2,16] alpha[29,2,17] alpha[29,2,18] alpha[29,2,19]
 alpha[29,2,20] alpha[29,2,21] alpha[29,2,22] alpha[29,2,23] alpha[29,2,24]
 alpha[29,2,25] alpha[29,2,26] alpha[29,2,27] alpha[29,2,28] alpha[29,2,29]
 alpha[29,3,0] alpha[29,3,1] alpha[29,3,2] alpha[29,3,3] alpha[29,3,4]
 alpha[29,3,5] alpha[29,3,6] alpha[29,3,7] alpha[29,3,8] alpha[29,3,9]
 alpha[29,3,10] alpha[29,3,11] alpha[29,3,12] alpha[29,3,13] alpha[29,3,14]
 alpha[29,3,15] alpha[29,3,16] alpha[29,3,17] alpha[29,3,18] alpha[29,3,19]
 alpha[29,3,20] alpha[29,3,21] alpha[29,3,22] alpha[29,3,23] alpha[29,3,24]
 alpha[29,3,25] alpha[29,3,26] alpha[29,3,27] alpha[29,3,28] alpha[29,3,29]
 alpha[30,0,0] alpha[30,0,1] alpha[30,0,2] alpha[30,0,3] alpha[30,0,4]
 alpha[30,0,5] alpha[30,0,6] alpha[30,0,7] alpha[30,0,8] alpha[30,0,9]
 alpha[30,0,10] alpha[30,0,11] alpha[30,0,12] alpha[30,0,13] alpha[30,0,14]
 alpha[30,0,15] alpha[30,0,16] alpha[30,0,17] alpha[30,0,18] alpha[30,0,19]
 alpha[30,0,20] alpha[30,0,21] alpha[30,0,22] alpha[30,0,23] alpha[30,0,24]
 alpha[30,0,25] alpha[30,0,26] alpha[30,0,27] alpha[30,0,28] alpha[30,0,29]
 alpha[30,1,0] alpha[30,1,1] alpha[30,1,2] alpha[30,1,3] alpha[30,1,4]
 alpha[30,1,5] alpha[30,1,6] alpha[30,1,7] alpha[30,1,8] alpha[30,1,9]
 alpha[30,1,10] alpha[30,1,11] alpha[30,1,12] alpha[30,1,13] alpha[30,1,14]
 alpha[30,1,15] alpha[30,1,16] alpha[30,1,17] alpha[30,1,18] alpha[30,1,19]
 alpha[30,1,20] alpha[30,1,21] alpha[30,1,22] alpha[30,1,23] alpha[30,1,24]
 alpha[30,1,25] alpha[30,1,26] alpha[30,1,27] alpha[30,1,28] alpha[30,1,29]
 alpha[30,2,0] alpha[30,2,1] alpha[30,2,2] alpha[30,2,3] alpha[30,2,4]
 alpha[30,2,5] alpha[30,2,6] alpha[30,2,7] alpha[30,2,8] alpha[30,2,9]
 alpha[30,2,10] alpha[30,2,11] alpha[30,2,12] alpha[30,2,13] alpha[30,2,14]
 alpha[30,2,15] alpha[30,2,16] alpha[30,2,17] alpha[30,2,18] alpha[30,2,19]
 alpha[30,2,20] alpha[30,2,21] alpha[30,2,22] alpha[30,2,23] alpha[30,2,24]
 alpha[30,2,25] alpha[30,2,26] alpha[30,2,27] alpha[30,2,28] alpha[30,2,29]
 alpha[30,3,0] alpha[30,3,1] alpha[30,3,2] alpha[30,3,3] alpha[30,3,4]
 alpha[30,3,5] alpha[30,3,6] alpha[30,3,7] alpha[30,3,8] alpha[30,3,9]
 alpha[30,3,10] alpha[30,3,11] alpha[30,3,12] alpha[30,3,13] alpha[30,3,14]
 alpha[30,3,15] alpha[30,3,16] alpha[30,3,17] alpha[30,3,18] alpha[30,3,19]
 alpha[30,3,20] alpha[30,3,21] alpha[30,3,22] alpha[30,3,23] alpha[30,3,24]
 alpha[30,3,25] alpha[30,3,26] alpha[30,3,27] alpha[30,3,28] alpha[30,3,29]
 alpha[31,0,0] alpha[31,0,1] alpha[31,0,2] alpha[31,0,3] alpha[31,0,4]
 alpha[31,0,5] alpha[31,0,6] alpha[31,0,7] alpha[31,0,8] alpha[31,0,9]
 alpha[31,0,10] alpha[31,0,11] alpha[31,0,12] alpha[31,0,13] alpha[31,0,14]
 alpha[31,0,15] alpha[31,0,16] alpha[31,0,17] alpha[31,0,18] alpha[31,0,19]
 alpha[31,0,20] alpha[31,0,21] alpha[31,0,22] alpha[31,0,23] alpha[31,0,24]
 alpha[31,0,25] alpha[31,0,26] alpha[31,0,27] alpha[31,0,28] alpha[31,0,29]
 alpha[31,1,0] alpha[31,1,1] alpha[31,1,2] alpha[31,1,3] alpha[31,1,4]
 alpha[31,1,5] alpha[31,1,6] alpha[31,1,7] alpha[31,1,8] alpha[31,1,9]
 alpha[31,1,10] alpha[31,1,11] alpha[31,1,12] alpha[31,1,13] alpha[31,1,14]
 alpha[31,1,15] alpha[31,1,16] alpha[31,1,17] alpha[31,1,18] alpha[31,1,19]
 alpha[31,1,20] alpha[31,1,21] alpha[31,1,22] alpha[31,1,23] alpha[31,1,24]
 alpha[31,1,25] alpha[31,1,26] alpha[31,1,27] alpha[31,1,28] alpha[31,1,29]
 alpha[31,2,0] alpha[31,2,1] alpha[31,2,2] alpha[31,2,3] alpha[31,2,4]
 alpha[31,2,5] alpha[31,2,6] alpha[31,2,7] alpha[31,2,8] alpha[31,2,9]
 alpha[31,2,10] alpha[31,2,11] alpha[31,2,12] alpha[31,2,13] alpha[31,2,14]
 alpha[31,2,15] alpha[31,2,16] alpha[31,2,17] alpha[31,2,18] alpha[31,2,19]
 alpha[31,2,20] alpha[31,2,21] alpha[31,2,22] alpha[31,2,23] alpha[31,2,24]
 alpha[31,2,25] alpha[31,2,26] alpha[31,2,27] alpha[31,2,28] alpha[31,2,29]
 alpha[31,3,0] alpha[31,3,1] alpha[31,3,2] alpha[31,3,3] alpha[31,3,4]
 alpha[31,3,5] alpha[31,3,6] alpha[31,3,7] alpha[31,3,8] alpha[31,3,9]
 alpha[31,3,10] alpha[31,3,11] alpha[31,3,12] alpha[31,3,13] alpha[31,3,14]
 alpha[31,3,15] alpha[31,3,16] alpha[31,3,17] alpha[31,3,18] alpha[31,3,19]
 alpha[31,3,20] alpha[31,3,21] alpha[31,3,22] alpha[31,3,23] alpha[31,3,24]
 alpha[31,3,25] alpha[31,3,26] alpha[31,3,27] alpha[31,3,28] alpha[31,3,29]
 alpha[32,0,0] alpha[32,0,1] alpha[32,0,2] alpha[32,0,3] alpha[32,0,4]
 alpha[32,0,5] alpha[32,0,6] alpha[32,0,7] alpha[32,0,8] alpha[32,0,9]
 alpha[32,0,10] alpha[32,0,11] alpha[32,0,12] alpha[32,0,13] alpha[32,0,14]
 alpha[32,0,15] alpha[32,0,16] alpha[32,0,17] alpha[32,0,18] alpha[32,0,19]
 alpha[32,0,20] alpha[32,0,21] alpha[32,0,22] alpha[32,0,23] alpha[32,0,24]
 alpha[32,0,25] alpha[32,0,26] alpha[32,0,27] alpha[32,0,28] alpha[32,0,29]
 alpha[32,1,0] alpha[32,1,1] alpha[32,1,2] alpha[32,1,3] alpha[32,1,4]
 alpha[32,1,5] alpha[32,1,6] alpha[32,1,7] alpha[32,1,8] alpha[32,1,9]
 alpha[32,1,10] alpha[32,1,11] alpha[32,1,12] alpha[32,1,13] alpha[32,1,14]
 alpha[32,1,15] alpha[32,1,16] alpha[32,1,17] alpha[32,1,18] alpha[32,1,19]
 alpha[32,1,20] alpha[32,1,21] alpha[32,1,22] alpha[32,1,23] alpha[32,1,24]
 alpha[32,1,25] alpha[32,1,26] alpha[32,1,27] alpha[32,1,28] alpha[32,1,29]
 alpha[32,2,0] alpha[32,2,1] alpha[32,2,2] alpha[32,2,3] alpha[32,2,4]
 alpha[32,2,5] alpha[32,2,6] alpha[32,2,7] alpha[32,2,8] alpha[32,2,9]
 alpha[32,2,10] alpha[32,2,11] alpha[32,2,12] alpha[32,2,13] alpha[32,2,14]
 alpha[32,2,15] alpha[32,2,16] alpha[32,2,17] alpha[32,2,18] alpha[32,2,19]
 alpha[32,2,20] alpha[32,2,21] alpha[32,2,22] alpha[32,2,23] alpha[32,2,24]
 alpha[32,2,25] alpha[32,2,26] alpha[32,2,27] alpha[32,2,28] alpha[32,2,29]
 alpha[32,3,0] alpha[32,3,1] alpha[32,3,2] alpha[32,3,3] alpha[32,3,4]
 alpha[32,3,5] alpha[32,3,6] alpha[32,3,7] alpha[32,3,8] alpha[32,3,9]
 alpha[32,3,10] alpha[32,3,11] alpha[32,3,12] alpha[32,3,13] alpha[32,3,14]
 alpha[32,3,15] alpha[32,3,16] alpha[32,3,17] alpha[32,3,18] alpha[32,3,19]
 alpha[32,3,20] alpha[32,3,21] alpha[32,3,22] alpha[32,3,23] alpha[32,3,24]
 alpha[32,3,25] alpha[32,3,26] alpha[32,3,27] alpha[32,3,28] alpha[32,3,29]
 alpha[33,0,0] alpha[33,0,1] alpha[33,0,2] alpha[33,0,3] alpha[33,0,4]
 alpha[33,0,5] alpha[33,0,6] alpha[33,0,7] alpha[33,0,8] alpha[33,0,9]
 alpha[33,0,10] alpha[33,0,11] alpha[33,0,12] alpha[33,0,13] alpha[33,0,14]
 alpha[33,0,15] alpha[33,0,16] alpha[33,0,17] alpha[33,0,18] alpha[33,0,19]
 alpha[33,0,20] alpha[33,0,21] alpha[33,0,22] alpha[33,0,23] alpha[33,0,24]
 alpha[33,0,25] alpha[33,0,26] alpha[33,0,27] alpha[33,0,28] alpha[33,0,29]
 alpha[33,1,0] alpha[33,1,1] alpha[33,1,2] alpha[33,1,3] alpha[33,1,4]
 alpha[33,1,5] alpha[33,1,6] alpha[33,1,7] alpha[33,1,8] alpha[33,1,9]
 alpha[33,1,10] alpha[33,1,11] alpha[33,1,12] alpha[33,1,13] alpha[33,1,14]
 alpha[33,1,15] alpha[33,1,16] alpha[33,1,17] alpha[33,1,18] alpha[33,1,19]
 alpha[33,1,20] alpha[33,1,21] alpha[33,1,22] alpha[33,1,23] alpha[33,1,24]
 alpha[33,1,25] alpha[33,1,26] alpha[33,1,27] alpha[33,1,28] alpha[33,1,29]
 alpha[33,2,0] alpha[33,2,1] alpha[33,2,2] alpha[33,2,3] alpha[33,2,4]
 alpha[33,2,5] alpha[33,2,6] alpha[33,2,7] alpha[33,2,8] alpha[33,2,9]
 alpha[33,2,10] alpha[33,2,11] alpha[33,2,12] alpha[33,2,13] alpha[33,2,14]
 alpha[33,2,15] alpha[33,2,16] alpha[33,2,17] alpha[33,2,18] alpha[33,2,19]
 alpha[33,2,20] alpha[33,2,21] alpha[33,2,22] alpha[33,2,23] alpha[33,2,24]
 alpha[33,2,25] alpha[33,2,26] alpha[33,2,27] alpha[33,2,28] alpha[33,2,29]
 alpha[33,3,0] alpha[33,3,1] alpha[33,3,2] alpha[33,3,3] alpha[33,3,4]
 alpha[33,3,5] alpha[33,3,6] alpha[33,3,7] alpha[33,3,8] alpha[33,3,9]
 alpha[33,3,10] alpha[33,3,11] alpha[33,3,12] alpha[33,3,13] alpha[33,3,14]
 alpha[33,3,15] alpha[33,3,16] alpha[33,3,17] alpha[33,3,18] alpha[33,3,19]
 alpha[33,3,20] alpha[33,3,21] alpha[33,3,22] alpha[33,3,23] alpha[33,3,24]
 alpha[33,3,25] alpha[33,3,26] alpha[33,3,27] alpha[33,3,28] alpha[33,3,29]
 alpha[34,0,0] alpha[34,0,1] alpha[34,0,2] alpha[34,0,3] alpha[34,0,4]
 alpha[34,0,5] alpha[34,0,6] alpha[34,0,7] alpha[34,0,8] alpha[34,0,9]
 alpha[34,0,10] alpha[34,0,11] alpha[34,0,12] alpha[34,0,13] alpha[34,0,14]
 alpha[34,0,15] alpha[34,0,16] alpha[34,0,17] alpha[34,0,18] alpha[34,0,19]
 alpha[34,0,20] alpha[34,0,21] alpha[34,0,22] alpha[34,0,23] alpha[34,0,24]
 alpha[34,0,25] alpha[34,0,26] alpha[34,0,27] alpha[34,0,28] alpha[34,0,29]
 alpha[34,1,0] alpha[34,1,1] alpha[34,1,2] alpha[34,1,3] alpha[34,1,4]
 alpha[34,1,5] alpha[34,1,6] alpha[34,1,7] alpha[34,1,8] alpha[34,1,9]
 alpha[34,1,10] alpha[34,1,11] alpha[34,1,12] alpha[34,1,13] alpha[34,1,14]
 alpha[34,1,15] alpha[34,1,16] alpha[34,1,17] alpha[34,1,18] alpha[34,1,19]
 alpha[34,1,20] alpha[34,1,21] alpha[34,1,22] alpha[34,1,23] alpha[34,1,24]
 alpha[34,1,25] alpha[34,1,26] alpha[34,1,27] alpha[34,1,28] alpha[34,1,29]
 alpha[34,2,0] alpha[34,2,1] alpha[34,2,2] alpha[34,2,3] alpha[34,2,4]
 alpha[34,2,5] alpha[34,2,6] alpha[34,2,7] alpha[34,2,8] alpha[34,2,9]
 alpha[34,2,10] alpha[34,2,11] alpha[34,2,12] alpha[34,2,13] alpha[34,2,14]
 alpha[34,2,15] alpha[34,2,16] alpha[34,2,17] alpha[34,2,18] alpha[34,2,19]
 alpha[34,2,20] alpha[34,2,21] alpha[34,2,22] alpha[34,2,23] alpha[34,2,24]
 alpha[34,2,25] alpha[34,2,26] alpha[34,2,27] alpha[34,2,28] alpha[34,2,29]
 alpha[34,3,0] alpha[34,3,1] alpha[34,3,2] alpha[34,3,3] alpha[34,3,4]
 alpha[34,3,5] alpha[34,3,6] alpha[34,3,7] alpha[34,3,8] alpha[34,3,9]
 alpha[34,3,10] alpha[34,3,11] alpha[34,3,12] alpha[34,3,13] alpha[34,3,14]
 alpha[34,3,15] alpha[34,3,16] alpha[34,3,17] alpha[34,3,18] alpha[34,3,19]
 alpha[34,3,20] alpha[34,3,21] alpha[34,3,22] alpha[34,3,23] alpha[34,3,24]
 alpha[34,3,25] alpha[34,3,26] alpha[34,3,27] alpha[34,3,28] alpha[34,3,29]
 alpha[35,0,0] alpha[35,0,1] alpha[35,0,2] alpha[35,0,3] alpha[35,0,4]
 alpha[35,0,5] alpha[35,0,6] alpha[35,0,7] alpha[35,0,8] alpha[35,0,9]
 alpha[35,0,10] alpha[35,0,11] alpha[35,0,12] alpha[35,0,13] alpha[35,0,14]
 alpha[35,0,15] alpha[35,0,16] alpha[35,0,17] alpha[35,0,18] alpha[35,0,19]
 alpha[35,0,20] alpha[35,0,21] alpha[35,0,22] alpha[35,0,23] alpha[35,0,24]
 alpha[35,0,25] alpha[35,0,26] alpha[35,0,27] alpha[35,0,28] alpha[35,0,29]
 alpha[35,1,0] alpha[35,1,1] alpha[35,1,2] alpha[35,1,3] alpha[35,1,4]
 alpha[35,1,5] alpha[35,1,6] alpha[35,1,7] alpha[35,1,8] alpha[35,1,9]
 alpha[35,1,10] alpha[35,1,11] alpha[35,1,12] alpha[35,1,13] alpha[35,1,14]
 alpha[35,1,15] alpha[35,1,16] alpha[35,1,17] alpha[35,1,18] alpha[35,1,19]
 alpha[35,1,20] alpha[35,1,21] alpha[35,1,22] alpha[35,1,23] alpha[35,1,24]
 alpha[35,1,25] alpha[35,1,26] alpha[35,1,27] alpha[35,1,28] alpha[35,1,29]
 alpha[35,2,0] alpha[35,2,1] alpha[35,2,2] alpha[35,2,3] alpha[35,2,4]
 alpha[35,2,5] alpha[35,2,6] alpha[35,2,7] alpha[35,2,8] alpha[35,2,9]
 alpha[35,2,10] alpha[35,2,11] alpha[35,2,12] alpha[35,2,13] alpha[35,2,14]
 alpha[35,2,15] alpha[35,2,16] alpha[35,2,17] alpha[35,2,18] alpha[35,2,19]
 alpha[35,2,20] alpha[35,2,21] alpha[35,2,22] alpha[35,2,23] alpha[35,2,24]
 alpha[35,2,25] alpha[35,2,26] alpha[35,2,27] alpha[35,2,28] alpha[35,2,29]
 alpha[35,3,0] alpha[35,3,1] alpha[35,3,2] alpha[35,3,3] alpha[35,3,4]
 alpha[35,3,5] alpha[35,3,6] alpha[35,3,7] alpha[35,3,8] alpha[35,3,9]
 alpha[35,3,10] alpha[35,3,11] alpha[35,3,12] alpha[35,3,13] alpha[35,3,14]
 alpha[35,3,15] alpha[35,3,16] alpha[35,3,17] alpha[35,3,18] alpha[35,3,19]
 alpha[35,3,20] alpha[35,3,21] alpha[35,3,22] alpha[35,3,23] alpha[35,3,24]
 alpha[35,3,25] alpha[35,3,26] alpha[35,3,27] alpha[35,3,28] alpha[35,3,29]
 alpha[36,0,0] alpha[36,0,1] alpha[36,0,2] alpha[36,0,3] alpha[36,0,4]
 alpha[36,0,5] alpha[36,0,6] alpha[36,0,7] alpha[36,0,8] alpha[36,0,9]
 alpha[36,0,10] alpha[36,0,11] alpha[36,0,12] alpha[36,0,13] alpha[36,0,14]
 alpha[36,0,15] alpha[36,0,16] alpha[36,0,17] alpha[36,0,18] alpha[36,0,19]
 alpha[36,0,20] alpha[36,0,21] alpha[36,0,22] alpha[36,0,23] alpha[36,0,24]
 alpha[36,0,25] alpha[36,0,26] alpha[36,0,27] alpha[36,0,28] alpha[36,0,29]
 alpha[36,1,0] alpha[36,1,1] alpha[36,1,2] alpha[36,1,3] alpha[36,1,4]
 alpha[36,1,5] alpha[36,1,6] alpha[36,1,7] alpha[36,1,8] alpha[36,1,9]
 alpha[36,1,10] alpha[36,1,11] alpha[36,1,12] alpha[36,1,13] alpha[36,1,14]
 alpha[36,1,15] alpha[36,1,16] alpha[36,1,17] alpha[36,1,18] alpha[36,1,19]
 alpha[36,1,20] alpha[36,1,21] alpha[36,1,22] alpha[36,1,23] alpha[36,1,24]
 alpha[36,1,25] alpha[36,1,26] alpha[36,1,27] alpha[36,1,28] alpha[36,1,29]
 alpha[36,2,0] alpha[36,2,1] alpha[36,2,2] alpha[36,2,3] alpha[36,2,4]
 alpha[36,2,5] alpha[36,2,6] alpha[36,2,7] alpha[36,2,8] alpha[36,2,9]
 alpha[36,2,10] alpha[36,2,11] alpha[36,2,12] alpha[36,2,13] alpha[36,2,14]
 alpha[36,2,15] alpha[36,2,16] alpha[36,2,17] alpha[36,2,18] alpha[36,2,19]
 alpha[36,2,20] alpha[36,2,21] alpha[36,2,22] alpha[36,2,23] alpha[36,2,24]
 alpha[36,2,25] alpha[36,2,26] alpha[36,2,27] alpha[36,2,28] alpha[36,2,29]
 alpha[36,3,0] alpha[36,3,1] alpha[36,3,2] alpha[36,3,3] alpha[36,3,4]
 alpha[36,3,5] alpha[36,3,6] alpha[36,3,7] alpha[36,3,8] alpha[36,3,9]
 alpha[36,3,10] alpha[36,3,11] alpha[36,3,12] alpha[36,3,13] alpha[36,3,14]
 alpha[36,3,15] alpha[36,3,16] alpha[36,3,17] alpha[36,3,18] alpha[36,3,19]
 alpha[36,3,20] alpha[36,3,21] alpha[36,3,22] alpha[36,3,23] alpha[36,3,24]
 alpha[36,3,25] alpha[36,3,26] alpha[36,3,27] alpha[36,3,28] alpha[36,3,29]
 alpha[37,0,0] alpha[37,0,1] alpha[37,0,2] alpha[37,0,3] alpha[37,0,4]
 alpha[37,0,5] alpha[37,0,6] alpha[37,0,7] alpha[37,0,8] alpha[37,0,9]
 alpha[37,0,10] alpha[37,0,11] alpha[37,0,12] alpha[37,0,13] alpha[37,0,14]
 alpha[37,0,15] alpha[37,0,16] alpha[37,0,17] alpha[37,0,18] alpha[37,0,19]
 alpha[37,0,20] alpha[37,0,21] alpha[37,0,22] alpha[37,0,23] alpha[37,0,24]
 alpha[37,0,25] alpha[37,0,26] alpha[37,0,27] alpha[37,0,28] alpha[37,0,29]
 alpha[37,1,0] alpha[37,1,1] alpha[37,1,2] alpha[37,1,3] alpha[37,1,4]
 alpha[37,1,5] alpha[37,1,6] alpha[37,1,7] alpha[37,1,8] alpha[37,1,9]
 alpha[37,1,10] alpha[37,1,11] alpha[37,1,12] alpha[37,1,13] alpha[37,1,14]
 alpha[37,1,15] alpha[37,1,16] alpha[37,1,17] alpha[37,1,18] alpha[37,1,19]
 alpha[37,1,20] alpha[37,1,21] alpha[37,1,22] alpha[37,1,23] alpha[37,1,24]
 alpha[37,1,25] alpha[37,1,26] alpha[37,1,27] alpha[37,1,28] alpha[37,1,29]
 alpha[37,2,0] alpha[37,2,1] alpha[37,2,2] alpha[37,2,3] alpha[37,2,4]
 alpha[37,2,5] alpha[37,2,6] alpha[37,2,7] alpha[37,2,8] alpha[37,2,9]
 alpha[37,2,10] alpha[37,2,11] alpha[37,2,12] alpha[37,2,13] alpha[37,2,14]
 alpha[37,2,15] alpha[37,2,16] alpha[37,2,17] alpha[37,2,18] alpha[37,2,19]
 alpha[37,2,20] alpha[37,2,21] alpha[37,2,22] alpha[37,2,23] alpha[37,2,24]
 alpha[37,2,25] alpha[37,2,26] alpha[37,2,27] alpha[37,2,28] alpha[37,2,29]
 alpha[37,3,0] alpha[37,3,1] alpha[37,3,2] alpha[37,3,3] alpha[37,3,4]
 alpha[37,3,5] alpha[37,3,6] alpha[37,3,7] alpha[37,3,8] alpha[37,3,9]
 alpha[37,3,10] alpha[37,3,11] alpha[37,3,12] alpha[37,3,13] alpha[37,3,14]
 alpha[37,3,15] alpha[37,3,16] alpha[37,3,17] alpha[37,3,18] alpha[37,3,19]
 alpha[37,3,20] alpha[37,3,21] alpha[37,3,22] alpha[37,3,23] alpha[37,3,24]
 alpha[37,3,25] alpha[37,3,26] alpha[37,3,27] alpha[37,3,28] alpha[37,3,29]
 alpha[38,0,0] alpha[38,0,1] alpha[38,0,2] alpha[38,0,3] alpha[38,0,4]
 alpha[38,0,5] alpha[38,0,6] alpha[38,0,7] alpha[38,0,8] alpha[38,0,9]
 alpha[38,0,10] alpha[38,0,11] alpha[38,0,12] alpha[38,0,13] alpha[38,0,14]
 alpha[38,0,15] alpha[38,0,16] alpha[38,0,17] alpha[38,0,18] alpha[38,0,19]
 alpha[38,0,20] alpha[38,0,21] alpha[38,0,22] alpha[38,0,23] alpha[38,0,24]
 alpha[38,0,25] alpha[38,0,26] alpha[38,0,27] alpha[38,0,28] alpha[38,0,29]
 alpha[38,1,0] alpha[38,1,1] alpha[38,1,2] alpha[38,1,3] alpha[38,1,4]
 alpha[38,1,5] alpha[38,1,6] alpha[38,1,7] alpha[38,1,8] alpha[38,1,9]
 alpha[38,1,10] alpha[38,1,11] alpha[38,1,12] alpha[38,1,13] alpha[38,1,14]
 alpha[38,1,15] alpha[38,1,16] alpha[38,1,17] alpha[38,1,18] alpha[38,1,19]
 alpha[38,1,20] alpha[38,1,21] alpha[38,1,22] alpha[38,1,23] alpha[38,1,24]
 alpha[38,1,25] alpha[38,1,26] alpha[38,1,27] alpha[38,1,28] alpha[38,1,29]
 alpha[38,2,0] alpha[38,2,1] alpha[38,2,2] alpha[38,2,3] alpha[38,2,4]
 alpha[38,2,5] alpha[38,2,6] alpha[38,2,7] alpha[38,2,8] alpha[38,2,9]
 alpha[38,2,10] alpha[38,2,11] alpha[38,2,12] alpha[38,2,13] alpha[38,2,14]
 alpha[38,2,15] alpha[38,2,16] alpha[38,2,17] alpha[38,2,18] alpha[38,2,19]
 alpha[38,2,20] alpha[38,2,21] alpha[38,2,22] alpha[38,2,23] alpha[38,2,24]
 alpha[38,2,25] alpha[38,2,26] alpha[38,2,27] alpha[38,2,28] alpha[38,2,29]
 alpha[38,3,0] alpha[38,3,1] alpha[38,3,2] alpha[38,3,3] alpha[38,3,4]
 alpha[38,3,5] alpha[38,3,6] alpha[38,3,7] alpha[38,3,8] alpha[38,3,9]
 alpha[38,3,10] alpha[38,3,11] alpha[38,3,12] alpha[38,3,13] alpha[38,3,14]
 alpha[38,3,15] alpha[38,3,16] alpha[38,3,17] alpha[38,3,18] alpha[38,3,19]
 alpha[38,3,20] alpha[38,3,21] alpha[38,3,22] alpha[38,3,23] alpha[38,3,24]
 alpha[38,3,25] alpha[38,3,26] alpha[38,3,27] alpha[38,3,28] alpha[38,3,29]
 alpha[39,0,0] alpha[39,0,1] alpha[39,0,2] alpha[39,0,3] alpha[39,0,4]
 alpha[39,0,5] alpha[39,0,6] alpha[39,0,7] alpha[39,0,8] alpha[39,0,9]
 alpha[39,0,10] alpha[39,0,11] alpha[39,0,12] alpha[39,0,13] alpha[39,0,14]
 alpha[39,0,15] alpha[39,0,16] alpha[39,0,17] alpha[39,0,18] alpha[39,0,19]
 alpha[39,0,20] alpha[39,0,21] alpha[39,0,22] alpha[39,0,23] alpha[39,0,24]
 alpha[39,0,25] alpha[39,0,26] alpha[39,0,27] alpha[39,0,28] alpha[39,0,29]
 alpha[39,1,0] alpha[39,1,1] alpha[39,1,2] alpha[39,1,3] alpha[39,1,4]
 alpha[39,1,5] alpha[39,1,6] alpha[39,1,7] alpha[39,1,8] alpha[39,1,9]
 alpha[39,1,10] alpha[39,1,11] alpha[39,1,12] alpha[39,1,13] alpha[39,1,14]
 alpha[39,1,15] alpha[39,1,16] alpha[39,1,17] alpha[39,1,18] alpha[39,1,19]
 alpha[39,1,20] alpha[39,1,21] alpha[39,1,22] alpha[39,1,23] alpha[39,1,24]
 alpha[39,1,25] alpha[39,1,26] alpha[39,1,27] alpha[39,1,28] alpha[39,1,29]
 alpha[39,2,0] alpha[39,2,1] alpha[39,2,2] alpha[39,2,3] alpha[39,2,4]
 alpha[39,2,5] alpha[39,2,6] alpha[39,2,7] alpha[39,2,8] alpha[39,2,9]
 alpha[39,2,10] alpha[39,2,11] alpha[39,2,12] alpha[39,2,13] alpha[39,2,14]
 alpha[39,2,15] alpha[39,2,16] alpha[39,2,17] alpha[39,2,18] alpha[39,2,19]
 alpha[39,2,20] alpha[39,2,21] alpha[39,2,22] alpha[39,2,23] alpha[39,2,24]
 alpha[39,2,25] alpha[39,2,26] alpha[39,2,27] alpha[39,2,28] alpha[39,2,29]
 alpha[39,3,0] alpha[39,3,1] alpha[39,3,2] alpha[39,3,3] alpha[39,3,4]
 alpha[39,3,5] alpha[39,3,6] alpha[39,3,7] alpha[39,3,8] alpha[39,3,9]
 alpha[39,3,10] alpha[39,3,11] alpha[39,3,12] alpha[39,3,13] alpha[39,3,14]
 alpha[39,3,15] alpha[39,3,16] alpha[39,3,17] alpha[39,3,18] alpha[39,3,19]
 alpha[39,3,20] alpha[39,3,21] alpha[39,3,22] alpha[39,3,23] alpha[39,3,24]
 alpha[39,3,25] alpha[39,3,26] alpha[39,3,27] alpha[39,3,28] alpha[39,3,29]
 alpha[40,0,0] alpha[40,0,1] alpha[40,0,2] alpha[40,0,3] alpha[40,0,4]
 alpha[40,0,5] alpha[40,0,6] alpha[40,0,7] alpha[40,0,8] alpha[40,0,9]
 alpha[40,0,10] alpha[40,0,11] alpha[40,0,12] alpha[40,0,13] alpha[40,0,14]
 alpha[40,0,15] alpha[40,0,16] alpha[40,0,17] alpha[40,0,18] alpha[40,0,19]
 alpha[40,0,20] alpha[40,0,21] alpha[40,0,22] alpha[40,0,23] alpha[40,0,24]
 alpha[40,0,25] alpha[40,0,26] alpha[40,0,27] alpha[40,0,28] alpha[40,0,29]
 alpha[40,1,0] alpha[40,1,1] alpha[40,1,2] alpha[40,1,3] alpha[40,1,4]
 alpha[40,1,5] alpha[40,1,6] alpha[40,1,7] alpha[40,1,8] alpha[40,1,9]
 alpha[40,1,10] alpha[40,1,11] alpha[40,1,12] alpha[40,1,13] alpha[40,1,14]
 alpha[40,1,15] alpha[40,1,16] alpha[40,1,17] alpha[40,1,18] alpha[40,1,19]
 alpha[40,1,20] alpha[40,1,21] alpha[40,1,22] alpha[40,1,23] alpha[40,1,24]
 alpha[40,1,25] alpha[40,1,26] alpha[40,1,27] alpha[40,1,28] alpha[40,1,29]
 alpha[40,2,0] alpha[40,2,1] alpha[40,2,2] alpha[40,2,3] alpha[40,2,4]
 alpha[40,2,5] alpha[40,2,6] alpha[40,2,7] alpha[40,2,8] alpha[40,2,9]
 alpha[40,2,10] alpha[40,2,11] alpha[40,2,12] alpha[40,2,13] alpha[40,2,14]
 alpha[40,2,15] alpha[40,2,16] alpha[40,2,17] alpha[40,2,18] alpha[40,2,19]
 alpha[40,2,20] alpha[40,2,21] alpha[40,2,22] alpha[40,2,23] alpha[40,2,24]
 alpha[40,2,25] alpha[40,2,26] alpha[40,2,27] alpha[40,2,28] alpha[40,2,29]
 alpha[40,3,0] alpha[40,3,1] alpha[40,3,2] alpha[40,3,3] alpha[40,3,4]
 alpha[40,3,5] alpha[40,3,6] alpha[40,3,7] alpha[40,3,8] alpha[40,3,9]
 alpha[40,3,10] alpha[40,3,11] alpha[40,3,12] alpha[40,3,13] alpha[40,3,14]
 alpha[40,3,15] alpha[40,3,16] alpha[40,3,17] alpha[40,3,18] alpha[40,3,19]
 alpha[40,3,20] alpha[40,3,21] alpha[40,3,22] alpha[40,3,23] alpha[40,3,24]
 alpha[40,3,25] alpha[40,3,26] alpha[40,3,27] alpha[40,3,28] alpha[40,3,29]
 alpha[41,0,0] alpha[41,0,1] alpha[41,0,2] alpha[41,0,3] alpha[41,0,4]
 alpha[41,0,5] alpha[41,0,6] alpha[41,0,7] alpha[41,0,8] alpha[41,0,9]
 alpha[41,0,10] alpha[41,0,11] alpha[41,0,12] alpha[41,0,13] alpha[41,0,14]
 alpha[41,0,15] alpha[41,0,16] alpha[41,0,17] alpha[41,0,18] alpha[41,0,19]
 alpha[41,0,20] alpha[41,0,21] alpha[41,0,22] alpha[41,0,23] alpha[41,0,24]
 alpha[41,0,25] alpha[41,0,26] alpha[41,0,27] alpha[41,0,28] alpha[41,0,29]
 alpha[41,1,0] alpha[41,1,1] alpha[41,1,2] alpha[41,1,3] alpha[41,1,4]
 alpha[41,1,5] alpha[41,1,6] alpha[41,1,7] alpha[41,1,8] alpha[41,1,9]
 alpha[41,1,10] alpha[41,1,11] alpha[41,1,12] alpha[41,1,13] alpha[41,1,14]
 alpha[41,1,15] alpha[41,1,16] alpha[41,1,17] alpha[41,1,18] alpha[41,1,19]
 alpha[41,1,20] alpha[41,1,21] alpha[41,1,22] alpha[41,1,23] alpha[41,1,24]
 alpha[41,1,25] alpha[41,1,26] alpha[41,1,27] alpha[41,1,28] alpha[41,1,29]
 alpha[41,2,0] alpha[41,2,1] alpha[41,2,2] alpha[41,2,3] alpha[41,2,4]
 alpha[41,2,5] alpha[41,2,6] alpha[41,2,7] alpha[41,2,8] alpha[41,2,9]
 alpha[41,2,10] alpha[41,2,11] alpha[41,2,12] alpha[41,2,13] alpha[41,2,14]
 alpha[41,2,15] alpha[41,2,16] alpha[41,2,17] alpha[41,2,18] alpha[41,2,19]
 alpha[41,2,20] alpha[41,2,21] alpha[41,2,22] alpha[41,2,23] alpha[41,2,24]
 alpha[41,2,25] alpha[41,2,26] alpha[41,2,27] alpha[41,2,28] alpha[41,2,29]
 alpha[41,3,0] alpha[41,3,1] alpha[41,3,2] alpha[41,3,3] alpha[41,3,4]
 alpha[41,3,5] alpha[41,3,6] alpha[41,3,7] alpha[41,3,8] alpha[41,3,9]
 alpha[41,3,10] alpha[41,3,11] alpha[41,3,12] alpha[41,3,13] alpha[41,3,14]
 alpha[41,3,15] alpha[41,3,16] alpha[41,3,17] alpha[41,3,18] alpha[41,3,19]
 alpha[41,3,20] alpha[41,3,21] alpha[41,3,22] alpha[41,3,23] alpha[41,3,24]
 alpha[41,3,25] alpha[41,3,26] alpha[41,3,27] alpha[41,3,28] alpha[41,3,29]
 alpha[42,0,0] alpha[42,0,1] alpha[42,0,2] alpha[42,0,3] alpha[42,0,4]
 alpha[42,0,5] alpha[42,0,6] alpha[42,0,7] alpha[42,0,8] alpha[42,0,9]
 alpha[42,0,10] alpha[42,0,11] alpha[42,0,12] alpha[42,0,13] alpha[42,0,14]
 alpha[42,0,15] alpha[42,0,16] alpha[42,0,17] alpha[42,0,18] alpha[42,0,19]
 alpha[42,0,20] alpha[42,0,21] alpha[42,0,22] alpha[42,0,23] alpha[42,0,24]
 alpha[42,0,25] alpha[42,0,26] alpha[42,0,27] alpha[42,0,28] alpha[42,0,29]
 alpha[42,1,0] alpha[42,1,1] alpha[42,1,2] alpha[42,1,3] alpha[42,1,4]
 alpha[42,1,5] alpha[42,1,6] alpha[42,1,7] alpha[42,1,8] alpha[42,1,9]
 alpha[42,1,10] alpha[42,1,11] alpha[42,1,12] alpha[42,1,13] alpha[42,1,14]
 alpha[42,1,15] alpha[42,1,16] alpha[42,1,17] alpha[42,1,18] alpha[42,1,19]
 alpha[42,1,20] alpha[42,1,21] alpha[42,1,22] alpha[42,1,23] alpha[42,1,24]
 alpha[42,1,25] alpha[42,1,26] alpha[42,1,27] alpha[42,1,28] alpha[42,1,29]
 alpha[42,2,0] alpha[42,2,1] alpha[42,2,2] alpha[42,2,3] alpha[42,2,4]
 alpha[42,2,5] alpha[42,2,6] alpha[42,2,7] alpha[42,2,8] alpha[42,2,9]
 alpha[42,2,10] alpha[42,2,11] alpha[42,2,12] alpha[42,2,13] alpha[42,2,14]
 alpha[42,2,15] alpha[42,2,16] alpha[42,2,17] alpha[42,2,18] alpha[42,2,19]
 alpha[42,2,20] alpha[42,2,21] alpha[42,2,22] alpha[42,2,23] alpha[42,2,24]
 alpha[42,2,25] alpha[42,2,26] alpha[42,2,27] alpha[42,2,28] alpha[42,2,29]
 alpha[42,3,0] alpha[42,3,1] alpha[42,3,2] alpha[42,3,3] alpha[42,3,4]
 alpha[42,3,5] alpha[42,3,6] alpha[42,3,7] alpha[42,3,8] alpha[42,3,9]
 alpha[42,3,10] alpha[42,3,11] alpha[42,3,12] alpha[42,3,13] alpha[42,3,14]
 alpha[42,3,15] alpha[42,3,16] alpha[42,3,17] alpha[42,3,18] alpha[42,3,19]
 alpha[42,3,20] alpha[42,3,21] alpha[42,3,22] alpha[42,3,23] alpha[42,3,24]
 alpha[42,3,25] alpha[42,3,26] alpha[42,3,27] alpha[42,3,28] alpha[42,3,29]
 alpha[43,0,0] alpha[43,0,1] alpha[43,0,2] alpha[43,0,3] alpha[43,0,4]
 alpha[43,0,5] alpha[43,0,6] alpha[43,0,7] alpha[43,0,8] alpha[43,0,9]
 alpha[43,0,10] alpha[43,0,11] alpha[43,0,12] alpha[43,0,13] alpha[43,0,14]
 alpha[43,0,15] alpha[43,0,16] alpha[43,0,17] alpha[43,0,18] alpha[43,0,19]
 alpha[43,0,20] alpha[43,0,21] alpha[43,0,22] alpha[43,0,23] alpha[43,0,24]
 alpha[43,0,25] alpha[43,0,26] alpha[43,0,27] alpha[43,0,28] alpha[43,0,29]
 alpha[43,1,0] alpha[43,1,1] alpha[43,1,2] alpha[43,1,3] alpha[43,1,4]
 alpha[43,1,5] alpha[43,1,6] alpha[43,1,7] alpha[43,1,8] alpha[43,1,9]
 alpha[43,1,10] alpha[43,1,11] alpha[43,1,12] alpha[43,1,13] alpha[43,1,14]
 alpha[43,1,15] alpha[43,1,16] alpha[43,1,17] alpha[43,1,18] alpha[43,1,19]
 alpha[43,1,20] alpha[43,1,21] alpha[43,1,22] alpha[43,1,23] alpha[43,1,24]
 alpha[43,1,25] alpha[43,1,26] alpha[43,1,27] alpha[43,1,28] alpha[43,1,29]
 alpha[43,2,0] alpha[43,2,1] alpha[43,2,2] alpha[43,2,3] alpha[43,2,4]
 alpha[43,2,5] alpha[43,2,6] alpha[43,2,7] alpha[43,2,8] alpha[43,2,9]
 alpha[43,2,10] alpha[43,2,11] alpha[43,2,12] alpha[43,2,13] alpha[43,2,14]
 alpha[43,2,15] alpha[43,2,16] alpha[43,2,17] alpha[43,2,18] alpha[43,2,19]
 alpha[43,2,20] alpha[43,2,21] alpha[43,2,22] alpha[43,2,23] alpha[43,2,24]
 alpha[43,2,25] alpha[43,2,26] alpha[43,2,27] alpha[43,2,28] alpha[43,2,29]
 alpha[43,3,0] alpha[43,3,1] alpha[43,3,2] alpha[43,3,3] alpha[43,3,4]
 alpha[43,3,5] alpha[43,3,6] alpha[43,3,7] alpha[43,3,8] alpha[43,3,9]
 alpha[43,3,10] alpha[43,3,11] alpha[43,3,12] alpha[43,3,13] alpha[43,3,14]
 alpha[43,3,15] alpha[43,3,16] alpha[43,3,17] alpha[43,3,18] alpha[43,3,19]
 alpha[43,3,20] alpha[43,3,21] alpha[43,3,22] alpha[43,3,23] alpha[43,3,24]
 alpha[43,3,25] alpha[43,3,26] alpha[43,3,27] alpha[43,3,28] alpha[43,3,29]
 alpha[44,0,0] alpha[44,0,1] alpha[44,0,2] alpha[44,0,3] alpha[44,0,4]
 alpha[44,0,5] alpha[44,0,6] alpha[44,0,7] alpha[44,0,8] alpha[44,0,9]
 alpha[44,0,10] alpha[44,0,11] alpha[44,0,12] alpha[44,0,13] alpha[44,0,14]
 alpha[44,0,15] alpha[44,0,16] alpha[44,0,17] alpha[44,0,18] alpha[44,0,19]
 alpha[44,0,20] alpha[44,0,21] alpha[44,0,22] alpha[44,0,23] alpha[44,0,24]
 alpha[44,0,25] alpha[44,0,26] alpha[44,0,27] alpha[44,0,28] alpha[44,0,29]
 alpha[44,1,0] alpha[44,1,1] alpha[44,1,2] alpha[44,1,3] alpha[44,1,4]
 alpha[44,1,5] alpha[44,1,6] alpha[44,1,7] alpha[44,1,8] alpha[44,1,9]
 alpha[44,1,10] alpha[44,1,11] alpha[44,1,12] alpha[44,1,13] alpha[44,1,14]
 alpha[44,1,15] alpha[44,1,16] alpha[44,1,17] alpha[44,1,18] alpha[44,1,19]
 alpha[44,1,20] alpha[44,1,21] alpha[44,1,22] alpha[44,1,23] alpha[44,1,24]
 alpha[44,1,25] alpha[44,1,26] alpha[44,1,27] alpha[44,1,28] alpha[44,1,29]
 alpha[44,2,0] alpha[44,2,1] alpha[44,2,2] alpha[44,2,3] alpha[44,2,4]
 alpha[44,2,5] alpha[44,2,6] alpha[44,2,7] alpha[44,2,8] alpha[44,2,9]
 alpha[44,2,10] alpha[44,2,11] alpha[44,2,12] alpha[44,2,13] alpha[44,2,14]
 alpha[44,2,15] alpha[44,2,16] alpha[44,2,17] alpha[44,2,18] alpha[44,2,19]
 alpha[44,2,20] alpha[44,2,21] alpha[44,2,22] alpha[44,2,23] alpha[44,2,24]
 alpha[44,2,25] alpha[44,2,26] alpha[44,2,27] alpha[44,2,28] alpha[44,2,29]
 alpha[44,3,0] alpha[44,3,1] alpha[44,3,2] alpha[44,3,3] alpha[44,3,4]
 alpha[44,3,5] alpha[44,3,6] alpha[44,3,7] alpha[44,3,8] alpha[44,3,9]
 alpha[44,3,10] alpha[44,3,11] alpha[44,3,12] alpha[44,3,13] alpha[44,3,14]
 alpha[44,3,15] alpha[44,3,16] alpha[44,3,17] alpha[44,3,18] alpha[44,3,19]
 alpha[44,3,20] alpha[44,3,21] alpha[44,3,22] alpha[44,3,23] alpha[44,3,24]
 alpha[44,3,25] alpha[44,3,26] alpha[44,3,27] alpha[44,3,28] alpha[44,3,29]
 alpha[45,0,0] alpha[45,0,1] alpha[45,0,2] alpha[45,0,3] alpha[45,0,4]
 alpha[45,0,5] alpha[45,0,6] alpha[45,0,7] alpha[45,0,8] alpha[45,0,9]
 alpha[45,0,10] alpha[45,0,11] alpha[45,0,12] alpha[45,0,13] alpha[45,0,14]
 alpha[45,0,15] alpha[45,0,16] alpha[45,0,17] alpha[45,0,18] alpha[45,0,19]
 alpha[45,0,20] alpha[45,0,21] alpha[45,0,22] alpha[45,0,23] alpha[45,0,24]
 alpha[45,0,25] alpha[45,0,26] alpha[45,0,27] alpha[45,0,28] alpha[45,0,29]
 alpha[45,1,0] alpha[45,1,1] alpha[45,1,2] alpha[45,1,3] alpha[45,1,4]
 alpha[45,1,5] alpha[45,1,6] alpha[45,1,7] alpha[45,1,8] alpha[45,1,9]
 alpha[45,1,10] alpha[45,1,11] alpha[45,1,12] alpha[45,1,13] alpha[45,1,14]
 alpha[45,1,15] alpha[45,1,16] alpha[45,1,17] alpha[45,1,18] alpha[45,1,19]
 alpha[45,1,20] alpha[45,1,21] alpha[45,1,22] alpha[45,1,23] alpha[45,1,24]
 alpha[45,1,25] alpha[45,1,26] alpha[45,1,27] alpha[45,1,28] alpha[45,1,29]
 alpha[45,2,0] alpha[45,2,1] alpha[45,2,2] alpha[45,2,3] alpha[45,2,4]
 alpha[45,2,5] alpha[45,2,6] alpha[45,2,7] alpha[45,2,8] alpha[45,2,9]
 alpha[45,2,10] alpha[45,2,11] alpha[45,2,12] alpha[45,2,13] alpha[45,2,14]
 alpha[45,2,15] alpha[45,2,16] alpha[45,2,17] alpha[45,2,18] alpha[45,2,19]
 alpha[45,2,20] alpha[45,2,21] alpha[45,2,22] alpha[45,2,23] alpha[45,2,24]
 alpha[45,2,25] alpha[45,2,26] alpha[45,2,27] alpha[45,2,28] alpha[45,2,29]
 alpha[45,3,0] alpha[45,3,1] alpha[45,3,2] alpha[45,3,3] alpha[45,3,4]
 alpha[45,3,5] alpha[45,3,6] alpha[45,3,7] alpha[45,3,8] alpha[45,3,9]
 alpha[45,3,10] alpha[45,3,11] alpha[45,3,12] alpha[45,3,13] alpha[45,3,14]
 alpha[45,3,15] alpha[45,3,16] alpha[45,3,17] alpha[45,3,18] alpha[45,3,19]
 alpha[45,3,20] alpha[45,3,21] alpha[45,3,22] alpha[45,3,23] alpha[45,3,24]
 alpha[45,3,25] alpha[45,3,26] alpha[45,3,27] alpha[45,3,28] alpha[45,3,29]
 alpha[46,0,0] alpha[46,0,1] alpha[46,0,2] alpha[46,0,3] alpha[46,0,4]
 alpha[46,0,5] alpha[46,0,6] alpha[46,0,7] alpha[46,0,8] alpha[46,0,9]
 alpha[46,0,10] alpha[46,0,11] alpha[46,0,12] alpha[46,0,13] alpha[46,0,14]
 alpha[46,0,15] alpha[46,0,16] alpha[46,0,17] alpha[46,0,18] alpha[46,0,19]
 alpha[46,0,20] alpha[46,0,21] alpha[46,0,22] alpha[46,0,23] alpha[46,0,24]
 alpha[46,0,25] alpha[46,0,26] alpha[46,0,27] alpha[46,0,28] alpha[46,0,29]
 alpha[46,1,0] alpha[46,1,1] alpha[46,1,2] alpha[46,1,3] alpha[46,1,4]
 alpha[46,1,5] alpha[46,1,6] alpha[46,1,7] alpha[46,1,8] alpha[46,1,9]
 alpha[46,1,10] alpha[46,1,11] alpha[46,1,12] alpha[46,1,13] alpha[46,1,14]
 alpha[46,1,15] alpha[46,1,16] alpha[46,1,17] alpha[46,1,18] alpha[46,1,19]
 alpha[46,1,20] alpha[46,1,21] alpha[46,1,22] alpha[46,1,23] alpha[46,1,24]
 alpha[46,1,25] alpha[46,1,26] alpha[46,1,27] alpha[46,1,28] alpha[46,1,29]
 alpha[46,2,0] alpha[46,2,1] alpha[46,2,2] alpha[46,2,3] alpha[46,2,4]
 alpha[46,2,5] alpha[46,2,6] alpha[46,2,7] alpha[46,2,8] alpha[46,2,9]
 alpha[46,2,10] alpha[46,2,11] alpha[46,2,12] alpha[46,2,13] alpha[46,2,14]
 alpha[46,2,15] alpha[46,2,16] alpha[46,2,17] alpha[46,2,18] alpha[46,2,19]
 alpha[46,2,20] alpha[46,2,21] alpha[46,2,22] alpha[46,2,23] alpha[46,2,24]
 alpha[46,2,25] alpha[46,2,26] alpha[46,2,27] alpha[46,2,28] alpha[46,2,29]
 alpha[46,3,0] alpha[46,3,1] alpha[46,3,2] alpha[46,3,3] alpha[46,3,4]
 alpha[46,3,5] alpha[46,3,6] alpha[46,3,7] alpha[46,3,8] alpha[46,3,9]
 alpha[46,3,10] alpha[46,3,11] alpha[46,3,12] alpha[46,3,13] alpha[46,3,14]
 alpha[46,3,15] alpha[46,3,16] alpha[46,3,17] alpha[46,3,18] alpha[46,3,19]
 alpha[46,3,20] alpha[46,3,21] alpha[46,3,22] alpha[46,3,23] alpha[46,3,24]
 alpha[46,3,25] alpha[46,3,26] alpha[46,3,27] alpha[46,3,28] alpha[46,3,29]
 alpha[47,0,0] alpha[47,0,1] alpha[47,0,2] alpha[47,0,3] alpha[47,0,4]
 alpha[47,0,5] alpha[47,0,6] alpha[47,0,7] alpha[47,0,8] alpha[47,0,9]
 alpha[47,0,10] alpha[47,0,11] alpha[47,0,12] alpha[47,0,13] alpha[47,0,14]
 alpha[47,0,15] alpha[47,0,16] alpha[47,0,17] alpha[47,0,18] alpha[47,0,19]
 alpha[47,0,20] alpha[47,0,21] alpha[47,0,22] alpha[47,0,23] alpha[47,0,24]
 alpha[47,0,25] alpha[47,0,26] alpha[47,0,27] alpha[47,0,28] alpha[47,0,29]
 alpha[47,1,0] alpha[47,1,1] alpha[47,1,2] alpha[47,1,3] alpha[47,1,4]
 alpha[47,1,5] alpha[47,1,6] alpha[47,1,7] alpha[47,1,8] alpha[47,1,9]
 alpha[47,1,10] alpha[47,1,11] alpha[47,1,12] alpha[47,1,13] alpha[47,1,14]
 alpha[47,1,15] alpha[47,1,16] alpha[47,1,17] alpha[47,1,18] alpha[47,1,19]
 alpha[47,1,20] alpha[47,1,21] alpha[47,1,22] alpha[47,1,23] alpha[47,1,24]
 alpha[47,1,25] alpha[47,1,26] alpha[47,1,27] alpha[47,1,28] alpha[47,1,29]
 alpha[47,2,0] alpha[47,2,1] alpha[47,2,2] alpha[47,2,3] alpha[47,2,4]
 alpha[47,2,5] alpha[47,2,6] alpha[47,2,7] alpha[47,2,8] alpha[47,2,9]
 alpha[47,2,10] alpha[47,2,11] alpha[47,2,12] alpha[47,2,13] alpha[47,2,14]
 alpha[47,2,15] alpha[47,2,16] alpha[47,2,17] alpha[47,2,18] alpha[47,2,19]
 alpha[47,2,20] alpha[47,2,21] alpha[47,2,22] alpha[47,2,23] alpha[47,2,24]
 alpha[47,2,25] alpha[47,2,26] alpha[47,2,27] alpha[47,2,28] alpha[47,2,29]
 alpha[47,3,0] alpha[47,3,1] alpha[47,3,2] alpha[47,3,3] alpha[47,3,4]
 alpha[47,3,5] alpha[47,3,6] alpha[47,3,7] alpha[47,3,8] alpha[47,3,9]
 alpha[47,3,10] alpha[47,3,11] alpha[47,3,12] alpha[47,3,13] alpha[47,3,14]
 alpha[47,3,15] alpha[47,3,16] alpha[47,3,17] alpha[47,3,18] alpha[47,3,19]
 alpha[47,3,20] alpha[47,3,21] alpha[47,3,22] alpha[47,3,23] alpha[47,3,24]
 alpha[47,3,25] alpha[47,3,26] alpha[47,3,27] alpha[47,3,28] alpha[47,3,29]
 alpha[48,0,0] alpha[48,0,1] alpha[48,0,2] alpha[48,0,3] alpha[48,0,4]
 alpha[48,0,5] alpha[48,0,6] alpha[48,0,7] alpha[48,0,8] alpha[48,0,9]
 alpha[48,0,10] alpha[48,0,11] alpha[48,0,12] alpha[48,0,13] alpha[48,0,14]
 alpha[48,0,15] alpha[48,0,16] alpha[48,0,17] alpha[48,0,18] alpha[48,0,19]
 alpha[48,0,20] alpha[48,0,21] alpha[48,0,22] alpha[48,0,23] alpha[48,0,24]
 alpha[48,0,25] alpha[48,0,26] alpha[48,0,27] alpha[48,0,28] alpha[48,0,29]
 alpha[48,1,0] alpha[48,1,1] alpha[48,1,2] alpha[48,1,3] alpha[48,1,4]
 alpha[48,1,5] alpha[48,1,6] alpha[48,1,7] alpha[48,1,8] alpha[48,1,9]
 alpha[48,1,10] alpha[48,1,11] alpha[48,1,12] alpha[48,1,13] alpha[48,1,14]
 alpha[48,1,15] alpha[48,1,16] alpha[48,1,17] alpha[48,1,18] alpha[48,1,19]
 alpha[48,1,20] alpha[48,1,21] alpha[48,1,22] alpha[48,1,23] alpha[48,1,24]
 alpha[48,1,25] alpha[48,1,26] alpha[48,1,27] alpha[48,1,28] alpha[48,1,29]
 alpha[48,2,0] alpha[48,2,1] alpha[48,2,2] alpha[48,2,3] alpha[48,2,4]
 alpha[48,2,5] alpha[48,2,6] alpha[48,2,7] alpha[48,2,8] alpha[48,2,9]
 alpha[48,2,10] alpha[48,2,11] alpha[48,2,12] alpha[48,2,13] alpha[48,2,14]
 alpha[48,2,15] alpha[48,2,16] alpha[48,2,17] alpha[48,2,18] alpha[48,2,19]
 alpha[48,2,20] alpha[48,2,21] alpha[48,2,22] alpha[48,2,23] alpha[48,2,24]
 alpha[48,2,25] alpha[48,2,26] alpha[48,2,27] alpha[48,2,28] alpha[48,2,29]
 alpha[48,3,0] alpha[48,3,1] alpha[48,3,2] alpha[48,3,3] alpha[48,3,4]
 alpha[48,3,5] alpha[48,3,6] alpha[48,3,7] alpha[48,3,8] alpha[48,3,9]
 alpha[48,3,10] alpha[48,3,11] alpha[48,3,12] alpha[48,3,13] alpha[48,3,14]
 alpha[48,3,15] alpha[48,3,16] alpha[48,3,17] alpha[48,3,18] alpha[48,3,19]
 alpha[48,3,20] alpha[48,3,21] alpha[48,3,22] alpha[48,3,23] alpha[48,3,24]
 alpha[48,3,25] alpha[48,3,26] alpha[48,3,27] alpha[48,3,28] alpha[48,3,29]
 alpha[49,0,0] alpha[49,0,1] alpha[49,0,2] alpha[49,0,3] alpha[49,0,4]
 alpha[49,0,5] alpha[49,0,6] alpha[49,0,7] alpha[49,0,8] alpha[49,0,9]
 alpha[49,0,10] alpha[49,0,11] alpha[49,0,12] alpha[49,0,13] alpha[49,0,14]
 alpha[49,0,15] alpha[49,0,16] alpha[49,0,17] alpha[49,0,18] alpha[49,0,19]
 alpha[49,0,20] alpha[49,0,21] alpha[49,0,22] alpha[49,0,23] alpha[49,0,24]
 alpha[49,0,25] alpha[49,0,26] alpha[49,0,27] alpha[49,0,28] alpha[49,0,29]
 alpha[49,1,0] alpha[49,1,1] alpha[49,1,2] alpha[49,1,3] alpha[49,1,4]
 alpha[49,1,5] alpha[49,1,6] alpha[49,1,7] alpha[49,1,8] alpha[49,1,9]
 alpha[49,1,10] alpha[49,1,11] alpha[49,1,12] alpha[49,1,13] alpha[49,1,14]
 alpha[49,1,15] alpha[49,1,16] alpha[49,1,17] alpha[49,1,18] alpha[49,1,19]
 alpha[49,1,20] alpha[49,1,21] alpha[49,1,22] alpha[49,1,23] alpha[49,1,24]
 alpha[49,1,25] alpha[49,1,26] alpha[49,1,27] alpha[49,1,28] alpha[49,1,29]
 alpha[49,2,0] alpha[49,2,1] alpha[49,2,2] alpha[49,2,3] alpha[49,2,4]
 alpha[49,2,5] alpha[49,2,6] alpha[49,2,7] alpha[49,2,8] alpha[49,2,9]
 alpha[49,2,10] alpha[49,2,11] alpha[49,2,12] alpha[49,2,13] alpha[49,2,14]
 alpha[49,2,15] alpha[49,2,16] alpha[49,2,17] alpha[49,2,18] alpha[49,2,19]
 alpha[49,2,20] alpha[49,2,21] alpha[49,2,22] alpha[49,2,23] alpha[49,2,24]
 alpha[49,2,25] alpha[49,2,26] alpha[49,2,27] alpha[49,2,28] alpha[49,2,29]
 alpha[49,3,0] alpha[49,3,1] alpha[49,3,2] alpha[49,3,3] alpha[49,3,4]
 alpha[49,3,5] alpha[49,3,6] alpha[49,3,7] alpha[49,3,8] alpha[49,3,9]
 alpha[49,3,10] alpha[49,3,11] alpha[49,3,12] alpha[49,3,13] alpha[49,3,14]
 alpha[49,3,15] alpha[49,3,16] alpha[49,3,17] alpha[49,3,18] alpha[49,3,19]
 alpha[49,3,20] alpha[49,3,21] alpha[49,3,22] alpha[49,3,23] alpha[49,3,24]
 alpha[49,3,25] alpha[49,3,26] alpha[49,3,27] alpha[49,3,28] alpha[49,3,29]
 alpha[50,0,0] alpha[50,0,1] alpha[50,0,2] alpha[50,0,3] alpha[50,0,4]
 alpha[50,0,5] alpha[50,0,6] alpha[50,0,7] alpha[50,0,8] alpha[50,0,9]
 alpha[50,0,10] alpha[50,0,11] alpha[50,0,12] alpha[50,0,13] alpha[50,0,14]
 alpha[50,0,15] alpha[50,0,16] alpha[50,0,17] alpha[50,0,18] alpha[50,0,19]
 alpha[50,0,20] alpha[50,0,21] alpha[50,0,22] alpha[50,0,23] alpha[50,0,24]
 alpha[50,0,25] alpha[50,0,26] alpha[50,0,27] alpha[50,0,28] alpha[50,0,29]
 alpha[50,1,0] alpha[50,1,1] alpha[50,1,2] alpha[50,1,3] alpha[50,1,4]
 alpha[50,1,5] alpha[50,1,6] alpha[50,1,7] alpha[50,1,8] alpha[50,1,9]
 alpha[50,1,10] alpha[50,1,11] alpha[50,1,12] alpha[50,1,13] alpha[50,1,14]
 alpha[50,1,15] alpha[50,1,16] alpha[50,1,17] alpha[50,1,18] alpha[50,1,19]
 alpha[50,1,20] alpha[50,1,21] alpha[50,1,22] alpha[50,1,23] alpha[50,1,24]
 alpha[50,1,25] alpha[50,1,26] alpha[50,1,27] alpha[50,1,28] alpha[50,1,29]
 alpha[50,2,0] alpha[50,2,1] alpha[50,2,2] alpha[50,2,3] alpha[50,2,4]
 alpha[50,2,5] alpha[50,2,6] alpha[50,2,7] alpha[50,2,8] alpha[50,2,9]
 alpha[50,2,10] alpha[50,2,11] alpha[50,2,12] alpha[50,2,13] alpha[50,2,14]
 alpha[50,2,15] alpha[50,2,16] alpha[50,2,17] alpha[50,2,18] alpha[50,2,19]
 alpha[50,2,20] alpha[50,2,21] alpha[50,2,22] alpha[50,2,23] alpha[50,2,24]
 alpha[50,2,25] alpha[50,2,26] alpha[50,2,27] alpha[50,2,28] alpha[50,2,29]
 alpha[50,3,0] alpha[50,3,1] alpha[50,3,2] alpha[50,3,3] alpha[50,3,4]
 alpha[50,3,5] alpha[50,3,6] alpha[50,3,7] alpha[50,3,8] alpha[50,3,9]
 alpha[50,3,10] alpha[50,3,11] alpha[50,3,12] alpha[50,3,13] alpha[50,3,14]
 alpha[50,3,15] alpha[50,3,16] alpha[50,3,17] alpha[50,3,18] alpha[50,3,19]
 alpha[50,3,20] alpha[50,3,21] alpha[50,3,22] alpha[50,3,23] alpha[50,3,24]
 alpha[50,3,25] alpha[50,3,26] alpha[50,3,27] alpha[50,3,28] alpha[50,3,29]
 alpha[51,0,0] alpha[51,0,1] alpha[51,0,2] alpha[51,0,3] alpha[51,0,4]
 alpha[51,0,5] alpha[51,0,6] alpha[51,0,7] alpha[51,0,8] alpha[51,0,9]
 alpha[51,0,10] alpha[51,0,11] alpha[51,0,12] alpha[51,0,13] alpha[51,0,14]
 alpha[51,0,15] alpha[51,0,16] alpha[51,0,17] alpha[51,0,18] alpha[51,0,19]
 alpha[51,0,20] alpha[51,0,21] alpha[51,0,22] alpha[51,0,23] alpha[51,0,24]
 alpha[51,0,25] alpha[51,0,26] alpha[51,0,27] alpha[51,0,28] alpha[51,0,29]
 alpha[51,1,0] alpha[51,1,1] alpha[51,1,2] alpha[51,1,3] alpha[51,1,4]
 alpha[51,1,5] alpha[51,1,6] alpha[51,1,7] alpha[51,1,8] alpha[51,1,9]
 alpha[51,1,10] alpha[51,1,11] alpha[51,1,12] alpha[51,1,13] alpha[51,1,14]
 alpha[51,1,15] alpha[51,1,16] alpha[51,1,17] alpha[51,1,18] alpha[51,1,19]
 alpha[51,1,20] alpha[51,1,21] alpha[51,1,22] alpha[51,1,23] alpha[51,1,24]
 alpha[51,1,25] alpha[51,1,26] alpha[51,1,27] alpha[51,1,28] alpha[51,1,29]
 alpha[51,2,0] alpha[51,2,1] alpha[51,2,2] alpha[51,2,3] alpha[51,2,4]
 alpha[51,2,5] alpha[51,2,6] alpha[51,2,7] alpha[51,2,8] alpha[51,2,9]
 alpha[51,2,10] alpha[51,2,11] alpha[51,2,12] alpha[51,2,13] alpha[51,2,14]
 alpha[51,2,15] alpha[51,2,16] alpha[51,2,17] alpha[51,2,18] alpha[51,2,19]
 alpha[51,2,20] alpha[51,2,21] alpha[51,2,22] alpha[51,2,23] alpha[51,2,24]
 alpha[51,2,25] alpha[51,2,26] alpha[51,2,27] alpha[51,2,28] alpha[51,2,29]
 alpha[51,3,0] alpha[51,3,1] alpha[51,3,2] alpha[51,3,3] alpha[51,3,4]
 alpha[51,3,5] alpha[51,3,6] alpha[51,3,7] alpha[51,3,8] alpha[51,3,9]
 alpha[51,3,10] alpha[51,3,11] alpha[51,3,12] alpha[51,3,13] alpha[51,3,14]
 alpha[51,3,15] alpha[51,3,16] alpha[51,3,17] alpha[51,3,18] alpha[51,3,19]
 alpha[51,3,20] alpha[51,3,21] alpha[51,3,22] alpha[51,3,23] alpha[51,3,24]
 alpha[51,3,25] alpha[51,3,26] alpha[51,3,27] alpha[51,3,28] alpha[51,3,29]
 alpha[52,0,0] alpha[52,0,1] alpha[52,0,2] alpha[52,0,3] alpha[52,0,4]
 alpha[52,0,5] alpha[52,0,6] alpha[52,0,7] alpha[52,0,8] alpha[52,0,9]
 alpha[52,0,10] alpha[52,0,11] alpha[52,0,12] alpha[52,0,13] alpha[52,0,14]
 alpha[52,0,15] alpha[52,0,16] alpha[52,0,17] alpha[52,0,18] alpha[52,0,19]
 alpha[52,0,20] alpha[52,0,21] alpha[52,0,22] alpha[52,0,23] alpha[52,0,24]
 alpha[52,0,25] alpha[52,0,26] alpha[52,0,27] alpha[52,0,28] alpha[52,0,29]
 alpha[52,1,0] alpha[52,1,1] alpha[52,1,2] alpha[52,1,3] alpha[52,1,4]
 alpha[52,1,5] alpha[52,1,6] alpha[52,1,7] alpha[52,1,8] alpha[52,1,9]
 alpha[52,1,10] alpha[52,1,11] alpha[52,1,12] alpha[52,1,13] alpha[52,1,14]
 alpha[52,1,15] alpha[52,1,16] alpha[52,1,17] alpha[52,1,18] alpha[52,1,19]
 alpha[52,1,20] alpha[52,1,21] alpha[52,1,22] alpha[52,1,23] alpha[52,1,24]
 alpha[52,1,25] alpha[52,1,26] alpha[52,1,27] alpha[52,1,28] alpha[52,1,29]
 alpha[52,2,0] alpha[52,2,1] alpha[52,2,2] alpha[52,2,3] alpha[52,2,4]
 alpha[52,2,5] alpha[52,2,6] alpha[52,2,7] alpha[52,2,8] alpha[52,2,9]
 alpha[52,2,10] alpha[52,2,11] alpha[52,2,12] alpha[52,2,13] alpha[52,2,14]
 alpha[52,2,15] alpha[52,2,16] alpha[52,2,17] alpha[52,2,18] alpha[52,2,19]
 alpha[52,2,20] alpha[52,2,21] alpha[52,2,22] alpha[52,2,23] alpha[52,2,24]
 alpha[52,2,25] alpha[52,2,26] alpha[52,2,27] alpha[52,2,28] alpha[52,2,29]
 alpha[52,3,0] alpha[52,3,1] alpha[52,3,2] alpha[52,3,3] alpha[52,3,4]
 alpha[52,3,5] alpha[52,3,6] alpha[52,3,7] alpha[52,3,8] alpha[52,3,9]
 alpha[52,3,10] alpha[52,3,11] alpha[52,3,12] alpha[52,3,13] alpha[52,3,14]
 alpha[52,3,15] alpha[52,3,16] alpha[52,3,17] alpha[52,3,18] alpha[52,3,19]
 alpha[52,3,20] alpha[52,3,21] alpha[52,3,22] alpha[52,3,23] alpha[52,3,24]
 alpha[52,3,25] alpha[52,3,26] alpha[52,3,27] alpha[52,3,28] alpha[52,3,29]
End
