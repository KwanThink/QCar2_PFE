\ Model qcar2_flat_coordinate_oampc_mk2_1
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x776d646362ba568a
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
 obs_alpha_sum_o0_j0: alpha[0,0,0] + alpha[0,1,0] + alpha[0,2,0]
   + alpha[0,3,0] >= 1
 obs_face_o0_e0_j0: - 0.706825181105366 z[1,0] + 0.7073882691671997 z[1,2]
   - obstacle_slack + 100 alpha[0,0,0] <= 96.52269927557853
 obs_face_o0_e1_j0: - 0.7073882691671997 z[1,0] - 0.7068251811053661 z[1,2]
   - obstacle_slack + 100 alpha[0,1,0] <= 96.52044692333121
 obs_face_o0_e2_j0: 0.706825181105366 z[1,0] - 0.7073882691671997 z[1,2]
   - obstacle_slack + 100 alpha[0,2,0] <= 102.1773007244215
 obs_face_o0_e3_j0: 0.7073882691671997 z[1,0] + 0.7068251811053661 z[1,2]
   - obstacle_slack + 100 alpha[0,3,0] <= 102.1795530766688
 obs_alpha_sum_o0_j1: alpha[0,0,1] + alpha[0,1,1] + alpha[0,2,1]
   + alpha[0,3,1] >= 1
 obs_face_o0_e0_j1: - 0.706825181105366 z[2,0] + 0.7073882691671997 z[2,2]
   - obstacle_slack + 100 alpha[0,0,1] <= 96.52269927557853
 obs_face_o0_e1_j1: - 0.7073882691671997 z[2,0] - 0.7068251811053661 z[2,2]
   - obstacle_slack + 100 alpha[0,1,1] <= 96.52044692333121
 obs_face_o0_e2_j1: 0.706825181105366 z[2,0] - 0.7073882691671997 z[2,2]
   - obstacle_slack + 100 alpha[0,2,1] <= 102.1773007244215
 obs_face_o0_e3_j1: 0.7073882691671997 z[2,0] + 0.7068251811053661 z[2,2]
   - obstacle_slack + 100 alpha[0,3,1] <= 102.1795530766688
 obs_alpha_sum_o0_j2: alpha[0,0,2] + alpha[0,1,2] + alpha[0,2,2]
   + alpha[0,3,2] >= 1
 obs_face_o0_e0_j2: - 0.706825181105366 z[3,0] + 0.7073882691671997 z[3,2]
   - obstacle_slack + 100 alpha[0,0,2] <= 96.52269927557853
 obs_face_o0_e1_j2: - 0.7073882691671997 z[3,0] - 0.7068251811053661 z[3,2]
   - obstacle_slack + 100 alpha[0,1,2] <= 96.52044692333121
 obs_face_o0_e2_j2: 0.706825181105366 z[3,0] - 0.7073882691671997 z[3,2]
   - obstacle_slack + 100 alpha[0,2,2] <= 102.1773007244215
 obs_face_o0_e3_j2: 0.7073882691671997 z[3,0] + 0.7068251811053661 z[3,2]
   - obstacle_slack + 100 alpha[0,3,2] <= 102.1795530766688
 obs_alpha_sum_o0_j3: alpha[0,0,3] + alpha[0,1,3] + alpha[0,2,3]
   + alpha[0,3,3] >= 1
 obs_face_o0_e0_j3: - 0.706825181105366 z[4,0] + 0.7073882691671997 z[4,2]
   - obstacle_slack + 100 alpha[0,0,3] <= 96.52269927557853
 obs_face_o0_e1_j3: - 0.7073882691671997 z[4,0] - 0.7068251811053661 z[4,2]
   - obstacle_slack + 100 alpha[0,1,3] <= 96.52044692333121
 obs_face_o0_e2_j3: 0.706825181105366 z[4,0] - 0.7073882691671997 z[4,2]
   - obstacle_slack + 100 alpha[0,2,3] <= 102.1773007244215
 obs_face_o0_e3_j3: 0.7073882691671997 z[4,0] + 0.7068251811053661 z[4,2]
   - obstacle_slack + 100 alpha[0,3,3] <= 102.1795530766688
 obs_alpha_sum_o0_j4: alpha[0,0,4] + alpha[0,1,4] + alpha[0,2,4]
   + alpha[0,3,4] >= 1
 obs_face_o0_e0_j4: - 0.706825181105366 z[5,0] + 0.7073882691671997 z[5,2]
   - obstacle_slack + 100 alpha[0,0,4] <= 96.52269927557853
 obs_face_o0_e1_j4: - 0.7073882691671997 z[5,0] - 0.7068251811053661 z[5,2]
   - obstacle_slack + 100 alpha[0,1,4] <= 96.52044692333121
 obs_face_o0_e2_j4: 0.706825181105366 z[5,0] - 0.7073882691671997 z[5,2]
   - obstacle_slack + 100 alpha[0,2,4] <= 102.1773007244215
 obs_face_o0_e3_j4: 0.7073882691671997 z[5,0] + 0.7068251811053661 z[5,2]
   - obstacle_slack + 100 alpha[0,3,4] <= 102.1795530766688
 obs_alpha_sum_o0_j5: alpha[0,0,5] + alpha[0,1,5] + alpha[0,2,5]
   + alpha[0,3,5] >= 1
 obs_face_o0_e0_j5: - 0.706825181105366 z[6,0] + 0.7073882691671997 z[6,2]
   - obstacle_slack + 100 alpha[0,0,5] <= 96.52269927557853
 obs_face_o0_e1_j5: - 0.7073882691671997 z[6,0] - 0.7068251811053661 z[6,2]
   - obstacle_slack + 100 alpha[0,1,5] <= 96.52044692333121
 obs_face_o0_e2_j5: 0.706825181105366 z[6,0] - 0.7073882691671997 z[6,2]
   - obstacle_slack + 100 alpha[0,2,5] <= 102.1773007244215
 obs_face_o0_e3_j5: 0.7073882691671997 z[6,0] + 0.7068251811053661 z[6,2]
   - obstacle_slack + 100 alpha[0,3,5] <= 102.1795530766688
 obs_alpha_sum_o0_j6: alpha[0,0,6] + alpha[0,1,6] + alpha[0,2,6]
   + alpha[0,3,6] >= 1
 obs_face_o0_e0_j6: - 0.706825181105366 z[7,0] + 0.7073882691671997 z[7,2]
   - obstacle_slack + 100 alpha[0,0,6] <= 96.52269927557853
 obs_face_o0_e1_j6: - 0.7073882691671997 z[7,0] - 0.7068251811053661 z[7,2]
   - obstacle_slack + 100 alpha[0,1,6] <= 96.52044692333121
 obs_face_o0_e2_j6: 0.706825181105366 z[7,0] - 0.7073882691671997 z[7,2]
   - obstacle_slack + 100 alpha[0,2,6] <= 102.1773007244215
 obs_face_o0_e3_j6: 0.7073882691671997 z[7,0] + 0.7068251811053661 z[7,2]
   - obstacle_slack + 100 alpha[0,3,6] <= 102.1795530766688
 obs_alpha_sum_o0_j7: alpha[0,0,7] + alpha[0,1,7] + alpha[0,2,7]
   + alpha[0,3,7] >= 1
 obs_face_o0_e0_j7: - 0.706825181105366 z[8,0] + 0.7073882691671997 z[8,2]
   - obstacle_slack + 100 alpha[0,0,7] <= 96.52269927557853
 obs_face_o0_e1_j7: - 0.7073882691671997 z[8,0] - 0.7068251811053661 z[8,2]
   - obstacle_slack + 100 alpha[0,1,7] <= 96.52044692333121
 obs_face_o0_e2_j7: 0.706825181105366 z[8,0] - 0.7073882691671997 z[8,2]
   - obstacle_slack + 100 alpha[0,2,7] <= 102.1773007244215
 obs_face_o0_e3_j7: 0.7073882691671997 z[8,0] + 0.7068251811053661 z[8,2]
   - obstacle_slack + 100 alpha[0,3,7] <= 102.1795530766688
 obs_alpha_sum_o0_j8: alpha[0,0,8] + alpha[0,1,8] + alpha[0,2,8]
   + alpha[0,3,8] >= 1
 obs_face_o0_e0_j8: - 0.706825181105366 z[9,0] + 0.7073882691671997 z[9,2]
   - obstacle_slack + 100 alpha[0,0,8] <= 96.52269927557853
 obs_face_o0_e1_j8: - 0.7073882691671997 z[9,0] - 0.7068251811053661 z[9,2]
   - obstacle_slack + 100 alpha[0,1,8] <= 96.52044692333121
 obs_face_o0_e2_j8: 0.706825181105366 z[9,0] - 0.7073882691671997 z[9,2]
   - obstacle_slack + 100 alpha[0,2,8] <= 102.1773007244215
 obs_face_o0_e3_j8: 0.7073882691671997 z[9,0] + 0.7068251811053661 z[9,2]
   - obstacle_slack + 100 alpha[0,3,8] <= 102.1795530766688
 obs_alpha_sum_o0_j9: alpha[0,0,9] + alpha[0,1,9] + alpha[0,2,9]
   + alpha[0,3,9] >= 1
 obs_face_o0_e0_j9: - 0.706825181105366 z[10,0]
   + 0.7073882691671997 z[10,2] - obstacle_slack + 100 alpha[0,0,9]
   <= 96.52269927557853
 obs_face_o0_e1_j9: - 0.7073882691671997 z[10,0]
   - 0.7068251811053661 z[10,2] - obstacle_slack + 100 alpha[0,1,9]
   <= 96.52044692333121
 obs_face_o0_e2_j9: 0.706825181105366 z[10,0] - 0.7073882691671997 z[10,2]
   - obstacle_slack + 100 alpha[0,2,9] <= 102.1773007244215
 obs_face_o0_e3_j9: 0.7073882691671997 z[10,0] + 0.7068251811053661 z[10,2]
   - obstacle_slack + 100 alpha[0,3,9] <= 102.1795530766688
 obs_alpha_sum_o0_j10: alpha[0,0,10] + alpha[0,1,10] + alpha[0,2,10]
   + alpha[0,3,10] >= 1
 obs_face_o0_e0_j10: - 0.706825181105366 z[11,0]
   + 0.7073882691671997 z[11,2] - obstacle_slack + 100 alpha[0,0,10]
   <= 96.52269927557853
 obs_face_o0_e1_j10: - 0.7073882691671997 z[11,0]
   - 0.7068251811053661 z[11,2] - obstacle_slack + 100 alpha[0,1,10]
   <= 96.52044692333121
 obs_face_o0_e2_j10: 0.706825181105366 z[11,0] - 0.7073882691671997 z[11,2]
   - obstacle_slack + 100 alpha[0,2,10] <= 102.1773007244215
 obs_face_o0_e3_j10: 0.7073882691671997 z[11,0]
   + 0.7068251811053661 z[11,2] - obstacle_slack + 100 alpha[0,3,10]
   <= 102.1795530766688
 obs_alpha_sum_o0_j11: alpha[0,0,11] + alpha[0,1,11] + alpha[0,2,11]
   + alpha[0,3,11] >= 1
 obs_face_o0_e0_j11: - 0.706825181105366 z[12,0]
   + 0.7073882691671997 z[12,2] - obstacle_slack + 100 alpha[0,0,11]
   <= 96.52269927557853
 obs_face_o0_e1_j11: - 0.7073882691671997 z[12,0]
   - 0.7068251811053661 z[12,2] - obstacle_slack + 100 alpha[0,1,11]
   <= 96.52044692333121
 obs_face_o0_e2_j11: 0.706825181105366 z[12,0] - 0.7073882691671997 z[12,2]
   - obstacle_slack + 100 alpha[0,2,11] <= 102.1773007244215
 obs_face_o0_e3_j11: 0.7073882691671997 z[12,0]
   + 0.7068251811053661 z[12,2] - obstacle_slack + 100 alpha[0,3,11]
   <= 102.1795530766688
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
 obs_alpha_sum_o1_j0: alpha[1,0,0] + alpha[1,1,0] + alpha[1,2,0]
   + alpha[1,3,0] >= 1
 obs_face_o1_e0_j0: 0.7068251811053655 z[1,0] + 0.7073882691672002 z[1,2]
   - obstacle_slack + 100 alpha[1,0,0] <= 105.0046014488429
 obs_face_o1_e1_j0: - 0.7073882691671997 z[1,0] + 0.7068251811053661 z[1,2]
   - obstacle_slack + 100 alpha[1,1,0] <= 93.69089384666241
 obs_face_o1_e2_j0: - 0.7068251811053655 z[1,0] - 0.7073882691672002 z[1,2]
   - obstacle_slack + 100 alpha[1,2,0] <= 93.69539855115707
 obs_face_o1_e3_j0: 0.7073882691671997 z[1,0] - 0.7068251811053661 z[1,2]
   - obstacle_slack + 100 alpha[1,3,0] <= 105.0091061533376
 obs_alpha_sum_o1_j1: alpha[1,0,1] + alpha[1,1,1] + alpha[1,2,1]
   + alpha[1,3,1] >= 1
 obs_face_o1_e0_j1: 0.7068251811053655 z[2,0] + 0.7073882691672002 z[2,2]
   - obstacle_slack + 100 alpha[1,0,1] <= 105.0046014488429
 obs_face_o1_e1_j1: - 0.7073882691671997 z[2,0] + 0.7068251811053661 z[2,2]
   - obstacle_slack + 100 alpha[1,1,1] <= 93.69089384666241
 obs_face_o1_e2_j1: - 0.7068251811053655 z[2,0] - 0.7073882691672002 z[2,2]
   - obstacle_slack + 100 alpha[1,2,1] <= 93.69539855115707
 obs_face_o1_e3_j1: 0.7073882691671997 z[2,0] - 0.7068251811053661 z[2,2]
   - obstacle_slack + 100 alpha[1,3,1] <= 105.0091061533376
 obs_alpha_sum_o1_j2: alpha[1,0,2] + alpha[1,1,2] + alpha[1,2,2]
   + alpha[1,3,2] >= 1
 obs_face_o1_e0_j2: 0.7068251811053655 z[3,0] + 0.7073882691672002 z[3,2]
   - obstacle_slack + 100 alpha[1,0,2] <= 105.0046014488429
 obs_face_o1_e1_j2: - 0.7073882691671997 z[3,0] + 0.7068251811053661 z[3,2]
   - obstacle_slack + 100 alpha[1,1,2] <= 93.69089384666241
 obs_face_o1_e2_j2: - 0.7068251811053655 z[3,0] - 0.7073882691672002 z[3,2]
   - obstacle_slack + 100 alpha[1,2,2] <= 93.69539855115707
 obs_face_o1_e3_j2: 0.7073882691671997 z[3,0] - 0.7068251811053661 z[3,2]
   - obstacle_slack + 100 alpha[1,3,2] <= 105.0091061533376
 obs_alpha_sum_o1_j3: alpha[1,0,3] + alpha[1,1,3] + alpha[1,2,3]
   + alpha[1,3,3] >= 1
 obs_face_o1_e0_j3: 0.7068251811053655 z[4,0] + 0.7073882691672002 z[4,2]
   - obstacle_slack + 100 alpha[1,0,3] <= 105.0046014488429
 obs_face_o1_e1_j3: - 0.7073882691671997 z[4,0] + 0.7068251811053661 z[4,2]
   - obstacle_slack + 100 alpha[1,1,3] <= 93.69089384666241
 obs_face_o1_e2_j3: - 0.7068251811053655 z[4,0] - 0.7073882691672002 z[4,2]
   - obstacle_slack + 100 alpha[1,2,3] <= 93.69539855115707
 obs_face_o1_e3_j3: 0.7073882691671997 z[4,0] - 0.7068251811053661 z[4,2]
   - obstacle_slack + 100 alpha[1,3,3] <= 105.0091061533376
 obs_alpha_sum_o1_j4: alpha[1,0,4] + alpha[1,1,4] + alpha[1,2,4]
   + alpha[1,3,4] >= 1
 obs_face_o1_e0_j4: 0.7068251811053655 z[5,0] + 0.7073882691672002 z[5,2]
   - obstacle_slack + 100 alpha[1,0,4] <= 105.0046014488429
 obs_face_o1_e1_j4: - 0.7073882691671997 z[5,0] + 0.7068251811053661 z[5,2]
   - obstacle_slack + 100 alpha[1,1,4] <= 93.69089384666241
 obs_face_o1_e2_j4: - 0.7068251811053655 z[5,0] - 0.7073882691672002 z[5,2]
   - obstacle_slack + 100 alpha[1,2,4] <= 93.69539855115707
 obs_face_o1_e3_j4: 0.7073882691671997 z[5,0] - 0.7068251811053661 z[5,2]
   - obstacle_slack + 100 alpha[1,3,4] <= 105.0091061533376
 obs_alpha_sum_o1_j5: alpha[1,0,5] + alpha[1,1,5] + alpha[1,2,5]
   + alpha[1,3,5] >= 1
 obs_face_o1_e0_j5: 0.7068251811053655 z[6,0] + 0.7073882691672002 z[6,2]
   - obstacle_slack + 100 alpha[1,0,5] <= 105.0046014488429
 obs_face_o1_e1_j5: - 0.7073882691671997 z[6,0] + 0.7068251811053661 z[6,2]
   - obstacle_slack + 100 alpha[1,1,5] <= 93.69089384666241
 obs_face_o1_e2_j5: - 0.7068251811053655 z[6,0] - 0.7073882691672002 z[6,2]
   - obstacle_slack + 100 alpha[1,2,5] <= 93.69539855115707
 obs_face_o1_e3_j5: 0.7073882691671997 z[6,0] - 0.7068251811053661 z[6,2]
   - obstacle_slack + 100 alpha[1,3,5] <= 105.0091061533376
 obs_alpha_sum_o1_j6: alpha[1,0,6] + alpha[1,1,6] + alpha[1,2,6]
   + alpha[1,3,6] >= 1
 obs_face_o1_e0_j6: 0.7068251811053655 z[7,0] + 0.7073882691672002 z[7,2]
   - obstacle_slack + 100 alpha[1,0,6] <= 105.0046014488429
 obs_face_o1_e1_j6: - 0.7073882691671997 z[7,0] + 0.7068251811053661 z[7,2]
   - obstacle_slack + 100 alpha[1,1,6] <= 93.69089384666241
 obs_face_o1_e2_j6: - 0.7068251811053655 z[7,0] - 0.7073882691672002 z[7,2]
   - obstacle_slack + 100 alpha[1,2,6] <= 93.69539855115707
 obs_face_o1_e3_j6: 0.7073882691671997 z[7,0] - 0.7068251811053661 z[7,2]
   - obstacle_slack + 100 alpha[1,3,6] <= 105.0091061533376
 obs_alpha_sum_o1_j7: alpha[1,0,7] + alpha[1,1,7] + alpha[1,2,7]
   + alpha[1,3,7] >= 1
 obs_face_o1_e0_j7: 0.7068251811053655 z[8,0] + 0.7073882691672002 z[8,2]
   - obstacle_slack + 100 alpha[1,0,7] <= 105.0046014488429
 obs_face_o1_e1_j7: - 0.7073882691671997 z[8,0] + 0.7068251811053661 z[8,2]
   - obstacle_slack + 100 alpha[1,1,7] <= 93.69089384666241
 obs_face_o1_e2_j7: - 0.7068251811053655 z[8,0] - 0.7073882691672002 z[8,2]
   - obstacle_slack + 100 alpha[1,2,7] <= 93.69539855115707
 obs_face_o1_e3_j7: 0.7073882691671997 z[8,0] - 0.7068251811053661 z[8,2]
   - obstacle_slack + 100 alpha[1,3,7] <= 105.0091061533376
 obs_alpha_sum_o1_j8: alpha[1,0,8] + alpha[1,1,8] + alpha[1,2,8]
   + alpha[1,3,8] >= 1
 obs_face_o1_e0_j8: 0.7068251811053655 z[9,0] + 0.7073882691672002 z[9,2]
   - obstacle_slack + 100 alpha[1,0,8] <= 105.0046014488429
 obs_face_o1_e1_j8: - 0.7073882691671997 z[9,0] + 0.7068251811053661 z[9,2]
   - obstacle_slack + 100 alpha[1,1,8] <= 93.69089384666241
 obs_face_o1_e2_j8: - 0.7068251811053655 z[9,0] - 0.7073882691672002 z[9,2]
   - obstacle_slack + 100 alpha[1,2,8] <= 93.69539855115707
 obs_face_o1_e3_j8: 0.7073882691671997 z[9,0] - 0.7068251811053661 z[9,2]
   - obstacle_slack + 100 alpha[1,3,8] <= 105.0091061533376
 obs_alpha_sum_o1_j9: alpha[1,0,9] + alpha[1,1,9] + alpha[1,2,9]
   + alpha[1,3,9] >= 1
 obs_face_o1_e0_j9: 0.7068251811053655 z[10,0] + 0.7073882691672002 z[10,2]
   - obstacle_slack + 100 alpha[1,0,9] <= 105.0046014488429
 obs_face_o1_e1_j9: - 0.7073882691671997 z[10,0]
   + 0.7068251811053661 z[10,2] - obstacle_slack + 100 alpha[1,1,9]
   <= 93.69089384666241
 obs_face_o1_e2_j9: - 0.7068251811053655 z[10,0]
   - 0.7073882691672002 z[10,2] - obstacle_slack + 100 alpha[1,2,9]
   <= 93.69539855115707
 obs_face_o1_e3_j9: 0.7073882691671997 z[10,0] - 0.7068251811053661 z[10,2]
   - obstacle_slack + 100 alpha[1,3,9] <= 105.0091061533376
 obs_alpha_sum_o1_j10: alpha[1,0,10] + alpha[1,1,10] + alpha[1,2,10]
   + alpha[1,3,10] >= 1
 obs_face_o1_e0_j10: 0.7068251811053655 z[11,0]
   + 0.7073882691672002 z[11,2] - obstacle_slack + 100 alpha[1,0,10]
   <= 105.0046014488429
 obs_face_o1_e1_j10: - 0.7073882691671997 z[11,0]
   + 0.7068251811053661 z[11,2] - obstacle_slack + 100 alpha[1,1,10]
   <= 93.69089384666241
 obs_face_o1_e2_j10: - 0.7068251811053655 z[11,0]
   - 0.7073882691672002 z[11,2] - obstacle_slack + 100 alpha[1,2,10]
   <= 93.69539855115707
 obs_face_o1_e3_j10: 0.7073882691671997 z[11,0]
   - 0.7068251811053661 z[11,2] - obstacle_slack + 100 alpha[1,3,10]
   <= 105.0091061533376
 obs_alpha_sum_o1_j11: alpha[1,0,11] + alpha[1,1,11] + alpha[1,2,11]
   + alpha[1,3,11] >= 1
 obs_face_o1_e0_j11: 0.7068251811053655 z[12,0]
   + 0.7073882691672002 z[12,2] - obstacle_slack + 100 alpha[1,0,11]
   <= 105.0046014488429
 obs_face_o1_e1_j11: - 0.7073882691671997 z[12,0]
   + 0.7068251811053661 z[12,2] - obstacle_slack + 100 alpha[1,1,11]
   <= 93.69089384666241
 obs_face_o1_e2_j11: - 0.7068251811053655 z[12,0]
   - 0.7073882691672002 z[12,2] - obstacle_slack + 100 alpha[1,2,11]
   <= 93.69539855115707
 obs_face_o1_e3_j11: 0.7073882691671997 z[12,0]
   - 0.7068251811053661 z[12,2] - obstacle_slack + 100 alpha[1,3,11]
   <= 105.0091061533376
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
 obs_alpha_sum_o2_j0: alpha[2,0,0] + alpha[2,1,0] + alpha[2,2,0]
   + alpha[2,3,0] >= 1
 obs_face_o2_e0_j0: - 0.706825181105365 z[1,0] + 0.7073882691672008 z[1,2]
   - obstacle_slack + 100 alpha[2,0,0] <= 90.86809782673562
 obs_face_o2_e1_j0: - 0.7073882691671997 z[1,0] - 0.7068251811053661 z[1,2]
   - obstacle_slack + 100 alpha[2,1,0] <= 90.8613407699936
 obs_face_o2_e2_j0: 0.706825181105365 z[1,0] - 0.7073882691672008 z[1,2]
   - obstacle_slack + 100 alpha[2,2,0] <= 107.8319021732644
 obs_face_o2_e3_j0: 0.7073882691671997 z[1,0] + 0.7068251811053661 z[1,2]
   - obstacle_slack + 100 alpha[2,3,0] <= 107.8386592300064
 obs_alpha_sum_o2_j1: alpha[2,0,1] + alpha[2,1,1] + alpha[2,2,1]
   + alpha[2,3,1] >= 1
 obs_face_o2_e0_j1: - 0.706825181105365 z[2,0] + 0.7073882691672008 z[2,2]
   - obstacle_slack + 100 alpha[2,0,1] <= 90.86809782673562
 obs_face_o2_e1_j1: - 0.7073882691671997 z[2,0] - 0.7068251811053661 z[2,2]
   - obstacle_slack + 100 alpha[2,1,1] <= 90.8613407699936
 obs_face_o2_e2_j1: 0.706825181105365 z[2,0] - 0.7073882691672008 z[2,2]
   - obstacle_slack + 100 alpha[2,2,1] <= 107.8319021732644
 obs_face_o2_e3_j1: 0.7073882691671997 z[2,0] + 0.7068251811053661 z[2,2]
   - obstacle_slack + 100 alpha[2,3,1] <= 107.8386592300064
 obs_alpha_sum_o2_j2: alpha[2,0,2] + alpha[2,1,2] + alpha[2,2,2]
   + alpha[2,3,2] >= 1
 obs_face_o2_e0_j2: - 0.706825181105365 z[3,0] + 0.7073882691672008 z[3,2]
   - obstacle_slack + 100 alpha[2,0,2] <= 90.86809782673562
 obs_face_o2_e1_j2: - 0.7073882691671997 z[3,0] - 0.7068251811053661 z[3,2]
   - obstacle_slack + 100 alpha[2,1,2] <= 90.8613407699936
 obs_face_o2_e2_j2: 0.706825181105365 z[3,0] - 0.7073882691672008 z[3,2]
   - obstacle_slack + 100 alpha[2,2,2] <= 107.8319021732644
 obs_face_o2_e3_j2: 0.7073882691671997 z[3,0] + 0.7068251811053661 z[3,2]
   - obstacle_slack + 100 alpha[2,3,2] <= 107.8386592300064
 obs_alpha_sum_o2_j3: alpha[2,0,3] + alpha[2,1,3] + alpha[2,2,3]
   + alpha[2,3,3] >= 1
 obs_face_o2_e0_j3: - 0.706825181105365 z[4,0] + 0.7073882691672008 z[4,2]
   - obstacle_slack + 100 alpha[2,0,3] <= 90.86809782673562
 obs_face_o2_e1_j3: - 0.7073882691671997 z[4,0] - 0.7068251811053661 z[4,2]
   - obstacle_slack + 100 alpha[2,1,3] <= 90.8613407699936
 obs_face_o2_e2_j3: 0.706825181105365 z[4,0] - 0.7073882691672008 z[4,2]
   - obstacle_slack + 100 alpha[2,2,3] <= 107.8319021732644
 obs_face_o2_e3_j3: 0.7073882691671997 z[4,0] + 0.7068251811053661 z[4,2]
   - obstacle_slack + 100 alpha[2,3,3] <= 107.8386592300064
 obs_alpha_sum_o2_j4: alpha[2,0,4] + alpha[2,1,4] + alpha[2,2,4]
   + alpha[2,3,4] >= 1
 obs_face_o2_e0_j4: - 0.706825181105365 z[5,0] + 0.7073882691672008 z[5,2]
   - obstacle_slack + 100 alpha[2,0,4] <= 90.86809782673562
 obs_face_o2_e1_j4: - 0.7073882691671997 z[5,0] - 0.7068251811053661 z[5,2]
   - obstacle_slack + 100 alpha[2,1,4] <= 90.8613407699936
 obs_face_o2_e2_j4: 0.706825181105365 z[5,0] - 0.7073882691672008 z[5,2]
   - obstacle_slack + 100 alpha[2,2,4] <= 107.8319021732644
 obs_face_o2_e3_j4: 0.7073882691671997 z[5,0] + 0.7068251811053661 z[5,2]
   - obstacle_slack + 100 alpha[2,3,4] <= 107.8386592300064
 obs_alpha_sum_o2_j5: alpha[2,0,5] + alpha[2,1,5] + alpha[2,2,5]
   + alpha[2,3,5] >= 1
 obs_face_o2_e0_j5: - 0.706825181105365 z[6,0] + 0.7073882691672008 z[6,2]
   - obstacle_slack + 100 alpha[2,0,5] <= 90.86809782673562
 obs_face_o2_e1_j5: - 0.7073882691671997 z[6,0] - 0.7068251811053661 z[6,2]
   - obstacle_slack + 100 alpha[2,1,5] <= 90.8613407699936
 obs_face_o2_e2_j5: 0.706825181105365 z[6,0] - 0.7073882691672008 z[6,2]
   - obstacle_slack + 100 alpha[2,2,5] <= 107.8319021732644
 obs_face_o2_e3_j5: 0.7073882691671997 z[6,0] + 0.7068251811053661 z[6,2]
   - obstacle_slack + 100 alpha[2,3,5] <= 107.8386592300064
 obs_alpha_sum_o2_j6: alpha[2,0,6] + alpha[2,1,6] + alpha[2,2,6]
   + alpha[2,3,6] >= 1
 obs_face_o2_e0_j6: - 0.706825181105365 z[7,0] + 0.7073882691672008 z[7,2]
   - obstacle_slack + 100 alpha[2,0,6] <= 90.86809782673562
 obs_face_o2_e1_j6: - 0.7073882691671997 z[7,0] - 0.7068251811053661 z[7,2]
   - obstacle_slack + 100 alpha[2,1,6] <= 90.8613407699936
 obs_face_o2_e2_j6: 0.706825181105365 z[7,0] - 0.7073882691672008 z[7,2]
   - obstacle_slack + 100 alpha[2,2,6] <= 107.8319021732644
 obs_face_o2_e3_j6: 0.7073882691671997 z[7,0] + 0.7068251811053661 z[7,2]
   - obstacle_slack + 100 alpha[2,3,6] <= 107.8386592300064
 obs_alpha_sum_o2_j7: alpha[2,0,7] + alpha[2,1,7] + alpha[2,2,7]
   + alpha[2,3,7] >= 1
 obs_face_o2_e0_j7: - 0.706825181105365 z[8,0] + 0.7073882691672008 z[8,2]
   - obstacle_slack + 100 alpha[2,0,7] <= 90.86809782673562
 obs_face_o2_e1_j7: - 0.7073882691671997 z[8,0] - 0.7068251811053661 z[8,2]
   - obstacle_slack + 100 alpha[2,1,7] <= 90.8613407699936
 obs_face_o2_e2_j7: 0.706825181105365 z[8,0] - 0.7073882691672008 z[8,2]
   - obstacle_slack + 100 alpha[2,2,7] <= 107.8319021732644
 obs_face_o2_e3_j7: 0.7073882691671997 z[8,0] + 0.7068251811053661 z[8,2]
   - obstacle_slack + 100 alpha[2,3,7] <= 107.8386592300064
 obs_alpha_sum_o2_j8: alpha[2,0,8] + alpha[2,1,8] + alpha[2,2,8]
   + alpha[2,3,8] >= 1
 obs_face_o2_e0_j8: - 0.706825181105365 z[9,0] + 0.7073882691672008 z[9,2]
   - obstacle_slack + 100 alpha[2,0,8] <= 90.86809782673562
 obs_face_o2_e1_j8: - 0.7073882691671997 z[9,0] - 0.7068251811053661 z[9,2]
   - obstacle_slack + 100 alpha[2,1,8] <= 90.8613407699936
 obs_face_o2_e2_j8: 0.706825181105365 z[9,0] - 0.7073882691672008 z[9,2]
   - obstacle_slack + 100 alpha[2,2,8] <= 107.8319021732644
 obs_face_o2_e3_j8: 0.7073882691671997 z[9,0] + 0.7068251811053661 z[9,2]
   - obstacle_slack + 100 alpha[2,3,8] <= 107.8386592300064
 obs_alpha_sum_o2_j9: alpha[2,0,9] + alpha[2,1,9] + alpha[2,2,9]
   + alpha[2,3,9] >= 1
 obs_face_o2_e0_j9: - 0.706825181105365 z[10,0]
   + 0.7073882691672008 z[10,2] - obstacle_slack + 100 alpha[2,0,9]
   <= 90.86809782673562
 obs_face_o2_e1_j9: - 0.7073882691671997 z[10,0]
   - 0.7068251811053661 z[10,2] - obstacle_slack + 100 alpha[2,1,9]
   <= 90.8613407699936
 obs_face_o2_e2_j9: 0.706825181105365 z[10,0] - 0.7073882691672008 z[10,2]
   - obstacle_slack + 100 alpha[2,2,9] <= 107.8319021732644
 obs_face_o2_e3_j9: 0.7073882691671997 z[10,0] + 0.7068251811053661 z[10,2]
   - obstacle_slack + 100 alpha[2,3,9] <= 107.8386592300064
 obs_alpha_sum_o2_j10: alpha[2,0,10] + alpha[2,1,10] + alpha[2,2,10]
   + alpha[2,3,10] >= 1
 obs_face_o2_e0_j10: - 0.706825181105365 z[11,0]
   + 0.7073882691672008 z[11,2] - obstacle_slack + 100 alpha[2,0,10]
   <= 90.86809782673562
 obs_face_o2_e1_j10: - 0.7073882691671997 z[11,0]
   - 0.7068251811053661 z[11,2] - obstacle_slack + 100 alpha[2,1,10]
   <= 90.8613407699936
 obs_face_o2_e2_j10: 0.706825181105365 z[11,0] - 0.7073882691672008 z[11,2]
   - obstacle_slack + 100 alpha[2,2,10] <= 107.8319021732644
 obs_face_o2_e3_j10: 0.7073882691671997 z[11,0]
   + 0.7068251811053661 z[11,2] - obstacle_slack + 100 alpha[2,3,10]
   <= 107.8386592300064
 obs_alpha_sum_o2_j11: alpha[2,0,11] + alpha[2,1,11] + alpha[2,2,11]
   + alpha[2,3,11] >= 1
 obs_face_o2_e0_j11: - 0.706825181105365 z[12,0]
   + 0.7073882691672008 z[12,2] - obstacle_slack + 100 alpha[2,0,11]
   <= 90.86809782673562
 obs_face_o2_e1_j11: - 0.7073882691671997 z[12,0]
   - 0.7068251811053661 z[12,2] - obstacle_slack + 100 alpha[2,1,11]
   <= 90.8613407699936
 obs_face_o2_e2_j11: 0.706825181105365 z[12,0] - 0.7073882691672008 z[12,2]
   - obstacle_slack + 100 alpha[2,2,11] <= 107.8319021732644
 obs_face_o2_e3_j11: 0.7073882691671997 z[12,0]
   + 0.7068251811053661 z[12,2] - obstacle_slack + 100 alpha[2,3,11]
   <= 107.8386592300064
 obs_beta_sum_o2_j0: beta[2,0,0] + beta[2,1,0] + beta[2,2,0] + beta[2,3,0]
   <= 1
 obs_beta_forward_o2_e0_j0: - alpha[2,0,0] + alpha[2,0,1] - beta[2,0,0]
   <= 0
 obs_beta_backward_o2_e0_j0: alpha[2,0,0] - alpha[2,0,1] - beta[2,0,0]
   <= 0
 obs_beta_forward_o2_e1_j0: - alpha[2,1,0] + alpha[2,1,1] - beta[2,1,0]
   <= 0
 obs_beta_backward_o2_e1_j0: alpha[2,1,0] - alpha[2,1,1] - beta[2,1,0]
   <= 0
 obs_beta_forward_o2_e2_j0: - alpha[2,2,0] + alpha[2,2,1] - beta[2,2,0]
   <= 0
 obs_beta_backward_o2_e2_j0: alpha[2,2,0] - alpha[2,2,1] - beta[2,2,0]
   <= 0
 obs_beta_forward_o2_e3_j0: - alpha[2,3,0] + alpha[2,3,1] - beta[2,3,0]
   <= 0
 obs_beta_backward_o2_e3_j0: alpha[2,3,0] - alpha[2,3,1] - beta[2,3,0]
   <= 0
 obs_beta_sum_o2_j1: beta[2,0,1] + beta[2,1,1] + beta[2,2,1] + beta[2,3,1]
   <= 1
 obs_beta_forward_o2_e0_j1: - alpha[2,0,1] + alpha[2,0,2] - beta[2,0,1]
   <= 0
 obs_beta_backward_o2_e0_j1: alpha[2,0,1] - alpha[2,0,2] - beta[2,0,1]
   <= 0
 obs_beta_forward_o2_e1_j1: - alpha[2,1,1] + alpha[2,1,2] - beta[2,1,1]
   <= 0
 obs_beta_backward_o2_e1_j1: alpha[2,1,1] - alpha[2,1,2] - beta[2,1,1]
   <= 0
 obs_beta_forward_o2_e2_j1: - alpha[2,2,1] + alpha[2,2,2] - beta[2,2,1]
   <= 0
 obs_beta_backward_o2_e2_j1: alpha[2,2,1] - alpha[2,2,2] - beta[2,2,1]
   <= 0
 obs_beta_forward_o2_e3_j1: - alpha[2,3,1] + alpha[2,3,2] - beta[2,3,1]
   <= 0
 obs_beta_backward_o2_e3_j1: alpha[2,3,1] - alpha[2,3,2] - beta[2,3,1]
   <= 0
 obs_beta_sum_o2_j2: beta[2,0,2] + beta[2,1,2] + beta[2,2,2] + beta[2,3,2]
   <= 1
 obs_beta_forward_o2_e0_j2: - alpha[2,0,2] + alpha[2,0,3] - beta[2,0,2]
   <= 0
 obs_beta_backward_o2_e0_j2: alpha[2,0,2] - alpha[2,0,3] - beta[2,0,2]
   <= 0
 obs_beta_forward_o2_e1_j2: - alpha[2,1,2] + alpha[2,1,3] - beta[2,1,2]
   <= 0
 obs_beta_backward_o2_e1_j2: alpha[2,1,2] - alpha[2,1,3] - beta[2,1,2]
   <= 0
 obs_beta_forward_o2_e2_j2: - alpha[2,2,2] + alpha[2,2,3] - beta[2,2,2]
   <= 0
 obs_beta_backward_o2_e2_j2: alpha[2,2,2] - alpha[2,2,3] - beta[2,2,2]
   <= 0
 obs_beta_forward_o2_e3_j2: - alpha[2,3,2] + alpha[2,3,3] - beta[2,3,2]
   <= 0
 obs_beta_backward_o2_e3_j2: alpha[2,3,2] - alpha[2,3,3] - beta[2,3,2]
   <= 0
 obs_beta_sum_o2_j3: beta[2,0,3] + beta[2,1,3] + beta[2,2,3] + beta[2,3,3]
   <= 1
 obs_beta_forward_o2_e0_j3: - alpha[2,0,3] + alpha[2,0,4] - beta[2,0,3]
   <= 0
 obs_beta_backward_o2_e0_j3: alpha[2,0,3] - alpha[2,0,4] - beta[2,0,3]
   <= 0
 obs_beta_forward_o2_e1_j3: - alpha[2,1,3] + alpha[2,1,4] - beta[2,1,3]
   <= 0
 obs_beta_backward_o2_e1_j3: alpha[2,1,3] - alpha[2,1,4] - beta[2,1,3]
   <= 0
 obs_beta_forward_o2_e2_j3: - alpha[2,2,3] + alpha[2,2,4] - beta[2,2,3]
   <= 0
 obs_beta_backward_o2_e2_j3: alpha[2,2,3] - alpha[2,2,4] - beta[2,2,3]
   <= 0
 obs_beta_forward_o2_e3_j3: - alpha[2,3,3] + alpha[2,3,4] - beta[2,3,3]
   <= 0
 obs_beta_backward_o2_e3_j3: alpha[2,3,3] - alpha[2,3,4] - beta[2,3,3]
   <= 0
 obs_beta_sum_o2_j4: beta[2,0,4] + beta[2,1,4] + beta[2,2,4] + beta[2,3,4]
   <= 1
 obs_beta_forward_o2_e0_j4: - alpha[2,0,4] + alpha[2,0,5] - beta[2,0,4]
   <= 0
 obs_beta_backward_o2_e0_j4: alpha[2,0,4] - alpha[2,0,5] - beta[2,0,4]
   <= 0
 obs_beta_forward_o2_e1_j4: - alpha[2,1,4] + alpha[2,1,5] - beta[2,1,4]
   <= 0
 obs_beta_backward_o2_e1_j4: alpha[2,1,4] - alpha[2,1,5] - beta[2,1,4]
   <= 0
 obs_beta_forward_o2_e2_j4: - alpha[2,2,4] + alpha[2,2,5] - beta[2,2,4]
   <= 0
 obs_beta_backward_o2_e2_j4: alpha[2,2,4] - alpha[2,2,5] - beta[2,2,4]
   <= 0
 obs_beta_forward_o2_e3_j4: - alpha[2,3,4] + alpha[2,3,5] - beta[2,3,4]
   <= 0
 obs_beta_backward_o2_e3_j4: alpha[2,3,4] - alpha[2,3,5] - beta[2,3,4]
   <= 0
 obs_beta_sum_o2_j5: beta[2,0,5] + beta[2,1,5] + beta[2,2,5] + beta[2,3,5]
   <= 1
 obs_beta_forward_o2_e0_j5: - alpha[2,0,5] + alpha[2,0,6] - beta[2,0,5]
   <= 0
 obs_beta_backward_o2_e0_j5: alpha[2,0,5] - alpha[2,0,6] - beta[2,0,5]
   <= 0
 obs_beta_forward_o2_e1_j5: - alpha[2,1,5] + alpha[2,1,6] - beta[2,1,5]
   <= 0
 obs_beta_backward_o2_e1_j5: alpha[2,1,5] - alpha[2,1,6] - beta[2,1,5]
   <= 0
 obs_beta_forward_o2_e2_j5: - alpha[2,2,5] + alpha[2,2,6] - beta[2,2,5]
   <= 0
 obs_beta_backward_o2_e2_j5: alpha[2,2,5] - alpha[2,2,6] - beta[2,2,5]
   <= 0
 obs_beta_forward_o2_e3_j5: - alpha[2,3,5] + alpha[2,3,6] - beta[2,3,5]
   <= 0
 obs_beta_backward_o2_e3_j5: alpha[2,3,5] - alpha[2,3,6] - beta[2,3,5]
   <= 0
 obs_beta_sum_o2_j6: beta[2,0,6] + beta[2,1,6] + beta[2,2,6] + beta[2,3,6]
   <= 1
 obs_beta_forward_o2_e0_j6: - alpha[2,0,6] + alpha[2,0,7] - beta[2,0,6]
   <= 0
 obs_beta_backward_o2_e0_j6: alpha[2,0,6] - alpha[2,0,7] - beta[2,0,6]
   <= 0
 obs_beta_forward_o2_e1_j6: - alpha[2,1,6] + alpha[2,1,7] - beta[2,1,6]
   <= 0
 obs_beta_backward_o2_e1_j6: alpha[2,1,6] - alpha[2,1,7] - beta[2,1,6]
   <= 0
 obs_beta_forward_o2_e2_j6: - alpha[2,2,6] + alpha[2,2,7] - beta[2,2,6]
   <= 0
 obs_beta_backward_o2_e2_j6: alpha[2,2,6] - alpha[2,2,7] - beta[2,2,6]
   <= 0
 obs_beta_forward_o2_e3_j6: - alpha[2,3,6] + alpha[2,3,7] - beta[2,3,6]
   <= 0
 obs_beta_backward_o2_e3_j6: alpha[2,3,6] - alpha[2,3,7] - beta[2,3,6]
   <= 0
 obs_beta_sum_o2_j7: beta[2,0,7] + beta[2,1,7] + beta[2,2,7] + beta[2,3,7]
   <= 1
 obs_beta_forward_o2_e0_j7: - alpha[2,0,7] + alpha[2,0,8] - beta[2,0,7]
   <= 0
 obs_beta_backward_o2_e0_j7: alpha[2,0,7] - alpha[2,0,8] - beta[2,0,7]
   <= 0
 obs_beta_forward_o2_e1_j7: - alpha[2,1,7] + alpha[2,1,8] - beta[2,1,7]
   <= 0
 obs_beta_backward_o2_e1_j7: alpha[2,1,7] - alpha[2,1,8] - beta[2,1,7]
   <= 0
 obs_beta_forward_o2_e2_j7: - alpha[2,2,7] + alpha[2,2,8] - beta[2,2,7]
   <= 0
 obs_beta_backward_o2_e2_j7: alpha[2,2,7] - alpha[2,2,8] - beta[2,2,7]
   <= 0
 obs_beta_forward_o2_e3_j7: - alpha[2,3,7] + alpha[2,3,8] - beta[2,3,7]
   <= 0
 obs_beta_backward_o2_e3_j7: alpha[2,3,7] - alpha[2,3,8] - beta[2,3,7]
   <= 0
 obs_beta_sum_o2_j8: beta[2,0,8] + beta[2,1,8] + beta[2,2,8] + beta[2,3,8]
   <= 1
 obs_beta_forward_o2_e0_j8: - alpha[2,0,8] + alpha[2,0,9] - beta[2,0,8]
   <= 0
 obs_beta_backward_o2_e0_j8: alpha[2,0,8] - alpha[2,0,9] - beta[2,0,8]
   <= 0
 obs_beta_forward_o2_e1_j8: - alpha[2,1,8] + alpha[2,1,9] - beta[2,1,8]
   <= 0
 obs_beta_backward_o2_e1_j8: alpha[2,1,8] - alpha[2,1,9] - beta[2,1,8]
   <= 0
 obs_beta_forward_o2_e2_j8: - alpha[2,2,8] + alpha[2,2,9] - beta[2,2,8]
   <= 0
 obs_beta_backward_o2_e2_j8: alpha[2,2,8] - alpha[2,2,9] - beta[2,2,8]
   <= 0
 obs_beta_forward_o2_e3_j8: - alpha[2,3,8] + alpha[2,3,9] - beta[2,3,8]
   <= 0
 obs_beta_backward_o2_e3_j8: alpha[2,3,8] - alpha[2,3,9] - beta[2,3,8]
   <= 0
 obs_beta_sum_o2_j9: beta[2,0,9] + beta[2,1,9] + beta[2,2,9] + beta[2,3,9]
   <= 1
 obs_beta_forward_o2_e0_j9: - alpha[2,0,9] + alpha[2,0,10] - beta[2,0,9]
   <= 0
 obs_beta_backward_o2_e0_j9: alpha[2,0,9] - alpha[2,0,10] - beta[2,0,9]
   <= 0
 obs_beta_forward_o2_e1_j9: - alpha[2,1,9] + alpha[2,1,10] - beta[2,1,9]
   <= 0
 obs_beta_backward_o2_e1_j9: alpha[2,1,9] - alpha[2,1,10] - beta[2,1,9]
   <= 0
 obs_beta_forward_o2_e2_j9: - alpha[2,2,9] + alpha[2,2,10] - beta[2,2,9]
   <= 0
 obs_beta_backward_o2_e2_j9: alpha[2,2,9] - alpha[2,2,10] - beta[2,2,9]
   <= 0
 obs_beta_forward_o2_e3_j9: - alpha[2,3,9] + alpha[2,3,10] - beta[2,3,9]
   <= 0
 obs_beta_backward_o2_e3_j9: alpha[2,3,9] - alpha[2,3,10] - beta[2,3,9]
   <= 0
 obs_beta_sum_o2_j10: beta[2,0,10] + beta[2,1,10] + beta[2,2,10]
   + beta[2,3,10] <= 1
 obs_beta_forward_o2_e0_j10: - alpha[2,0,10] + alpha[2,0,11] - beta[2,0,10]
   <= 0
 obs_beta_backward_o2_e0_j10: alpha[2,0,10] - alpha[2,0,11] - beta[2,0,10]
   <= 0
 obs_beta_forward_o2_e1_j10: - alpha[2,1,10] + alpha[2,1,11] - beta[2,1,10]
   <= 0
 obs_beta_backward_o2_e1_j10: alpha[2,1,10] - alpha[2,1,11] - beta[2,1,10]
   <= 0
 obs_beta_forward_o2_e2_j10: - alpha[2,2,10] + alpha[2,2,11] - beta[2,2,10]
   <= 0
 obs_beta_backward_o2_e2_j10: alpha[2,2,10] - alpha[2,2,11] - beta[2,2,10]
   <= 0
 obs_beta_forward_o2_e3_j10: - alpha[2,3,10] + alpha[2,3,11] - beta[2,3,10]
   <= 0
 obs_beta_backward_o2_e3_j10: alpha[2,3,10] - alpha[2,3,11] - beta[2,3,10]
   <= 0
 obs_alpha_sum_o3_j0: alpha[3,0,0] + alpha[3,1,0] + alpha[3,2,0]
   + alpha[3,3,0] >= 1
 obs_face_o3_e0_j0: 0.706825181105366 z[1,0] + 0.7073882691671997 z[1,2]
   - obstacle_slack + 100 alpha[3,0,0] <= 110.6592028976859
 obs_face_o3_e1_j0: - 0.7073882691671984 z[1,0] + 0.7068251811053671 z[1,2]
   - obstacle_slack + 100 alpha[3,1,0] <= 88.03178769332483
 obs_face_o3_e2_j0: - 0.706825181105365 z[1,0] - 0.7073882691672008 z[1,2]
   - obstacle_slack + 100 alpha[3,2,0] <= 88.04079710231416
 obs_face_o3_e3_j0: 0.7073882691671997 z[1,0] - 0.7068251811053661 z[1,2]
   - obstacle_slack + 100 alpha[3,3,0] <= 110.6682123066752
 obs_alpha_sum_o3_j1: alpha[3,0,1] + alpha[3,1,1] + alpha[3,2,1]
   + alpha[3,3,1] >= 1
 obs_face_o3_e0_j1: 0.706825181105366 z[2,0] + 0.7073882691671997 z[2,2]
   - obstacle_slack + 100 alpha[3,0,1] <= 110.6592028976859
 obs_face_o3_e1_j1: - 0.7073882691671984 z[2,0] + 0.7068251811053671 z[2,2]
   - obstacle_slack + 100 alpha[3,1,1] <= 88.03178769332483
 obs_face_o3_e2_j1: - 0.706825181105365 z[2,0] - 0.7073882691672008 z[2,2]
   - obstacle_slack + 100 alpha[3,2,1] <= 88.04079710231416
 obs_face_o3_e3_j1: 0.7073882691671997 z[2,0] - 0.7068251811053661 z[2,2]
   - obstacle_slack + 100 alpha[3,3,1] <= 110.6682123066752
 obs_alpha_sum_o3_j2: alpha[3,0,2] + alpha[3,1,2] + alpha[3,2,2]
   + alpha[3,3,2] >= 1
 obs_face_o3_e0_j2: 0.706825181105366 z[3,0] + 0.7073882691671997 z[3,2]
   - obstacle_slack + 100 alpha[3,0,2] <= 110.6592028976859
 obs_face_o3_e1_j2: - 0.7073882691671984 z[3,0] + 0.7068251811053671 z[3,2]
   - obstacle_slack + 100 alpha[3,1,2] <= 88.03178769332483
 obs_face_o3_e2_j2: - 0.706825181105365 z[3,0] - 0.7073882691672008 z[3,2]
   - obstacle_slack + 100 alpha[3,2,2] <= 88.04079710231416
 obs_face_o3_e3_j2: 0.7073882691671997 z[3,0] - 0.7068251811053661 z[3,2]
   - obstacle_slack + 100 alpha[3,3,2] <= 110.6682123066752
 obs_alpha_sum_o3_j3: alpha[3,0,3] + alpha[3,1,3] + alpha[3,2,3]
   + alpha[3,3,3] >= 1
 obs_face_o3_e0_j3: 0.706825181105366 z[4,0] + 0.7073882691671997 z[4,2]
   - obstacle_slack + 100 alpha[3,0,3] <= 110.6592028976859
 obs_face_o3_e1_j3: - 0.7073882691671984 z[4,0] + 0.7068251811053671 z[4,2]
   - obstacle_slack + 100 alpha[3,1,3] <= 88.03178769332483
 obs_face_o3_e2_j3: - 0.706825181105365 z[4,0] - 0.7073882691672008 z[4,2]
   - obstacle_slack + 100 alpha[3,2,3] <= 88.04079710231416
 obs_face_o3_e3_j3: 0.7073882691671997 z[4,0] - 0.7068251811053661 z[4,2]
   - obstacle_slack + 100 alpha[3,3,3] <= 110.6682123066752
 obs_alpha_sum_o3_j4: alpha[3,0,4] + alpha[3,1,4] + alpha[3,2,4]
   + alpha[3,3,4] >= 1
 obs_face_o3_e0_j4: 0.706825181105366 z[5,0] + 0.7073882691671997 z[5,2]
   - obstacle_slack + 100 alpha[3,0,4] <= 110.6592028976859
 obs_face_o3_e1_j4: - 0.7073882691671984 z[5,0] + 0.7068251811053671 z[5,2]
   - obstacle_slack + 100 alpha[3,1,4] <= 88.03178769332483
 obs_face_o3_e2_j4: - 0.706825181105365 z[5,0] - 0.7073882691672008 z[5,2]
   - obstacle_slack + 100 alpha[3,2,4] <= 88.04079710231416
 obs_face_o3_e3_j4: 0.7073882691671997 z[5,0] - 0.7068251811053661 z[5,2]
   - obstacle_slack + 100 alpha[3,3,4] <= 110.6682123066752
 obs_alpha_sum_o3_j5: alpha[3,0,5] + alpha[3,1,5] + alpha[3,2,5]
   + alpha[3,3,5] >= 1
 obs_face_o3_e0_j5: 0.706825181105366 z[6,0] + 0.7073882691671997 z[6,2]
   - obstacle_slack + 100 alpha[3,0,5] <= 110.6592028976859
 obs_face_o3_e1_j5: - 0.7073882691671984 z[6,0] + 0.7068251811053671 z[6,2]
   - obstacle_slack + 100 alpha[3,1,5] <= 88.03178769332483
 obs_face_o3_e2_j5: - 0.706825181105365 z[6,0] - 0.7073882691672008 z[6,2]
   - obstacle_slack + 100 alpha[3,2,5] <= 88.04079710231416
 obs_face_o3_e3_j5: 0.7073882691671997 z[6,0] - 0.7068251811053661 z[6,2]
   - obstacle_slack + 100 alpha[3,3,5] <= 110.6682123066752
 obs_alpha_sum_o3_j6: alpha[3,0,6] + alpha[3,1,6] + alpha[3,2,6]
   + alpha[3,3,6] >= 1
 obs_face_o3_e0_j6: 0.706825181105366 z[7,0] + 0.7073882691671997 z[7,2]
   - obstacle_slack + 100 alpha[3,0,6] <= 110.6592028976859
 obs_face_o3_e1_j6: - 0.7073882691671984 z[7,0] + 0.7068251811053671 z[7,2]
   - obstacle_slack + 100 alpha[3,1,6] <= 88.03178769332483
 obs_face_o3_e2_j6: - 0.706825181105365 z[7,0] - 0.7073882691672008 z[7,2]
   - obstacle_slack + 100 alpha[3,2,6] <= 88.04079710231416
 obs_face_o3_e3_j6: 0.7073882691671997 z[7,0] - 0.7068251811053661 z[7,2]
   - obstacle_slack + 100 alpha[3,3,6] <= 110.6682123066752
 obs_alpha_sum_o3_j7: alpha[3,0,7] + alpha[3,1,7] + alpha[3,2,7]
   + alpha[3,3,7] >= 1
 obs_face_o3_e0_j7: 0.706825181105366 z[8,0] + 0.7073882691671997 z[8,2]
   - obstacle_slack + 100 alpha[3,0,7] <= 110.6592028976859
 obs_face_o3_e1_j7: - 0.7073882691671984 z[8,0] + 0.7068251811053671 z[8,2]
   - obstacle_slack + 100 alpha[3,1,7] <= 88.03178769332483
 obs_face_o3_e2_j7: - 0.706825181105365 z[8,0] - 0.7073882691672008 z[8,2]
   - obstacle_slack + 100 alpha[3,2,7] <= 88.04079710231416
 obs_face_o3_e3_j7: 0.7073882691671997 z[8,0] - 0.7068251811053661 z[8,2]
   - obstacle_slack + 100 alpha[3,3,7] <= 110.6682123066752
 obs_alpha_sum_o3_j8: alpha[3,0,8] + alpha[3,1,8] + alpha[3,2,8]
   + alpha[3,3,8] >= 1
 obs_face_o3_e0_j8: 0.706825181105366 z[9,0] + 0.7073882691671997 z[9,2]
   - obstacle_slack + 100 alpha[3,0,8] <= 110.6592028976859
 obs_face_o3_e1_j8: - 0.7073882691671984 z[9,0] + 0.7068251811053671 z[9,2]
   - obstacle_slack + 100 alpha[3,1,8] <= 88.03178769332483
 obs_face_o3_e2_j8: - 0.706825181105365 z[9,0] - 0.7073882691672008 z[9,2]
   - obstacle_slack + 100 alpha[3,2,8] <= 88.04079710231416
 obs_face_o3_e3_j8: 0.7073882691671997 z[9,0] - 0.7068251811053661 z[9,2]
   - obstacle_slack + 100 alpha[3,3,8] <= 110.6682123066752
 obs_alpha_sum_o3_j9: alpha[3,0,9] + alpha[3,1,9] + alpha[3,2,9]
   + alpha[3,3,9] >= 1
 obs_face_o3_e0_j9: 0.706825181105366 z[10,0] + 0.7073882691671997 z[10,2]
   - obstacle_slack + 100 alpha[3,0,9] <= 110.6592028976859
 obs_face_o3_e1_j9: - 0.7073882691671984 z[10,0]
   + 0.7068251811053671 z[10,2] - obstacle_slack + 100 alpha[3,1,9]
   <= 88.03178769332483
 obs_face_o3_e2_j9: - 0.706825181105365 z[10,0]
   - 0.7073882691672008 z[10,2] - obstacle_slack + 100 alpha[3,2,9]
   <= 88.04079710231416
 obs_face_o3_e3_j9: 0.7073882691671997 z[10,0] - 0.7068251811053661 z[10,2]
   - obstacle_slack + 100 alpha[3,3,9] <= 110.6682123066752
 obs_alpha_sum_o3_j10: alpha[3,0,10] + alpha[3,1,10] + alpha[3,2,10]
   + alpha[3,3,10] >= 1
 obs_face_o3_e0_j10: 0.706825181105366 z[11,0] + 0.7073882691671997 z[11,2]
   - obstacle_slack + 100 alpha[3,0,10] <= 110.6592028976859
 obs_face_o3_e1_j10: - 0.7073882691671984 z[11,0]
   + 0.7068251811053671 z[11,2] - obstacle_slack + 100 alpha[3,1,10]
   <= 88.03178769332483
 obs_face_o3_e2_j10: - 0.706825181105365 z[11,0]
   - 0.7073882691672008 z[11,2] - obstacle_slack + 100 alpha[3,2,10]
   <= 88.04079710231416
 obs_face_o3_e3_j10: 0.7073882691671997 z[11,0]
   - 0.7068251811053661 z[11,2] - obstacle_slack + 100 alpha[3,3,10]
   <= 110.6682123066752
 obs_alpha_sum_o3_j11: alpha[3,0,11] + alpha[3,1,11] + alpha[3,2,11]
   + alpha[3,3,11] >= 1
 obs_face_o3_e0_j11: 0.706825181105366 z[12,0] + 0.7073882691671997 z[12,2]
   - obstacle_slack + 100 alpha[3,0,11] <= 110.6592028976859
 obs_face_o3_e1_j11: - 0.7073882691671984 z[12,0]
   + 0.7068251811053671 z[12,2] - obstacle_slack + 100 alpha[3,1,11]
   <= 88.03178769332483
 obs_face_o3_e2_j11: - 0.706825181105365 z[12,0]
   - 0.7073882691672008 z[12,2] - obstacle_slack + 100 alpha[3,2,11]
   <= 88.04079710231416
 obs_face_o3_e3_j11: 0.7073882691671997 z[12,0]
   - 0.7068251811053661 z[12,2] - obstacle_slack + 100 alpha[3,3,11]
   <= 110.6682123066752
 obs_beta_sum_o3_j0: beta[3,0,0] + beta[3,1,0] + beta[3,2,0] + beta[3,3,0]
   <= 1
 obs_beta_forward_o3_e0_j0: - alpha[3,0,0] + alpha[3,0,1] - beta[3,0,0]
   <= 0
 obs_beta_backward_o3_e0_j0: alpha[3,0,0] - alpha[3,0,1] - beta[3,0,0]
   <= 0
 obs_beta_forward_o3_e1_j0: - alpha[3,1,0] + alpha[3,1,1] - beta[3,1,0]
   <= 0
 obs_beta_backward_o3_e1_j0: alpha[3,1,0] - alpha[3,1,1] - beta[3,1,0]
   <= 0
 obs_beta_forward_o3_e2_j0: - alpha[3,2,0] + alpha[3,2,1] - beta[3,2,0]
   <= 0
 obs_beta_backward_o3_e2_j0: alpha[3,2,0] - alpha[3,2,1] - beta[3,2,0]
   <= 0
 obs_beta_forward_o3_e3_j0: - alpha[3,3,0] + alpha[3,3,1] - beta[3,3,0]
   <= 0
 obs_beta_backward_o3_e3_j0: alpha[3,3,0] - alpha[3,3,1] - beta[3,3,0]
   <= 0
 obs_beta_sum_o3_j1: beta[3,0,1] + beta[3,1,1] + beta[3,2,1] + beta[3,3,1]
   <= 1
 obs_beta_forward_o3_e0_j1: - alpha[3,0,1] + alpha[3,0,2] - beta[3,0,1]
   <= 0
 obs_beta_backward_o3_e0_j1: alpha[3,0,1] - alpha[3,0,2] - beta[3,0,1]
   <= 0
 obs_beta_forward_o3_e1_j1: - alpha[3,1,1] + alpha[3,1,2] - beta[3,1,1]
   <= 0
 obs_beta_backward_o3_e1_j1: alpha[3,1,1] - alpha[3,1,2] - beta[3,1,1]
   <= 0
 obs_beta_forward_o3_e2_j1: - alpha[3,2,1] + alpha[3,2,2] - beta[3,2,1]
   <= 0
 obs_beta_backward_o3_e2_j1: alpha[3,2,1] - alpha[3,2,2] - beta[3,2,1]
   <= 0
 obs_beta_forward_o3_e3_j1: - alpha[3,3,1] + alpha[3,3,2] - beta[3,3,1]
   <= 0
 obs_beta_backward_o3_e3_j1: alpha[3,3,1] - alpha[3,3,2] - beta[3,3,1]
   <= 0
 obs_beta_sum_o3_j2: beta[3,0,2] + beta[3,1,2] + beta[3,2,2] + beta[3,3,2]
   <= 1
 obs_beta_forward_o3_e0_j2: - alpha[3,0,2] + alpha[3,0,3] - beta[3,0,2]
   <= 0
 obs_beta_backward_o3_e0_j2: alpha[3,0,2] - alpha[3,0,3] - beta[3,0,2]
   <= 0
 obs_beta_forward_o3_e1_j2: - alpha[3,1,2] + alpha[3,1,3] - beta[3,1,2]
   <= 0
 obs_beta_backward_o3_e1_j2: alpha[3,1,2] - alpha[3,1,3] - beta[3,1,2]
   <= 0
 obs_beta_forward_o3_e2_j2: - alpha[3,2,2] + alpha[3,2,3] - beta[3,2,2]
   <= 0
 obs_beta_backward_o3_e2_j2: alpha[3,2,2] - alpha[3,2,3] - beta[3,2,2]
   <= 0
 obs_beta_forward_o3_e3_j2: - alpha[3,3,2] + alpha[3,3,3] - beta[3,3,2]
   <= 0
 obs_beta_backward_o3_e3_j2: alpha[3,3,2] - alpha[3,3,3] - beta[3,3,2]
   <= 0
 obs_beta_sum_o3_j3: beta[3,0,3] + beta[3,1,3] + beta[3,2,3] + beta[3,3,3]
   <= 1
 obs_beta_forward_o3_e0_j3: - alpha[3,0,3] + alpha[3,0,4] - beta[3,0,3]
   <= 0
 obs_beta_backward_o3_e0_j3: alpha[3,0,3] - alpha[3,0,4] - beta[3,0,3]
   <= 0
 obs_beta_forward_o3_e1_j3: - alpha[3,1,3] + alpha[3,1,4] - beta[3,1,3]
   <= 0
 obs_beta_backward_o3_e1_j3: alpha[3,1,3] - alpha[3,1,4] - beta[3,1,3]
   <= 0
 obs_beta_forward_o3_e2_j3: - alpha[3,2,3] + alpha[3,2,4] - beta[3,2,3]
   <= 0
 obs_beta_backward_o3_e2_j3: alpha[3,2,3] - alpha[3,2,4] - beta[3,2,3]
   <= 0
 obs_beta_forward_o3_e3_j3: - alpha[3,3,3] + alpha[3,3,4] - beta[3,3,3]
   <= 0
 obs_beta_backward_o3_e3_j3: alpha[3,3,3] - alpha[3,3,4] - beta[3,3,3]
   <= 0
 obs_beta_sum_o3_j4: beta[3,0,4] + beta[3,1,4] + beta[3,2,4] + beta[3,3,4]
   <= 1
 obs_beta_forward_o3_e0_j4: - alpha[3,0,4] + alpha[3,0,5] - beta[3,0,4]
   <= 0
 obs_beta_backward_o3_e0_j4: alpha[3,0,4] - alpha[3,0,5] - beta[3,0,4]
   <= 0
 obs_beta_forward_o3_e1_j4: - alpha[3,1,4] + alpha[3,1,5] - beta[3,1,4]
   <= 0
 obs_beta_backward_o3_e1_j4: alpha[3,1,4] - alpha[3,1,5] - beta[3,1,4]
   <= 0
 obs_beta_forward_o3_e2_j4: - alpha[3,2,4] + alpha[3,2,5] - beta[3,2,4]
   <= 0
 obs_beta_backward_o3_e2_j4: alpha[3,2,4] - alpha[3,2,5] - beta[3,2,4]
   <= 0
 obs_beta_forward_o3_e3_j4: - alpha[3,3,4] + alpha[3,3,5] - beta[3,3,4]
   <= 0
 obs_beta_backward_o3_e3_j4: alpha[3,3,4] - alpha[3,3,5] - beta[3,3,4]
   <= 0
 obs_beta_sum_o3_j5: beta[3,0,5] + beta[3,1,5] + beta[3,2,5] + beta[3,3,5]
   <= 1
 obs_beta_forward_o3_e0_j5: - alpha[3,0,5] + alpha[3,0,6] - beta[3,0,5]
   <= 0
 obs_beta_backward_o3_e0_j5: alpha[3,0,5] - alpha[3,0,6] - beta[3,0,5]
   <= 0
 obs_beta_forward_o3_e1_j5: - alpha[3,1,5] + alpha[3,1,6] - beta[3,1,5]
   <= 0
 obs_beta_backward_o3_e1_j5: alpha[3,1,5] - alpha[3,1,6] - beta[3,1,5]
   <= 0
 obs_beta_forward_o3_e2_j5: - alpha[3,2,5] + alpha[3,2,6] - beta[3,2,5]
   <= 0
 obs_beta_backward_o3_e2_j5: alpha[3,2,5] - alpha[3,2,6] - beta[3,2,5]
   <= 0
 obs_beta_forward_o3_e3_j5: - alpha[3,3,5] + alpha[3,3,6] - beta[3,3,5]
   <= 0
 obs_beta_backward_o3_e3_j5: alpha[3,3,5] - alpha[3,3,6] - beta[3,3,5]
   <= 0
 obs_beta_sum_o3_j6: beta[3,0,6] + beta[3,1,6] + beta[3,2,6] + beta[3,3,6]
   <= 1
 obs_beta_forward_o3_e0_j6: - alpha[3,0,6] + alpha[3,0,7] - beta[3,0,6]
   <= 0
 obs_beta_backward_o3_e0_j6: alpha[3,0,6] - alpha[3,0,7] - beta[3,0,6]
   <= 0
 obs_beta_forward_o3_e1_j6: - alpha[3,1,6] + alpha[3,1,7] - beta[3,1,6]
   <= 0
 obs_beta_backward_o3_e1_j6: alpha[3,1,6] - alpha[3,1,7] - beta[3,1,6]
   <= 0
 obs_beta_forward_o3_e2_j6: - alpha[3,2,6] + alpha[3,2,7] - beta[3,2,6]
   <= 0
 obs_beta_backward_o3_e2_j6: alpha[3,2,6] - alpha[3,2,7] - beta[3,2,6]
   <= 0
 obs_beta_forward_o3_e3_j6: - alpha[3,3,6] + alpha[3,3,7] - beta[3,3,6]
   <= 0
 obs_beta_backward_o3_e3_j6: alpha[3,3,6] - alpha[3,3,7] - beta[3,3,6]
   <= 0
 obs_beta_sum_o3_j7: beta[3,0,7] + beta[3,1,7] + beta[3,2,7] + beta[3,3,7]
   <= 1
 obs_beta_forward_o3_e0_j7: - alpha[3,0,7] + alpha[3,0,8] - beta[3,0,7]
   <= 0
 obs_beta_backward_o3_e0_j7: alpha[3,0,7] - alpha[3,0,8] - beta[3,0,7]
   <= 0
 obs_beta_forward_o3_e1_j7: - alpha[3,1,7] + alpha[3,1,8] - beta[3,1,7]
   <= 0
 obs_beta_backward_o3_e1_j7: alpha[3,1,7] - alpha[3,1,8] - beta[3,1,7]
   <= 0
 obs_beta_forward_o3_e2_j7: - alpha[3,2,7] + alpha[3,2,8] - beta[3,2,7]
   <= 0
 obs_beta_backward_o3_e2_j7: alpha[3,2,7] - alpha[3,2,8] - beta[3,2,7]
   <= 0
 obs_beta_forward_o3_e3_j7: - alpha[3,3,7] + alpha[3,3,8] - beta[3,3,7]
   <= 0
 obs_beta_backward_o3_e3_j7: alpha[3,3,7] - alpha[3,3,8] - beta[3,3,7]
   <= 0
 obs_beta_sum_o3_j8: beta[3,0,8] + beta[3,1,8] + beta[3,2,8] + beta[3,3,8]
   <= 1
 obs_beta_forward_o3_e0_j8: - alpha[3,0,8] + alpha[3,0,9] - beta[3,0,8]
   <= 0
 obs_beta_backward_o3_e0_j8: alpha[3,0,8] - alpha[3,0,9] - beta[3,0,8]
   <= 0
 obs_beta_forward_o3_e1_j8: - alpha[3,1,8] + alpha[3,1,9] - beta[3,1,8]
   <= 0
 obs_beta_backward_o3_e1_j8: alpha[3,1,8] - alpha[3,1,9] - beta[3,1,8]
   <= 0
 obs_beta_forward_o3_e2_j8: - alpha[3,2,8] + alpha[3,2,9] - beta[3,2,8]
   <= 0
 obs_beta_backward_o3_e2_j8: alpha[3,2,8] - alpha[3,2,9] - beta[3,2,8]
   <= 0
 obs_beta_forward_o3_e3_j8: - alpha[3,3,8] + alpha[3,3,9] - beta[3,3,8]
   <= 0
 obs_beta_backward_o3_e3_j8: alpha[3,3,8] - alpha[3,3,9] - beta[3,3,8]
   <= 0
 obs_beta_sum_o3_j9: beta[3,0,9] + beta[3,1,9] + beta[3,2,9] + beta[3,3,9]
   <= 1
 obs_beta_forward_o3_e0_j9: - alpha[3,0,9] + alpha[3,0,10] - beta[3,0,9]
   <= 0
 obs_beta_backward_o3_e0_j9: alpha[3,0,9] - alpha[3,0,10] - beta[3,0,9]
   <= 0
 obs_beta_forward_o3_e1_j9: - alpha[3,1,9] + alpha[3,1,10] - beta[3,1,9]
   <= 0
 obs_beta_backward_o3_e1_j9: alpha[3,1,9] - alpha[3,1,10] - beta[3,1,9]
   <= 0
 obs_beta_forward_o3_e2_j9: - alpha[3,2,9] + alpha[3,2,10] - beta[3,2,9]
   <= 0
 obs_beta_backward_o3_e2_j9: alpha[3,2,9] - alpha[3,2,10] - beta[3,2,9]
   <= 0
 obs_beta_forward_o3_e3_j9: - alpha[3,3,9] + alpha[3,3,10] - beta[3,3,9]
   <= 0
 obs_beta_backward_o3_e3_j9: alpha[3,3,9] - alpha[3,3,10] - beta[3,3,9]
   <= 0
 obs_beta_sum_o3_j10: beta[3,0,10] + beta[3,1,10] + beta[3,2,10]
   + beta[3,3,10] <= 1
 obs_beta_forward_o3_e0_j10: - alpha[3,0,10] + alpha[3,0,11] - beta[3,0,10]
   <= 0
 obs_beta_backward_o3_e0_j10: alpha[3,0,10] - alpha[3,0,11] - beta[3,0,10]
   <= 0
 obs_beta_forward_o3_e1_j10: - alpha[3,1,10] + alpha[3,1,11] - beta[3,1,10]
   <= 0
 obs_beta_backward_o3_e1_j10: alpha[3,1,10] - alpha[3,1,11] - beta[3,1,10]
   <= 0
 obs_beta_forward_o3_e2_j10: - alpha[3,2,10] + alpha[3,2,11] - beta[3,2,10]
   <= 0
 obs_beta_backward_o3_e2_j10: alpha[3,2,10] - alpha[3,2,11] - beta[3,2,10]
   <= 0
 obs_beta_forward_o3_e3_j10: - alpha[3,3,10] + alpha[3,3,11] - beta[3,3,10]
   <= 0
 obs_beta_backward_o3_e3_j10: alpha[3,3,10] - alpha[3,3,11] - beta[3,3,10]
   <= 0
 obs_alpha_sum_o4_j0: alpha[4,0,0] + alpha[4,1,0] + alpha[4,2,0]
   + alpha[4,3,0] >= 1
 obs_face_o4_e0_j0: - 0.706825181105366 z[1,0] + 0.7073882691671997 z[1,2]
   - obstacle_slack + 100 alpha[4,0,0] <= 85.21349637789268
 obs_face_o4_e1_j0: - 0.7073882691671984 z[1,0] - 0.7068251811053671 z[1,2]
   - obstacle_slack + 100 alpha[4,1,0] <= 85.20223461665603
 obs_face_o4_e2_j0: 0.706825181105366 z[1,0] - 0.7073882691671997 z[1,2]
   - obstacle_slack + 100 alpha[4,2,0] <= 113.4865036221073
 obs_face_o4_e3_j0: 0.7073882691671984 z[1,0] + 0.7068251811053671 z[1,2]
   - obstacle_slack + 100 alpha[4,3,0] <= 113.497765383344
 obs_alpha_sum_o4_j1: alpha[4,0,1] + alpha[4,1,1] + alpha[4,2,1]
   + alpha[4,3,1] >= 1
 obs_face_o4_e0_j1: - 0.706825181105366 z[2,0] + 0.7073882691671997 z[2,2]
   - obstacle_slack + 100 alpha[4,0,1] <= 85.21349637789268
 obs_face_o4_e1_j1: - 0.7073882691671984 z[2,0] - 0.7068251811053671 z[2,2]
   - obstacle_slack + 100 alpha[4,1,1] <= 85.20223461665603
 obs_face_o4_e2_j1: 0.706825181105366 z[2,0] - 0.7073882691671997 z[2,2]
   - obstacle_slack + 100 alpha[4,2,1] <= 113.4865036221073
 obs_face_o4_e3_j1: 0.7073882691671984 z[2,0] + 0.7068251811053671 z[2,2]
   - obstacle_slack + 100 alpha[4,3,1] <= 113.497765383344
 obs_alpha_sum_o4_j2: alpha[4,0,2] + alpha[4,1,2] + alpha[4,2,2]
   + alpha[4,3,2] >= 1
 obs_face_o4_e0_j2: - 0.706825181105366 z[3,0] + 0.7073882691671997 z[3,2]
   - obstacle_slack + 100 alpha[4,0,2] <= 85.21349637789268
 obs_face_o4_e1_j2: - 0.7073882691671984 z[3,0] - 0.7068251811053671 z[3,2]
   - obstacle_slack + 100 alpha[4,1,2] <= 85.20223461665603
 obs_face_o4_e2_j2: 0.706825181105366 z[3,0] - 0.7073882691671997 z[3,2]
   - obstacle_slack + 100 alpha[4,2,2] <= 113.4865036221073
 obs_face_o4_e3_j2: 0.7073882691671984 z[3,0] + 0.7068251811053671 z[3,2]
   - obstacle_slack + 100 alpha[4,3,2] <= 113.497765383344
 obs_alpha_sum_o4_j3: alpha[4,0,3] + alpha[4,1,3] + alpha[4,2,3]
   + alpha[4,3,3] >= 1
 obs_face_o4_e0_j3: - 0.706825181105366 z[4,0] + 0.7073882691671997 z[4,2]
   - obstacle_slack + 100 alpha[4,0,3] <= 85.21349637789268
 obs_face_o4_e1_j3: - 0.7073882691671984 z[4,0] - 0.7068251811053671 z[4,2]
   - obstacle_slack + 100 alpha[4,1,3] <= 85.20223461665603
 obs_face_o4_e2_j3: 0.706825181105366 z[4,0] - 0.7073882691671997 z[4,2]
   - obstacle_slack + 100 alpha[4,2,3] <= 113.4865036221073
 obs_face_o4_e3_j3: 0.7073882691671984 z[4,0] + 0.7068251811053671 z[4,2]
   - obstacle_slack + 100 alpha[4,3,3] <= 113.497765383344
 obs_alpha_sum_o4_j4: alpha[4,0,4] + alpha[4,1,4] + alpha[4,2,4]
   + alpha[4,3,4] >= 1
 obs_face_o4_e0_j4: - 0.706825181105366 z[5,0] + 0.7073882691671997 z[5,2]
   - obstacle_slack + 100 alpha[4,0,4] <= 85.21349637789268
 obs_face_o4_e1_j4: - 0.7073882691671984 z[5,0] - 0.7068251811053671 z[5,2]
   - obstacle_slack + 100 alpha[4,1,4] <= 85.20223461665603
 obs_face_o4_e2_j4: 0.706825181105366 z[5,0] - 0.7073882691671997 z[5,2]
   - obstacle_slack + 100 alpha[4,2,4] <= 113.4865036221073
 obs_face_o4_e3_j4: 0.7073882691671984 z[5,0] + 0.7068251811053671 z[5,2]
   - obstacle_slack + 100 alpha[4,3,4] <= 113.497765383344
 obs_alpha_sum_o4_j5: alpha[4,0,5] + alpha[4,1,5] + alpha[4,2,5]
   + alpha[4,3,5] >= 1
 obs_face_o4_e0_j5: - 0.706825181105366 z[6,0] + 0.7073882691671997 z[6,2]
   - obstacle_slack + 100 alpha[4,0,5] <= 85.21349637789268
 obs_face_o4_e1_j5: - 0.7073882691671984 z[6,0] - 0.7068251811053671 z[6,2]
   - obstacle_slack + 100 alpha[4,1,5] <= 85.20223461665603
 obs_face_o4_e2_j5: 0.706825181105366 z[6,0] - 0.7073882691671997 z[6,2]
   - obstacle_slack + 100 alpha[4,2,5] <= 113.4865036221073
 obs_face_o4_e3_j5: 0.7073882691671984 z[6,0] + 0.7068251811053671 z[6,2]
   - obstacle_slack + 100 alpha[4,3,5] <= 113.497765383344
 obs_alpha_sum_o4_j6: alpha[4,0,6] + alpha[4,1,6] + alpha[4,2,6]
   + alpha[4,3,6] >= 1
 obs_face_o4_e0_j6: - 0.706825181105366 z[7,0] + 0.7073882691671997 z[7,2]
   - obstacle_slack + 100 alpha[4,0,6] <= 85.21349637789268
 obs_face_o4_e1_j6: - 0.7073882691671984 z[7,0] - 0.7068251811053671 z[7,2]
   - obstacle_slack + 100 alpha[4,1,6] <= 85.20223461665603
 obs_face_o4_e2_j6: 0.706825181105366 z[7,0] - 0.7073882691671997 z[7,2]
   - obstacle_slack + 100 alpha[4,2,6] <= 113.4865036221073
 obs_face_o4_e3_j6: 0.7073882691671984 z[7,0] + 0.7068251811053671 z[7,2]
   - obstacle_slack + 100 alpha[4,3,6] <= 113.497765383344
 obs_alpha_sum_o4_j7: alpha[4,0,7] + alpha[4,1,7] + alpha[4,2,7]
   + alpha[4,3,7] >= 1
 obs_face_o4_e0_j7: - 0.706825181105366 z[8,0] + 0.7073882691671997 z[8,2]
   - obstacle_slack + 100 alpha[4,0,7] <= 85.21349637789268
 obs_face_o4_e1_j7: - 0.7073882691671984 z[8,0] - 0.7068251811053671 z[8,2]
   - obstacle_slack + 100 alpha[4,1,7] <= 85.20223461665603
 obs_face_o4_e2_j7: 0.706825181105366 z[8,0] - 0.7073882691671997 z[8,2]
   - obstacle_slack + 100 alpha[4,2,7] <= 113.4865036221073
 obs_face_o4_e3_j7: 0.7073882691671984 z[8,0] + 0.7068251811053671 z[8,2]
   - obstacle_slack + 100 alpha[4,3,7] <= 113.497765383344
 obs_alpha_sum_o4_j8: alpha[4,0,8] + alpha[4,1,8] + alpha[4,2,8]
   + alpha[4,3,8] >= 1
 obs_face_o4_e0_j8: - 0.706825181105366 z[9,0] + 0.7073882691671997 z[9,2]
   - obstacle_slack + 100 alpha[4,0,8] <= 85.21349637789268
 obs_face_o4_e1_j8: - 0.7073882691671984 z[9,0] - 0.7068251811053671 z[9,2]
   - obstacle_slack + 100 alpha[4,1,8] <= 85.20223461665603
 obs_face_o4_e2_j8: 0.706825181105366 z[9,0] - 0.7073882691671997 z[9,2]
   - obstacle_slack + 100 alpha[4,2,8] <= 113.4865036221073
 obs_face_o4_e3_j8: 0.7073882691671984 z[9,0] + 0.7068251811053671 z[9,2]
   - obstacle_slack + 100 alpha[4,3,8] <= 113.497765383344
 obs_alpha_sum_o4_j9: alpha[4,0,9] + alpha[4,1,9] + alpha[4,2,9]
   + alpha[4,3,9] >= 1
 obs_face_o4_e0_j9: - 0.706825181105366 z[10,0]
   + 0.7073882691671997 z[10,2] - obstacle_slack + 100 alpha[4,0,9]
   <= 85.21349637789268
 obs_face_o4_e1_j9: - 0.7073882691671984 z[10,0]
   - 0.7068251811053671 z[10,2] - obstacle_slack + 100 alpha[4,1,9]
   <= 85.20223461665603
 obs_face_o4_e2_j9: 0.706825181105366 z[10,0] - 0.7073882691671997 z[10,2]
   - obstacle_slack + 100 alpha[4,2,9] <= 113.4865036221073
 obs_face_o4_e3_j9: 0.7073882691671984 z[10,0] + 0.7068251811053671 z[10,2]
   - obstacle_slack + 100 alpha[4,3,9] <= 113.497765383344
 obs_alpha_sum_o4_j10: alpha[4,0,10] + alpha[4,1,10] + alpha[4,2,10]
   + alpha[4,3,10] >= 1
 obs_face_o4_e0_j10: - 0.706825181105366 z[11,0]
   + 0.7073882691671997 z[11,2] - obstacle_slack + 100 alpha[4,0,10]
   <= 85.21349637789268
 obs_face_o4_e1_j10: - 0.7073882691671984 z[11,0]
   - 0.7068251811053671 z[11,2] - obstacle_slack + 100 alpha[4,1,10]
   <= 85.20223461665603
 obs_face_o4_e2_j10: 0.706825181105366 z[11,0] - 0.7073882691671997 z[11,2]
   - obstacle_slack + 100 alpha[4,2,10] <= 113.4865036221073
 obs_face_o4_e3_j10: 0.7073882691671984 z[11,0]
   + 0.7068251811053671 z[11,2] - obstacle_slack + 100 alpha[4,3,10]
   <= 113.497765383344
 obs_alpha_sum_o4_j11: alpha[4,0,11] + alpha[4,1,11] + alpha[4,2,11]
   + alpha[4,3,11] >= 1
 obs_face_o4_e0_j11: - 0.706825181105366 z[12,0]
   + 0.7073882691671997 z[12,2] - obstacle_slack + 100 alpha[4,0,11]
   <= 85.21349637789268
 obs_face_o4_e1_j11: - 0.7073882691671984 z[12,0]
   - 0.7068251811053671 z[12,2] - obstacle_slack + 100 alpha[4,1,11]
   <= 85.20223461665603
 obs_face_o4_e2_j11: 0.706825181105366 z[12,0] - 0.7073882691671997 z[12,2]
   - obstacle_slack + 100 alpha[4,2,11] <= 113.4865036221073
 obs_face_o4_e3_j11: 0.7073882691671984 z[12,0]
   + 0.7068251811053671 z[12,2] - obstacle_slack + 100 alpha[4,3,11]
   <= 113.497765383344
 obs_beta_sum_o4_j0: beta[4,0,0] + beta[4,1,0] + beta[4,2,0] + beta[4,3,0]
   <= 1
 obs_beta_forward_o4_e0_j0: - alpha[4,0,0] + alpha[4,0,1] - beta[4,0,0]
   <= 0
 obs_beta_backward_o4_e0_j0: alpha[4,0,0] - alpha[4,0,1] - beta[4,0,0]
   <= 0
 obs_beta_forward_o4_e1_j0: - alpha[4,1,0] + alpha[4,1,1] - beta[4,1,0]
   <= 0
 obs_beta_backward_o4_e1_j0: alpha[4,1,0] - alpha[4,1,1] - beta[4,1,0]
   <= 0
 obs_beta_forward_o4_e2_j0: - alpha[4,2,0] + alpha[4,2,1] - beta[4,2,0]
   <= 0
 obs_beta_backward_o4_e2_j0: alpha[4,2,0] - alpha[4,2,1] - beta[4,2,0]
   <= 0
 obs_beta_forward_o4_e3_j0: - alpha[4,3,0] + alpha[4,3,1] - beta[4,3,0]
   <= 0
 obs_beta_backward_o4_e3_j0: alpha[4,3,0] - alpha[4,3,1] - beta[4,3,0]
   <= 0
 obs_beta_sum_o4_j1: beta[4,0,1] + beta[4,1,1] + beta[4,2,1] + beta[4,3,1]
   <= 1
 obs_beta_forward_o4_e0_j1: - alpha[4,0,1] + alpha[4,0,2] - beta[4,0,1]
   <= 0
 obs_beta_backward_o4_e0_j1: alpha[4,0,1] - alpha[4,0,2] - beta[4,0,1]
   <= 0
 obs_beta_forward_o4_e1_j1: - alpha[4,1,1] + alpha[4,1,2] - beta[4,1,1]
   <= 0
 obs_beta_backward_o4_e1_j1: alpha[4,1,1] - alpha[4,1,2] - beta[4,1,1]
   <= 0
 obs_beta_forward_o4_e2_j1: - alpha[4,2,1] + alpha[4,2,2] - beta[4,2,1]
   <= 0
 obs_beta_backward_o4_e2_j1: alpha[4,2,1] - alpha[4,2,2] - beta[4,2,1]
   <= 0
 obs_beta_forward_o4_e3_j1: - alpha[4,3,1] + alpha[4,3,2] - beta[4,3,1]
   <= 0
 obs_beta_backward_o4_e3_j1: alpha[4,3,1] - alpha[4,3,2] - beta[4,3,1]
   <= 0
 obs_beta_sum_o4_j2: beta[4,0,2] + beta[4,1,2] + beta[4,2,2] + beta[4,3,2]
   <= 1
 obs_beta_forward_o4_e0_j2: - alpha[4,0,2] + alpha[4,0,3] - beta[4,0,2]
   <= 0
 obs_beta_backward_o4_e0_j2: alpha[4,0,2] - alpha[4,0,3] - beta[4,0,2]
   <= 0
 obs_beta_forward_o4_e1_j2: - alpha[4,1,2] + alpha[4,1,3] - beta[4,1,2]
   <= 0
 obs_beta_backward_o4_e1_j2: alpha[4,1,2] - alpha[4,1,3] - beta[4,1,2]
   <= 0
 obs_beta_forward_o4_e2_j2: - alpha[4,2,2] + alpha[4,2,3] - beta[4,2,2]
   <= 0
 obs_beta_backward_o4_e2_j2: alpha[4,2,2] - alpha[4,2,3] - beta[4,2,2]
   <= 0
 obs_beta_forward_o4_e3_j2: - alpha[4,3,2] + alpha[4,3,3] - beta[4,3,2]
   <= 0
 obs_beta_backward_o4_e3_j2: alpha[4,3,2] - alpha[4,3,3] - beta[4,3,2]
   <= 0
 obs_beta_sum_o4_j3: beta[4,0,3] + beta[4,1,3] + beta[4,2,3] + beta[4,3,3]
   <= 1
 obs_beta_forward_o4_e0_j3: - alpha[4,0,3] + alpha[4,0,4] - beta[4,0,3]
   <= 0
 obs_beta_backward_o4_e0_j3: alpha[4,0,3] - alpha[4,0,4] - beta[4,0,3]
   <= 0
 obs_beta_forward_o4_e1_j3: - alpha[4,1,3] + alpha[4,1,4] - beta[4,1,3]
   <= 0
 obs_beta_backward_o4_e1_j3: alpha[4,1,3] - alpha[4,1,4] - beta[4,1,3]
   <= 0
 obs_beta_forward_o4_e2_j3: - alpha[4,2,3] + alpha[4,2,4] - beta[4,2,3]
   <= 0
 obs_beta_backward_o4_e2_j3: alpha[4,2,3] - alpha[4,2,4] - beta[4,2,3]
   <= 0
 obs_beta_forward_o4_e3_j3: - alpha[4,3,3] + alpha[4,3,4] - beta[4,3,3]
   <= 0
 obs_beta_backward_o4_e3_j3: alpha[4,3,3] - alpha[4,3,4] - beta[4,3,3]
   <= 0
 obs_beta_sum_o4_j4: beta[4,0,4] + beta[4,1,4] + beta[4,2,4] + beta[4,3,4]
   <= 1
 obs_beta_forward_o4_e0_j4: - alpha[4,0,4] + alpha[4,0,5] - beta[4,0,4]
   <= 0
 obs_beta_backward_o4_e0_j4: alpha[4,0,4] - alpha[4,0,5] - beta[4,0,4]
   <= 0
 obs_beta_forward_o4_e1_j4: - alpha[4,1,4] + alpha[4,1,5] - beta[4,1,4]
   <= 0
 obs_beta_backward_o4_e1_j4: alpha[4,1,4] - alpha[4,1,5] - beta[4,1,4]
   <= 0
 obs_beta_forward_o4_e2_j4: - alpha[4,2,4] + alpha[4,2,5] - beta[4,2,4]
   <= 0
 obs_beta_backward_o4_e2_j4: alpha[4,2,4] - alpha[4,2,5] - beta[4,2,4]
   <= 0
 obs_beta_forward_o4_e3_j4: - alpha[4,3,4] + alpha[4,3,5] - beta[4,3,4]
   <= 0
 obs_beta_backward_o4_e3_j4: alpha[4,3,4] - alpha[4,3,5] - beta[4,3,4]
   <= 0
 obs_beta_sum_o4_j5: beta[4,0,5] + beta[4,1,5] + beta[4,2,5] + beta[4,3,5]
   <= 1
 obs_beta_forward_o4_e0_j5: - alpha[4,0,5] + alpha[4,0,6] - beta[4,0,5]
   <= 0
 obs_beta_backward_o4_e0_j5: alpha[4,0,5] - alpha[4,0,6] - beta[4,0,5]
   <= 0
 obs_beta_forward_o4_e1_j5: - alpha[4,1,5] + alpha[4,1,6] - beta[4,1,5]
   <= 0
 obs_beta_backward_o4_e1_j5: alpha[4,1,5] - alpha[4,1,6] - beta[4,1,5]
   <= 0
 obs_beta_forward_o4_e2_j5: - alpha[4,2,5] + alpha[4,2,6] - beta[4,2,5]
   <= 0
 obs_beta_backward_o4_e2_j5: alpha[4,2,5] - alpha[4,2,6] - beta[4,2,5]
   <= 0
 obs_beta_forward_o4_e3_j5: - alpha[4,3,5] + alpha[4,3,6] - beta[4,3,5]
   <= 0
 obs_beta_backward_o4_e3_j5: alpha[4,3,5] - alpha[4,3,6] - beta[4,3,5]
   <= 0
 obs_beta_sum_o4_j6: beta[4,0,6] + beta[4,1,6] + beta[4,2,6] + beta[4,3,6]
   <= 1
 obs_beta_forward_o4_e0_j6: - alpha[4,0,6] + alpha[4,0,7] - beta[4,0,6]
   <= 0
 obs_beta_backward_o4_e0_j6: alpha[4,0,6] - alpha[4,0,7] - beta[4,0,6]
   <= 0
 obs_beta_forward_o4_e1_j6: - alpha[4,1,6] + alpha[4,1,7] - beta[4,1,6]
   <= 0
 obs_beta_backward_o4_e1_j6: alpha[4,1,6] - alpha[4,1,7] - beta[4,1,6]
   <= 0
 obs_beta_forward_o4_e2_j6: - alpha[4,2,6] + alpha[4,2,7] - beta[4,2,6]
   <= 0
 obs_beta_backward_o4_e2_j6: alpha[4,2,6] - alpha[4,2,7] - beta[4,2,6]
   <= 0
 obs_beta_forward_o4_e3_j6: - alpha[4,3,6] + alpha[4,3,7] - beta[4,3,6]
   <= 0
 obs_beta_backward_o4_e3_j6: alpha[4,3,6] - alpha[4,3,7] - beta[4,3,6]
   <= 0
 obs_beta_sum_o4_j7: beta[4,0,7] + beta[4,1,7] + beta[4,2,7] + beta[4,3,7]
   <= 1
 obs_beta_forward_o4_e0_j7: - alpha[4,0,7] + alpha[4,0,8] - beta[4,0,7]
   <= 0
 obs_beta_backward_o4_e0_j7: alpha[4,0,7] - alpha[4,0,8] - beta[4,0,7]
   <= 0
 obs_beta_forward_o4_e1_j7: - alpha[4,1,7] + alpha[4,1,8] - beta[4,1,7]
   <= 0
 obs_beta_backward_o4_e1_j7: alpha[4,1,7] - alpha[4,1,8] - beta[4,1,7]
   <= 0
 obs_beta_forward_o4_e2_j7: - alpha[4,2,7] + alpha[4,2,8] - beta[4,2,7]
   <= 0
 obs_beta_backward_o4_e2_j7: alpha[4,2,7] - alpha[4,2,8] - beta[4,2,7]
   <= 0
 obs_beta_forward_o4_e3_j7: - alpha[4,3,7] + alpha[4,3,8] - beta[4,3,7]
   <= 0
 obs_beta_backward_o4_e3_j7: alpha[4,3,7] - alpha[4,3,8] - beta[4,3,7]
   <= 0
 obs_beta_sum_o4_j8: beta[4,0,8] + beta[4,1,8] + beta[4,2,8] + beta[4,3,8]
   <= 1
 obs_beta_forward_o4_e0_j8: - alpha[4,0,8] + alpha[4,0,9] - beta[4,0,8]
   <= 0
 obs_beta_backward_o4_e0_j8: alpha[4,0,8] - alpha[4,0,9] - beta[4,0,8]
   <= 0
 obs_beta_forward_o4_e1_j8: - alpha[4,1,8] + alpha[4,1,9] - beta[4,1,8]
   <= 0
 obs_beta_backward_o4_e1_j8: alpha[4,1,8] - alpha[4,1,9] - beta[4,1,8]
   <= 0
 obs_beta_forward_o4_e2_j8: - alpha[4,2,8] + alpha[4,2,9] - beta[4,2,8]
   <= 0
 obs_beta_backward_o4_e2_j8: alpha[4,2,8] - alpha[4,2,9] - beta[4,2,8]
   <= 0
 obs_beta_forward_o4_e3_j8: - alpha[4,3,8] + alpha[4,3,9] - beta[4,3,8]
   <= 0
 obs_beta_backward_o4_e3_j8: alpha[4,3,8] - alpha[4,3,9] - beta[4,3,8]
   <= 0
 obs_beta_sum_o4_j9: beta[4,0,9] + beta[4,1,9] + beta[4,2,9] + beta[4,3,9]
   <= 1
 obs_beta_forward_o4_e0_j9: - alpha[4,0,9] + alpha[4,0,10] - beta[4,0,9]
   <= 0
 obs_beta_backward_o4_e0_j9: alpha[4,0,9] - alpha[4,0,10] - beta[4,0,9]
   <= 0
 obs_beta_forward_o4_e1_j9: - alpha[4,1,9] + alpha[4,1,10] - beta[4,1,9]
   <= 0
 obs_beta_backward_o4_e1_j9: alpha[4,1,9] - alpha[4,1,10] - beta[4,1,9]
   <= 0
 obs_beta_forward_o4_e2_j9: - alpha[4,2,9] + alpha[4,2,10] - beta[4,2,9]
   <= 0
 obs_beta_backward_o4_e2_j9: alpha[4,2,9] - alpha[4,2,10] - beta[4,2,9]
   <= 0
 obs_beta_forward_o4_e3_j9: - alpha[4,3,9] + alpha[4,3,10] - beta[4,3,9]
   <= 0
 obs_beta_backward_o4_e3_j9: alpha[4,3,9] - alpha[4,3,10] - beta[4,3,9]
   <= 0
 obs_beta_sum_o4_j10: beta[4,0,10] + beta[4,1,10] + beta[4,2,10]
   + beta[4,3,10] <= 1
 obs_beta_forward_o4_e0_j10: - alpha[4,0,10] + alpha[4,0,11] - beta[4,0,10]
   <= 0
 obs_beta_backward_o4_e0_j10: alpha[4,0,10] - alpha[4,0,11] - beta[4,0,10]
   <= 0
 obs_beta_forward_o4_e1_j10: - alpha[4,1,10] + alpha[4,1,11] - beta[4,1,10]
   <= 0
 obs_beta_backward_o4_e1_j10: alpha[4,1,10] - alpha[4,1,11] - beta[4,1,10]
   <= 0
 obs_beta_forward_o4_e2_j10: - alpha[4,2,10] + alpha[4,2,11] - beta[4,2,10]
   <= 0
 obs_beta_backward_o4_e2_j10: alpha[4,2,10] - alpha[4,2,11] - beta[4,2,10]
   <= 0
 obs_beta_forward_o4_e3_j10: - alpha[4,3,10] + alpha[4,3,11] - beta[4,3,10]
   <= 0
 obs_beta_backward_o4_e3_j10: alpha[4,3,10] - alpha[4,3,11] - beta[4,3,10]
   <= 0
 obs_alpha_sum_o5_j0: alpha[5,0,0] + alpha[5,1,0] + alpha[5,2,0]
   + alpha[5,3,0] >= 1
 obs_face_o5_e0_j0: 0.706825181105366 z[1,0] + 0.7073882691671997 z[1,2]
   - obstacle_slack + 100 alpha[5,0,0] <= 116.3138043465288
 obs_face_o5_e1_j0: - 0.7073882691671984 z[1,0] + 0.7068251811053671 z[1,2]
   - obstacle_slack + 100 alpha[5,1,0] <= 82.37268153998724
 obs_face_o5_e2_j0: - 0.706825181105366 z[1,0] - 0.7073882691671997 z[1,2]
   - obstacle_slack + 100 alpha[5,2,0] <= 82.38619565347122
 obs_face_o5_e3_j0: 0.7073882691671984 z[1,0] - 0.7068251811053671 z[1,2]
   - obstacle_slack + 100 alpha[5,3,0] <= 116.3273184600128
 obs_alpha_sum_o5_j1: alpha[5,0,1] + alpha[5,1,1] + alpha[5,2,1]
   + alpha[5,3,1] >= 1
 obs_face_o5_e0_j1: 0.706825181105366 z[2,0] + 0.7073882691671997 z[2,2]
   - obstacle_slack + 100 alpha[5,0,1] <= 116.3138043465288
 obs_face_o5_e1_j1: - 0.7073882691671984 z[2,0] + 0.7068251811053671 z[2,2]
   - obstacle_slack + 100 alpha[5,1,1] <= 82.37268153998724
 obs_face_o5_e2_j1: - 0.706825181105366 z[2,0] - 0.7073882691671997 z[2,2]
   - obstacle_slack + 100 alpha[5,2,1] <= 82.38619565347122
 obs_face_o5_e3_j1: 0.7073882691671984 z[2,0] - 0.7068251811053671 z[2,2]
   - obstacle_slack + 100 alpha[5,3,1] <= 116.3273184600128
 obs_alpha_sum_o5_j2: alpha[5,0,2] + alpha[5,1,2] + alpha[5,2,2]
   + alpha[5,3,2] >= 1
 obs_face_o5_e0_j2: 0.706825181105366 z[3,0] + 0.7073882691671997 z[3,2]
   - obstacle_slack + 100 alpha[5,0,2] <= 116.3138043465288
 obs_face_o5_e1_j2: - 0.7073882691671984 z[3,0] + 0.7068251811053671 z[3,2]
   - obstacle_slack + 100 alpha[5,1,2] <= 82.37268153998724
 obs_face_o5_e2_j2: - 0.706825181105366 z[3,0] - 0.7073882691671997 z[3,2]
   - obstacle_slack + 100 alpha[5,2,2] <= 82.38619565347122
 obs_face_o5_e3_j2: 0.7073882691671984 z[3,0] - 0.7068251811053671 z[3,2]
   - obstacle_slack + 100 alpha[5,3,2] <= 116.3273184600128
 obs_alpha_sum_o5_j3: alpha[5,0,3] + alpha[5,1,3] + alpha[5,2,3]
   + alpha[5,3,3] >= 1
 obs_face_o5_e0_j3: 0.706825181105366 z[4,0] + 0.7073882691671997 z[4,2]
   - obstacle_slack + 100 alpha[5,0,3] <= 116.3138043465288
 obs_face_o5_e1_j3: - 0.7073882691671984 z[4,0] + 0.7068251811053671 z[4,2]
   - obstacle_slack + 100 alpha[5,1,3] <= 82.37268153998724
 obs_face_o5_e2_j3: - 0.706825181105366 z[4,0] - 0.7073882691671997 z[4,2]
   - obstacle_slack + 100 alpha[5,2,3] <= 82.38619565347122
 obs_face_o5_e3_j3: 0.7073882691671984 z[4,0] - 0.7068251811053671 z[4,2]
   - obstacle_slack + 100 alpha[5,3,3] <= 116.3273184600128
 obs_alpha_sum_o5_j4: alpha[5,0,4] + alpha[5,1,4] + alpha[5,2,4]
   + alpha[5,3,4] >= 1
 obs_face_o5_e0_j4: 0.706825181105366 z[5,0] + 0.7073882691671997 z[5,2]
   - obstacle_slack + 100 alpha[5,0,4] <= 116.3138043465288
 obs_face_o5_e1_j4: - 0.7073882691671984 z[5,0] + 0.7068251811053671 z[5,2]
   - obstacle_slack + 100 alpha[5,1,4] <= 82.37268153998724
 obs_face_o5_e2_j4: - 0.706825181105366 z[5,0] - 0.7073882691671997 z[5,2]
   - obstacle_slack + 100 alpha[5,2,4] <= 82.38619565347122
 obs_face_o5_e3_j4: 0.7073882691671984 z[5,0] - 0.7068251811053671 z[5,2]
   - obstacle_slack + 100 alpha[5,3,4] <= 116.3273184600128
 obs_alpha_sum_o5_j5: alpha[5,0,5] + alpha[5,1,5] + alpha[5,2,5]
   + alpha[5,3,5] >= 1
 obs_face_o5_e0_j5: 0.706825181105366 z[6,0] + 0.7073882691671997 z[6,2]
   - obstacle_slack + 100 alpha[5,0,5] <= 116.3138043465288
 obs_face_o5_e1_j5: - 0.7073882691671984 z[6,0] + 0.7068251811053671 z[6,2]
   - obstacle_slack + 100 alpha[5,1,5] <= 82.37268153998724
 obs_face_o5_e2_j5: - 0.706825181105366 z[6,0] - 0.7073882691671997 z[6,2]
   - obstacle_slack + 100 alpha[5,2,5] <= 82.38619565347122
 obs_face_o5_e3_j5: 0.7073882691671984 z[6,0] - 0.7068251811053671 z[6,2]
   - obstacle_slack + 100 alpha[5,3,5] <= 116.3273184600128
 obs_alpha_sum_o5_j6: alpha[5,0,6] + alpha[5,1,6] + alpha[5,2,6]
   + alpha[5,3,6] >= 1
 obs_face_o5_e0_j6: 0.706825181105366 z[7,0] + 0.7073882691671997 z[7,2]
   - obstacle_slack + 100 alpha[5,0,6] <= 116.3138043465288
 obs_face_o5_e1_j6: - 0.7073882691671984 z[7,0] + 0.7068251811053671 z[7,2]
   - obstacle_slack + 100 alpha[5,1,6] <= 82.37268153998724
 obs_face_o5_e2_j6: - 0.706825181105366 z[7,0] - 0.7073882691671997 z[7,2]
   - obstacle_slack + 100 alpha[5,2,6] <= 82.38619565347122
 obs_face_o5_e3_j6: 0.7073882691671984 z[7,0] - 0.7068251811053671 z[7,2]
   - obstacle_slack + 100 alpha[5,3,6] <= 116.3273184600128
 obs_alpha_sum_o5_j7: alpha[5,0,7] + alpha[5,1,7] + alpha[5,2,7]
   + alpha[5,3,7] >= 1
 obs_face_o5_e0_j7: 0.706825181105366 z[8,0] + 0.7073882691671997 z[8,2]
   - obstacle_slack + 100 alpha[5,0,7] <= 116.3138043465288
 obs_face_o5_e1_j7: - 0.7073882691671984 z[8,0] + 0.7068251811053671 z[8,2]
   - obstacle_slack + 100 alpha[5,1,7] <= 82.37268153998724
 obs_face_o5_e2_j7: - 0.706825181105366 z[8,0] - 0.7073882691671997 z[8,2]
   - obstacle_slack + 100 alpha[5,2,7] <= 82.38619565347122
 obs_face_o5_e3_j7: 0.7073882691671984 z[8,0] - 0.7068251811053671 z[8,2]
   - obstacle_slack + 100 alpha[5,3,7] <= 116.3273184600128
 obs_alpha_sum_o5_j8: alpha[5,0,8] + alpha[5,1,8] + alpha[5,2,8]
   + alpha[5,3,8] >= 1
 obs_face_o5_e0_j8: 0.706825181105366 z[9,0] + 0.7073882691671997 z[9,2]
   - obstacle_slack + 100 alpha[5,0,8] <= 116.3138043465288
 obs_face_o5_e1_j8: - 0.7073882691671984 z[9,0] + 0.7068251811053671 z[9,2]
   - obstacle_slack + 100 alpha[5,1,8] <= 82.37268153998724
 obs_face_o5_e2_j8: - 0.706825181105366 z[9,0] - 0.7073882691671997 z[9,2]
   - obstacle_slack + 100 alpha[5,2,8] <= 82.38619565347122
 obs_face_o5_e3_j8: 0.7073882691671984 z[9,0] - 0.7068251811053671 z[9,2]
   - obstacle_slack + 100 alpha[5,3,8] <= 116.3273184600128
 obs_alpha_sum_o5_j9: alpha[5,0,9] + alpha[5,1,9] + alpha[5,2,9]
   + alpha[5,3,9] >= 1
 obs_face_o5_e0_j9: 0.706825181105366 z[10,0] + 0.7073882691671997 z[10,2]
   - obstacle_slack + 100 alpha[5,0,9] <= 116.3138043465288
 obs_face_o5_e1_j9: - 0.7073882691671984 z[10,0]
   + 0.7068251811053671 z[10,2] - obstacle_slack + 100 alpha[5,1,9]
   <= 82.37268153998724
 obs_face_o5_e2_j9: - 0.706825181105366 z[10,0]
   - 0.7073882691671997 z[10,2] - obstacle_slack + 100 alpha[5,2,9]
   <= 82.38619565347122
 obs_face_o5_e3_j9: 0.7073882691671984 z[10,0] - 0.7068251811053671 z[10,2]
   - obstacle_slack + 100 alpha[5,3,9] <= 116.3273184600128
 obs_alpha_sum_o5_j10: alpha[5,0,10] + alpha[5,1,10] + alpha[5,2,10]
   + alpha[5,3,10] >= 1
 obs_face_o5_e0_j10: 0.706825181105366 z[11,0] + 0.7073882691671997 z[11,2]
   - obstacle_slack + 100 alpha[5,0,10] <= 116.3138043465288
 obs_face_o5_e1_j10: - 0.7073882691671984 z[11,0]
   + 0.7068251811053671 z[11,2] - obstacle_slack + 100 alpha[5,1,10]
   <= 82.37268153998724
 obs_face_o5_e2_j10: - 0.706825181105366 z[11,0]
   - 0.7073882691671997 z[11,2] - obstacle_slack + 100 alpha[5,2,10]
   <= 82.38619565347122
 obs_face_o5_e3_j10: 0.7073882691671984 z[11,0]
   - 0.7068251811053671 z[11,2] - obstacle_slack + 100 alpha[5,3,10]
   <= 116.3273184600128
 obs_alpha_sum_o5_j11: alpha[5,0,11] + alpha[5,1,11] + alpha[5,2,11]
   + alpha[5,3,11] >= 1
 obs_face_o5_e0_j11: 0.706825181105366 z[12,0] + 0.7073882691671997 z[12,2]
   - obstacle_slack + 100 alpha[5,0,11] <= 116.3138043465288
 obs_face_o5_e1_j11: - 0.7073882691671984 z[12,0]
   + 0.7068251811053671 z[12,2] - obstacle_slack + 100 alpha[5,1,11]
   <= 82.37268153998724
 obs_face_o5_e2_j11: - 0.706825181105366 z[12,0]
   - 0.7073882691671997 z[12,2] - obstacle_slack + 100 alpha[5,2,11]
   <= 82.38619565347122
 obs_face_o5_e3_j11: 0.7073882691671984 z[12,0]
   - 0.7068251811053671 z[12,2] - obstacle_slack + 100 alpha[5,3,11]
   <= 116.3273184600128
 obs_beta_sum_o5_j0: beta[5,0,0] + beta[5,1,0] + beta[5,2,0] + beta[5,3,0]
   <= 1
 obs_beta_forward_o5_e0_j0: - alpha[5,0,0] + alpha[5,0,1] - beta[5,0,0]
   <= 0
 obs_beta_backward_o5_e0_j0: alpha[5,0,0] - alpha[5,0,1] - beta[5,0,0]
   <= 0
 obs_beta_forward_o5_e1_j0: - alpha[5,1,0] + alpha[5,1,1] - beta[5,1,0]
   <= 0
 obs_beta_backward_o5_e1_j0: alpha[5,1,0] - alpha[5,1,1] - beta[5,1,0]
   <= 0
 obs_beta_forward_o5_e2_j0: - alpha[5,2,0] + alpha[5,2,1] - beta[5,2,0]
   <= 0
 obs_beta_backward_o5_e2_j0: alpha[5,2,0] - alpha[5,2,1] - beta[5,2,0]
   <= 0
 obs_beta_forward_o5_e3_j0: - alpha[5,3,0] + alpha[5,3,1] - beta[5,3,0]
   <= 0
 obs_beta_backward_o5_e3_j0: alpha[5,3,0] - alpha[5,3,1] - beta[5,3,0]
   <= 0
 obs_beta_sum_o5_j1: beta[5,0,1] + beta[5,1,1] + beta[5,2,1] + beta[5,3,1]
   <= 1
 obs_beta_forward_o5_e0_j1: - alpha[5,0,1] + alpha[5,0,2] - beta[5,0,1]
   <= 0
 obs_beta_backward_o5_e0_j1: alpha[5,0,1] - alpha[5,0,2] - beta[5,0,1]
   <= 0
 obs_beta_forward_o5_e1_j1: - alpha[5,1,1] + alpha[5,1,2] - beta[5,1,1]
   <= 0
 obs_beta_backward_o5_e1_j1: alpha[5,1,1] - alpha[5,1,2] - beta[5,1,1]
   <= 0
 obs_beta_forward_o5_e2_j1: - alpha[5,2,1] + alpha[5,2,2] - beta[5,2,1]
   <= 0
 obs_beta_backward_o5_e2_j1: alpha[5,2,1] - alpha[5,2,2] - beta[5,2,1]
   <= 0
 obs_beta_forward_o5_e3_j1: - alpha[5,3,1] + alpha[5,3,2] - beta[5,3,1]
   <= 0
 obs_beta_backward_o5_e3_j1: alpha[5,3,1] - alpha[5,3,2] - beta[5,3,1]
   <= 0
 obs_beta_sum_o5_j2: beta[5,0,2] + beta[5,1,2] + beta[5,2,2] + beta[5,3,2]
   <= 1
 obs_beta_forward_o5_e0_j2: - alpha[5,0,2] + alpha[5,0,3] - beta[5,0,2]
   <= 0
 obs_beta_backward_o5_e0_j2: alpha[5,0,2] - alpha[5,0,3] - beta[5,0,2]
   <= 0
 obs_beta_forward_o5_e1_j2: - alpha[5,1,2] + alpha[5,1,3] - beta[5,1,2]
   <= 0
 obs_beta_backward_o5_e1_j2: alpha[5,1,2] - alpha[5,1,3] - beta[5,1,2]
   <= 0
 obs_beta_forward_o5_e2_j2: - alpha[5,2,2] + alpha[5,2,3] - beta[5,2,2]
   <= 0
 obs_beta_backward_o5_e2_j2: alpha[5,2,2] - alpha[5,2,3] - beta[5,2,2]
   <= 0
 obs_beta_forward_o5_e3_j2: - alpha[5,3,2] + alpha[5,3,3] - beta[5,3,2]
   <= 0
 obs_beta_backward_o5_e3_j2: alpha[5,3,2] - alpha[5,3,3] - beta[5,3,2]
   <= 0
 obs_beta_sum_o5_j3: beta[5,0,3] + beta[5,1,3] + beta[5,2,3] + beta[5,3,3]
   <= 1
 obs_beta_forward_o5_e0_j3: - alpha[5,0,3] + alpha[5,0,4] - beta[5,0,3]
   <= 0
 obs_beta_backward_o5_e0_j3: alpha[5,0,3] - alpha[5,0,4] - beta[5,0,3]
   <= 0
 obs_beta_forward_o5_e1_j3: - alpha[5,1,3] + alpha[5,1,4] - beta[5,1,3]
   <= 0
 obs_beta_backward_o5_e1_j3: alpha[5,1,3] - alpha[5,1,4] - beta[5,1,3]
   <= 0
 obs_beta_forward_o5_e2_j3: - alpha[5,2,3] + alpha[5,2,4] - beta[5,2,3]
   <= 0
 obs_beta_backward_o5_e2_j3: alpha[5,2,3] - alpha[5,2,4] - beta[5,2,3]
   <= 0
 obs_beta_forward_o5_e3_j3: - alpha[5,3,3] + alpha[5,3,4] - beta[5,3,3]
   <= 0
 obs_beta_backward_o5_e3_j3: alpha[5,3,3] - alpha[5,3,4] - beta[5,3,3]
   <= 0
 obs_beta_sum_o5_j4: beta[5,0,4] + beta[5,1,4] + beta[5,2,4] + beta[5,3,4]
   <= 1
 obs_beta_forward_o5_e0_j4: - alpha[5,0,4] + alpha[5,0,5] - beta[5,0,4]
   <= 0
 obs_beta_backward_o5_e0_j4: alpha[5,0,4] - alpha[5,0,5] - beta[5,0,4]
   <= 0
 obs_beta_forward_o5_e1_j4: - alpha[5,1,4] + alpha[5,1,5] - beta[5,1,4]
   <= 0
 obs_beta_backward_o5_e1_j4: alpha[5,1,4] - alpha[5,1,5] - beta[5,1,4]
   <= 0
 obs_beta_forward_o5_e2_j4: - alpha[5,2,4] + alpha[5,2,5] - beta[5,2,4]
   <= 0
 obs_beta_backward_o5_e2_j4: alpha[5,2,4] - alpha[5,2,5] - beta[5,2,4]
   <= 0
 obs_beta_forward_o5_e3_j4: - alpha[5,3,4] + alpha[5,3,5] - beta[5,3,4]
   <= 0
 obs_beta_backward_o5_e3_j4: alpha[5,3,4] - alpha[5,3,5] - beta[5,3,4]
   <= 0
 obs_beta_sum_o5_j5: beta[5,0,5] + beta[5,1,5] + beta[5,2,5] + beta[5,3,5]
   <= 1
 obs_beta_forward_o5_e0_j5: - alpha[5,0,5] + alpha[5,0,6] - beta[5,0,5]
   <= 0
 obs_beta_backward_o5_e0_j5: alpha[5,0,5] - alpha[5,0,6] - beta[5,0,5]
   <= 0
 obs_beta_forward_o5_e1_j5: - alpha[5,1,5] + alpha[5,1,6] - beta[5,1,5]
   <= 0
 obs_beta_backward_o5_e1_j5: alpha[5,1,5] - alpha[5,1,6] - beta[5,1,5]
   <= 0
 obs_beta_forward_o5_e2_j5: - alpha[5,2,5] + alpha[5,2,6] - beta[5,2,5]
   <= 0
 obs_beta_backward_o5_e2_j5: alpha[5,2,5] - alpha[5,2,6] - beta[5,2,5]
   <= 0
 obs_beta_forward_o5_e3_j5: - alpha[5,3,5] + alpha[5,3,6] - beta[5,3,5]
   <= 0
 obs_beta_backward_o5_e3_j5: alpha[5,3,5] - alpha[5,3,6] - beta[5,3,5]
   <= 0
 obs_beta_sum_o5_j6: beta[5,0,6] + beta[5,1,6] + beta[5,2,6] + beta[5,3,6]
   <= 1
 obs_beta_forward_o5_e0_j6: - alpha[5,0,6] + alpha[5,0,7] - beta[5,0,6]
   <= 0
 obs_beta_backward_o5_e0_j6: alpha[5,0,6] - alpha[5,0,7] - beta[5,0,6]
   <= 0
 obs_beta_forward_o5_e1_j6: - alpha[5,1,6] + alpha[5,1,7] - beta[5,1,6]
   <= 0
 obs_beta_backward_o5_e1_j6: alpha[5,1,6] - alpha[5,1,7] - beta[5,1,6]
   <= 0
 obs_beta_forward_o5_e2_j6: - alpha[5,2,6] + alpha[5,2,7] - beta[5,2,6]
   <= 0
 obs_beta_backward_o5_e2_j6: alpha[5,2,6] - alpha[5,2,7] - beta[5,2,6]
   <= 0
 obs_beta_forward_o5_e3_j6: - alpha[5,3,6] + alpha[5,3,7] - beta[5,3,6]
   <= 0
 obs_beta_backward_o5_e3_j6: alpha[5,3,6] - alpha[5,3,7] - beta[5,3,6]
   <= 0
 obs_beta_sum_o5_j7: beta[5,0,7] + beta[5,1,7] + beta[5,2,7] + beta[5,3,7]
   <= 1
 obs_beta_forward_o5_e0_j7: - alpha[5,0,7] + alpha[5,0,8] - beta[5,0,7]
   <= 0
 obs_beta_backward_o5_e0_j7: alpha[5,0,7] - alpha[5,0,8] - beta[5,0,7]
   <= 0
 obs_beta_forward_o5_e1_j7: - alpha[5,1,7] + alpha[5,1,8] - beta[5,1,7]
   <= 0
 obs_beta_backward_o5_e1_j7: alpha[5,1,7] - alpha[5,1,8] - beta[5,1,7]
   <= 0
 obs_beta_forward_o5_e2_j7: - alpha[5,2,7] + alpha[5,2,8] - beta[5,2,7]
   <= 0
 obs_beta_backward_o5_e2_j7: alpha[5,2,7] - alpha[5,2,8] - beta[5,2,7]
   <= 0
 obs_beta_forward_o5_e3_j7: - alpha[5,3,7] + alpha[5,3,8] - beta[5,3,7]
   <= 0
 obs_beta_backward_o5_e3_j7: alpha[5,3,7] - alpha[5,3,8] - beta[5,3,7]
   <= 0
 obs_beta_sum_o5_j8: beta[5,0,8] + beta[5,1,8] + beta[5,2,8] + beta[5,3,8]
   <= 1
 obs_beta_forward_o5_e0_j8: - alpha[5,0,8] + alpha[5,0,9] - beta[5,0,8]
   <= 0
 obs_beta_backward_o5_e0_j8: alpha[5,0,8] - alpha[5,0,9] - beta[5,0,8]
   <= 0
 obs_beta_forward_o5_e1_j8: - alpha[5,1,8] + alpha[5,1,9] - beta[5,1,8]
   <= 0
 obs_beta_backward_o5_e1_j8: alpha[5,1,8] - alpha[5,1,9] - beta[5,1,8]
   <= 0
 obs_beta_forward_o5_e2_j8: - alpha[5,2,8] + alpha[5,2,9] - beta[5,2,8]
   <= 0
 obs_beta_backward_o5_e2_j8: alpha[5,2,8] - alpha[5,2,9] - beta[5,2,8]
   <= 0
 obs_beta_forward_o5_e3_j8: - alpha[5,3,8] + alpha[5,3,9] - beta[5,3,8]
   <= 0
 obs_beta_backward_o5_e3_j8: alpha[5,3,8] - alpha[5,3,9] - beta[5,3,8]
   <= 0
 obs_beta_sum_o5_j9: beta[5,0,9] + beta[5,1,9] + beta[5,2,9] + beta[5,3,9]
   <= 1
 obs_beta_forward_o5_e0_j9: - alpha[5,0,9] + alpha[5,0,10] - beta[5,0,9]
   <= 0
 obs_beta_backward_o5_e0_j9: alpha[5,0,9] - alpha[5,0,10] - beta[5,0,9]
   <= 0
 obs_beta_forward_o5_e1_j9: - alpha[5,1,9] + alpha[5,1,10] - beta[5,1,9]
   <= 0
 obs_beta_backward_o5_e1_j9: alpha[5,1,9] - alpha[5,1,10] - beta[5,1,9]
   <= 0
 obs_beta_forward_o5_e2_j9: - alpha[5,2,9] + alpha[5,2,10] - beta[5,2,9]
   <= 0
 obs_beta_backward_o5_e2_j9: alpha[5,2,9] - alpha[5,2,10] - beta[5,2,9]
   <= 0
 obs_beta_forward_o5_e3_j9: - alpha[5,3,9] + alpha[5,3,10] - beta[5,3,9]
   <= 0
 obs_beta_backward_o5_e3_j9: alpha[5,3,9] - alpha[5,3,10] - beta[5,3,9]
   <= 0
 obs_beta_sum_o5_j10: beta[5,0,10] + beta[5,1,10] + beta[5,2,10]
   + beta[5,3,10] <= 1
 obs_beta_forward_o5_e0_j10: - alpha[5,0,10] + alpha[5,0,11] - beta[5,0,10]
   <= 0
 obs_beta_backward_o5_e0_j10: alpha[5,0,10] - alpha[5,0,11] - beta[5,0,10]
   <= 0
 obs_beta_forward_o5_e1_j10: - alpha[5,1,10] + alpha[5,1,11] - beta[5,1,10]
   <= 0
 obs_beta_backward_o5_e1_j10: alpha[5,1,10] - alpha[5,1,11] - beta[5,1,10]
   <= 0
 obs_beta_forward_o5_e2_j10: - alpha[5,2,10] + alpha[5,2,11] - beta[5,2,10]
   <= 0
 obs_beta_backward_o5_e2_j10: alpha[5,2,10] - alpha[5,2,11] - beta[5,2,10]
   <= 0
 obs_beta_forward_o5_e3_j10: - alpha[5,3,10] + alpha[5,3,11] - beta[5,3,10]
   <= 0
 obs_beta_backward_o5_e3_j10: alpha[5,3,10] - alpha[5,3,11] - beta[5,3,10]
   <= 0
 obs_alpha_sum_o6_j0: alpha[6,0,0] + alpha[6,1,0] + alpha[6,2,0]
   + alpha[6,3,0] >= 1
 obs_face_o6_e0_j0: - 0.706825181105366 z[1,0] + 0.7073882691671997 z[1,2]
   - obstacle_slack + 100 alpha[6,0,0] <= 79.55889492904976
 obs_face_o6_e1_j0: - 0.7073882691671984 z[1,0] - 0.7068251811053671 z[1,2]
   - obstacle_slack + 100 alpha[6,1,0] <= 79.54312846331845
 obs_face_o6_e2_j0: 0.706825181105366 z[1,0] - 0.7073882691671997 z[1,2]
   - obstacle_slack + 100 alpha[6,2,0] <= 119.1411050709502
 obs_face_o6_e3_j0: 0.7073882691671984 z[1,0] + 0.7068251811053671 z[1,2]
   - obstacle_slack + 100 alpha[6,3,0] <= 119.1568715366816
 obs_alpha_sum_o6_j1: alpha[6,0,1] + alpha[6,1,1] + alpha[6,2,1]
   + alpha[6,3,1] >= 1
 obs_face_o6_e0_j1: - 0.706825181105366 z[2,0] + 0.7073882691671997 z[2,2]
   - obstacle_slack + 100 alpha[6,0,1] <= 79.55889492904976
 obs_face_o6_e1_j1: - 0.7073882691671984 z[2,0] - 0.7068251811053671 z[2,2]
   - obstacle_slack + 100 alpha[6,1,1] <= 79.54312846331845
 obs_face_o6_e2_j1: 0.706825181105366 z[2,0] - 0.7073882691671997 z[2,2]
   - obstacle_slack + 100 alpha[6,2,1] <= 119.1411050709502
 obs_face_o6_e3_j1: 0.7073882691671984 z[2,0] + 0.7068251811053671 z[2,2]
   - obstacle_slack + 100 alpha[6,3,1] <= 119.1568715366816
 obs_alpha_sum_o6_j2: alpha[6,0,2] + alpha[6,1,2] + alpha[6,2,2]
   + alpha[6,3,2] >= 1
 obs_face_o6_e0_j2: - 0.706825181105366 z[3,0] + 0.7073882691671997 z[3,2]
   - obstacle_slack + 100 alpha[6,0,2] <= 79.55889492904976
 obs_face_o6_e1_j2: - 0.7073882691671984 z[3,0] - 0.7068251811053671 z[3,2]
   - obstacle_slack + 100 alpha[6,1,2] <= 79.54312846331845
 obs_face_o6_e2_j2: 0.706825181105366 z[3,0] - 0.7073882691671997 z[3,2]
   - obstacle_slack + 100 alpha[6,2,2] <= 119.1411050709502
 obs_face_o6_e3_j2: 0.7073882691671984 z[3,0] + 0.7068251811053671 z[3,2]
   - obstacle_slack + 100 alpha[6,3,2] <= 119.1568715366816
 obs_alpha_sum_o6_j3: alpha[6,0,3] + alpha[6,1,3] + alpha[6,2,3]
   + alpha[6,3,3] >= 1
 obs_face_o6_e0_j3: - 0.706825181105366 z[4,0] + 0.7073882691671997 z[4,2]
   - obstacle_slack + 100 alpha[6,0,3] <= 79.55889492904976
 obs_face_o6_e1_j3: - 0.7073882691671984 z[4,0] - 0.7068251811053671 z[4,2]
   - obstacle_slack + 100 alpha[6,1,3] <= 79.54312846331845
 obs_face_o6_e2_j3: 0.706825181105366 z[4,0] - 0.7073882691671997 z[4,2]
   - obstacle_slack + 100 alpha[6,2,3] <= 119.1411050709502
 obs_face_o6_e3_j3: 0.7073882691671984 z[4,0] + 0.7068251811053671 z[4,2]
   - obstacle_slack + 100 alpha[6,3,3] <= 119.1568715366816
 obs_alpha_sum_o6_j4: alpha[6,0,4] + alpha[6,1,4] + alpha[6,2,4]
   + alpha[6,3,4] >= 1
 obs_face_o6_e0_j4: - 0.706825181105366 z[5,0] + 0.7073882691671997 z[5,2]
   - obstacle_slack + 100 alpha[6,0,4] <= 79.55889492904976
 obs_face_o6_e1_j4: - 0.7073882691671984 z[5,0] - 0.7068251811053671 z[5,2]
   - obstacle_slack + 100 alpha[6,1,4] <= 79.54312846331845
 obs_face_o6_e2_j4: 0.706825181105366 z[5,0] - 0.7073882691671997 z[5,2]
   - obstacle_slack + 100 alpha[6,2,4] <= 119.1411050709502
 obs_face_o6_e3_j4: 0.7073882691671984 z[5,0] + 0.7068251811053671 z[5,2]
   - obstacle_slack + 100 alpha[6,3,4] <= 119.1568715366816
 obs_alpha_sum_o6_j5: alpha[6,0,5] + alpha[6,1,5] + alpha[6,2,5]
   + alpha[6,3,5] >= 1
 obs_face_o6_e0_j5: - 0.706825181105366 z[6,0] + 0.7073882691671997 z[6,2]
   - obstacle_slack + 100 alpha[6,0,5] <= 79.55889492904976
 obs_face_o6_e1_j5: - 0.7073882691671984 z[6,0] - 0.7068251811053671 z[6,2]
   - obstacle_slack + 100 alpha[6,1,5] <= 79.54312846331845
 obs_face_o6_e2_j5: 0.706825181105366 z[6,0] - 0.7073882691671997 z[6,2]
   - obstacle_slack + 100 alpha[6,2,5] <= 119.1411050709502
 obs_face_o6_e3_j5: 0.7073882691671984 z[6,0] + 0.7068251811053671 z[6,2]
   - obstacle_slack + 100 alpha[6,3,5] <= 119.1568715366816
 obs_alpha_sum_o6_j6: alpha[6,0,6] + alpha[6,1,6] + alpha[6,2,6]
   + alpha[6,3,6] >= 1
 obs_face_o6_e0_j6: - 0.706825181105366 z[7,0] + 0.7073882691671997 z[7,2]
   - obstacle_slack + 100 alpha[6,0,6] <= 79.55889492904976
 obs_face_o6_e1_j6: - 0.7073882691671984 z[7,0] - 0.7068251811053671 z[7,2]
   - obstacle_slack + 100 alpha[6,1,6] <= 79.54312846331845
 obs_face_o6_e2_j6: 0.706825181105366 z[7,0] - 0.7073882691671997 z[7,2]
   - obstacle_slack + 100 alpha[6,2,6] <= 119.1411050709502
 obs_face_o6_e3_j6: 0.7073882691671984 z[7,0] + 0.7068251811053671 z[7,2]
   - obstacle_slack + 100 alpha[6,3,6] <= 119.1568715366816
 obs_alpha_sum_o6_j7: alpha[6,0,7] + alpha[6,1,7] + alpha[6,2,7]
   + alpha[6,3,7] >= 1
 obs_face_o6_e0_j7: - 0.706825181105366 z[8,0] + 0.7073882691671997 z[8,2]
   - obstacle_slack + 100 alpha[6,0,7] <= 79.55889492904976
 obs_face_o6_e1_j7: - 0.7073882691671984 z[8,0] - 0.7068251811053671 z[8,2]
   - obstacle_slack + 100 alpha[6,1,7] <= 79.54312846331845
 obs_face_o6_e2_j7: 0.706825181105366 z[8,0] - 0.7073882691671997 z[8,2]
   - obstacle_slack + 100 alpha[6,2,7] <= 119.1411050709502
 obs_face_o6_e3_j7: 0.7073882691671984 z[8,0] + 0.7068251811053671 z[8,2]
   - obstacle_slack + 100 alpha[6,3,7] <= 119.1568715366816
 obs_alpha_sum_o6_j8: alpha[6,0,8] + alpha[6,1,8] + alpha[6,2,8]
   + alpha[6,3,8] >= 1
 obs_face_o6_e0_j8: - 0.706825181105366 z[9,0] + 0.7073882691671997 z[9,2]
   - obstacle_slack + 100 alpha[6,0,8] <= 79.55889492904976
 obs_face_o6_e1_j8: - 0.7073882691671984 z[9,0] - 0.7068251811053671 z[9,2]
   - obstacle_slack + 100 alpha[6,1,8] <= 79.54312846331845
 obs_face_o6_e2_j8: 0.706825181105366 z[9,0] - 0.7073882691671997 z[9,2]
   - obstacle_slack + 100 alpha[6,2,8] <= 119.1411050709502
 obs_face_o6_e3_j8: 0.7073882691671984 z[9,0] + 0.7068251811053671 z[9,2]
   - obstacle_slack + 100 alpha[6,3,8] <= 119.1568715366816
 obs_alpha_sum_o6_j9: alpha[6,0,9] + alpha[6,1,9] + alpha[6,2,9]
   + alpha[6,3,9] >= 1
 obs_face_o6_e0_j9: - 0.706825181105366 z[10,0]
   + 0.7073882691671997 z[10,2] - obstacle_slack + 100 alpha[6,0,9]
   <= 79.55889492904976
 obs_face_o6_e1_j9: - 0.7073882691671984 z[10,0]
   - 0.7068251811053671 z[10,2] - obstacle_slack + 100 alpha[6,1,9]
   <= 79.54312846331845
 obs_face_o6_e2_j9: 0.706825181105366 z[10,0] - 0.7073882691671997 z[10,2]
   - obstacle_slack + 100 alpha[6,2,9] <= 119.1411050709502
 obs_face_o6_e3_j9: 0.7073882691671984 z[10,0] + 0.7068251811053671 z[10,2]
   - obstacle_slack + 100 alpha[6,3,9] <= 119.1568715366816
 obs_alpha_sum_o6_j10: alpha[6,0,10] + alpha[6,1,10] + alpha[6,2,10]
   + alpha[6,3,10] >= 1
 obs_face_o6_e0_j10: - 0.706825181105366 z[11,0]
   + 0.7073882691671997 z[11,2] - obstacle_slack + 100 alpha[6,0,10]
   <= 79.55889492904976
 obs_face_o6_e1_j10: - 0.7073882691671984 z[11,0]
   - 0.7068251811053671 z[11,2] - obstacle_slack + 100 alpha[6,1,10]
   <= 79.54312846331845
 obs_face_o6_e2_j10: 0.706825181105366 z[11,0] - 0.7073882691671997 z[11,2]
   - obstacle_slack + 100 alpha[6,2,10] <= 119.1411050709502
 obs_face_o6_e3_j10: 0.7073882691671984 z[11,0]
   + 0.7068251811053671 z[11,2] - obstacle_slack + 100 alpha[6,3,10]
   <= 119.1568715366816
 obs_alpha_sum_o6_j11: alpha[6,0,11] + alpha[6,1,11] + alpha[6,2,11]
   + alpha[6,3,11] >= 1
 obs_face_o6_e0_j11: - 0.706825181105366 z[12,0]
   + 0.7073882691671997 z[12,2] - obstacle_slack + 100 alpha[6,0,11]
   <= 79.55889492904976
 obs_face_o6_e1_j11: - 0.7073882691671984 z[12,0]
   - 0.7068251811053671 z[12,2] - obstacle_slack + 100 alpha[6,1,11]
   <= 79.54312846331845
 obs_face_o6_e2_j11: 0.706825181105366 z[12,0] - 0.7073882691671997 z[12,2]
   - obstacle_slack + 100 alpha[6,2,11] <= 119.1411050709502
 obs_face_o6_e3_j11: 0.7073882691671984 z[12,0]
   + 0.7068251811053671 z[12,2] - obstacle_slack + 100 alpha[6,3,11]
   <= 119.1568715366816
 obs_beta_sum_o6_j0: beta[6,0,0] + beta[6,1,0] + beta[6,2,0] + beta[6,3,0]
   <= 1
 obs_beta_forward_o6_e0_j0: - alpha[6,0,0] + alpha[6,0,1] - beta[6,0,0]
   <= 0
 obs_beta_backward_o6_e0_j0: alpha[6,0,0] - alpha[6,0,1] - beta[6,0,0]
   <= 0
 obs_beta_forward_o6_e1_j0: - alpha[6,1,0] + alpha[6,1,1] - beta[6,1,0]
   <= 0
 obs_beta_backward_o6_e1_j0: alpha[6,1,0] - alpha[6,1,1] - beta[6,1,0]
   <= 0
 obs_beta_forward_o6_e2_j0: - alpha[6,2,0] + alpha[6,2,1] - beta[6,2,0]
   <= 0
 obs_beta_backward_o6_e2_j0: alpha[6,2,0] - alpha[6,2,1] - beta[6,2,0]
   <= 0
 obs_beta_forward_o6_e3_j0: - alpha[6,3,0] + alpha[6,3,1] - beta[6,3,0]
   <= 0
 obs_beta_backward_o6_e3_j0: alpha[6,3,0] - alpha[6,3,1] - beta[6,3,0]
   <= 0
 obs_beta_sum_o6_j1: beta[6,0,1] + beta[6,1,1] + beta[6,2,1] + beta[6,3,1]
   <= 1
 obs_beta_forward_o6_e0_j1: - alpha[6,0,1] + alpha[6,0,2] - beta[6,0,1]
   <= 0
 obs_beta_backward_o6_e0_j1: alpha[6,0,1] - alpha[6,0,2] - beta[6,0,1]
   <= 0
 obs_beta_forward_o6_e1_j1: - alpha[6,1,1] + alpha[6,1,2] - beta[6,1,1]
   <= 0
 obs_beta_backward_o6_e1_j1: alpha[6,1,1] - alpha[6,1,2] - beta[6,1,1]
   <= 0
 obs_beta_forward_o6_e2_j1: - alpha[6,2,1] + alpha[6,2,2] - beta[6,2,1]
   <= 0
 obs_beta_backward_o6_e2_j1: alpha[6,2,1] - alpha[6,2,2] - beta[6,2,1]
   <= 0
 obs_beta_forward_o6_e3_j1: - alpha[6,3,1] + alpha[6,3,2] - beta[6,3,1]
   <= 0
 obs_beta_backward_o6_e3_j1: alpha[6,3,1] - alpha[6,3,2] - beta[6,3,1]
   <= 0
 obs_beta_sum_o6_j2: beta[6,0,2] + beta[6,1,2] + beta[6,2,2] + beta[6,3,2]
   <= 1
 obs_beta_forward_o6_e0_j2: - alpha[6,0,2] + alpha[6,0,3] - beta[6,0,2]
   <= 0
 obs_beta_backward_o6_e0_j2: alpha[6,0,2] - alpha[6,0,3] - beta[6,0,2]
   <= 0
 obs_beta_forward_o6_e1_j2: - alpha[6,1,2] + alpha[6,1,3] - beta[6,1,2]
   <= 0
 obs_beta_backward_o6_e1_j2: alpha[6,1,2] - alpha[6,1,3] - beta[6,1,2]
   <= 0
 obs_beta_forward_o6_e2_j2: - alpha[6,2,2] + alpha[6,2,3] - beta[6,2,2]
   <= 0
 obs_beta_backward_o6_e2_j2: alpha[6,2,2] - alpha[6,2,3] - beta[6,2,2]
   <= 0
 obs_beta_forward_o6_e3_j2: - alpha[6,3,2] + alpha[6,3,3] - beta[6,3,2]
   <= 0
 obs_beta_backward_o6_e3_j2: alpha[6,3,2] - alpha[6,3,3] - beta[6,3,2]
   <= 0
 obs_beta_sum_o6_j3: beta[6,0,3] + beta[6,1,3] + beta[6,2,3] + beta[6,3,3]
   <= 1
 obs_beta_forward_o6_e0_j3: - alpha[6,0,3] + alpha[6,0,4] - beta[6,0,3]
   <= 0
 obs_beta_backward_o6_e0_j3: alpha[6,0,3] - alpha[6,0,4] - beta[6,0,3]
   <= 0
 obs_beta_forward_o6_e1_j3: - alpha[6,1,3] + alpha[6,1,4] - beta[6,1,3]
   <= 0
 obs_beta_backward_o6_e1_j3: alpha[6,1,3] - alpha[6,1,4] - beta[6,1,3]
   <= 0
 obs_beta_forward_o6_e2_j3: - alpha[6,2,3] + alpha[6,2,4] - beta[6,2,3]
   <= 0
 obs_beta_backward_o6_e2_j3: alpha[6,2,3] - alpha[6,2,4] - beta[6,2,3]
   <= 0
 obs_beta_forward_o6_e3_j3: - alpha[6,3,3] + alpha[6,3,4] - beta[6,3,3]
   <= 0
 obs_beta_backward_o6_e3_j3: alpha[6,3,3] - alpha[6,3,4] - beta[6,3,3]
   <= 0
 obs_beta_sum_o6_j4: beta[6,0,4] + beta[6,1,4] + beta[6,2,4] + beta[6,3,4]
   <= 1
 obs_beta_forward_o6_e0_j4: - alpha[6,0,4] + alpha[6,0,5] - beta[6,0,4]
   <= 0
 obs_beta_backward_o6_e0_j4: alpha[6,0,4] - alpha[6,0,5] - beta[6,0,4]
   <= 0
 obs_beta_forward_o6_e1_j4: - alpha[6,1,4] + alpha[6,1,5] - beta[6,1,4]
   <= 0
 obs_beta_backward_o6_e1_j4: alpha[6,1,4] - alpha[6,1,5] - beta[6,1,4]
   <= 0
 obs_beta_forward_o6_e2_j4: - alpha[6,2,4] + alpha[6,2,5] - beta[6,2,4]
   <= 0
 obs_beta_backward_o6_e2_j4: alpha[6,2,4] - alpha[6,2,5] - beta[6,2,4]
   <= 0
 obs_beta_forward_o6_e3_j4: - alpha[6,3,4] + alpha[6,3,5] - beta[6,3,4]
   <= 0
 obs_beta_backward_o6_e3_j4: alpha[6,3,4] - alpha[6,3,5] - beta[6,3,4]
   <= 0
 obs_beta_sum_o6_j5: beta[6,0,5] + beta[6,1,5] + beta[6,2,5] + beta[6,3,5]
   <= 1
 obs_beta_forward_o6_e0_j5: - alpha[6,0,5] + alpha[6,0,6] - beta[6,0,5]
   <= 0
 obs_beta_backward_o6_e0_j5: alpha[6,0,5] - alpha[6,0,6] - beta[6,0,5]
   <= 0
 obs_beta_forward_o6_e1_j5: - alpha[6,1,5] + alpha[6,1,6] - beta[6,1,5]
   <= 0
 obs_beta_backward_o6_e1_j5: alpha[6,1,5] - alpha[6,1,6] - beta[6,1,5]
   <= 0
 obs_beta_forward_o6_e2_j5: - alpha[6,2,5] + alpha[6,2,6] - beta[6,2,5]
   <= 0
 obs_beta_backward_o6_e2_j5: alpha[6,2,5] - alpha[6,2,6] - beta[6,2,5]
   <= 0
 obs_beta_forward_o6_e3_j5: - alpha[6,3,5] + alpha[6,3,6] - beta[6,3,5]
   <= 0
 obs_beta_backward_o6_e3_j5: alpha[6,3,5] - alpha[6,3,6] - beta[6,3,5]
   <= 0
 obs_beta_sum_o6_j6: beta[6,0,6] + beta[6,1,6] + beta[6,2,6] + beta[6,3,6]
   <= 1
 obs_beta_forward_o6_e0_j6: - alpha[6,0,6] + alpha[6,0,7] - beta[6,0,6]
   <= 0
 obs_beta_backward_o6_e0_j6: alpha[6,0,6] - alpha[6,0,7] - beta[6,0,6]
   <= 0
 obs_beta_forward_o6_e1_j6: - alpha[6,1,6] + alpha[6,1,7] - beta[6,1,6]
   <= 0
 obs_beta_backward_o6_e1_j6: alpha[6,1,6] - alpha[6,1,7] - beta[6,1,6]
   <= 0
 obs_beta_forward_o6_e2_j6: - alpha[6,2,6] + alpha[6,2,7] - beta[6,2,6]
   <= 0
 obs_beta_backward_o6_e2_j6: alpha[6,2,6] - alpha[6,2,7] - beta[6,2,6]
   <= 0
 obs_beta_forward_o6_e3_j6: - alpha[6,3,6] + alpha[6,3,7] - beta[6,3,6]
   <= 0
 obs_beta_backward_o6_e3_j6: alpha[6,3,6] - alpha[6,3,7] - beta[6,3,6]
   <= 0
 obs_beta_sum_o6_j7: beta[6,0,7] + beta[6,1,7] + beta[6,2,7] + beta[6,3,7]
   <= 1
 obs_beta_forward_o6_e0_j7: - alpha[6,0,7] + alpha[6,0,8] - beta[6,0,7]
   <= 0
 obs_beta_backward_o6_e0_j7: alpha[6,0,7] - alpha[6,0,8] - beta[6,0,7]
   <= 0
 obs_beta_forward_o6_e1_j7: - alpha[6,1,7] + alpha[6,1,8] - beta[6,1,7]
   <= 0
 obs_beta_backward_o6_e1_j7: alpha[6,1,7] - alpha[6,1,8] - beta[6,1,7]
   <= 0
 obs_beta_forward_o6_e2_j7: - alpha[6,2,7] + alpha[6,2,8] - beta[6,2,7]
   <= 0
 obs_beta_backward_o6_e2_j7: alpha[6,2,7] - alpha[6,2,8] - beta[6,2,7]
   <= 0
 obs_beta_forward_o6_e3_j7: - alpha[6,3,7] + alpha[6,3,8] - beta[6,3,7]
   <= 0
 obs_beta_backward_o6_e3_j7: alpha[6,3,7] - alpha[6,3,8] - beta[6,3,7]
   <= 0
 obs_beta_sum_o6_j8: beta[6,0,8] + beta[6,1,8] + beta[6,2,8] + beta[6,3,8]
   <= 1
 obs_beta_forward_o6_e0_j8: - alpha[6,0,8] + alpha[6,0,9] - beta[6,0,8]
   <= 0
 obs_beta_backward_o6_e0_j8: alpha[6,0,8] - alpha[6,0,9] - beta[6,0,8]
   <= 0
 obs_beta_forward_o6_e1_j8: - alpha[6,1,8] + alpha[6,1,9] - beta[6,1,8]
   <= 0
 obs_beta_backward_o6_e1_j8: alpha[6,1,8] - alpha[6,1,9] - beta[6,1,8]
   <= 0
 obs_beta_forward_o6_e2_j8: - alpha[6,2,8] + alpha[6,2,9] - beta[6,2,8]
   <= 0
 obs_beta_backward_o6_e2_j8: alpha[6,2,8] - alpha[6,2,9] - beta[6,2,8]
   <= 0
 obs_beta_forward_o6_e3_j8: - alpha[6,3,8] + alpha[6,3,9] - beta[6,3,8]
   <= 0
 obs_beta_backward_o6_e3_j8: alpha[6,3,8] - alpha[6,3,9] - beta[6,3,8]
   <= 0
 obs_beta_sum_o6_j9: beta[6,0,9] + beta[6,1,9] + beta[6,2,9] + beta[6,3,9]
   <= 1
 obs_beta_forward_o6_e0_j9: - alpha[6,0,9] + alpha[6,0,10] - beta[6,0,9]
   <= 0
 obs_beta_backward_o6_e0_j9: alpha[6,0,9] - alpha[6,0,10] - beta[6,0,9]
   <= 0
 obs_beta_forward_o6_e1_j9: - alpha[6,1,9] + alpha[6,1,10] - beta[6,1,9]
   <= 0
 obs_beta_backward_o6_e1_j9: alpha[6,1,9] - alpha[6,1,10] - beta[6,1,9]
   <= 0
 obs_beta_forward_o6_e2_j9: - alpha[6,2,9] + alpha[6,2,10] - beta[6,2,9]
   <= 0
 obs_beta_backward_o6_e2_j9: alpha[6,2,9] - alpha[6,2,10] - beta[6,2,9]
   <= 0
 obs_beta_forward_o6_e3_j9: - alpha[6,3,9] + alpha[6,3,10] - beta[6,3,9]
   <= 0
 obs_beta_backward_o6_e3_j9: alpha[6,3,9] - alpha[6,3,10] - beta[6,3,9]
   <= 0
 obs_beta_sum_o6_j10: beta[6,0,10] + beta[6,1,10] + beta[6,2,10]
   + beta[6,3,10] <= 1
 obs_beta_forward_o6_e0_j10: - alpha[6,0,10] + alpha[6,0,11] - beta[6,0,10]
   <= 0
 obs_beta_backward_o6_e0_j10: alpha[6,0,10] - alpha[6,0,11] - beta[6,0,10]
   <= 0
 obs_beta_forward_o6_e1_j10: - alpha[6,1,10] + alpha[6,1,11] - beta[6,1,10]
   <= 0
 obs_beta_backward_o6_e1_j10: alpha[6,1,10] - alpha[6,1,11] - beta[6,1,10]
   <= 0
 obs_beta_forward_o6_e2_j10: - alpha[6,2,10] + alpha[6,2,11] - beta[6,2,10]
   <= 0
 obs_beta_backward_o6_e2_j10: alpha[6,2,10] - alpha[6,2,11] - beta[6,2,10]
   <= 0
 obs_beta_forward_o6_e3_j10: - alpha[6,3,10] + alpha[6,3,11] - beta[6,3,10]
   <= 0
 obs_beta_backward_o6_e3_j10: alpha[6,3,10] - alpha[6,3,11] - beta[6,3,10]
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
Binaries
 alpha[0,0,0] alpha[0,0,1] alpha[0,0,2] alpha[0,0,3] alpha[0,0,4]
 alpha[0,0,5] alpha[0,0,6] alpha[0,0,7] alpha[0,0,8] alpha[0,0,9]
 alpha[0,0,10] alpha[0,0,11] alpha[0,1,0] alpha[0,1,1] alpha[0,1,2]
 alpha[0,1,3] alpha[0,1,4] alpha[0,1,5] alpha[0,1,6] alpha[0,1,7]
 alpha[0,1,8] alpha[0,1,9] alpha[0,1,10] alpha[0,1,11] alpha[0,2,0]
 alpha[0,2,1] alpha[0,2,2] alpha[0,2,3] alpha[0,2,4] alpha[0,2,5]
 alpha[0,2,6] alpha[0,2,7] alpha[0,2,8] alpha[0,2,9] alpha[0,2,10]
 alpha[0,2,11] alpha[0,3,0] alpha[0,3,1] alpha[0,3,2] alpha[0,3,3]
 alpha[0,3,4] alpha[0,3,5] alpha[0,3,6] alpha[0,3,7] alpha[0,3,8]
 alpha[0,3,9] alpha[0,3,10] alpha[0,3,11] alpha[1,0,0] alpha[1,0,1]
 alpha[1,0,2] alpha[1,0,3] alpha[1,0,4] alpha[1,0,5] alpha[1,0,6]
 alpha[1,0,7] alpha[1,0,8] alpha[1,0,9] alpha[1,0,10] alpha[1,0,11]
 alpha[1,1,0] alpha[1,1,1] alpha[1,1,2] alpha[1,1,3] alpha[1,1,4]
 alpha[1,1,5] alpha[1,1,6] alpha[1,1,7] alpha[1,1,8] alpha[1,1,9]
 alpha[1,1,10] alpha[1,1,11] alpha[1,2,0] alpha[1,2,1] alpha[1,2,2]
 alpha[1,2,3] alpha[1,2,4] alpha[1,2,5] alpha[1,2,6] alpha[1,2,7]
 alpha[1,2,8] alpha[1,2,9] alpha[1,2,10] alpha[1,2,11] alpha[1,3,0]
 alpha[1,3,1] alpha[1,3,2] alpha[1,3,3] alpha[1,3,4] alpha[1,3,5]
 alpha[1,3,6] alpha[1,3,7] alpha[1,3,8] alpha[1,3,9] alpha[1,3,10]
 alpha[1,3,11] alpha[2,0,0] alpha[2,0,1] alpha[2,0,2] alpha[2,0,3]
 alpha[2,0,4] alpha[2,0,5] alpha[2,0,6] alpha[2,0,7] alpha[2,0,8]
 alpha[2,0,9] alpha[2,0,10] alpha[2,0,11] alpha[2,1,0] alpha[2,1,1]
 alpha[2,1,2] alpha[2,1,3] alpha[2,1,4] alpha[2,1,5] alpha[2,1,6]
 alpha[2,1,7] alpha[2,1,8] alpha[2,1,9] alpha[2,1,10] alpha[2,1,11]
 alpha[2,2,0] alpha[2,2,1] alpha[2,2,2] alpha[2,2,3] alpha[2,2,4]
 alpha[2,2,5] alpha[2,2,6] alpha[2,2,7] alpha[2,2,8] alpha[2,2,9]
 alpha[2,2,10] alpha[2,2,11] alpha[2,3,0] alpha[2,3,1] alpha[2,3,2]
 alpha[2,3,3] alpha[2,3,4] alpha[2,3,5] alpha[2,3,6] alpha[2,3,7]
 alpha[2,3,8] alpha[2,3,9] alpha[2,3,10] alpha[2,3,11] alpha[3,0,0]
 alpha[3,0,1] alpha[3,0,2] alpha[3,0,3] alpha[3,0,4] alpha[3,0,5]
 alpha[3,0,6] alpha[3,0,7] alpha[3,0,8] alpha[3,0,9] alpha[3,0,10]
 alpha[3,0,11] alpha[3,1,0] alpha[3,1,1] alpha[3,1,2] alpha[3,1,3]
 alpha[3,1,4] alpha[3,1,5] alpha[3,1,6] alpha[3,1,7] alpha[3,1,8]
 alpha[3,1,9] alpha[3,1,10] alpha[3,1,11] alpha[3,2,0] alpha[3,2,1]
 alpha[3,2,2] alpha[3,2,3] alpha[3,2,4] alpha[3,2,5] alpha[3,2,6]
 alpha[3,2,7] alpha[3,2,8] alpha[3,2,9] alpha[3,2,10] alpha[3,2,11]
 alpha[3,3,0] alpha[3,3,1] alpha[3,3,2] alpha[3,3,3] alpha[3,3,4]
 alpha[3,3,5] alpha[3,3,6] alpha[3,3,7] alpha[3,3,8] alpha[3,3,9]
 alpha[3,3,10] alpha[3,3,11] alpha[4,0,0] alpha[4,0,1] alpha[4,0,2]
 alpha[4,0,3] alpha[4,0,4] alpha[4,0,5] alpha[4,0,6] alpha[4,0,7]
 alpha[4,0,8] alpha[4,0,9] alpha[4,0,10] alpha[4,0,11] alpha[4,1,0]
 alpha[4,1,1] alpha[4,1,2] alpha[4,1,3] alpha[4,1,4] alpha[4,1,5]
 alpha[4,1,6] alpha[4,1,7] alpha[4,1,8] alpha[4,1,9] alpha[4,1,10]
 alpha[4,1,11] alpha[4,2,0] alpha[4,2,1] alpha[4,2,2] alpha[4,2,3]
 alpha[4,2,4] alpha[4,2,5] alpha[4,2,6] alpha[4,2,7] alpha[4,2,8]
 alpha[4,2,9] alpha[4,2,10] alpha[4,2,11] alpha[4,3,0] alpha[4,3,1]
 alpha[4,3,2] alpha[4,3,3] alpha[4,3,4] alpha[4,3,5] alpha[4,3,6]
 alpha[4,3,7] alpha[4,3,8] alpha[4,3,9] alpha[4,3,10] alpha[4,3,11]
 alpha[5,0,0] alpha[5,0,1] alpha[5,0,2] alpha[5,0,3] alpha[5,0,4]
 alpha[5,0,5] alpha[5,0,6] alpha[5,0,7] alpha[5,0,8] alpha[5,0,9]
 alpha[5,0,10] alpha[5,0,11] alpha[5,1,0] alpha[5,1,1] alpha[5,1,2]
 alpha[5,1,3] alpha[5,1,4] alpha[5,1,5] alpha[5,1,6] alpha[5,1,7]
 alpha[5,1,8] alpha[5,1,9] alpha[5,1,10] alpha[5,1,11] alpha[5,2,0]
 alpha[5,2,1] alpha[5,2,2] alpha[5,2,3] alpha[5,2,4] alpha[5,2,5]
 alpha[5,2,6] alpha[5,2,7] alpha[5,2,8] alpha[5,2,9] alpha[5,2,10]
 alpha[5,2,11] alpha[5,3,0] alpha[5,3,1] alpha[5,3,2] alpha[5,3,3]
 alpha[5,3,4] alpha[5,3,5] alpha[5,3,6] alpha[5,3,7] alpha[5,3,8]
 alpha[5,3,9] alpha[5,3,10] alpha[5,3,11] alpha[6,0,0] alpha[6,0,1]
 alpha[6,0,2] alpha[6,0,3] alpha[6,0,4] alpha[6,0,5] alpha[6,0,6]
 alpha[6,0,7] alpha[6,0,8] alpha[6,0,9] alpha[6,0,10] alpha[6,0,11]
 alpha[6,1,0] alpha[6,1,1] alpha[6,1,2] alpha[6,1,3] alpha[6,1,4]
 alpha[6,1,5] alpha[6,1,6] alpha[6,1,7] alpha[6,1,8] alpha[6,1,9]
 alpha[6,1,10] alpha[6,1,11] alpha[6,2,0] alpha[6,2,1] alpha[6,2,2]
 alpha[6,2,3] alpha[6,2,4] alpha[6,2,5] alpha[6,2,6] alpha[6,2,7]
 alpha[6,2,8] alpha[6,2,9] alpha[6,2,10] alpha[6,2,11] alpha[6,3,0]
 alpha[6,3,1] alpha[6,3,2] alpha[6,3,3] alpha[6,3,4] alpha[6,3,5]
 alpha[6,3,6] alpha[6,3,7] alpha[6,3,8] alpha[6,3,9] alpha[6,3,10]
 alpha[6,3,11] beta[0,0,0] beta[0,0,1] beta[0,0,2] beta[0,0,3] beta[0,0,4]
 beta[0,0,5] beta[0,0,6] beta[0,0,7] beta[0,0,8] beta[0,0,9] beta[0,0,10]
 beta[0,1,0] beta[0,1,1] beta[0,1,2] beta[0,1,3] beta[0,1,4] beta[0,1,5]
 beta[0,1,6] beta[0,1,7] beta[0,1,8] beta[0,1,9] beta[0,1,10] beta[0,2,0]
 beta[0,2,1] beta[0,2,2] beta[0,2,3] beta[0,2,4] beta[0,2,5] beta[0,2,6]
 beta[0,2,7] beta[0,2,8] beta[0,2,9] beta[0,2,10] beta[0,3,0] beta[0,3,1]
 beta[0,3,2] beta[0,3,3] beta[0,3,4] beta[0,3,5] beta[0,3,6] beta[0,3,7]
 beta[0,3,8] beta[0,3,9] beta[0,3,10] beta[1,0,0] beta[1,0,1] beta[1,0,2]
 beta[1,0,3] beta[1,0,4] beta[1,0,5] beta[1,0,6] beta[1,0,7] beta[1,0,8]
 beta[1,0,9] beta[1,0,10] beta[1,1,0] beta[1,1,1] beta[1,1,2] beta[1,1,3]
 beta[1,1,4] beta[1,1,5] beta[1,1,6] beta[1,1,7] beta[1,1,8] beta[1,1,9]
 beta[1,1,10] beta[1,2,0] beta[1,2,1] beta[1,2,2] beta[1,2,3] beta[1,2,4]
 beta[1,2,5] beta[1,2,6] beta[1,2,7] beta[1,2,8] beta[1,2,9] beta[1,2,10]
 beta[1,3,0] beta[1,3,1] beta[1,3,2] beta[1,3,3] beta[1,3,4] beta[1,3,5]
 beta[1,3,6] beta[1,3,7] beta[1,3,8] beta[1,3,9] beta[1,3,10] beta[2,0,0]
 beta[2,0,1] beta[2,0,2] beta[2,0,3] beta[2,0,4] beta[2,0,5] beta[2,0,6]
 beta[2,0,7] beta[2,0,8] beta[2,0,9] beta[2,0,10] beta[2,1,0] beta[2,1,1]
 beta[2,1,2] beta[2,1,3] beta[2,1,4] beta[2,1,5] beta[2,1,6] beta[2,1,7]
 beta[2,1,8] beta[2,1,9] beta[2,1,10] beta[2,2,0] beta[2,2,1] beta[2,2,2]
 beta[2,2,3] beta[2,2,4] beta[2,2,5] beta[2,2,6] beta[2,2,7] beta[2,2,8]
 beta[2,2,9] beta[2,2,10] beta[2,3,0] beta[2,3,1] beta[2,3,2] beta[2,3,3]
 beta[2,3,4] beta[2,3,5] beta[2,3,6] beta[2,3,7] beta[2,3,8] beta[2,3,9]
 beta[2,3,10] beta[3,0,0] beta[3,0,1] beta[3,0,2] beta[3,0,3] beta[3,0,4]
 beta[3,0,5] beta[3,0,6] beta[3,0,7] beta[3,0,8] beta[3,0,9] beta[3,0,10]
 beta[3,1,0] beta[3,1,1] beta[3,1,2] beta[3,1,3] beta[3,1,4] beta[3,1,5]
 beta[3,1,6] beta[3,1,7] beta[3,1,8] beta[3,1,9] beta[3,1,10] beta[3,2,0]
 beta[3,2,1] beta[3,2,2] beta[3,2,3] beta[3,2,4] beta[3,2,5] beta[3,2,6]
 beta[3,2,7] beta[3,2,8] beta[3,2,9] beta[3,2,10] beta[3,3,0] beta[3,3,1]
 beta[3,3,2] beta[3,3,3] beta[3,3,4] beta[3,3,5] beta[3,3,6] beta[3,3,7]
 beta[3,3,8] beta[3,3,9] beta[3,3,10] beta[4,0,0] beta[4,0,1] beta[4,0,2]
 beta[4,0,3] beta[4,0,4] beta[4,0,5] beta[4,0,6] beta[4,0,7] beta[4,0,8]
 beta[4,0,9] beta[4,0,10] beta[4,1,0] beta[4,1,1] beta[4,1,2] beta[4,1,3]
 beta[4,1,4] beta[4,1,5] beta[4,1,6] beta[4,1,7] beta[4,1,8] beta[4,1,9]
 beta[4,1,10] beta[4,2,0] beta[4,2,1] beta[4,2,2] beta[4,2,3] beta[4,2,4]
 beta[4,2,5] beta[4,2,6] beta[4,2,7] beta[4,2,8] beta[4,2,9] beta[4,2,10]
 beta[4,3,0] beta[4,3,1] beta[4,3,2] beta[4,3,3] beta[4,3,4] beta[4,3,5]
 beta[4,3,6] beta[4,3,7] beta[4,3,8] beta[4,3,9] beta[4,3,10] beta[5,0,0]
 beta[5,0,1] beta[5,0,2] beta[5,0,3] beta[5,0,4] beta[5,0,5] beta[5,0,6]
 beta[5,0,7] beta[5,0,8] beta[5,0,9] beta[5,0,10] beta[5,1,0] beta[5,1,1]
 beta[5,1,2] beta[5,1,3] beta[5,1,4] beta[5,1,5] beta[5,1,6] beta[5,1,7]
 beta[5,1,8] beta[5,1,9] beta[5,1,10] beta[5,2,0] beta[5,2,1] beta[5,2,2]
 beta[5,2,3] beta[5,2,4] beta[5,2,5] beta[5,2,6] beta[5,2,7] beta[5,2,8]
 beta[5,2,9] beta[5,2,10] beta[5,3,0] beta[5,3,1] beta[5,3,2] beta[5,3,3]
 beta[5,3,4] beta[5,3,5] beta[5,3,6] beta[5,3,7] beta[5,3,8] beta[5,3,9]
 beta[5,3,10] beta[6,0,0] beta[6,0,1] beta[6,0,2] beta[6,0,3] beta[6,0,4]
 beta[6,0,5] beta[6,0,6] beta[6,0,7] beta[6,0,8] beta[6,0,9] beta[6,0,10]
 beta[6,1,0] beta[6,1,1] beta[6,1,2] beta[6,1,3] beta[6,1,4] beta[6,1,5]
 beta[6,1,6] beta[6,1,7] beta[6,1,8] beta[6,1,9] beta[6,1,10] beta[6,2,0]
 beta[6,2,1] beta[6,2,2] beta[6,2,3] beta[6,2,4] beta[6,2,5] beta[6,2,6]
 beta[6,2,7] beta[6,2,8] beta[6,2,9] beta[6,2,10] beta[6,3,0] beta[6,3,1]
 beta[6,3,2] beta[6,3,3] beta[6,3,4] beta[6,3,5] beta[6,3,6] beta[6,3,7]
 beta[6,3,8] beta[6,3,9] beta[6,3,10]
End
