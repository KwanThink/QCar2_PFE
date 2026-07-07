\ Model qcar2_flat_coordinate_oampc_mk2_1
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0xead25cfa287596b5
Minimize
 
Subject To
 flat_dynamics_X_0: - z[0,0] - 0.05 z[0,1] + z[1,0] - 0.00125 v[0,0] = 0
 flat_dynamics_Xdot_0: - z[0,1] + z[1,1] - 0.05 v[0,0] = 0
 flat_dynamics_Y_0: - z[0,2] - 0.05 z[0,3] + z[1,2] - 0.00125 v[0,1] = 0
 flat_dynamics_Ydot_0: - z[0,3] + z[1,3] - 0.05 v[0,1] = 0
 flat_dynamics_X_1: - z[1,0] - 0.05 z[1,1] + z[2,0] - 0.00125 v[1,0] = 0
 flat_dynamics_Xdot_1: - z[1,1] + z[2,1] - 0.05 v[1,0] = 0
 flat_dynamics_Y_1: - z[1,2] - 0.05 z[1,3] + z[2,2] - 0.00125 v[1,1] = 0
 flat_dynamics_Ydot_1: - z[1,3] + z[2,3] - 0.05 v[1,1] = 0
 flat_dynamics_X_2: - z[2,0] - 0.05 z[2,1] + z[3,0] - 0.00125 v[2,0] = 0
 flat_dynamics_Xdot_2: - z[2,1] + z[3,1] - 0.05 v[2,0] = 0
 flat_dynamics_Y_2: - z[2,2] - 0.05 z[2,3] + z[3,2] - 0.00125 v[2,1] = 0
 flat_dynamics_Ydot_2: - z[2,3] + z[3,3] - 0.05 v[2,1] = 0
 flat_dynamics_X_3: - z[3,0] - 0.05 z[3,1] + z[4,0] - 0.00125 v[3,0] = 0
 flat_dynamics_Xdot_3: - z[3,1] + z[4,1] - 0.05 v[3,0] = 0
 flat_dynamics_Y_3: - z[3,2] - 0.05 z[3,3] + z[4,2] - 0.00125 v[3,1] = 0
 flat_dynamics_Ydot_3: - z[3,3] + z[4,3] - 0.05 v[3,1] = 0
 flat_dynamics_X_4: - z[4,0] - 0.05 z[4,1] + z[5,0] - 0.00125 v[4,0] = 0
 flat_dynamics_Xdot_4: - z[4,1] + z[5,1] - 0.05 v[4,0] = 0
 flat_dynamics_Y_4: - z[4,2] - 0.05 z[4,3] + z[5,2] - 0.00125 v[4,1] = 0
 flat_dynamics_Ydot_4: - z[4,3] + z[5,3] - 0.05 v[4,1] = 0
 flat_dynamics_X_5: - z[5,0] - 0.05 z[5,1] + z[6,0] - 0.00125 v[5,0] = 0
 flat_dynamics_Xdot_5: - z[5,1] + z[6,1] - 0.05 v[5,0] = 0
 flat_dynamics_Y_5: - z[5,2] - 0.05 z[5,3] + z[6,2] - 0.00125 v[5,1] = 0
 flat_dynamics_Ydot_5: - z[5,3] + z[6,3] - 0.05 v[5,1] = 0
 flat_dynamics_X_6: - z[6,0] - 0.05 z[6,1] + z[7,0] - 0.00125 v[6,0] = 0
 flat_dynamics_Xdot_6: - z[6,1] + z[7,1] - 0.05 v[6,0] = 0
 flat_dynamics_Y_6: - z[6,2] - 0.05 z[6,3] + z[7,2] - 0.00125 v[6,1] = 0
 flat_dynamics_Ydot_6: - z[6,3] + z[7,3] - 0.05 v[6,1] = 0
 flat_dynamics_X_7: - z[7,0] - 0.05 z[7,1] + z[8,0] - 0.00125 v[7,0] = 0
 flat_dynamics_Xdot_7: - z[7,1] + z[8,1] - 0.05 v[7,0] = 0
 flat_dynamics_Y_7: - z[7,2] - 0.05 z[7,3] + z[8,2] - 0.00125 v[7,1] = 0
 flat_dynamics_Ydot_7: - z[7,3] + z[8,3] - 0.05 v[7,1] = 0
 flat_dynamics_X_8: - z[8,0] - 0.05 z[8,1] + z[9,0] - 0.00125 v[8,0] = 0
 flat_dynamics_Xdot_8: - z[8,1] + z[9,1] - 0.05 v[8,0] = 0
 flat_dynamics_Y_8: - z[8,2] - 0.05 z[8,3] + z[9,2] - 0.00125 v[8,1] = 0
 flat_dynamics_Ydot_8: - z[8,3] + z[9,3] - 0.05 v[8,1] = 0
 flat_dynamics_X_9: - z[9,0] - 0.05 z[9,1] + z[10,0] - 0.00125 v[9,0] = 0
 flat_dynamics_Xdot_9: - z[9,1] + z[10,1] - 0.05 v[9,0] = 0
 flat_dynamics_Y_9: - z[9,2] - 0.05 z[9,3] + z[10,2] - 0.00125 v[9,1] = 0
 flat_dynamics_Ydot_9: - z[9,3] + z[10,3] - 0.05 v[9,1] = 0
 flat_dynamics_X_10: - z[10,0] - 0.05 z[10,1] + z[11,0] - 0.00125 v[10,0]
   = 0
 flat_dynamics_Xdot_10: - z[10,1] + z[11,1] - 0.05 v[10,0] = 0
 flat_dynamics_Y_10: - z[10,2] - 0.05 z[10,3] + z[11,2] - 0.00125 v[10,1]
   = 0
 flat_dynamics_Ydot_10: - z[10,3] + z[11,3] - 0.05 v[10,1] = 0
 flat_dynamics_X_11: - z[11,0] - 0.05 z[11,1] + z[12,0] - 0.00125 v[11,0]
   = 0
 flat_dynamics_Xdot_11: - z[11,1] + z[12,1] - 0.05 v[11,0] = 0
 flat_dynamics_Y_11: - z[11,2] - 0.05 z[11,3] + z[12,2] - 0.00125 v[11,1]
   = 0
 flat_dynamics_Ydot_11: - z[11,3] + z[12,3] - 0.05 v[11,1] = 0
 flat_dynamics_X_12: - z[12,0] - 0.05 z[12,1] + z[13,0] - 0.00125 v[12,0]
   = 0
 flat_dynamics_Xdot_12: - z[12,1] + z[13,1] - 0.05 v[12,0] = 0
 flat_dynamics_Y_12: - z[12,2] - 0.05 z[12,3] + z[13,2] - 0.00125 v[12,1]
   = 0
 flat_dynamics_Ydot_12: - z[12,3] + z[13,3] - 0.05 v[12,1] = 0
 flat_dynamics_X_13: - z[13,0] - 0.05 z[13,1] + z[14,0] - 0.00125 v[13,0]
   = 0
 flat_dynamics_Xdot_13: - z[13,1] + z[14,1] - 0.05 v[13,0] = 0
 flat_dynamics_Y_13: - z[13,2] - 0.05 z[13,3] + z[14,2] - 0.00125 v[13,1]
   = 0
 flat_dynamics_Ydot_13: - z[13,3] + z[14,3] - 0.05 v[13,1] = 0
 flat_dynamics_X_14: - z[14,0] - 0.05 z[14,1] + z[15,0] - 0.00125 v[14,0]
   = 0
 flat_dynamics_Xdot_14: - z[14,1] + z[15,1] - 0.05 v[14,0] = 0
 flat_dynamics_Y_14: - z[14,2] - 0.05 z[14,3] + z[15,2] - 0.00125 v[14,1]
   = 0
 flat_dynamics_Ydot_14: - z[14,3] + z[15,3] - 0.05 v[14,1] = 0
 W_tan_delta_lower_0: >= -0.5773519017263813
 W_tan_delta_upper_0: <= 0.5773519017263813
 W_ax_lower_0: >= -0.3
 W_ax_upper_0: <= 0.3
 W_tan_delta_lower_1: >= -0.5773519017263813
 W_tan_delta_upper_1: <= 0.5773519017263813
 W_ax_lower_1: >= -0.3
 W_ax_upper_1: <= 0.3
 W_tan_delta_lower_2: >= -0.5773519017263813
 W_tan_delta_upper_2: <= 0.5773519017263813
 W_ax_lower_2: >= -0.3
 W_ax_upper_2: <= 0.3
 W_tan_delta_lower_3: >= -0.5773519017263813
 W_tan_delta_upper_3: <= 0.5773519017263813
 W_ax_lower_3: >= -0.3
 W_ax_upper_3: <= 0.3
 W_tan_delta_lower_4: >= -0.5773519017263813
 W_tan_delta_upper_4: <= 0.5773519017263813
 W_ax_lower_4: >= -0.3
 W_ax_upper_4: <= 0.3
 W_tan_delta_lower_5: >= -0.5773519017263813
 W_tan_delta_upper_5: <= 0.5773519017263813
 W_ax_lower_5: >= -0.3
 W_ax_upper_5: <= 0.3
 W_tan_delta_lower_6: >= -0.5773519017263813
 W_tan_delta_upper_6: <= 0.5773519017263813
 W_ax_lower_6: >= -0.3
 W_ax_upper_6: <= 0.3
 W_tan_delta_lower_7: >= -0.5773519017263813
 W_tan_delta_upper_7: <= 0.5773519017263813
 W_ax_lower_7: >= -0.3
 W_ax_upper_7: <= 0.3
 W_tan_delta_lower_8: >= -0.5773519017263813
 W_tan_delta_upper_8: <= 0.5773519017263813
 W_ax_lower_8: >= -0.3
 W_ax_upper_8: <= 0.3
 W_tan_delta_lower_9: >= -0.5773519017263813
 W_tan_delta_upper_9: <= 0.5773519017263813
 W_ax_lower_9: >= -0.3
 W_ax_upper_9: <= 0.3
 W_tan_delta_lower_10: >= -0.5773519017263813
 W_tan_delta_upper_10: <= 0.5773519017263813
 W_ax_lower_10: >= -0.3
 W_ax_upper_10: <= 0.3
 W_tan_delta_lower_11: >= -0.5773519017263813
 W_tan_delta_upper_11: <= 0.5773519017263813
 W_ax_lower_11: >= -0.3
 W_ax_upper_11: <= 0.3
 W_tan_delta_lower_12: >= -0.5773519017263813
 W_tan_delta_upper_12: <= 0.5773519017263813
 W_ax_lower_12: >= -0.3
 W_ax_upper_12: <= 0.3
 W_tan_delta_lower_13: >= -0.5773519017263813
 W_tan_delta_upper_13: <= 0.5773519017263813
 W_ax_lower_13: >= -0.3
 W_ax_upper_13: <= 0.3
 W_tan_delta_lower_14: >= -0.5773519017263813
 W_tan_delta_upper_14: <= 0.5773519017263813
 W_ax_lower_14: >= -0.3
 W_ax_upper_14: <= 0.3
 obs_alpha_sum_o0_j0: alpha[0,0,0] + alpha[0,1,0] + alpha[0,2,0]
   + alpha[0,3,0] >= 1
 obs_face_o0_e0_j0: - 0.8664263493157882 z[1,0] + 0.4993048980445874 z[1,2]
   - obstacle_slack + 100 alpha[0,0,0] <= 96.03380803136805
 obs_face_o0_e1_j0: - 0.4993048980445868 z[1,0] - 0.8664263493157885 z[1,2]
   - obstacle_slack + 100 alpha[0,1,0] <= 96.5462819633006
 obs_face_o0_e2_j0: 0.8664263493157887 z[1,0] - 0.4993048980445867 z[1,2]
   - obstacle_slack + 100 alpha[0,2,0] <= 102.2661919686319
 obs_face_o0_e3_j0: 0.4993048980445871 z[1,0] + 0.8664263493157883 z[1,2]
   - obstacle_slack + 100 alpha[0,3,0] <= 101.7537180366994
 obs_alpha_sum_o0_j1: alpha[0,0,1] + alpha[0,1,1] + alpha[0,2,1]
   + alpha[0,3,1] >= 1
 obs_face_o0_e0_j1: - 0.8664263493157882 z[2,0] + 0.4993048980445874 z[2,2]
   - obstacle_slack + 100 alpha[0,0,1] <= 96.03380803136805
 obs_face_o0_e1_j1: - 0.4993048980445868 z[2,0] - 0.8664263493157885 z[2,2]
   - obstacle_slack + 100 alpha[0,1,1] <= 96.5462819633006
 obs_face_o0_e2_j1: 0.8664263493157887 z[2,0] - 0.4993048980445867 z[2,2]
   - obstacle_slack + 100 alpha[0,2,1] <= 102.2661919686319
 obs_face_o0_e3_j1: 0.4993048980445871 z[2,0] + 0.8664263493157883 z[2,2]
   - obstacle_slack + 100 alpha[0,3,1] <= 101.7537180366994
 obs_alpha_sum_o0_j2: alpha[0,0,2] + alpha[0,1,2] + alpha[0,2,2]
   + alpha[0,3,2] >= 1
 obs_face_o0_e0_j2: - 0.8664263493157882 z[3,0] + 0.4993048980445874 z[3,2]
   - obstacle_slack + 100 alpha[0,0,2] <= 96.03380803136805
 obs_face_o0_e1_j2: - 0.4993048980445868 z[3,0] - 0.8664263493157885 z[3,2]
   - obstacle_slack + 100 alpha[0,1,2] <= 96.5462819633006
 obs_face_o0_e2_j2: 0.8664263493157887 z[3,0] - 0.4993048980445867 z[3,2]
   - obstacle_slack + 100 alpha[0,2,2] <= 102.2661919686319
 obs_face_o0_e3_j2: 0.4993048980445871 z[3,0] + 0.8664263493157883 z[3,2]
   - obstacle_slack + 100 alpha[0,3,2] <= 101.7537180366994
 obs_alpha_sum_o0_j3: alpha[0,0,3] + alpha[0,1,3] + alpha[0,2,3]
   + alpha[0,3,3] >= 1
 obs_face_o0_e0_j3: - 0.8664263493157882 z[4,0] + 0.4993048980445874 z[4,2]
   - obstacle_slack + 100 alpha[0,0,3] <= 96.03380803136805
 obs_face_o0_e1_j3: - 0.4993048980445868 z[4,0] - 0.8664263493157885 z[4,2]
   - obstacle_slack + 100 alpha[0,1,3] <= 96.5462819633006
 obs_face_o0_e2_j3: 0.8664263493157887 z[4,0] - 0.4993048980445867 z[4,2]
   - obstacle_slack + 100 alpha[0,2,3] <= 102.2661919686319
 obs_face_o0_e3_j3: 0.4993048980445871 z[4,0] + 0.8664263493157883 z[4,2]
   - obstacle_slack + 100 alpha[0,3,3] <= 101.7537180366994
 obs_alpha_sum_o0_j4: alpha[0,0,4] + alpha[0,1,4] + alpha[0,2,4]
   + alpha[0,3,4] >= 1
 obs_face_o0_e0_j4: - 0.8664263493157882 z[5,0] + 0.4993048980445874 z[5,2]
   - obstacle_slack + 100 alpha[0,0,4] <= 96.03380803136805
 obs_face_o0_e1_j4: - 0.4993048980445868 z[5,0] - 0.8664263493157885 z[5,2]
   - obstacle_slack + 100 alpha[0,1,4] <= 96.5462819633006
 obs_face_o0_e2_j4: 0.8664263493157887 z[5,0] - 0.4993048980445867 z[5,2]
   - obstacle_slack + 100 alpha[0,2,4] <= 102.2661919686319
 obs_face_o0_e3_j4: 0.4993048980445871 z[5,0] + 0.8664263493157883 z[5,2]
   - obstacle_slack + 100 alpha[0,3,4] <= 101.7537180366994
 obs_alpha_sum_o0_j5: alpha[0,0,5] + alpha[0,1,5] + alpha[0,2,5]
   + alpha[0,3,5] >= 1
 obs_face_o0_e0_j5: - 0.8664263493157882 z[6,0] + 0.4993048980445874 z[6,2]
   - obstacle_slack + 100 alpha[0,0,5] <= 96.03380803136805
 obs_face_o0_e1_j5: - 0.4993048980445868 z[6,0] - 0.8664263493157885 z[6,2]
   - obstacle_slack + 100 alpha[0,1,5] <= 96.5462819633006
 obs_face_o0_e2_j5: 0.8664263493157887 z[6,0] - 0.4993048980445867 z[6,2]
   - obstacle_slack + 100 alpha[0,2,5] <= 102.2661919686319
 obs_face_o0_e3_j5: 0.4993048980445871 z[6,0] + 0.8664263493157883 z[6,2]
   - obstacle_slack + 100 alpha[0,3,5] <= 101.7537180366994
 obs_alpha_sum_o0_j6: alpha[0,0,6] + alpha[0,1,6] + alpha[0,2,6]
   + alpha[0,3,6] >= 1
 obs_face_o0_e0_j6: - 0.8664263493157882 z[7,0] + 0.4993048980445874 z[7,2]
   - obstacle_slack + 100 alpha[0,0,6] <= 96.03380803136805
 obs_face_o0_e1_j6: - 0.4993048980445868 z[7,0] - 0.8664263493157885 z[7,2]
   - obstacle_slack + 100 alpha[0,1,6] <= 96.5462819633006
 obs_face_o0_e2_j6: 0.8664263493157887 z[7,0] - 0.4993048980445867 z[7,2]
   - obstacle_slack + 100 alpha[0,2,6] <= 102.2661919686319
 obs_face_o0_e3_j6: 0.4993048980445871 z[7,0] + 0.8664263493157883 z[7,2]
   - obstacle_slack + 100 alpha[0,3,6] <= 101.7537180366994
 obs_alpha_sum_o0_j7: alpha[0,0,7] + alpha[0,1,7] + alpha[0,2,7]
   + alpha[0,3,7] >= 1
 obs_face_o0_e0_j7: - 0.8664263493157882 z[8,0] + 0.4993048980445874 z[8,2]
   - obstacle_slack + 100 alpha[0,0,7] <= 96.03380803136805
 obs_face_o0_e1_j7: - 0.4993048980445868 z[8,0] - 0.8664263493157885 z[8,2]
   - obstacle_slack + 100 alpha[0,1,7] <= 96.5462819633006
 obs_face_o0_e2_j7: 0.8664263493157887 z[8,0] - 0.4993048980445867 z[8,2]
   - obstacle_slack + 100 alpha[0,2,7] <= 102.2661919686319
 obs_face_o0_e3_j7: 0.4993048980445871 z[8,0] + 0.8664263493157883 z[8,2]
   - obstacle_slack + 100 alpha[0,3,7] <= 101.7537180366994
 obs_alpha_sum_o0_j8: alpha[0,0,8] + alpha[0,1,8] + alpha[0,2,8]
   + alpha[0,3,8] >= 1
 obs_face_o0_e0_j8: - 0.8664263493157882 z[9,0] + 0.4993048980445874 z[9,2]
   - obstacle_slack + 100 alpha[0,0,8] <= 96.03380803136805
 obs_face_o0_e1_j8: - 0.4993048980445868 z[9,0] - 0.8664263493157885 z[9,2]
   - obstacle_slack + 100 alpha[0,1,8] <= 96.5462819633006
 obs_face_o0_e2_j8: 0.8664263493157887 z[9,0] - 0.4993048980445867 z[9,2]
   - obstacle_slack + 100 alpha[0,2,8] <= 102.2661919686319
 obs_face_o0_e3_j8: 0.4993048980445871 z[9,0] + 0.8664263493157883 z[9,2]
   - obstacle_slack + 100 alpha[0,3,8] <= 101.7537180366994
 obs_alpha_sum_o0_j9: alpha[0,0,9] + alpha[0,1,9] + alpha[0,2,9]
   + alpha[0,3,9] >= 1
 obs_face_o0_e0_j9: - 0.8664263493157882 z[10,0]
   + 0.4993048980445874 z[10,2] - obstacle_slack + 100 alpha[0,0,9]
   <= 96.03380803136805
 obs_face_o0_e1_j9: - 0.4993048980445868 z[10,0]
   - 0.8664263493157885 z[10,2] - obstacle_slack + 100 alpha[0,1,9]
   <= 96.5462819633006
 obs_face_o0_e2_j9: 0.8664263493157887 z[10,0] - 0.4993048980445867 z[10,2]
   - obstacle_slack + 100 alpha[0,2,9] <= 102.2661919686319
 obs_face_o0_e3_j9: 0.4993048980445871 z[10,0] + 0.8664263493157883 z[10,2]
   - obstacle_slack + 100 alpha[0,3,9] <= 101.7537180366994
 obs_alpha_sum_o0_j10: alpha[0,0,10] + alpha[0,1,10] + alpha[0,2,10]
   + alpha[0,3,10] >= 1
 obs_face_o0_e0_j10: - 0.8664263493157882 z[11,0]
   + 0.4993048980445874 z[11,2] - obstacle_slack + 100 alpha[0,0,10]
   <= 96.03380803136805
 obs_face_o0_e1_j10: - 0.4993048980445868 z[11,0]
   - 0.8664263493157885 z[11,2] - obstacle_slack + 100 alpha[0,1,10]
   <= 96.5462819633006
 obs_face_o0_e2_j10: 0.8664263493157887 z[11,0]
   - 0.4993048980445867 z[11,2] - obstacle_slack + 100 alpha[0,2,10]
   <= 102.2661919686319
 obs_face_o0_e3_j10: 0.4993048980445871 z[11,0]
   + 0.8664263493157883 z[11,2] - obstacle_slack + 100 alpha[0,3,10]
   <= 101.7537180366994
 obs_alpha_sum_o0_j11: alpha[0,0,11] + alpha[0,1,11] + alpha[0,2,11]
   + alpha[0,3,11] >= 1
 obs_face_o0_e0_j11: - 0.8664263493157882 z[12,0]
   + 0.4993048980445874 z[12,2] - obstacle_slack + 100 alpha[0,0,11]
   <= 96.03380803136805
 obs_face_o0_e1_j11: - 0.4993048980445868 z[12,0]
   - 0.8664263493157885 z[12,2] - obstacle_slack + 100 alpha[0,1,11]
   <= 96.5462819633006
 obs_face_o0_e2_j11: 0.8664263493157887 z[12,0]
   - 0.4993048980445867 z[12,2] - obstacle_slack + 100 alpha[0,2,11]
   <= 102.2661919686319
 obs_face_o0_e3_j11: 0.4993048980445871 z[12,0]
   + 0.8664263493157883 z[12,2] - obstacle_slack + 100 alpha[0,3,11]
   <= 101.7537180366994
 obs_alpha_sum_o0_j12: alpha[0,0,12] + alpha[0,1,12] + alpha[0,2,12]
   + alpha[0,3,12] >= 1
 obs_face_o0_e0_j12: - 0.8664263493157882 z[13,0]
   + 0.4993048980445874 z[13,2] - obstacle_slack + 100 alpha[0,0,12]
   <= 96.03380803136805
 obs_face_o0_e1_j12: - 0.4993048980445868 z[13,0]
   - 0.8664263493157885 z[13,2] - obstacle_slack + 100 alpha[0,1,12]
   <= 96.5462819633006
 obs_face_o0_e2_j12: 0.8664263493157887 z[13,0]
   - 0.4993048980445867 z[13,2] - obstacle_slack + 100 alpha[0,2,12]
   <= 102.2661919686319
 obs_face_o0_e3_j12: 0.4993048980445871 z[13,0]
   + 0.8664263493157883 z[13,2] - obstacle_slack + 100 alpha[0,3,12]
   <= 101.7537180366994
 obs_alpha_sum_o0_j13: alpha[0,0,13] + alpha[0,1,13] + alpha[0,2,13]
   + alpha[0,3,13] >= 1
 obs_face_o0_e0_j13: - 0.8664263493157882 z[14,0]
   + 0.4993048980445874 z[14,2] - obstacle_slack + 100 alpha[0,0,13]
   <= 96.03380803136805
 obs_face_o0_e1_j13: - 0.4993048980445868 z[14,0]
   - 0.8664263493157885 z[14,2] - obstacle_slack + 100 alpha[0,1,13]
   <= 96.5462819633006
 obs_face_o0_e2_j13: 0.8664263493157887 z[14,0]
   - 0.4993048980445867 z[14,2] - obstacle_slack + 100 alpha[0,2,13]
   <= 102.2661919686319
 obs_face_o0_e3_j13: 0.4993048980445871 z[14,0]
   + 0.8664263493157883 z[14,2] - obstacle_slack + 100 alpha[0,3,13]
   <= 101.7537180366994
 obs_alpha_sum_o0_j14: alpha[0,0,14] + alpha[0,1,14] + alpha[0,2,14]
   + alpha[0,3,14] >= 1
 obs_face_o0_e0_j14: - 0.8664263493157882 z[15,0]
   + 0.4993048980445874 z[15,2] - obstacle_slack + 100 alpha[0,0,14]
   <= 96.03380803136805
 obs_face_o0_e1_j14: - 0.4993048980445868 z[15,0]
   - 0.8664263493157885 z[15,2] - obstacle_slack + 100 alpha[0,1,14]
   <= 96.5462819633006
 obs_face_o0_e2_j14: 0.8664263493157887 z[15,0]
   - 0.4993048980445867 z[15,2] - obstacle_slack + 100 alpha[0,2,14]
   <= 102.2661919686319
 obs_face_o0_e3_j14: 0.4993048980445871 z[15,0]
   + 0.8664263493157883 z[15,2] - obstacle_slack + 100 alpha[0,3,14]
   <= 101.7537180366994
 obs_beta_sum_o0_j0: beta[0,0,0] + beta[0,1,0] + beta[0,2,0] + beta[0,3,0]
   <= 1
 obs_beta_forward_o0_e0_j0: - alpha[0,0,0] + alpha[0,0,1] - beta[0,0,0]
   <= 0
 obs_beta_backward_o0_e0_j0: alpha[0,0,0] - alpha[0,0,1] - beta[0,0,0]
   <= 0
 obs_beta_forward_o0_e1_j0: - alpha[0,1,0] + alpha[0,1,1] - beta[0,1,0]
   <= 0
 obs_beta_backward_o0_e1_j0: alpha[0,1,0] - alpha[0,1,1] - beta[0,1,0]
   <= 0
 obs_beta_forward_o0_e2_j0: - alpha[0,2,0] + alpha[0,2,1] - beta[0,2,0]
   <= 0
 obs_beta_backward_o0_e2_j0: alpha[0,2,0] - alpha[0,2,1] - beta[0,2,0]
   <= 0
 obs_beta_forward_o0_e3_j0: - alpha[0,3,0] + alpha[0,3,1] - beta[0,3,0]
   <= 0
 obs_beta_backward_o0_e3_j0: alpha[0,3,0] - alpha[0,3,1] - beta[0,3,0]
   <= 0
 obs_beta_sum_o0_j1: beta[0,0,1] + beta[0,1,1] + beta[0,2,1] + beta[0,3,1]
   <= 1
 obs_beta_forward_o0_e0_j1: - alpha[0,0,1] + alpha[0,0,2] - beta[0,0,1]
   <= 0
 obs_beta_backward_o0_e0_j1: alpha[0,0,1] - alpha[0,0,2] - beta[0,0,1]
   <= 0
 obs_beta_forward_o0_e1_j1: - alpha[0,1,1] + alpha[0,1,2] - beta[0,1,1]
   <= 0
 obs_beta_backward_o0_e1_j1: alpha[0,1,1] - alpha[0,1,2] - beta[0,1,1]
   <= 0
 obs_beta_forward_o0_e2_j1: - alpha[0,2,1] + alpha[0,2,2] - beta[0,2,1]
   <= 0
 obs_beta_backward_o0_e2_j1: alpha[0,2,1] - alpha[0,2,2] - beta[0,2,1]
   <= 0
 obs_beta_forward_o0_e3_j1: - alpha[0,3,1] + alpha[0,3,2] - beta[0,3,1]
   <= 0
 obs_beta_backward_o0_e3_j1: alpha[0,3,1] - alpha[0,3,2] - beta[0,3,1]
   <= 0
 obs_beta_sum_o0_j2: beta[0,0,2] + beta[0,1,2] + beta[0,2,2] + beta[0,3,2]
   <= 1
 obs_beta_forward_o0_e0_j2: - alpha[0,0,2] + alpha[0,0,3] - beta[0,0,2]
   <= 0
 obs_beta_backward_o0_e0_j2: alpha[0,0,2] - alpha[0,0,3] - beta[0,0,2]
   <= 0
 obs_beta_forward_o0_e1_j2: - alpha[0,1,2] + alpha[0,1,3] - beta[0,1,2]
   <= 0
 obs_beta_backward_o0_e1_j2: alpha[0,1,2] - alpha[0,1,3] - beta[0,1,2]
   <= 0
 obs_beta_forward_o0_e2_j2: - alpha[0,2,2] + alpha[0,2,3] - beta[0,2,2]
   <= 0
 obs_beta_backward_o0_e2_j2: alpha[0,2,2] - alpha[0,2,3] - beta[0,2,2]
   <= 0
 obs_beta_forward_o0_e3_j2: - alpha[0,3,2] + alpha[0,3,3] - beta[0,3,2]
   <= 0
 obs_beta_backward_o0_e3_j2: alpha[0,3,2] - alpha[0,3,3] - beta[0,3,2]
   <= 0
 obs_beta_sum_o0_j3: beta[0,0,3] + beta[0,1,3] + beta[0,2,3] + beta[0,3,3]
   <= 1
 obs_beta_forward_o0_e0_j3: - alpha[0,0,3] + alpha[0,0,4] - beta[0,0,3]
   <= 0
 obs_beta_backward_o0_e0_j3: alpha[0,0,3] - alpha[0,0,4] - beta[0,0,3]
   <= 0
 obs_beta_forward_o0_e1_j3: - alpha[0,1,3] + alpha[0,1,4] - beta[0,1,3]
   <= 0
 obs_beta_backward_o0_e1_j3: alpha[0,1,3] - alpha[0,1,4] - beta[0,1,3]
   <= 0
 obs_beta_forward_o0_e2_j3: - alpha[0,2,3] + alpha[0,2,4] - beta[0,2,3]
   <= 0
 obs_beta_backward_o0_e2_j3: alpha[0,2,3] - alpha[0,2,4] - beta[0,2,3]
   <= 0
 obs_beta_forward_o0_e3_j3: - alpha[0,3,3] + alpha[0,3,4] - beta[0,3,3]
   <= 0
 obs_beta_backward_o0_e3_j3: alpha[0,3,3] - alpha[0,3,4] - beta[0,3,3]
   <= 0
 obs_beta_sum_o0_j4: beta[0,0,4] + beta[0,1,4] + beta[0,2,4] + beta[0,3,4]
   <= 1
 obs_beta_forward_o0_e0_j4: - alpha[0,0,4] + alpha[0,0,5] - beta[0,0,4]
   <= 0
 obs_beta_backward_o0_e0_j4: alpha[0,0,4] - alpha[0,0,5] - beta[0,0,4]
   <= 0
 obs_beta_forward_o0_e1_j4: - alpha[0,1,4] + alpha[0,1,5] - beta[0,1,4]
   <= 0
 obs_beta_backward_o0_e1_j4: alpha[0,1,4] - alpha[0,1,5] - beta[0,1,4]
   <= 0
 obs_beta_forward_o0_e2_j4: - alpha[0,2,4] + alpha[0,2,5] - beta[0,2,4]
   <= 0
 obs_beta_backward_o0_e2_j4: alpha[0,2,4] - alpha[0,2,5] - beta[0,2,4]
   <= 0
 obs_beta_forward_o0_e3_j4: - alpha[0,3,4] + alpha[0,3,5] - beta[0,3,4]
   <= 0
 obs_beta_backward_o0_e3_j4: alpha[0,3,4] - alpha[0,3,5] - beta[0,3,4]
   <= 0
 obs_beta_sum_o0_j5: beta[0,0,5] + beta[0,1,5] + beta[0,2,5] + beta[0,3,5]
   <= 1
 obs_beta_forward_o0_e0_j5: - alpha[0,0,5] + alpha[0,0,6] - beta[0,0,5]
   <= 0
 obs_beta_backward_o0_e0_j5: alpha[0,0,5] - alpha[0,0,6] - beta[0,0,5]
   <= 0
 obs_beta_forward_o0_e1_j5: - alpha[0,1,5] + alpha[0,1,6] - beta[0,1,5]
   <= 0
 obs_beta_backward_o0_e1_j5: alpha[0,1,5] - alpha[0,1,6] - beta[0,1,5]
   <= 0
 obs_beta_forward_o0_e2_j5: - alpha[0,2,5] + alpha[0,2,6] - beta[0,2,5]
   <= 0
 obs_beta_backward_o0_e2_j5: alpha[0,2,5] - alpha[0,2,6] - beta[0,2,5]
   <= 0
 obs_beta_forward_o0_e3_j5: - alpha[0,3,5] + alpha[0,3,6] - beta[0,3,5]
   <= 0
 obs_beta_backward_o0_e3_j5: alpha[0,3,5] - alpha[0,3,6] - beta[0,3,5]
   <= 0
 obs_beta_sum_o0_j6: beta[0,0,6] + beta[0,1,6] + beta[0,2,6] + beta[0,3,6]
   <= 1
 obs_beta_forward_o0_e0_j6: - alpha[0,0,6] + alpha[0,0,7] - beta[0,0,6]
   <= 0
 obs_beta_backward_o0_e0_j6: alpha[0,0,6] - alpha[0,0,7] - beta[0,0,6]
   <= 0
 obs_beta_forward_o0_e1_j6: - alpha[0,1,6] + alpha[0,1,7] - beta[0,1,6]
   <= 0
 obs_beta_backward_o0_e1_j6: alpha[0,1,6] - alpha[0,1,7] - beta[0,1,6]
   <= 0
 obs_beta_forward_o0_e2_j6: - alpha[0,2,6] + alpha[0,2,7] - beta[0,2,6]
   <= 0
 obs_beta_backward_o0_e2_j6: alpha[0,2,6] - alpha[0,2,7] - beta[0,2,6]
   <= 0
 obs_beta_forward_o0_e3_j6: - alpha[0,3,6] + alpha[0,3,7] - beta[0,3,6]
   <= 0
 obs_beta_backward_o0_e3_j6: alpha[0,3,6] - alpha[0,3,7] - beta[0,3,6]
   <= 0
 obs_beta_sum_o0_j7: beta[0,0,7] + beta[0,1,7] + beta[0,2,7] + beta[0,3,7]
   <= 1
 obs_beta_forward_o0_e0_j7: - alpha[0,0,7] + alpha[0,0,8] - beta[0,0,7]
   <= 0
 obs_beta_backward_o0_e0_j7: alpha[0,0,7] - alpha[0,0,8] - beta[0,0,7]
   <= 0
 obs_beta_forward_o0_e1_j7: - alpha[0,1,7] + alpha[0,1,8] - beta[0,1,7]
   <= 0
 obs_beta_backward_o0_e1_j7: alpha[0,1,7] - alpha[0,1,8] - beta[0,1,7]
   <= 0
 obs_beta_forward_o0_e2_j7: - alpha[0,2,7] + alpha[0,2,8] - beta[0,2,7]
   <= 0
 obs_beta_backward_o0_e2_j7: alpha[0,2,7] - alpha[0,2,8] - beta[0,2,7]
   <= 0
 obs_beta_forward_o0_e3_j7: - alpha[0,3,7] + alpha[0,3,8] - beta[0,3,7]
   <= 0
 obs_beta_backward_o0_e3_j7: alpha[0,3,7] - alpha[0,3,8] - beta[0,3,7]
   <= 0
 obs_beta_sum_o0_j8: beta[0,0,8] + beta[0,1,8] + beta[0,2,8] + beta[0,3,8]
   <= 1
 obs_beta_forward_o0_e0_j8: - alpha[0,0,8] + alpha[0,0,9] - beta[0,0,8]
   <= 0
 obs_beta_backward_o0_e0_j8: alpha[0,0,8] - alpha[0,0,9] - beta[0,0,8]
   <= 0
 obs_beta_forward_o0_e1_j8: - alpha[0,1,8] + alpha[0,1,9] - beta[0,1,8]
   <= 0
 obs_beta_backward_o0_e1_j8: alpha[0,1,8] - alpha[0,1,9] - beta[0,1,8]
   <= 0
 obs_beta_forward_o0_e2_j8: - alpha[0,2,8] + alpha[0,2,9] - beta[0,2,8]
   <= 0
 obs_beta_backward_o0_e2_j8: alpha[0,2,8] - alpha[0,2,9] - beta[0,2,8]
   <= 0
 obs_beta_forward_o0_e3_j8: - alpha[0,3,8] + alpha[0,3,9] - beta[0,3,8]
   <= 0
 obs_beta_backward_o0_e3_j8: alpha[0,3,8] - alpha[0,3,9] - beta[0,3,8]
   <= 0
 obs_beta_sum_o0_j9: beta[0,0,9] + beta[0,1,9] + beta[0,2,9] + beta[0,3,9]
   <= 1
 obs_beta_forward_o0_e0_j9: - alpha[0,0,9] + alpha[0,0,10] - beta[0,0,9]
   <= 0
 obs_beta_backward_o0_e0_j9: alpha[0,0,9] - alpha[0,0,10] - beta[0,0,9]
   <= 0
 obs_beta_forward_o0_e1_j9: - alpha[0,1,9] + alpha[0,1,10] - beta[0,1,9]
   <= 0
 obs_beta_backward_o0_e1_j9: alpha[0,1,9] - alpha[0,1,10] - beta[0,1,9]
   <= 0
 obs_beta_forward_o0_e2_j9: - alpha[0,2,9] + alpha[0,2,10] - beta[0,2,9]
   <= 0
 obs_beta_backward_o0_e2_j9: alpha[0,2,9] - alpha[0,2,10] - beta[0,2,9]
   <= 0
 obs_beta_forward_o0_e3_j9: - alpha[0,3,9] + alpha[0,3,10] - beta[0,3,9]
   <= 0
 obs_beta_backward_o0_e3_j9: alpha[0,3,9] - alpha[0,3,10] - beta[0,3,9]
   <= 0
 obs_beta_sum_o0_j10: beta[0,0,10] + beta[0,1,10] + beta[0,2,10]
   + beta[0,3,10] <= 1
 obs_beta_forward_o0_e0_j10: - alpha[0,0,10] + alpha[0,0,11] - beta[0,0,10]
   <= 0
 obs_beta_backward_o0_e0_j10: alpha[0,0,10] - alpha[0,0,11] - beta[0,0,10]
   <= 0
 obs_beta_forward_o0_e1_j10: - alpha[0,1,10] + alpha[0,1,11] - beta[0,1,10]
   <= 0
 obs_beta_backward_o0_e1_j10: alpha[0,1,10] - alpha[0,1,11] - beta[0,1,10]
   <= 0
 obs_beta_forward_o0_e2_j10: - alpha[0,2,10] + alpha[0,2,11] - beta[0,2,10]
   <= 0
 obs_beta_backward_o0_e2_j10: alpha[0,2,10] - alpha[0,2,11] - beta[0,2,10]
   <= 0
 obs_beta_forward_o0_e3_j10: - alpha[0,3,10] + alpha[0,3,11] - beta[0,3,10]
   <= 0
 obs_beta_backward_o0_e3_j10: alpha[0,3,10] - alpha[0,3,11] - beta[0,3,10]
   <= 0
 obs_beta_sum_o0_j11: beta[0,0,11] + beta[0,1,11] + beta[0,2,11]
   + beta[0,3,11] <= 1
 obs_beta_forward_o0_e0_j11: - alpha[0,0,11] + alpha[0,0,12] - beta[0,0,11]
   <= 0
 obs_beta_backward_o0_e0_j11: alpha[0,0,11] - alpha[0,0,12] - beta[0,0,11]
   <= 0
 obs_beta_forward_o0_e1_j11: - alpha[0,1,11] + alpha[0,1,12] - beta[0,1,11]
   <= 0
 obs_beta_backward_o0_e1_j11: alpha[0,1,11] - alpha[0,1,12] - beta[0,1,11]
   <= 0
 obs_beta_forward_o0_e2_j11: - alpha[0,2,11] + alpha[0,2,12] - beta[0,2,11]
   <= 0
 obs_beta_backward_o0_e2_j11: alpha[0,2,11] - alpha[0,2,12] - beta[0,2,11]
   <= 0
 obs_beta_forward_o0_e3_j11: - alpha[0,3,11] + alpha[0,3,12] - beta[0,3,11]
   <= 0
 obs_beta_backward_o0_e3_j11: alpha[0,3,11] - alpha[0,3,12] - beta[0,3,11]
   <= 0
 obs_beta_sum_o0_j12: beta[0,0,12] + beta[0,1,12] + beta[0,2,12]
   + beta[0,3,12] <= 1
 obs_beta_forward_o0_e0_j12: - alpha[0,0,12] + alpha[0,0,13] - beta[0,0,12]
   <= 0
 obs_beta_backward_o0_e0_j12: alpha[0,0,12] - alpha[0,0,13] - beta[0,0,12]
   <= 0
 obs_beta_forward_o0_e1_j12: - alpha[0,1,12] + alpha[0,1,13] - beta[0,1,12]
   <= 0
 obs_beta_backward_o0_e1_j12: alpha[0,1,12] - alpha[0,1,13] - beta[0,1,12]
   <= 0
 obs_beta_forward_o0_e2_j12: - alpha[0,2,12] + alpha[0,2,13] - beta[0,2,12]
   <= 0
 obs_beta_backward_o0_e2_j12: alpha[0,2,12] - alpha[0,2,13] - beta[0,2,12]
   <= 0
 obs_beta_forward_o0_e3_j12: - alpha[0,3,12] + alpha[0,3,13] - beta[0,3,12]
   <= 0
 obs_beta_backward_o0_e3_j12: alpha[0,3,12] - alpha[0,3,13] - beta[0,3,12]
   <= 0
 obs_beta_sum_o0_j13: beta[0,0,13] + beta[0,1,13] + beta[0,2,13]
   + beta[0,3,13] <= 1
 obs_beta_forward_o0_e0_j13: - alpha[0,0,13] + alpha[0,0,14] - beta[0,0,13]
   <= 0
 obs_beta_backward_o0_e0_j13: alpha[0,0,13] - alpha[0,0,14] - beta[0,0,13]
   <= 0
 obs_beta_forward_o0_e1_j13: - alpha[0,1,13] + alpha[0,1,14] - beta[0,1,13]
   <= 0
 obs_beta_backward_o0_e1_j13: alpha[0,1,13] - alpha[0,1,14] - beta[0,1,13]
   <= 0
 obs_beta_forward_o0_e2_j13: - alpha[0,2,13] + alpha[0,2,14] - beta[0,2,13]
   <= 0
 obs_beta_backward_o0_e2_j13: alpha[0,2,13] - alpha[0,2,14] - beta[0,2,13]
   <= 0
 obs_beta_forward_o0_e3_j13: - alpha[0,3,13] + alpha[0,3,14] - beta[0,3,13]
   <= 0
 obs_beta_backward_o0_e3_j13: alpha[0,3,13] - alpha[0,3,14] - beta[0,3,13]
   <= 0
 obs_alpha_sum_o1_j0: alpha[1,0,0] + alpha[1,1,0] + alpha[1,2,0]
   + alpha[1,3,0] >= 1
 obs_face_o1_e0_j0: - 0.7075322158440741 z[1,0] + 0.7066810904097932 z[1,2]
   - obstacle_slack + 100 alpha[1,0,0] <= 91.86182238900204
 obs_face_o1_e1_j0: - 0.7066810904097934 z[1,0] - 0.7075322158440739 z[1,2]
   - obstacle_slack + 100 alpha[1,1,0] <= 90.88123545440142
 obs_face_o1_e2_j0: 0.7075322158440741 z[1,0] - 0.7066810904097932 z[1,2]
   - obstacle_slack + 100 alpha[1,2,0] <= 106.438177610998
 obs_face_o1_e3_j0: 0.7066810904097934 z[1,0] + 0.7075322158440739 z[1,2]
   - obstacle_slack + 100 alpha[1,3,0] <= 107.4187645455986
 obs_alpha_sum_o1_j1: alpha[1,0,1] + alpha[1,1,1] + alpha[1,2,1]
   + alpha[1,3,1] >= 1
 obs_face_o1_e0_j1: - 0.7075322158440741 z[2,0] + 0.7066810904097932 z[2,2]
   - obstacle_slack + 100 alpha[1,0,1] <= 91.86182238900204
 obs_face_o1_e1_j1: - 0.7066810904097934 z[2,0] - 0.7075322158440739 z[2,2]
   - obstacle_slack + 100 alpha[1,1,1] <= 90.88123545440142
 obs_face_o1_e2_j1: 0.7075322158440741 z[2,0] - 0.7066810904097932 z[2,2]
   - obstacle_slack + 100 alpha[1,2,1] <= 106.438177610998
 obs_face_o1_e3_j1: 0.7066810904097934 z[2,0] + 0.7075322158440739 z[2,2]
   - obstacle_slack + 100 alpha[1,3,1] <= 107.4187645455986
 obs_alpha_sum_o1_j2: alpha[1,0,2] + alpha[1,1,2] + alpha[1,2,2]
   + alpha[1,3,2] >= 1
 obs_face_o1_e0_j2: - 0.7075322158440741 z[3,0] + 0.7066810904097932 z[3,2]
   - obstacle_slack + 100 alpha[1,0,2] <= 91.86182238900204
 obs_face_o1_e1_j2: - 0.7066810904097934 z[3,0] - 0.7075322158440739 z[3,2]
   - obstacle_slack + 100 alpha[1,1,2] <= 90.88123545440142
 obs_face_o1_e2_j2: 0.7075322158440741 z[3,0] - 0.7066810904097932 z[3,2]
   - obstacle_slack + 100 alpha[1,2,2] <= 106.438177610998
 obs_face_o1_e3_j2: 0.7066810904097934 z[3,0] + 0.7075322158440739 z[3,2]
   - obstacle_slack + 100 alpha[1,3,2] <= 107.4187645455986
 obs_alpha_sum_o1_j3: alpha[1,0,3] + alpha[1,1,3] + alpha[1,2,3]
   + alpha[1,3,3] >= 1
 obs_face_o1_e0_j3: - 0.7075322158440741 z[4,0] + 0.7066810904097932 z[4,2]
   - obstacle_slack + 100 alpha[1,0,3] <= 91.86182238900204
 obs_face_o1_e1_j3: - 0.7066810904097934 z[4,0] - 0.7075322158440739 z[4,2]
   - obstacle_slack + 100 alpha[1,1,3] <= 90.88123545440142
 obs_face_o1_e2_j3: 0.7075322158440741 z[4,0] - 0.7066810904097932 z[4,2]
   - obstacle_slack + 100 alpha[1,2,3] <= 106.438177610998
 obs_face_o1_e3_j3: 0.7066810904097934 z[4,0] + 0.7075322158440739 z[4,2]
   - obstacle_slack + 100 alpha[1,3,3] <= 107.4187645455986
 obs_alpha_sum_o1_j4: alpha[1,0,4] + alpha[1,1,4] + alpha[1,2,4]
   + alpha[1,3,4] >= 1
 obs_face_o1_e0_j4: - 0.7075322158440741 z[5,0] + 0.7066810904097932 z[5,2]
   - obstacle_slack + 100 alpha[1,0,4] <= 91.86182238900204
 obs_face_o1_e1_j4: - 0.7066810904097934 z[5,0] - 0.7075322158440739 z[5,2]
   - obstacle_slack + 100 alpha[1,1,4] <= 90.88123545440142
 obs_face_o1_e2_j4: 0.7075322158440741 z[5,0] - 0.7066810904097932 z[5,2]
   - obstacle_slack + 100 alpha[1,2,4] <= 106.438177610998
 obs_face_o1_e3_j4: 0.7066810904097934 z[5,0] + 0.7075322158440739 z[5,2]
   - obstacle_slack + 100 alpha[1,3,4] <= 107.4187645455986
 obs_alpha_sum_o1_j5: alpha[1,0,5] + alpha[1,1,5] + alpha[1,2,5]
   + alpha[1,3,5] >= 1
 obs_face_o1_e0_j5: - 0.7075322158440741 z[6,0] + 0.7066810904097932 z[6,2]
   - obstacle_slack + 100 alpha[1,0,5] <= 91.86182238900204
 obs_face_o1_e1_j5: - 0.7066810904097934 z[6,0] - 0.7075322158440739 z[6,2]
   - obstacle_slack + 100 alpha[1,1,5] <= 90.88123545440142
 obs_face_o1_e2_j5: 0.7075322158440741 z[6,0] - 0.7066810904097932 z[6,2]
   - obstacle_slack + 100 alpha[1,2,5] <= 106.438177610998
 obs_face_o1_e3_j5: 0.7066810904097934 z[6,0] + 0.7075322158440739 z[6,2]
   - obstacle_slack + 100 alpha[1,3,5] <= 107.4187645455986
 obs_alpha_sum_o1_j6: alpha[1,0,6] + alpha[1,1,6] + alpha[1,2,6]
   + alpha[1,3,6] >= 1
 obs_face_o1_e0_j6: - 0.7075322158440741 z[7,0] + 0.7066810904097932 z[7,2]
   - obstacle_slack + 100 alpha[1,0,6] <= 91.86182238900204
 obs_face_o1_e1_j6: - 0.7066810904097934 z[7,0] - 0.7075322158440739 z[7,2]
   - obstacle_slack + 100 alpha[1,1,6] <= 90.88123545440142
 obs_face_o1_e2_j6: 0.7075322158440741 z[7,0] - 0.7066810904097932 z[7,2]
   - obstacle_slack + 100 alpha[1,2,6] <= 106.438177610998
 obs_face_o1_e3_j6: 0.7066810904097934 z[7,0] + 0.7075322158440739 z[7,2]
   - obstacle_slack + 100 alpha[1,3,6] <= 107.4187645455986
 obs_alpha_sum_o1_j7: alpha[1,0,7] + alpha[1,1,7] + alpha[1,2,7]
   + alpha[1,3,7] >= 1
 obs_face_o1_e0_j7: - 0.7075322158440741 z[8,0] + 0.7066810904097932 z[8,2]
   - obstacle_slack + 100 alpha[1,0,7] <= 91.86182238900204
 obs_face_o1_e1_j7: - 0.7066810904097934 z[8,0] - 0.7075322158440739 z[8,2]
   - obstacle_slack + 100 alpha[1,1,7] <= 90.88123545440142
 obs_face_o1_e2_j7: 0.7075322158440741 z[8,0] - 0.7066810904097932 z[8,2]
   - obstacle_slack + 100 alpha[1,2,7] <= 106.438177610998
 obs_face_o1_e3_j7: 0.7066810904097934 z[8,0] + 0.7075322158440739 z[8,2]
   - obstacle_slack + 100 alpha[1,3,7] <= 107.4187645455986
 obs_alpha_sum_o1_j8: alpha[1,0,8] + alpha[1,1,8] + alpha[1,2,8]
   + alpha[1,3,8] >= 1
 obs_face_o1_e0_j8: - 0.7075322158440741 z[9,0] + 0.7066810904097932 z[9,2]
   - obstacle_slack + 100 alpha[1,0,8] <= 91.86182238900204
 obs_face_o1_e1_j8: - 0.7066810904097934 z[9,0] - 0.7075322158440739 z[9,2]
   - obstacle_slack + 100 alpha[1,1,8] <= 90.88123545440142
 obs_face_o1_e2_j8: 0.7075322158440741 z[9,0] - 0.7066810904097932 z[9,2]
   - obstacle_slack + 100 alpha[1,2,8] <= 106.438177610998
 obs_face_o1_e3_j8: 0.7066810904097934 z[9,0] + 0.7075322158440739 z[9,2]
   - obstacle_slack + 100 alpha[1,3,8] <= 107.4187645455986
 obs_alpha_sum_o1_j9: alpha[1,0,9] + alpha[1,1,9] + alpha[1,2,9]
   + alpha[1,3,9] >= 1
 obs_face_o1_e0_j9: - 0.7075322158440741 z[10,0]
   + 0.7066810904097932 z[10,2] - obstacle_slack + 100 alpha[1,0,9]
   <= 91.86182238900204
 obs_face_o1_e1_j9: - 0.7066810904097934 z[10,0]
   - 0.7075322158440739 z[10,2] - obstacle_slack + 100 alpha[1,1,9]
   <= 90.88123545440142
 obs_face_o1_e2_j9: 0.7075322158440741 z[10,0] - 0.7066810904097932 z[10,2]
   - obstacle_slack + 100 alpha[1,2,9] <= 106.438177610998
 obs_face_o1_e3_j9: 0.7066810904097934 z[10,0] + 0.7075322158440739 z[10,2]
   - obstacle_slack + 100 alpha[1,3,9] <= 107.4187645455986
 obs_alpha_sum_o1_j10: alpha[1,0,10] + alpha[1,1,10] + alpha[1,2,10]
   + alpha[1,3,10] >= 1
 obs_face_o1_e0_j10: - 0.7075322158440741 z[11,0]
   + 0.7066810904097932 z[11,2] - obstacle_slack + 100 alpha[1,0,10]
   <= 91.86182238900204
 obs_face_o1_e1_j10: - 0.7066810904097934 z[11,0]
   - 0.7075322158440739 z[11,2] - obstacle_slack + 100 alpha[1,1,10]
   <= 90.88123545440142
 obs_face_o1_e2_j10: 0.7075322158440741 z[11,0]
   - 0.7066810904097932 z[11,2] - obstacle_slack + 100 alpha[1,2,10]
   <= 106.438177610998
 obs_face_o1_e3_j10: 0.7066810904097934 z[11,0]
   + 0.7075322158440739 z[11,2] - obstacle_slack + 100 alpha[1,3,10]
   <= 107.4187645455986
 obs_alpha_sum_o1_j11: alpha[1,0,11] + alpha[1,1,11] + alpha[1,2,11]
   + alpha[1,3,11] >= 1
 obs_face_o1_e0_j11: - 0.7075322158440741 z[12,0]
   + 0.7066810904097932 z[12,2] - obstacle_slack + 100 alpha[1,0,11]
   <= 91.86182238900204
 obs_face_o1_e1_j11: - 0.7066810904097934 z[12,0]
   - 0.7075322158440739 z[12,2] - obstacle_slack + 100 alpha[1,1,11]
   <= 90.88123545440142
 obs_face_o1_e2_j11: 0.7075322158440741 z[12,0]
   - 0.7066810904097932 z[12,2] - obstacle_slack + 100 alpha[1,2,11]
   <= 106.438177610998
 obs_face_o1_e3_j11: 0.7066810904097934 z[12,0]
   + 0.7075322158440739 z[12,2] - obstacle_slack + 100 alpha[1,3,11]
   <= 107.4187645455986
 obs_alpha_sum_o1_j12: alpha[1,0,12] + alpha[1,1,12] + alpha[1,2,12]
   + alpha[1,3,12] >= 1
 obs_face_o1_e0_j12: - 0.7075322158440741 z[13,0]
   + 0.7066810904097932 z[13,2] - obstacle_slack + 100 alpha[1,0,12]
   <= 91.86182238900204
 obs_face_o1_e1_j12: - 0.7066810904097934 z[13,0]
   - 0.7075322158440739 z[13,2] - obstacle_slack + 100 alpha[1,1,12]
   <= 90.88123545440142
 obs_face_o1_e2_j12: 0.7075322158440741 z[13,0]
   - 0.7066810904097932 z[13,2] - obstacle_slack + 100 alpha[1,2,12]
   <= 106.438177610998
 obs_face_o1_e3_j12: 0.7066810904097934 z[13,0]
   + 0.7075322158440739 z[13,2] - obstacle_slack + 100 alpha[1,3,12]
   <= 107.4187645455986
 obs_alpha_sum_o1_j13: alpha[1,0,13] + alpha[1,1,13] + alpha[1,2,13]
   + alpha[1,3,13] >= 1
 obs_face_o1_e0_j13: - 0.7075322158440741 z[14,0]
   + 0.7066810904097932 z[14,2] - obstacle_slack + 100 alpha[1,0,13]
   <= 91.86182238900204
 obs_face_o1_e1_j13: - 0.7066810904097934 z[14,0]
   - 0.7075322158440739 z[14,2] - obstacle_slack + 100 alpha[1,1,13]
   <= 90.88123545440142
 obs_face_o1_e2_j13: 0.7075322158440741 z[14,0]
   - 0.7066810904097932 z[14,2] - obstacle_slack + 100 alpha[1,2,13]
   <= 106.438177610998
 obs_face_o1_e3_j13: 0.7066810904097934 z[14,0]
   + 0.7075322158440739 z[14,2] - obstacle_slack + 100 alpha[1,3,13]
   <= 107.4187645455986
 obs_alpha_sum_o1_j14: alpha[1,0,14] + alpha[1,1,14] + alpha[1,2,14]
   + alpha[1,3,14] >= 1
 obs_face_o1_e0_j14: - 0.7075322158440741 z[15,0]
   + 0.7066810904097932 z[15,2] - obstacle_slack + 100 alpha[1,0,14]
   <= 91.86182238900204
 obs_face_o1_e1_j14: - 0.7066810904097934 z[15,0]
   - 0.7075322158440739 z[15,2] - obstacle_slack + 100 alpha[1,1,14]
   <= 90.88123545440142
 obs_face_o1_e2_j14: 0.7075322158440741 z[15,0]
   - 0.7066810904097932 z[15,2] - obstacle_slack + 100 alpha[1,2,14]
   <= 106.438177610998
 obs_face_o1_e3_j14: 0.7066810904097934 z[15,0]
   + 0.7075322158440739 z[15,2] - obstacle_slack + 100 alpha[1,3,14]
   <= 107.4187645455986
 obs_beta_sum_o1_j0: beta[1,0,0] + beta[1,1,0] + beta[1,2,0] + beta[1,3,0]
   <= 1
 obs_beta_forward_o1_e0_j0: - alpha[1,0,0] + alpha[1,0,1] - beta[1,0,0]
   <= 0
 obs_beta_backward_o1_e0_j0: alpha[1,0,0] - alpha[1,0,1] - beta[1,0,0]
   <= 0
 obs_beta_forward_o1_e1_j0: - alpha[1,1,0] + alpha[1,1,1] - beta[1,1,0]
   <= 0
 obs_beta_backward_o1_e1_j0: alpha[1,1,0] - alpha[1,1,1] - beta[1,1,0]
   <= 0
 obs_beta_forward_o1_e2_j0: - alpha[1,2,0] + alpha[1,2,1] - beta[1,2,0]
   <= 0
 obs_beta_backward_o1_e2_j0: alpha[1,2,0] - alpha[1,2,1] - beta[1,2,0]
   <= 0
 obs_beta_forward_o1_e3_j0: - alpha[1,3,0] + alpha[1,3,1] - beta[1,3,0]
   <= 0
 obs_beta_backward_o1_e3_j0: alpha[1,3,0] - alpha[1,3,1] - beta[1,3,0]
   <= 0
 obs_beta_sum_o1_j1: beta[1,0,1] + beta[1,1,1] + beta[1,2,1] + beta[1,3,1]
   <= 1
 obs_beta_forward_o1_e0_j1: - alpha[1,0,1] + alpha[1,0,2] - beta[1,0,1]
   <= 0
 obs_beta_backward_o1_e0_j1: alpha[1,0,1] - alpha[1,0,2] - beta[1,0,1]
   <= 0
 obs_beta_forward_o1_e1_j1: - alpha[1,1,1] + alpha[1,1,2] - beta[1,1,1]
   <= 0
 obs_beta_backward_o1_e1_j1: alpha[1,1,1] - alpha[1,1,2] - beta[1,1,1]
   <= 0
 obs_beta_forward_o1_e2_j1: - alpha[1,2,1] + alpha[1,2,2] - beta[1,2,1]
   <= 0
 obs_beta_backward_o1_e2_j1: alpha[1,2,1] - alpha[1,2,2] - beta[1,2,1]
   <= 0
 obs_beta_forward_o1_e3_j1: - alpha[1,3,1] + alpha[1,3,2] - beta[1,3,1]
   <= 0
 obs_beta_backward_o1_e3_j1: alpha[1,3,1] - alpha[1,3,2] - beta[1,3,1]
   <= 0
 obs_beta_sum_o1_j2: beta[1,0,2] + beta[1,1,2] + beta[1,2,2] + beta[1,3,2]
   <= 1
 obs_beta_forward_o1_e0_j2: - alpha[1,0,2] + alpha[1,0,3] - beta[1,0,2]
   <= 0
 obs_beta_backward_o1_e0_j2: alpha[1,0,2] - alpha[1,0,3] - beta[1,0,2]
   <= 0
 obs_beta_forward_o1_e1_j2: - alpha[1,1,2] + alpha[1,1,3] - beta[1,1,2]
   <= 0
 obs_beta_backward_o1_e1_j2: alpha[1,1,2] - alpha[1,1,3] - beta[1,1,2]
   <= 0
 obs_beta_forward_o1_e2_j2: - alpha[1,2,2] + alpha[1,2,3] - beta[1,2,2]
   <= 0
 obs_beta_backward_o1_e2_j2: alpha[1,2,2] - alpha[1,2,3] - beta[1,2,2]
   <= 0
 obs_beta_forward_o1_e3_j2: - alpha[1,3,2] + alpha[1,3,3] - beta[1,3,2]
   <= 0
 obs_beta_backward_o1_e3_j2: alpha[1,3,2] - alpha[1,3,3] - beta[1,3,2]
   <= 0
 obs_beta_sum_o1_j3: beta[1,0,3] + beta[1,1,3] + beta[1,2,3] + beta[1,3,3]
   <= 1
 obs_beta_forward_o1_e0_j3: - alpha[1,0,3] + alpha[1,0,4] - beta[1,0,3]
   <= 0
 obs_beta_backward_o1_e0_j3: alpha[1,0,3] - alpha[1,0,4] - beta[1,0,3]
   <= 0
 obs_beta_forward_o1_e1_j3: - alpha[1,1,3] + alpha[1,1,4] - beta[1,1,3]
   <= 0
 obs_beta_backward_o1_e1_j3: alpha[1,1,3] - alpha[1,1,4] - beta[1,1,3]
   <= 0
 obs_beta_forward_o1_e2_j3: - alpha[1,2,3] + alpha[1,2,4] - beta[1,2,3]
   <= 0
 obs_beta_backward_o1_e2_j3: alpha[1,2,3] - alpha[1,2,4] - beta[1,2,3]
   <= 0
 obs_beta_forward_o1_e3_j3: - alpha[1,3,3] + alpha[1,3,4] - beta[1,3,3]
   <= 0
 obs_beta_backward_o1_e3_j3: alpha[1,3,3] - alpha[1,3,4] - beta[1,3,3]
   <= 0
 obs_beta_sum_o1_j4: beta[1,0,4] + beta[1,1,4] + beta[1,2,4] + beta[1,3,4]
   <= 1
 obs_beta_forward_o1_e0_j4: - alpha[1,0,4] + alpha[1,0,5] - beta[1,0,4]
   <= 0
 obs_beta_backward_o1_e0_j4: alpha[1,0,4] - alpha[1,0,5] - beta[1,0,4]
   <= 0
 obs_beta_forward_o1_e1_j4: - alpha[1,1,4] + alpha[1,1,5] - beta[1,1,4]
   <= 0
 obs_beta_backward_o1_e1_j4: alpha[1,1,4] - alpha[1,1,5] - beta[1,1,4]
   <= 0
 obs_beta_forward_o1_e2_j4: - alpha[1,2,4] + alpha[1,2,5] - beta[1,2,4]
   <= 0
 obs_beta_backward_o1_e2_j4: alpha[1,2,4] - alpha[1,2,5] - beta[1,2,4]
   <= 0
 obs_beta_forward_o1_e3_j4: - alpha[1,3,4] + alpha[1,3,5] - beta[1,3,4]
   <= 0
 obs_beta_backward_o1_e3_j4: alpha[1,3,4] - alpha[1,3,5] - beta[1,3,4]
   <= 0
 obs_beta_sum_o1_j5: beta[1,0,5] + beta[1,1,5] + beta[1,2,5] + beta[1,3,5]
   <= 1
 obs_beta_forward_o1_e0_j5: - alpha[1,0,5] + alpha[1,0,6] - beta[1,0,5]
   <= 0
 obs_beta_backward_o1_e0_j5: alpha[1,0,5] - alpha[1,0,6] - beta[1,0,5]
   <= 0
 obs_beta_forward_o1_e1_j5: - alpha[1,1,5] + alpha[1,1,6] - beta[1,1,5]
   <= 0
 obs_beta_backward_o1_e1_j5: alpha[1,1,5] - alpha[1,1,6] - beta[1,1,5]
   <= 0
 obs_beta_forward_o1_e2_j5: - alpha[1,2,5] + alpha[1,2,6] - beta[1,2,5]
   <= 0
 obs_beta_backward_o1_e2_j5: alpha[1,2,5] - alpha[1,2,6] - beta[1,2,5]
   <= 0
 obs_beta_forward_o1_e3_j5: - alpha[1,3,5] + alpha[1,3,6] - beta[1,3,5]
   <= 0
 obs_beta_backward_o1_e3_j5: alpha[1,3,5] - alpha[1,3,6] - beta[1,3,5]
   <= 0
 obs_beta_sum_o1_j6: beta[1,0,6] + beta[1,1,6] + beta[1,2,6] + beta[1,3,6]
   <= 1
 obs_beta_forward_o1_e0_j6: - alpha[1,0,6] + alpha[1,0,7] - beta[1,0,6]
   <= 0
 obs_beta_backward_o1_e0_j6: alpha[1,0,6] - alpha[1,0,7] - beta[1,0,6]
   <= 0
 obs_beta_forward_o1_e1_j6: - alpha[1,1,6] + alpha[1,1,7] - beta[1,1,6]
   <= 0
 obs_beta_backward_o1_e1_j6: alpha[1,1,6] - alpha[1,1,7] - beta[1,1,6]
   <= 0
 obs_beta_forward_o1_e2_j6: - alpha[1,2,6] + alpha[1,2,7] - beta[1,2,6]
   <= 0
 obs_beta_backward_o1_e2_j6: alpha[1,2,6] - alpha[1,2,7] - beta[1,2,6]
   <= 0
 obs_beta_forward_o1_e3_j6: - alpha[1,3,6] + alpha[1,3,7] - beta[1,3,6]
   <= 0
 obs_beta_backward_o1_e3_j6: alpha[1,3,6] - alpha[1,3,7] - beta[1,3,6]
   <= 0
 obs_beta_sum_o1_j7: beta[1,0,7] + beta[1,1,7] + beta[1,2,7] + beta[1,3,7]
   <= 1
 obs_beta_forward_o1_e0_j7: - alpha[1,0,7] + alpha[1,0,8] - beta[1,0,7]
   <= 0
 obs_beta_backward_o1_e0_j7: alpha[1,0,7] - alpha[1,0,8] - beta[1,0,7]
   <= 0
 obs_beta_forward_o1_e1_j7: - alpha[1,1,7] + alpha[1,1,8] - beta[1,1,7]
   <= 0
 obs_beta_backward_o1_e1_j7: alpha[1,1,7] - alpha[1,1,8] - beta[1,1,7]
   <= 0
 obs_beta_forward_o1_e2_j7: - alpha[1,2,7] + alpha[1,2,8] - beta[1,2,7]
   <= 0
 obs_beta_backward_o1_e2_j7: alpha[1,2,7] - alpha[1,2,8] - beta[1,2,7]
   <= 0
 obs_beta_forward_o1_e3_j7: - alpha[1,3,7] + alpha[1,3,8] - beta[1,3,7]
   <= 0
 obs_beta_backward_o1_e3_j7: alpha[1,3,7] - alpha[1,3,8] - beta[1,3,7]
   <= 0
 obs_beta_sum_o1_j8: beta[1,0,8] + beta[1,1,8] + beta[1,2,8] + beta[1,3,8]
   <= 1
 obs_beta_forward_o1_e0_j8: - alpha[1,0,8] + alpha[1,0,9] - beta[1,0,8]
   <= 0
 obs_beta_backward_o1_e0_j8: alpha[1,0,8] - alpha[1,0,9] - beta[1,0,8]
   <= 0
 obs_beta_forward_o1_e1_j8: - alpha[1,1,8] + alpha[1,1,9] - beta[1,1,8]
   <= 0
 obs_beta_backward_o1_e1_j8: alpha[1,1,8] - alpha[1,1,9] - beta[1,1,8]
   <= 0
 obs_beta_forward_o1_e2_j8: - alpha[1,2,8] + alpha[1,2,9] - beta[1,2,8]
   <= 0
 obs_beta_backward_o1_e2_j8: alpha[1,2,8] - alpha[1,2,9] - beta[1,2,8]
   <= 0
 obs_beta_forward_o1_e3_j8: - alpha[1,3,8] + alpha[1,3,9] - beta[1,3,8]
   <= 0
 obs_beta_backward_o1_e3_j8: alpha[1,3,8] - alpha[1,3,9] - beta[1,3,8]
   <= 0
 obs_beta_sum_o1_j9: beta[1,0,9] + beta[1,1,9] + beta[1,2,9] + beta[1,3,9]
   <= 1
 obs_beta_forward_o1_e0_j9: - alpha[1,0,9] + alpha[1,0,10] - beta[1,0,9]
   <= 0
 obs_beta_backward_o1_e0_j9: alpha[1,0,9] - alpha[1,0,10] - beta[1,0,9]
   <= 0
 obs_beta_forward_o1_e1_j9: - alpha[1,1,9] + alpha[1,1,10] - beta[1,1,9]
   <= 0
 obs_beta_backward_o1_e1_j9: alpha[1,1,9] - alpha[1,1,10] - beta[1,1,9]
   <= 0
 obs_beta_forward_o1_e2_j9: - alpha[1,2,9] + alpha[1,2,10] - beta[1,2,9]
   <= 0
 obs_beta_backward_o1_e2_j9: alpha[1,2,9] - alpha[1,2,10] - beta[1,2,9]
   <= 0
 obs_beta_forward_o1_e3_j9: - alpha[1,3,9] + alpha[1,3,10] - beta[1,3,9]
   <= 0
 obs_beta_backward_o1_e3_j9: alpha[1,3,9] - alpha[1,3,10] - beta[1,3,9]
   <= 0
 obs_beta_sum_o1_j10: beta[1,0,10] + beta[1,1,10] + beta[1,2,10]
   + beta[1,3,10] <= 1
 obs_beta_forward_o1_e0_j10: - alpha[1,0,10] + alpha[1,0,11] - beta[1,0,10]
   <= 0
 obs_beta_backward_o1_e0_j10: alpha[1,0,10] - alpha[1,0,11] - beta[1,0,10]
   <= 0
 obs_beta_forward_o1_e1_j10: - alpha[1,1,10] + alpha[1,1,11] - beta[1,1,10]
   <= 0
 obs_beta_backward_o1_e1_j10: alpha[1,1,10] - alpha[1,1,11] - beta[1,1,10]
   <= 0
 obs_beta_forward_o1_e2_j10: - alpha[1,2,10] + alpha[1,2,11] - beta[1,2,10]
   <= 0
 obs_beta_backward_o1_e2_j10: alpha[1,2,10] - alpha[1,2,11] - beta[1,2,10]
   <= 0
 obs_beta_forward_o1_e3_j10: - alpha[1,3,10] + alpha[1,3,11] - beta[1,3,10]
   <= 0
 obs_beta_backward_o1_e3_j10: alpha[1,3,10] - alpha[1,3,11] - beta[1,3,10]
   <= 0
 obs_beta_sum_o1_j11: beta[1,0,11] + beta[1,1,11] + beta[1,2,11]
   + beta[1,3,11] <= 1
 obs_beta_forward_o1_e0_j11: - alpha[1,0,11] + alpha[1,0,12] - beta[1,0,11]
   <= 0
 obs_beta_backward_o1_e0_j11: alpha[1,0,11] - alpha[1,0,12] - beta[1,0,11]
   <= 0
 obs_beta_forward_o1_e1_j11: - alpha[1,1,11] + alpha[1,1,12] - beta[1,1,11]
   <= 0
 obs_beta_backward_o1_e1_j11: alpha[1,1,11] - alpha[1,1,12] - beta[1,1,11]
   <= 0
 obs_beta_forward_o1_e2_j11: - alpha[1,2,11] + alpha[1,2,12] - beta[1,2,11]
   <= 0
 obs_beta_backward_o1_e2_j11: alpha[1,2,11] - alpha[1,2,12] - beta[1,2,11]
   <= 0
 obs_beta_forward_o1_e3_j11: - alpha[1,3,11] + alpha[1,3,12] - beta[1,3,11]
   <= 0
 obs_beta_backward_o1_e3_j11: alpha[1,3,11] - alpha[1,3,12] - beta[1,3,11]
   <= 0
 obs_beta_sum_o1_j12: beta[1,0,12] + beta[1,1,12] + beta[1,2,12]
   + beta[1,3,12] <= 1
 obs_beta_forward_o1_e0_j12: - alpha[1,0,12] + alpha[1,0,13] - beta[1,0,12]
   <= 0
 obs_beta_backward_o1_e0_j12: alpha[1,0,12] - alpha[1,0,13] - beta[1,0,12]
   <= 0
 obs_beta_forward_o1_e1_j12: - alpha[1,1,12] + alpha[1,1,13] - beta[1,1,12]
   <= 0
 obs_beta_backward_o1_e1_j12: alpha[1,1,12] - alpha[1,1,13] - beta[1,1,12]
   <= 0
 obs_beta_forward_o1_e2_j12: - alpha[1,2,12] + alpha[1,2,13] - beta[1,2,12]
   <= 0
 obs_beta_backward_o1_e2_j12: alpha[1,2,12] - alpha[1,2,13] - beta[1,2,12]
   <= 0
 obs_beta_forward_o1_e3_j12: - alpha[1,3,12] + alpha[1,3,13] - beta[1,3,12]
   <= 0
 obs_beta_backward_o1_e3_j12: alpha[1,3,12] - alpha[1,3,13] - beta[1,3,12]
   <= 0
 obs_beta_sum_o1_j13: beta[1,0,13] + beta[1,1,13] + beta[1,2,13]
   + beta[1,3,13] <= 1
 obs_beta_forward_o1_e0_j13: - alpha[1,0,13] + alpha[1,0,14] - beta[1,0,13]
   <= 0
 obs_beta_backward_o1_e0_j13: alpha[1,0,13] - alpha[1,0,14] - beta[1,0,13]
   <= 0
 obs_beta_forward_o1_e1_j13: - alpha[1,1,13] + alpha[1,1,14] - beta[1,1,13]
   <= 0
 obs_beta_backward_o1_e1_j13: alpha[1,1,13] - alpha[1,1,14] - beta[1,1,13]
   <= 0
 obs_beta_forward_o1_e2_j13: - alpha[1,2,13] + alpha[1,2,14] - beta[1,2,13]
   <= 0
 obs_beta_backward_o1_e2_j13: alpha[1,2,13] - alpha[1,2,14] - beta[1,2,13]
   <= 0
 obs_beta_forward_o1_e3_j13: - alpha[1,3,13] + alpha[1,3,14] - beta[1,3,13]
   <= 0
 obs_beta_backward_o1_e3_j13: alpha[1,3,13] - alpha[1,3,14] - beta[1,3,13]
   <= 0
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
Binaries
 alpha[0,0,0] alpha[0,0,1] alpha[0,0,2] alpha[0,0,3] alpha[0,0,4]
 alpha[0,0,5] alpha[0,0,6] alpha[0,0,7] alpha[0,0,8] alpha[0,0,9]
 alpha[0,0,10] alpha[0,0,11] alpha[0,0,12] alpha[0,0,13] alpha[0,0,14]
 alpha[0,1,0] alpha[0,1,1] alpha[0,1,2] alpha[0,1,3] alpha[0,1,4]
 alpha[0,1,5] alpha[0,1,6] alpha[0,1,7] alpha[0,1,8] alpha[0,1,9]
 alpha[0,1,10] alpha[0,1,11] alpha[0,1,12] alpha[0,1,13] alpha[0,1,14]
 alpha[0,2,0] alpha[0,2,1] alpha[0,2,2] alpha[0,2,3] alpha[0,2,4]
 alpha[0,2,5] alpha[0,2,6] alpha[0,2,7] alpha[0,2,8] alpha[0,2,9]
 alpha[0,2,10] alpha[0,2,11] alpha[0,2,12] alpha[0,2,13] alpha[0,2,14]
 alpha[0,3,0] alpha[0,3,1] alpha[0,3,2] alpha[0,3,3] alpha[0,3,4]
 alpha[0,3,5] alpha[0,3,6] alpha[0,3,7] alpha[0,3,8] alpha[0,3,9]
 alpha[0,3,10] alpha[0,3,11] alpha[0,3,12] alpha[0,3,13] alpha[0,3,14]
 alpha[1,0,0] alpha[1,0,1] alpha[1,0,2] alpha[1,0,3] alpha[1,0,4]
 alpha[1,0,5] alpha[1,0,6] alpha[1,0,7] alpha[1,0,8] alpha[1,0,9]
 alpha[1,0,10] alpha[1,0,11] alpha[1,0,12] alpha[1,0,13] alpha[1,0,14]
 alpha[1,1,0] alpha[1,1,1] alpha[1,1,2] alpha[1,1,3] alpha[1,1,4]
 alpha[1,1,5] alpha[1,1,6] alpha[1,1,7] alpha[1,1,8] alpha[1,1,9]
 alpha[1,1,10] alpha[1,1,11] alpha[1,1,12] alpha[1,1,13] alpha[1,1,14]
 alpha[1,2,0] alpha[1,2,1] alpha[1,2,2] alpha[1,2,3] alpha[1,2,4]
 alpha[1,2,5] alpha[1,2,6] alpha[1,2,7] alpha[1,2,8] alpha[1,2,9]
 alpha[1,2,10] alpha[1,2,11] alpha[1,2,12] alpha[1,2,13] alpha[1,2,14]
 alpha[1,3,0] alpha[1,3,1] alpha[1,3,2] alpha[1,3,3] alpha[1,3,4]
 alpha[1,3,5] alpha[1,3,6] alpha[1,3,7] alpha[1,3,8] alpha[1,3,9]
 alpha[1,3,10] alpha[1,3,11] alpha[1,3,12] alpha[1,3,13] alpha[1,3,14]
 beta[0,0,0] beta[0,0,1] beta[0,0,2] beta[0,0,3] beta[0,0,4] beta[0,0,5]
 beta[0,0,6] beta[0,0,7] beta[0,0,8] beta[0,0,9] beta[0,0,10] beta[0,0,11]
 beta[0,0,12] beta[0,0,13] beta[0,1,0] beta[0,1,1] beta[0,1,2] beta[0,1,3]
 beta[0,1,4] beta[0,1,5] beta[0,1,6] beta[0,1,7] beta[0,1,8] beta[0,1,9]
 beta[0,1,10] beta[0,1,11] beta[0,1,12] beta[0,1,13] beta[0,2,0]
 beta[0,2,1] beta[0,2,2] beta[0,2,3] beta[0,2,4] beta[0,2,5] beta[0,2,6]
 beta[0,2,7] beta[0,2,8] beta[0,2,9] beta[0,2,10] beta[0,2,11] beta[0,2,12]
 beta[0,2,13] beta[0,3,0] beta[0,3,1] beta[0,3,2] beta[0,3,3] beta[0,3,4]
 beta[0,3,5] beta[0,3,6] beta[0,3,7] beta[0,3,8] beta[0,3,9] beta[0,3,10]
 beta[0,3,11] beta[0,3,12] beta[0,3,13] beta[1,0,0] beta[1,0,1] beta[1,0,2]
 beta[1,0,3] beta[1,0,4] beta[1,0,5] beta[1,0,6] beta[1,0,7] beta[1,0,8]
 beta[1,0,9] beta[1,0,10] beta[1,0,11] beta[1,0,12] beta[1,0,13]
 beta[1,1,0] beta[1,1,1] beta[1,1,2] beta[1,1,3] beta[1,1,4] beta[1,1,5]
 beta[1,1,6] beta[1,1,7] beta[1,1,8] beta[1,1,9] beta[1,1,10] beta[1,1,11]
 beta[1,1,12] beta[1,1,13] beta[1,2,0] beta[1,2,1] beta[1,2,2] beta[1,2,3]
 beta[1,2,4] beta[1,2,5] beta[1,2,6] beta[1,2,7] beta[1,2,8] beta[1,2,9]
 beta[1,2,10] beta[1,2,11] beta[1,2,12] beta[1,2,13] beta[1,3,0]
 beta[1,3,1] beta[1,3,2] beta[1,3,3] beta[1,3,4] beta[1,3,5] beta[1,3,6]
 beta[1,3,7] beta[1,3,8] beta[1,3,9] beta[1,3,10] beta[1,3,11] beta[1,3,12]
 beta[1,3,13]
End
