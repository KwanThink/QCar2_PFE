\ Model qcar2_flat_coordinate_oampc_mk1
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x1e32db6272c6c9ed
Minimize
 
Subject To
 flat_dynamics_X_0: - z[0,0] - 0.07 z[0,1] + z[1,0] - 0.00245 v[0,0] = 0
 flat_dynamics_Xdot_0: - z[0,1] + z[1,1] - 0.07 v[0,0] = 0
 flat_dynamics_Y_0: - z[0,2] - 0.07 z[0,3] + z[1,2] - 0.00245 v[0,1] = 0
 flat_dynamics_Ydot_0: - z[0,3] + z[1,3] - 0.07 v[0,1] = 0
 flat_dynamics_X_1: - z[1,0] - 0.07 z[1,1] + z[2,0] - 0.00245 v[1,0] = 0
 flat_dynamics_Xdot_1: - z[1,1] + z[2,1] - 0.07 v[1,0] = 0
 flat_dynamics_Y_1: - z[1,2] - 0.07 z[1,3] + z[2,2] - 0.00245 v[1,1] = 0
 flat_dynamics_Ydot_1: - z[1,3] + z[2,3] - 0.07 v[1,1] = 0
 flat_dynamics_X_2: - z[2,0] - 0.07 z[2,1] + z[3,0] - 0.00245 v[2,0] = 0
 flat_dynamics_Xdot_2: - z[2,1] + z[3,1] - 0.07 v[2,0] = 0
 flat_dynamics_Y_2: - z[2,2] - 0.07 z[2,3] + z[3,2] - 0.00245 v[2,1] = 0
 flat_dynamics_Ydot_2: - z[2,3] + z[3,3] - 0.07 v[2,1] = 0
 flat_dynamics_X_3: - z[3,0] - 0.07 z[3,1] + z[4,0] - 0.00245 v[3,0] = 0
 flat_dynamics_Xdot_3: - z[3,1] + z[4,1] - 0.07 v[3,0] = 0
 flat_dynamics_Y_3: - z[3,2] - 0.07 z[3,3] + z[4,2] - 0.00245 v[3,1] = 0
 flat_dynamics_Ydot_3: - z[3,3] + z[4,3] - 0.07 v[3,1] = 0
 flat_dynamics_X_4: - z[4,0] - 0.07 z[4,1] + z[5,0] - 0.00245 v[4,0] = 0
 flat_dynamics_Xdot_4: - z[4,1] + z[5,1] - 0.07 v[4,0] = 0
 flat_dynamics_Y_4: - z[4,2] - 0.07 z[4,3] + z[5,2] - 0.00245 v[4,1] = 0
 flat_dynamics_Ydot_4: - z[4,3] + z[5,3] - 0.07 v[4,1] = 0
 flat_dynamics_X_5: - z[5,0] - 0.07 z[5,1] + z[6,0] - 0.00245 v[5,0] = 0
 flat_dynamics_Xdot_5: - z[5,1] + z[6,1] - 0.07 v[5,0] = 0
 flat_dynamics_Y_5: - z[5,2] - 0.07 z[5,3] + z[6,2] - 0.00245 v[5,1] = 0
 flat_dynamics_Ydot_5: - z[5,3] + z[6,3] - 0.07 v[5,1] = 0
 flat_dynamics_X_6: - z[6,0] - 0.07 z[6,1] + z[7,0] - 0.00245 v[6,0] = 0
 flat_dynamics_Xdot_6: - z[6,1] + z[7,1] - 0.07 v[6,0] = 0
 flat_dynamics_Y_6: - z[6,2] - 0.07 z[6,3] + z[7,2] - 0.00245 v[6,1] = 0
 flat_dynamics_Ydot_6: - z[6,3] + z[7,3] - 0.07 v[6,1] = 0
 flat_dynamics_X_7: - z[7,0] - 0.07 z[7,1] + z[8,0] - 0.00245 v[7,0] = 0
 flat_dynamics_Xdot_7: - z[7,1] + z[8,1] - 0.07 v[7,0] = 0
 flat_dynamics_Y_7: - z[7,2] - 0.07 z[7,3] + z[8,2] - 0.00245 v[7,1] = 0
 flat_dynamics_Ydot_7: - z[7,3] + z[8,3] - 0.07 v[7,1] = 0
 flat_dynamics_X_8: - z[8,0] - 0.07 z[8,1] + z[9,0] - 0.00245 v[8,0] = 0
 flat_dynamics_Xdot_8: - z[8,1] + z[9,1] - 0.07 v[8,0] = 0
 flat_dynamics_Y_8: - z[8,2] - 0.07 z[8,3] + z[9,2] - 0.00245 v[8,1] = 0
 flat_dynamics_Ydot_8: - z[8,3] + z[9,3] - 0.07 v[8,1] = 0
 flat_dynamics_X_9: - z[9,0] - 0.07 z[9,1] + z[10,0] - 0.00245 v[9,0] = 0
 flat_dynamics_Xdot_9: - z[9,1] + z[10,1] - 0.07 v[9,0] = 0
 flat_dynamics_Y_9: - z[9,2] - 0.07 z[9,3] + z[10,2] - 0.00245 v[9,1] = 0
 flat_dynamics_Ydot_9: - z[9,3] + z[10,3] - 0.07 v[9,1] = 0
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
End
