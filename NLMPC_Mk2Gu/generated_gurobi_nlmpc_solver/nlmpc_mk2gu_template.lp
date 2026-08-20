\ Model qcar2_single_track_nlmpc_mk2gu
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x6ea0e17be86bf8a8
Minimize
  0 x[1,2] + 0 x[2,2] + 0 x[3,2] + 0 x[4,2] + 0 x[5,2] + 0 x[6,2] + 0 x[7,2]
   + 0 x[8,2] + 0 x[9,2] + 0 x[10,2] + 0 x[11,2] + 0 x[12,2] + 0 x[13,2]
   + 0 u[0,0] + 0 u[1,0] + 0 u[2,0] + 0 u[3,0] + 0 u[4,0] + 0 u[5,0]
   + 0 u[6,0] + 0 u[7,0] + 0 u[8,0] + 0 u[9,0] + 0 u[10,0] + 0 u[11,0]
   + 0 u[12,0]
Subject To
 initial_state_0: x[0,0] = 0
 initial_state_1: x[0,1] = 0
 initial_state_2: x[0,2] = 0
 initial_state_3: x[0,3] = 0
 rk4_vx_0: - x[0,3] + x[1,3] - 0.07 u[0,1] = 0
 rk4_vx_1: - x[1,3] + x[2,3] - 0.07 u[1,1] = 0
 rk4_vx_2: - x[2,3] + x[3,3] - 0.07 u[2,1] = 0
 rk4_vx_3: - x[3,3] + x[4,3] - 0.07 u[3,1] = 0
 rk4_vx_4: - x[4,3] + x[5,3] - 0.07 u[4,1] = 0
 rk4_vx_5: - x[5,3] + x[6,3] - 0.07 u[5,1] = 0
 rk4_vx_6: - x[6,3] + x[7,3] - 0.07 u[6,1] = 0
 rk4_vx_7: - x[7,3] + x[8,3] - 0.07 u[7,1] = 0
 rk4_vx_8: - x[8,3] + x[9,3] - 0.07 u[8,1] = 0
 rk4_vx_9: - x[9,3] + x[10,3] - 0.07 u[9,1] = 0
 rk4_vx_10: - x[10,3] + x[11,3] - 0.07 u[10,1] = 0
 rk4_vx_11: - x[11,3] + x[12,3] - 0.07 u[11,1] = 0
 rk4_vx_12: - x[12,3] + x[13,3] - 0.07 u[12,1] = 0
 obs_alpha_sum_o0_j0: alpha[0,0,0] + alpha[0,1,0] + alpha[0,2,0]
   + alpha[0,3,0] >= 1
 obs_face_o0_e0_j0: - 0.7068251811053662 x[1,0] + 0.7073882691671997 x[1,1]
   - obstacle_slack + 100 alpha[0,0,0] <= 97.3295244566839
 obs_face_o0_e1_j0: - 0.7073882691672001 x[1,0] - 0.7068251811053656 x[1,1]
   - obstacle_slack + 100 alpha[0,1,0] <= 97.3278351924984
 obs_face_o0_e2_j0: 0.7068251811053662 x[1,0] - 0.7073882691671997 x[1,1]
   - obstacle_slack + 100 alpha[0,2,0] <= 101.5704755433161
 obs_face_o0_e3_j0: 0.7073882691672001 x[1,0] + 0.7068251811053656 x[1,1]
   - obstacle_slack + 100 alpha[0,3,0] <= 101.5721648075016
 obs_alpha_sum_o0_j1: alpha[0,0,1] + alpha[0,1,1] + alpha[0,2,1]
   + alpha[0,3,1] >= 1
 obs_face_o0_e0_j1: - 0.7068251811053662 x[2,0] + 0.7073882691671997 x[2,1]
   - obstacle_slack + 100 alpha[0,0,1] <= 97.3295244566839
 obs_face_o0_e1_j1: - 0.7073882691672001 x[2,0] - 0.7068251811053656 x[2,1]
   - obstacle_slack + 100 alpha[0,1,1] <= 97.3278351924984
 obs_face_o0_e2_j1: 0.7068251811053662 x[2,0] - 0.7073882691671997 x[2,1]
   - obstacle_slack + 100 alpha[0,2,1] <= 101.5704755433161
 obs_face_o0_e3_j1: 0.7073882691672001 x[2,0] + 0.7068251811053656 x[2,1]
   - obstacle_slack + 100 alpha[0,3,1] <= 101.5721648075016
 obs_alpha_sum_o0_j2: alpha[0,0,2] + alpha[0,1,2] + alpha[0,2,2]
   + alpha[0,3,2] >= 1
 obs_face_o0_e0_j2: - 0.7068251811053662 x[3,0] + 0.7073882691671997 x[3,1]
   - obstacle_slack + 100 alpha[0,0,2] <= 97.3295244566839
 obs_face_o0_e1_j2: - 0.7073882691672001 x[3,0] - 0.7068251811053656 x[3,1]
   - obstacle_slack + 100 alpha[0,1,2] <= 97.3278351924984
 obs_face_o0_e2_j2: 0.7068251811053662 x[3,0] - 0.7073882691671997 x[3,1]
   - obstacle_slack + 100 alpha[0,2,2] <= 101.5704755433161
 obs_face_o0_e3_j2: 0.7073882691672001 x[3,0] + 0.7068251811053656 x[3,1]
   - obstacle_slack + 100 alpha[0,3,2] <= 101.5721648075016
 obs_alpha_sum_o0_j3: alpha[0,0,3] + alpha[0,1,3] + alpha[0,2,3]
   + alpha[0,3,3] >= 1
 obs_face_o0_e0_j3: - 0.7068251811053662 x[4,0] + 0.7073882691671997 x[4,1]
   - obstacle_slack + 100 alpha[0,0,3] <= 97.3295244566839
 obs_face_o0_e1_j3: - 0.7073882691672001 x[4,0] - 0.7068251811053656 x[4,1]
   - obstacle_slack + 100 alpha[0,1,3] <= 97.3278351924984
 obs_face_o0_e2_j3: 0.7068251811053662 x[4,0] - 0.7073882691671997 x[4,1]
   - obstacle_slack + 100 alpha[0,2,3] <= 101.5704755433161
 obs_face_o0_e3_j3: 0.7073882691672001 x[4,0] + 0.7068251811053656 x[4,1]
   - obstacle_slack + 100 alpha[0,3,3] <= 101.5721648075016
 obs_alpha_sum_o0_j4: alpha[0,0,4] + alpha[0,1,4] + alpha[0,2,4]
   + alpha[0,3,4] >= 1
 obs_face_o0_e0_j4: - 0.7068251811053662 x[5,0] + 0.7073882691671997 x[5,1]
   - obstacle_slack + 100 alpha[0,0,4] <= 97.3295244566839
 obs_face_o0_e1_j4: - 0.7073882691672001 x[5,0] - 0.7068251811053656 x[5,1]
   - obstacle_slack + 100 alpha[0,1,4] <= 97.3278351924984
 obs_face_o0_e2_j4: 0.7068251811053662 x[5,0] - 0.7073882691671997 x[5,1]
   - obstacle_slack + 100 alpha[0,2,4] <= 101.5704755433161
 obs_face_o0_e3_j4: 0.7073882691672001 x[5,0] + 0.7068251811053656 x[5,1]
   - obstacle_slack + 100 alpha[0,3,4] <= 101.5721648075016
 obs_alpha_sum_o0_j5: alpha[0,0,5] + alpha[0,1,5] + alpha[0,2,5]
   + alpha[0,3,5] >= 1
 obs_face_o0_e0_j5: - 0.7068251811053662 x[6,0] + 0.7073882691671997 x[6,1]
   - obstacle_slack + 100 alpha[0,0,5] <= 97.3295244566839
 obs_face_o0_e1_j5: - 0.7073882691672001 x[6,0] - 0.7068251811053656 x[6,1]
   - obstacle_slack + 100 alpha[0,1,5] <= 97.3278351924984
 obs_face_o0_e2_j5: 0.7068251811053662 x[6,0] - 0.7073882691671997 x[6,1]
   - obstacle_slack + 100 alpha[0,2,5] <= 101.5704755433161
 obs_face_o0_e3_j5: 0.7073882691672001 x[6,0] + 0.7068251811053656 x[6,1]
   - obstacle_slack + 100 alpha[0,3,5] <= 101.5721648075016
 obs_alpha_sum_o0_j6: alpha[0,0,6] + alpha[0,1,6] + alpha[0,2,6]
   + alpha[0,3,6] >= 1
 obs_face_o0_e0_j6: - 0.7068251811053662 x[7,0] + 0.7073882691671997 x[7,1]
   - obstacle_slack + 100 alpha[0,0,6] <= 97.3295244566839
 obs_face_o0_e1_j6: - 0.7073882691672001 x[7,0] - 0.7068251811053656 x[7,1]
   - obstacle_slack + 100 alpha[0,1,6] <= 97.3278351924984
 obs_face_o0_e2_j6: 0.7068251811053662 x[7,0] - 0.7073882691671997 x[7,1]
   - obstacle_slack + 100 alpha[0,2,6] <= 101.5704755433161
 obs_face_o0_e3_j6: 0.7073882691672001 x[7,0] + 0.7068251811053656 x[7,1]
   - obstacle_slack + 100 alpha[0,3,6] <= 101.5721648075016
 obs_alpha_sum_o0_j7: alpha[0,0,7] + alpha[0,1,7] + alpha[0,2,7]
   + alpha[0,3,7] >= 1
 obs_face_o0_e0_j7: - 0.7068251811053662 x[8,0] + 0.7073882691671997 x[8,1]
   - obstacle_slack + 100 alpha[0,0,7] <= 97.3295244566839
 obs_face_o0_e1_j7: - 0.7073882691672001 x[8,0] - 0.7068251811053656 x[8,1]
   - obstacle_slack + 100 alpha[0,1,7] <= 97.3278351924984
 obs_face_o0_e2_j7: 0.7068251811053662 x[8,0] - 0.7073882691671997 x[8,1]
   - obstacle_slack + 100 alpha[0,2,7] <= 101.5704755433161
 obs_face_o0_e3_j7: 0.7073882691672001 x[8,0] + 0.7068251811053656 x[8,1]
   - obstacle_slack + 100 alpha[0,3,7] <= 101.5721648075016
 obs_alpha_sum_o0_j8: alpha[0,0,8] + alpha[0,1,8] + alpha[0,2,8]
   + alpha[0,3,8] >= 1
 obs_face_o0_e0_j8: - 0.7068251811053662 x[9,0] + 0.7073882691671997 x[9,1]
   - obstacle_slack + 100 alpha[0,0,8] <= 97.3295244566839
 obs_face_o0_e1_j8: - 0.7073882691672001 x[9,0] - 0.7068251811053656 x[9,1]
   - obstacle_slack + 100 alpha[0,1,8] <= 97.3278351924984
 obs_face_o0_e2_j8: 0.7068251811053662 x[9,0] - 0.7073882691671997 x[9,1]
   - obstacle_slack + 100 alpha[0,2,8] <= 101.5704755433161
 obs_face_o0_e3_j8: 0.7073882691672001 x[9,0] + 0.7068251811053656 x[9,1]
   - obstacle_slack + 100 alpha[0,3,8] <= 101.5721648075016
 obs_alpha_sum_o0_j9: alpha[0,0,9] + alpha[0,1,9] + alpha[0,2,9]
   + alpha[0,3,9] >= 1
 obs_face_o0_e0_j9: - 0.7068251811053662 x[10,0]
   + 0.7073882691671997 x[10,1] - obstacle_slack + 100 alpha[0,0,9]
   <= 97.3295244566839
 obs_face_o0_e1_j9: - 0.7073882691672001 x[10,0]
   - 0.7068251811053656 x[10,1] - obstacle_slack + 100 alpha[0,1,9]
   <= 97.3278351924984
 obs_face_o0_e2_j9: 0.7068251811053662 x[10,0] - 0.7073882691671997 x[10,1]
   - obstacle_slack + 100 alpha[0,2,9] <= 101.5704755433161
 obs_face_o0_e3_j9: 0.7073882691672001 x[10,0] + 0.7068251811053656 x[10,1]
   - obstacle_slack + 100 alpha[0,3,9] <= 101.5721648075016
 obs_alpha_sum_o0_j10: alpha[0,0,10] + alpha[0,1,10] + alpha[0,2,10]
   + alpha[0,3,10] >= 1
 obs_face_o0_e0_j10: - 0.7068251811053662 x[11,0]
   + 0.7073882691671997 x[11,1] - obstacle_slack + 100 alpha[0,0,10]
   <= 97.3295244566839
 obs_face_o0_e1_j10: - 0.7073882691672001 x[11,0]
   - 0.7068251811053656 x[11,1] - obstacle_slack + 100 alpha[0,1,10]
   <= 97.3278351924984
 obs_face_o0_e2_j10: 0.7068251811053662 x[11,0]
   - 0.7073882691671997 x[11,1] - obstacle_slack + 100 alpha[0,2,10]
   <= 101.5704755433161
 obs_face_o0_e3_j10: 0.7073882691672001 x[11,0]
   + 0.7068251811053656 x[11,1] - obstacle_slack + 100 alpha[0,3,10]
   <= 101.5721648075016
 obs_alpha_sum_o0_j11: alpha[0,0,11] + alpha[0,1,11] + alpha[0,2,11]
   + alpha[0,3,11] >= 1
 obs_face_o0_e0_j11: - 0.7068251811053662 x[12,0]
   + 0.7073882691671997 x[12,1] - obstacle_slack + 100 alpha[0,0,11]
   <= 97.3295244566839
 obs_face_o0_e1_j11: - 0.7073882691672001 x[12,0]
   - 0.7068251811053656 x[12,1] - obstacle_slack + 100 alpha[0,1,11]
   <= 97.3278351924984
 obs_face_o0_e2_j11: 0.7068251811053662 x[12,0]
   - 0.7073882691671997 x[12,1] - obstacle_slack + 100 alpha[0,2,11]
   <= 101.5704755433161
 obs_face_o0_e3_j11: 0.7073882691672001 x[12,0]
   + 0.7068251811053656 x[12,1] - obstacle_slack + 100 alpha[0,3,11]
   <= 101.5721648075016
 obs_alpha_sum_o0_j12: alpha[0,0,12] + alpha[0,1,12] + alpha[0,2,12]
   + alpha[0,3,12] >= 1
 obs_face_o0_e0_j12: - 0.7068251811053662 x[13,0]
   + 0.7073882691671997 x[13,1] - obstacle_slack + 100 alpha[0,0,12]
   <= 97.3295244566839
 obs_face_o0_e1_j12: - 0.7073882691672001 x[13,0]
   - 0.7068251811053656 x[13,1] - obstacle_slack + 100 alpha[0,1,12]
   <= 97.3278351924984
 obs_face_o0_e2_j12: 0.7068251811053662 x[13,0]
   - 0.7073882691671997 x[13,1] - obstacle_slack + 100 alpha[0,2,12]
   <= 101.5704755433161
 obs_face_o0_e3_j12: 0.7073882691672001 x[13,0]
   + 0.7068251811053656 x[13,1] - obstacle_slack + 100 alpha[0,3,12]
   <= 101.5721648075016
 obs_alpha_sum_o1_j0: alpha[1,0,0] + alpha[1,1,0] + alpha[1,2,0]
   + alpha[1,3,0] >= 1
 obs_face_o1_e0_j0: - 0.7068251811053662 x[1,0] + 0.7073882691671997 x[1,1]
   - obstacle_slack + 100 alpha[1,0,0] <= 95.20904891336781
 obs_face_o1_e1_j0: - 0.7073882691672001 x[1,0] - 0.7068251811053656 x[1,1]
   - obstacle_slack + 100 alpha[1,1,0] <= 95.20567038499679
 obs_face_o1_e2_j0: 0.7068251811053662 x[1,0] - 0.7073882691671997 x[1,1]
   - obstacle_slack + 100 alpha[1,2,0] <= 103.6909510866322
 obs_face_o1_e3_j0: 0.7073882691672001 x[1,0] + 0.7068251811053656 x[1,1]
   - obstacle_slack + 100 alpha[1,3,0] <= 103.6943296150032
 obs_alpha_sum_o1_j1: alpha[1,0,1] + alpha[1,1,1] + alpha[1,2,1]
   + alpha[1,3,1] >= 1
 obs_face_o1_e0_j1: - 0.7068251811053662 x[2,0] + 0.7073882691671997 x[2,1]
   - obstacle_slack + 100 alpha[1,0,1] <= 95.20904891336781
 obs_face_o1_e1_j1: - 0.7073882691672001 x[2,0] - 0.7068251811053656 x[2,1]
   - obstacle_slack + 100 alpha[1,1,1] <= 95.20567038499679
 obs_face_o1_e2_j1: 0.7068251811053662 x[2,0] - 0.7073882691671997 x[2,1]
   - obstacle_slack + 100 alpha[1,2,1] <= 103.6909510866322
 obs_face_o1_e3_j1: 0.7073882691672001 x[2,0] + 0.7068251811053656 x[2,1]
   - obstacle_slack + 100 alpha[1,3,1] <= 103.6943296150032
 obs_alpha_sum_o1_j2: alpha[1,0,2] + alpha[1,1,2] + alpha[1,2,2]
   + alpha[1,3,2] >= 1
 obs_face_o1_e0_j2: - 0.7068251811053662 x[3,0] + 0.7073882691671997 x[3,1]
   - obstacle_slack + 100 alpha[1,0,2] <= 95.20904891336781
 obs_face_o1_e1_j2: - 0.7073882691672001 x[3,0] - 0.7068251811053656 x[3,1]
   - obstacle_slack + 100 alpha[1,1,2] <= 95.20567038499679
 obs_face_o1_e2_j2: 0.7068251811053662 x[3,0] - 0.7073882691671997 x[3,1]
   - obstacle_slack + 100 alpha[1,2,2] <= 103.6909510866322
 obs_face_o1_e3_j2: 0.7073882691672001 x[3,0] + 0.7068251811053656 x[3,1]
   - obstacle_slack + 100 alpha[1,3,2] <= 103.6943296150032
 obs_alpha_sum_o1_j3: alpha[1,0,3] + alpha[1,1,3] + alpha[1,2,3]
   + alpha[1,3,3] >= 1
 obs_face_o1_e0_j3: - 0.7068251811053662 x[4,0] + 0.7073882691671997 x[4,1]
   - obstacle_slack + 100 alpha[1,0,3] <= 95.20904891336781
 obs_face_o1_e1_j3: - 0.7073882691672001 x[4,0] - 0.7068251811053656 x[4,1]
   - obstacle_slack + 100 alpha[1,1,3] <= 95.20567038499679
 obs_face_o1_e2_j3: 0.7068251811053662 x[4,0] - 0.7073882691671997 x[4,1]
   - obstacle_slack + 100 alpha[1,2,3] <= 103.6909510866322
 obs_face_o1_e3_j3: 0.7073882691672001 x[4,0] + 0.7068251811053656 x[4,1]
   - obstacle_slack + 100 alpha[1,3,3] <= 103.6943296150032
 obs_alpha_sum_o1_j4: alpha[1,0,4] + alpha[1,1,4] + alpha[1,2,4]
   + alpha[1,3,4] >= 1
 obs_face_o1_e0_j4: - 0.7068251811053662 x[5,0] + 0.7073882691671997 x[5,1]
   - obstacle_slack + 100 alpha[1,0,4] <= 95.20904891336781
 obs_face_o1_e1_j4: - 0.7073882691672001 x[5,0] - 0.7068251811053656 x[5,1]
   - obstacle_slack + 100 alpha[1,1,4] <= 95.20567038499679
 obs_face_o1_e2_j4: 0.7068251811053662 x[5,0] - 0.7073882691671997 x[5,1]
   - obstacle_slack + 100 alpha[1,2,4] <= 103.6909510866322
 obs_face_o1_e3_j4: 0.7073882691672001 x[5,0] + 0.7068251811053656 x[5,1]
   - obstacle_slack + 100 alpha[1,3,4] <= 103.6943296150032
 obs_alpha_sum_o1_j5: alpha[1,0,5] + alpha[1,1,5] + alpha[1,2,5]
   + alpha[1,3,5] >= 1
 obs_face_o1_e0_j5: - 0.7068251811053662 x[6,0] + 0.7073882691671997 x[6,1]
   - obstacle_slack + 100 alpha[1,0,5] <= 95.20904891336781
 obs_face_o1_e1_j5: - 0.7073882691672001 x[6,0] - 0.7068251811053656 x[6,1]
   - obstacle_slack + 100 alpha[1,1,5] <= 95.20567038499679
 obs_face_o1_e2_j5: 0.7068251811053662 x[6,0] - 0.7073882691671997 x[6,1]
   - obstacle_slack + 100 alpha[1,2,5] <= 103.6909510866322
 obs_face_o1_e3_j5: 0.7073882691672001 x[6,0] + 0.7068251811053656 x[6,1]
   - obstacle_slack + 100 alpha[1,3,5] <= 103.6943296150032
 obs_alpha_sum_o1_j6: alpha[1,0,6] + alpha[1,1,6] + alpha[1,2,6]
   + alpha[1,3,6] >= 1
 obs_face_o1_e0_j6: - 0.7068251811053662 x[7,0] + 0.7073882691671997 x[7,1]
   - obstacle_slack + 100 alpha[1,0,6] <= 95.20904891336781
 obs_face_o1_e1_j6: - 0.7073882691672001 x[7,0] - 0.7068251811053656 x[7,1]
   - obstacle_slack + 100 alpha[1,1,6] <= 95.20567038499679
 obs_face_o1_e2_j6: 0.7068251811053662 x[7,0] - 0.7073882691671997 x[7,1]
   - obstacle_slack + 100 alpha[1,2,6] <= 103.6909510866322
 obs_face_o1_e3_j6: 0.7073882691672001 x[7,0] + 0.7068251811053656 x[7,1]
   - obstacle_slack + 100 alpha[1,3,6] <= 103.6943296150032
 obs_alpha_sum_o1_j7: alpha[1,0,7] + alpha[1,1,7] + alpha[1,2,7]
   + alpha[1,3,7] >= 1
 obs_face_o1_e0_j7: - 0.7068251811053662 x[8,0] + 0.7073882691671997 x[8,1]
   - obstacle_slack + 100 alpha[1,0,7] <= 95.20904891336781
 obs_face_o1_e1_j7: - 0.7073882691672001 x[8,0] - 0.7068251811053656 x[8,1]
   - obstacle_slack + 100 alpha[1,1,7] <= 95.20567038499679
 obs_face_o1_e2_j7: 0.7068251811053662 x[8,0] - 0.7073882691671997 x[8,1]
   - obstacle_slack + 100 alpha[1,2,7] <= 103.6909510866322
 obs_face_o1_e3_j7: 0.7073882691672001 x[8,0] + 0.7068251811053656 x[8,1]
   - obstacle_slack + 100 alpha[1,3,7] <= 103.6943296150032
 obs_alpha_sum_o1_j8: alpha[1,0,8] + alpha[1,1,8] + alpha[1,2,8]
   + alpha[1,3,8] >= 1
 obs_face_o1_e0_j8: - 0.7068251811053662 x[9,0] + 0.7073882691671997 x[9,1]
   - obstacle_slack + 100 alpha[1,0,8] <= 95.20904891336781
 obs_face_o1_e1_j8: - 0.7073882691672001 x[9,0] - 0.7068251811053656 x[9,1]
   - obstacle_slack + 100 alpha[1,1,8] <= 95.20567038499679
 obs_face_o1_e2_j8: 0.7068251811053662 x[9,0] - 0.7073882691671997 x[9,1]
   - obstacle_slack + 100 alpha[1,2,8] <= 103.6909510866322
 obs_face_o1_e3_j8: 0.7073882691672001 x[9,0] + 0.7068251811053656 x[9,1]
   - obstacle_slack + 100 alpha[1,3,8] <= 103.6943296150032
 obs_alpha_sum_o1_j9: alpha[1,0,9] + alpha[1,1,9] + alpha[1,2,9]
   + alpha[1,3,9] >= 1
 obs_face_o1_e0_j9: - 0.7068251811053662 x[10,0]
   + 0.7073882691671997 x[10,1] - obstacle_slack + 100 alpha[1,0,9]
   <= 95.20904891336781
 obs_face_o1_e1_j9: - 0.7073882691672001 x[10,0]
   - 0.7068251811053656 x[10,1] - obstacle_slack + 100 alpha[1,1,9]
   <= 95.20567038499679
 obs_face_o1_e2_j9: 0.7068251811053662 x[10,0] - 0.7073882691671997 x[10,1]
   - obstacle_slack + 100 alpha[1,2,9] <= 103.6909510866322
 obs_face_o1_e3_j9: 0.7073882691672001 x[10,0] + 0.7068251811053656 x[10,1]
   - obstacle_slack + 100 alpha[1,3,9] <= 103.6943296150032
 obs_alpha_sum_o1_j10: alpha[1,0,10] + alpha[1,1,10] + alpha[1,2,10]
   + alpha[1,3,10] >= 1
 obs_face_o1_e0_j10: - 0.7068251811053662 x[11,0]
   + 0.7073882691671997 x[11,1] - obstacle_slack + 100 alpha[1,0,10]
   <= 95.20904891336781
 obs_face_o1_e1_j10: - 0.7073882691672001 x[11,0]
   - 0.7068251811053656 x[11,1] - obstacle_slack + 100 alpha[1,1,10]
   <= 95.20567038499679
 obs_face_o1_e2_j10: 0.7068251811053662 x[11,0]
   - 0.7073882691671997 x[11,1] - obstacle_slack + 100 alpha[1,2,10]
   <= 103.6909510866322
 obs_face_o1_e3_j10: 0.7073882691672001 x[11,0]
   + 0.7068251811053656 x[11,1] - obstacle_slack + 100 alpha[1,3,10]
   <= 103.6943296150032
 obs_alpha_sum_o1_j11: alpha[1,0,11] + alpha[1,1,11] + alpha[1,2,11]
   + alpha[1,3,11] >= 1
 obs_face_o1_e0_j11: - 0.7068251811053662 x[12,0]
   + 0.7073882691671997 x[12,1] - obstacle_slack + 100 alpha[1,0,11]
   <= 95.20904891336781
 obs_face_o1_e1_j11: - 0.7073882691672001 x[12,0]
   - 0.7068251811053656 x[12,1] - obstacle_slack + 100 alpha[1,1,11]
   <= 95.20567038499679
 obs_face_o1_e2_j11: 0.7068251811053662 x[12,0]
   - 0.7073882691671997 x[12,1] - obstacle_slack + 100 alpha[1,2,11]
   <= 103.6909510866322
 obs_face_o1_e3_j11: 0.7073882691672001 x[12,0]
   + 0.7068251811053656 x[12,1] - obstacle_slack + 100 alpha[1,3,11]
   <= 103.6943296150032
 obs_alpha_sum_o1_j12: alpha[1,0,12] + alpha[1,1,12] + alpha[1,2,12]
   + alpha[1,3,12] >= 1
 obs_face_o1_e0_j12: - 0.7068251811053662 x[13,0]
   + 0.7073882691671997 x[13,1] - obstacle_slack + 100 alpha[1,0,12]
   <= 95.20904891336781
 obs_face_o1_e1_j12: - 0.7073882691672001 x[13,0]
   - 0.7068251811053656 x[13,1] - obstacle_slack + 100 alpha[1,1,12]
   <= 95.20567038499679
 obs_face_o1_e2_j12: 0.7068251811053662 x[13,0]
   - 0.7073882691671997 x[13,1] - obstacle_slack + 100 alpha[1,2,12]
   <= 103.6909510866322
 obs_face_o1_e3_j12: 0.7073882691672001 x[13,0]
   + 0.7068251811053656 x[13,1] - obstacle_slack + 100 alpha[1,3,12]
   <= 103.6943296150032
Bounds
 x[0,0] free
 x[0,1] free
 x[0,2] free
 x[0,3] <= 2
 x[1,0] free
 x[1,1] free
 x[1,2] free
 x[1,3] <= 2
 x[2,0] free
 x[2,1] free
 x[2,2] free
 x[2,3] <= 2
 x[3,0] free
 x[3,1] free
 x[3,2] free
 x[3,3] <= 2
 x[4,0] free
 x[4,1] free
 x[4,2] free
 x[4,3] <= 2
 x[5,0] free
 x[5,1] free
 x[5,2] free
 x[5,3] <= 2
 x[6,0] free
 x[6,1] free
 x[6,2] free
 x[6,3] <= 2
 x[7,0] free
 x[7,1] free
 x[7,2] free
 x[7,3] <= 2
 x[8,0] free
 x[8,1] free
 x[8,2] free
 x[8,3] <= 2
 x[9,0] free
 x[9,1] free
 x[9,2] free
 x[9,3] <= 2
 x[10,0] free
 x[10,1] free
 x[10,2] free
 x[10,3] <= 2
 x[11,0] free
 x[11,1] free
 x[11,2] free
 x[11,3] <= 2
 x[12,0] free
 x[12,1] free
 x[12,2] free
 x[12,3] <= 2
 x[13,0] free
 x[13,1] free
 x[13,2] free
 x[13,3] <= 2
 -0.5236 <= u[0,0] <= 0.5236
 -1 <= u[0,1] <= 1
 -0.5236 <= u[1,0] <= 0.5236
 -1 <= u[1,1] <= 1
 -0.5236 <= u[2,0] <= 0.5236
 -1 <= u[2,1] <= 1
 -0.5236 <= u[3,0] <= 0.5236
 -1 <= u[3,1] <= 1
 -0.5236 <= u[4,0] <= 0.5236
 -1 <= u[4,1] <= 1
 -0.5236 <= u[5,0] <= 0.5236
 -1 <= u[5,1] <= 1
 -0.5236 <= u[6,0] <= 0.5236
 -1 <= u[6,1] <= 1
 -0.5236 <= u[7,0] <= 0.5236
 -1 <= u[7,1] <= 1
 -0.5236 <= u[8,0] <= 0.5236
 -1 <= u[8,1] <= 1
 -0.5236 <= u[9,0] <= 0.5236
 -1 <= u[9,1] <= 1
 -0.5236 <= u[10,0] <= 0.5236
 -1 <= u[10,1] <= 1
 -0.5236 <= u[11,0] <= 0.5236
 -1 <= u[11,1] <= 1
 -0.5236 <= u[12,0] <= 0.5236
 -1 <= u[12,1] <= 1
Binaries
 alpha[0,0,0] alpha[0,0,1] alpha[0,0,2] alpha[0,0,3] alpha[0,0,4]
 alpha[0,0,5] alpha[0,0,6] alpha[0,0,7] alpha[0,0,8] alpha[0,0,9]
 alpha[0,0,10] alpha[0,0,11] alpha[0,0,12] alpha[0,1,0] alpha[0,1,1]
 alpha[0,1,2] alpha[0,1,3] alpha[0,1,4] alpha[0,1,5] alpha[0,1,6]
 alpha[0,1,7] alpha[0,1,8] alpha[0,1,9] alpha[0,1,10] alpha[0,1,11]
 alpha[0,1,12] alpha[0,2,0] alpha[0,2,1] alpha[0,2,2] alpha[0,2,3]
 alpha[0,2,4] alpha[0,2,5] alpha[0,2,6] alpha[0,2,7] alpha[0,2,8]
 alpha[0,2,9] alpha[0,2,10] alpha[0,2,11] alpha[0,2,12] alpha[0,3,0]
 alpha[0,3,1] alpha[0,3,2] alpha[0,3,3] alpha[0,3,4] alpha[0,3,5]
 alpha[0,3,6] alpha[0,3,7] alpha[0,3,8] alpha[0,3,9] alpha[0,3,10]
 alpha[0,3,11] alpha[0,3,12] alpha[1,0,0] alpha[1,0,1] alpha[1,0,2]
 alpha[1,0,3] alpha[1,0,4] alpha[1,0,5] alpha[1,0,6] alpha[1,0,7]
 alpha[1,0,8] alpha[1,0,9] alpha[1,0,10] alpha[1,0,11] alpha[1,0,12]
 alpha[1,1,0] alpha[1,1,1] alpha[1,1,2] alpha[1,1,3] alpha[1,1,4]
 alpha[1,1,5] alpha[1,1,6] alpha[1,1,7] alpha[1,1,8] alpha[1,1,9]
 alpha[1,1,10] alpha[1,1,11] alpha[1,1,12] alpha[1,2,0] alpha[1,2,1]
 alpha[1,2,2] alpha[1,2,3] alpha[1,2,4] alpha[1,2,5] alpha[1,2,6]
 alpha[1,2,7] alpha[1,2,8] alpha[1,2,9] alpha[1,2,10] alpha[1,2,11]
 alpha[1,2,12] alpha[1,3,0] alpha[1,3,1] alpha[1,3,2] alpha[1,3,3]
 alpha[1,3,4] alpha[1,3,5] alpha[1,3,6] alpha[1,3,7] alpha[1,3,8]
 alpha[1,3,9] alpha[1,3,10] alpha[1,3,11] alpha[1,3,12]
General Constraints
\ x[1,0] = x[0,0] + (1.1666666666666667e-02 * ((((x[0,3] * cos(x[0,2])) + 
\ (2 * ((x[0,3] + (0.035 * u[0,1])) * cos(x[0,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[0,3]) * tan(u[0,0]))))))) + (2 * ((x[0,3] + 
\ (0.035 * u[0,1])) * cos(x[0,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[0,3]) + (1.3605442176870750e-01 * u[0,1])) * tan(u[0,0]))))))) + 
\ ((x[0,3] + (0.07 * u[0,1])) * cos(x[0,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[0,3]) + (1.3605442176870750e-01 * u[0,1])) 
\ * tan(u[0,0])))))))
 rk4_X_0: x[1,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[0,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[0,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[0,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[0,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[0,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[0,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[0,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[0,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[0,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[0,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[0,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[0,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[0,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[0,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[0,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[0,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[0,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[0,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[0,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[0,0] , 72 )
\ x[1,1] = x[0,1] + (1.1666666666666667e-02 * ((((x[0,3] * sin(x[0,2])) + 
\ (2 * ((x[0,3] + (0.035 * u[0,1])) * sin(x[0,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[0,3]) * tan(u[0,0]))))))) + (2 * ((x[0,3] + 
\ (0.035 * u[0,1])) * sin(x[0,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[0,3]) + (1.3605442176870750e-01 * u[0,1])) * tan(u[0,0]))))))) + 
\ ((x[0,3] + (0.07 * u[0,1])) * sin(x[0,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[0,3]) + (1.3605442176870750e-01 * u[0,1])) 
\ * tan(u[0,0])))))))
 rk4_Y_0: x[1,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[0,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[0,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[0,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[0,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[0,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[0,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[0,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[0,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[0,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[0,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[0,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[0,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[0,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[0,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[0,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[0,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[0,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[0,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[0,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[0,0] , 72 )
\ x[1,2] = x[0,2] + (1.1666666666666667e-02 * (((((3.8872691933916426e+00 
\ * x[0,3]) * tan(u[0,0])) + (2 * (((3.8872691933916426e+00 * x[0,3]) + 
\ (1.3605442176870750e-01 * u[0,1])) * tan(u[0,0])))) + (2 * 
\ (((3.8872691933916426e+00 * x[0,3]) + (1.3605442176870750e-01 * u[0,1])) 
\ * tan(u[0,0])))) + (((3.8872691933916426e+00 * x[0,3]) + 
\ (0.272108843537415 * u[0,1])) * tan(u[0,0]))))
 rk4_psi_0: x[1,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[0,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[0,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[0,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[0,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[0,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[0,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[0,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[0,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[0,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[0,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[0,1] , 42 ) ( TAN , -1 , 37 ) ( VARIABLE , u[0,0] , 45 )
\ x[2,0] = x[1,0] + (1.1666666666666667e-02 * ((((x[1,3] * cos(x[1,2])) + 
\ (2 * ((x[1,3] + (0.035 * u[1,1])) * cos(x[1,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[1,3]) * tan(u[1,0]))))))) + (2 * ((x[1,3] + 
\ (0.035 * u[1,1])) * cos(x[1,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[1,3]) + (1.3605442176870750e-01 * u[1,1])) * tan(u[1,0]))))))) + 
\ ((x[1,3] + (0.07 * u[1,1])) * cos(x[1,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[1,3]) + (1.3605442176870750e-01 * u[1,1])) 
\ * tan(u[1,0])))))))
 rk4_X_1: x[2,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[1,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[1,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[1,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[1,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[1,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[1,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[1,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[1,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[1,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[1,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[1,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[1,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[1,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[1,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[1,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[1,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[1,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[1,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[1,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[1,0] , 72 )
\ x[2,1] = x[1,1] + (1.1666666666666667e-02 * ((((x[1,3] * sin(x[1,2])) + 
\ (2 * ((x[1,3] + (0.035 * u[1,1])) * sin(x[1,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[1,3]) * tan(u[1,0]))))))) + (2 * ((x[1,3] + 
\ (0.035 * u[1,1])) * sin(x[1,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[1,3]) + (1.3605442176870750e-01 * u[1,1])) * tan(u[1,0]))))))) + 
\ ((x[1,3] + (0.07 * u[1,1])) * sin(x[1,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[1,3]) + (1.3605442176870750e-01 * u[1,1])) 
\ * tan(u[1,0])))))))
 rk4_Y_1: x[2,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[1,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[1,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[1,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[1,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[1,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[1,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[1,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[1,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[1,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[1,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[1,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[1,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[1,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[1,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[1,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[1,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[1,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[1,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[1,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[1,0] , 72 )
\ x[2,2] = x[1,2] + (1.1666666666666667e-02 * (((((3.8872691933916426e+00 
\ * x[1,3]) * tan(u[1,0])) + (2 * (((3.8872691933916426e+00 * x[1,3]) + 
\ (1.3605442176870750e-01 * u[1,1])) * tan(u[1,0])))) + (2 * 
\ (((3.8872691933916426e+00 * x[1,3]) + (1.3605442176870750e-01 * u[1,1])) 
\ * tan(u[1,0])))) + (((3.8872691933916426e+00 * x[1,3]) + 
\ (0.272108843537415 * u[1,1])) * tan(u[1,0]))))
 rk4_psi_1: x[2,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[1,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[1,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[1,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[1,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[1,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[1,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[1,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[1,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[1,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[1,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[1,1] , 42 ) ( TAN , -1 , 37 ) ( VARIABLE , u[1,0] , 45 )
\ x[3,0] = x[2,0] + (1.1666666666666667e-02 * ((((x[2,3] * cos(x[2,2])) + 
\ (2 * ((x[2,3] + (0.035 * u[2,1])) * cos(x[2,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[2,3]) * tan(u[2,0]))))))) + (2 * ((x[2,3] + 
\ (0.035 * u[2,1])) * cos(x[2,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[2,3]) + (1.3605442176870750e-01 * u[2,1])) * tan(u[2,0]))))))) + 
\ ((x[2,3] + (0.07 * u[2,1])) * cos(x[2,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[2,3]) + (1.3605442176870750e-01 * u[2,1])) 
\ * tan(u[2,0])))))))
 rk4_X_2: x[3,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[2,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[2,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[2,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[2,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[2,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[2,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[2,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[2,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[2,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[2,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[2,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[2,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[2,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[2,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[2,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[2,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[2,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[2,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[2,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[2,0] , 72 )
\ x[3,1] = x[2,1] + (1.1666666666666667e-02 * ((((x[2,3] * sin(x[2,2])) + 
\ (2 * ((x[2,3] + (0.035 * u[2,1])) * sin(x[2,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[2,3]) * tan(u[2,0]))))))) + (2 * ((x[2,3] + 
\ (0.035 * u[2,1])) * sin(x[2,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[2,3]) + (1.3605442176870750e-01 * u[2,1])) * tan(u[2,0]))))))) + 
\ ((x[2,3] + (0.07 * u[2,1])) * sin(x[2,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[2,3]) + (1.3605442176870750e-01 * u[2,1])) 
\ * tan(u[2,0])))))))
 rk4_Y_2: x[3,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[2,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[2,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[2,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[2,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[2,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[2,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[2,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[2,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[2,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[2,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[2,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[2,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[2,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[2,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[2,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[2,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[2,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[2,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[2,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[2,0] , 72 )
\ x[3,2] = x[2,2] + (1.1666666666666667e-02 * (((((3.8872691933916426e+00 
\ * x[2,3]) * tan(u[2,0])) + (2 * (((3.8872691933916426e+00 * x[2,3]) + 
\ (1.3605442176870750e-01 * u[2,1])) * tan(u[2,0])))) + (2 * 
\ (((3.8872691933916426e+00 * x[2,3]) + (1.3605442176870750e-01 * u[2,1])) 
\ * tan(u[2,0])))) + (((3.8872691933916426e+00 * x[2,3]) + 
\ (0.272108843537415 * u[2,1])) * tan(u[2,0]))))
 rk4_psi_2: x[3,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[2,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[2,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[2,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[2,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[2,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[2,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[2,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[2,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[2,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[2,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[2,1] , 42 ) ( TAN , -1 , 37 ) ( VARIABLE , u[2,0] , 45 )
\ x[4,0] = x[3,0] + (1.1666666666666667e-02 * ((((x[3,3] * cos(x[3,2])) + 
\ (2 * ((x[3,3] + (0.035 * u[3,1])) * cos(x[3,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[3,3]) * tan(u[3,0]))))))) + (2 * ((x[3,3] + 
\ (0.035 * u[3,1])) * cos(x[3,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[3,3]) + (1.3605442176870750e-01 * u[3,1])) * tan(u[3,0]))))))) + 
\ ((x[3,3] + (0.07 * u[3,1])) * cos(x[3,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[3,3]) + (1.3605442176870750e-01 * u[3,1])) 
\ * tan(u[3,0])))))))
 rk4_X_3: x[4,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[3,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[3,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[3,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[3,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[3,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[3,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[3,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[3,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[3,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[3,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[3,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[3,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[3,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[3,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[3,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[3,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[3,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[3,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[3,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[3,0] , 72 )
\ x[4,1] = x[3,1] + (1.1666666666666667e-02 * ((((x[3,3] * sin(x[3,2])) + 
\ (2 * ((x[3,3] + (0.035 * u[3,1])) * sin(x[3,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[3,3]) * tan(u[3,0]))))))) + (2 * ((x[3,3] + 
\ (0.035 * u[3,1])) * sin(x[3,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[3,3]) + (1.3605442176870750e-01 * u[3,1])) * tan(u[3,0]))))))) + 
\ ((x[3,3] + (0.07 * u[3,1])) * sin(x[3,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[3,3]) + (1.3605442176870750e-01 * u[3,1])) 
\ * tan(u[3,0])))))))
 rk4_Y_3: x[4,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[3,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[3,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[3,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[3,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[3,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[3,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[3,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[3,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[3,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[3,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[3,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[3,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[3,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[3,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[3,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[3,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[3,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[3,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[3,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[3,0] , 72 )
\ x[4,2] = x[3,2] + (1.1666666666666667e-02 * (((((3.8872691933916426e+00 
\ * x[3,3]) * tan(u[3,0])) + (2 * (((3.8872691933916426e+00 * x[3,3]) + 
\ (1.3605442176870750e-01 * u[3,1])) * tan(u[3,0])))) + (2 * 
\ (((3.8872691933916426e+00 * x[3,3]) + (1.3605442176870750e-01 * u[3,1])) 
\ * tan(u[3,0])))) + (((3.8872691933916426e+00 * x[3,3]) + 
\ (0.272108843537415 * u[3,1])) * tan(u[3,0]))))
 rk4_psi_3: x[4,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[3,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[3,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[3,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[3,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[3,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[3,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[3,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[3,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[3,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[3,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[3,1] , 42 ) ( TAN , -1 , 37 ) ( VARIABLE , u[3,0] , 45 )
\ x[5,0] = x[4,0] + (1.1666666666666667e-02 * ((((x[4,3] * cos(x[4,2])) + 
\ (2 * ((x[4,3] + (0.035 * u[4,1])) * cos(x[4,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[4,3]) * tan(u[4,0]))))))) + (2 * ((x[4,3] + 
\ (0.035 * u[4,1])) * cos(x[4,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[4,3]) + (1.3605442176870750e-01 * u[4,1])) * tan(u[4,0]))))))) + 
\ ((x[4,3] + (0.07 * u[4,1])) * cos(x[4,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[4,3]) + (1.3605442176870750e-01 * u[4,1])) 
\ * tan(u[4,0])))))))
 rk4_X_4: x[5,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[4,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[4,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[4,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[4,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[4,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[4,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[4,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[4,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[4,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[4,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[4,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[4,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[4,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[4,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[4,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[4,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[4,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[4,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[4,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[4,0] , 72 )
\ x[5,1] = x[4,1] + (1.1666666666666667e-02 * ((((x[4,3] * sin(x[4,2])) + 
\ (2 * ((x[4,3] + (0.035 * u[4,1])) * sin(x[4,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[4,3]) * tan(u[4,0]))))))) + (2 * ((x[4,3] + 
\ (0.035 * u[4,1])) * sin(x[4,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[4,3]) + (1.3605442176870750e-01 * u[4,1])) * tan(u[4,0]))))))) + 
\ ((x[4,3] + (0.07 * u[4,1])) * sin(x[4,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[4,3]) + (1.3605442176870750e-01 * u[4,1])) 
\ * tan(u[4,0])))))))
 rk4_Y_4: x[5,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[4,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[4,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[4,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[4,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[4,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[4,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[4,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[4,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[4,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[4,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[4,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[4,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[4,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[4,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[4,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[4,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[4,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[4,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[4,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[4,0] , 72 )
\ x[5,2] = x[4,2] + (1.1666666666666667e-02 * (((((3.8872691933916426e+00 
\ * x[4,3]) * tan(u[4,0])) + (2 * (((3.8872691933916426e+00 * x[4,3]) + 
\ (1.3605442176870750e-01 * u[4,1])) * tan(u[4,0])))) + (2 * 
\ (((3.8872691933916426e+00 * x[4,3]) + (1.3605442176870750e-01 * u[4,1])) 
\ * tan(u[4,0])))) + (((3.8872691933916426e+00 * x[4,3]) + 
\ (0.272108843537415 * u[4,1])) * tan(u[4,0]))))
 rk4_psi_4: x[5,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[4,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[4,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[4,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[4,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[4,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[4,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[4,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[4,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[4,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[4,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[4,1] , 42 ) ( TAN , -1 , 37 ) ( VARIABLE , u[4,0] , 45 )
\ x[6,0] = x[5,0] + (1.1666666666666667e-02 * ((((x[5,3] * cos(x[5,2])) + 
\ (2 * ((x[5,3] + (0.035 * u[5,1])) * cos(x[5,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[5,3]) * tan(u[5,0]))))))) + (2 * ((x[5,3] + 
\ (0.035 * u[5,1])) * cos(x[5,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[5,3]) + (1.3605442176870750e-01 * u[5,1])) * tan(u[5,0]))))))) + 
\ ((x[5,3] + (0.07 * u[5,1])) * cos(x[5,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[5,3]) + (1.3605442176870750e-01 * u[5,1])) 
\ * tan(u[5,0])))))))
 rk4_X_5: x[6,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[5,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[5,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[5,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[5,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[5,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[5,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[5,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[5,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[5,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[5,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[5,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[5,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[5,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[5,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[5,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[5,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[5,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[5,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[5,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[5,0] , 72 )
\ x[6,1] = x[5,1] + (1.1666666666666667e-02 * ((((x[5,3] * sin(x[5,2])) + 
\ (2 * ((x[5,3] + (0.035 * u[5,1])) * sin(x[5,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[5,3]) * tan(u[5,0]))))))) + (2 * ((x[5,3] + 
\ (0.035 * u[5,1])) * sin(x[5,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[5,3]) + (1.3605442176870750e-01 * u[5,1])) * tan(u[5,0]))))))) + 
\ ((x[5,3] + (0.07 * u[5,1])) * sin(x[5,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[5,3]) + (1.3605442176870750e-01 * u[5,1])) 
\ * tan(u[5,0])))))))
 rk4_Y_5: x[6,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[5,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[5,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[5,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[5,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[5,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[5,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[5,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[5,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[5,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[5,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[5,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[5,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[5,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[5,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[5,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[5,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[5,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[5,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[5,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[5,0] , 72 )
\ x[6,2] = x[5,2] + (1.1666666666666667e-02 * (((((3.8872691933916426e+00 
\ * x[5,3]) * tan(u[5,0])) + (2 * (((3.8872691933916426e+00 * x[5,3]) + 
\ (1.3605442176870750e-01 * u[5,1])) * tan(u[5,0])))) + (2 * 
\ (((3.8872691933916426e+00 * x[5,3]) + (1.3605442176870750e-01 * u[5,1])) 
\ * tan(u[5,0])))) + (((3.8872691933916426e+00 * x[5,3]) + 
\ (0.272108843537415 * u[5,1])) * tan(u[5,0]))))
 rk4_psi_5: x[6,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[5,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[5,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[5,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[5,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[5,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[5,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[5,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[5,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[5,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[5,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[5,1] , 42 ) ( TAN , -1 , 37 ) ( VARIABLE , u[5,0] , 45 )
\ x[7,0] = x[6,0] + (1.1666666666666667e-02 * ((((x[6,3] * cos(x[6,2])) + 
\ (2 * ((x[6,3] + (0.035 * u[6,1])) * cos(x[6,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[6,3]) * tan(u[6,0]))))))) + (2 * ((x[6,3] + 
\ (0.035 * u[6,1])) * cos(x[6,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[6,3]) + (1.3605442176870750e-01 * u[6,1])) * tan(u[6,0]))))))) + 
\ ((x[6,3] + (0.07 * u[6,1])) * cos(x[6,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[6,3]) + (1.3605442176870750e-01 * u[6,1])) 
\ * tan(u[6,0])))))))
 rk4_X_6: x[7,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[6,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[6,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[6,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[6,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[6,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[6,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[6,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[6,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[6,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[6,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[6,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[6,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[6,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[6,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[6,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[6,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[6,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[6,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[6,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[6,0] , 72 )
\ x[7,1] = x[6,1] + (1.1666666666666667e-02 * ((((x[6,3] * sin(x[6,2])) + 
\ (2 * ((x[6,3] + (0.035 * u[6,1])) * sin(x[6,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[6,3]) * tan(u[6,0]))))))) + (2 * ((x[6,3] + 
\ (0.035 * u[6,1])) * sin(x[6,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[6,3]) + (1.3605442176870750e-01 * u[6,1])) * tan(u[6,0]))))))) + 
\ ((x[6,3] + (0.07 * u[6,1])) * sin(x[6,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[6,3]) + (1.3605442176870750e-01 * u[6,1])) 
\ * tan(u[6,0])))))))
 rk4_Y_6: x[7,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[6,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[6,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[6,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[6,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[6,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[6,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[6,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[6,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[6,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[6,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[6,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[6,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[6,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[6,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[6,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[6,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[6,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[6,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[6,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[6,0] , 72 )
\ x[7,2] = x[6,2] + (1.1666666666666667e-02 * (((((3.8872691933916426e+00 
\ * x[6,3]) * tan(u[6,0])) + (2 * (((3.8872691933916426e+00 * x[6,3]) + 
\ (1.3605442176870750e-01 * u[6,1])) * tan(u[6,0])))) + (2 * 
\ (((3.8872691933916426e+00 * x[6,3]) + (1.3605442176870750e-01 * u[6,1])) 
\ * tan(u[6,0])))) + (((3.8872691933916426e+00 * x[6,3]) + 
\ (0.272108843537415 * u[6,1])) * tan(u[6,0]))))
 rk4_psi_6: x[7,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[6,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[6,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[6,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[6,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[6,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[6,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[6,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[6,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[6,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[6,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[6,1] , 42 ) ( TAN , -1 , 37 ) ( VARIABLE , u[6,0] , 45 )
\ x[8,0] = x[7,0] + (1.1666666666666667e-02 * ((((x[7,3] * cos(x[7,2])) + 
\ (2 * ((x[7,3] + (0.035 * u[7,1])) * cos(x[7,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[7,3]) * tan(u[7,0]))))))) + (2 * ((x[7,3] + 
\ (0.035 * u[7,1])) * cos(x[7,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[7,3]) + (1.3605442176870750e-01 * u[7,1])) * tan(u[7,0]))))))) + 
\ ((x[7,3] + (0.07 * u[7,1])) * cos(x[7,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[7,3]) + (1.3605442176870750e-01 * u[7,1])) 
\ * tan(u[7,0])))))))
 rk4_X_7: x[8,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[7,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[7,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[7,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[7,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[7,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[7,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[7,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[7,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[7,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[7,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[7,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[7,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[7,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[7,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[7,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[7,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[7,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[7,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[7,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[7,0] , 72 )
\ x[8,1] = x[7,1] + (1.1666666666666667e-02 * ((((x[7,3] * sin(x[7,2])) + 
\ (2 * ((x[7,3] + (0.035 * u[7,1])) * sin(x[7,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[7,3]) * tan(u[7,0]))))))) + (2 * ((x[7,3] + 
\ (0.035 * u[7,1])) * sin(x[7,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[7,3]) + (1.3605442176870750e-01 * u[7,1])) * tan(u[7,0]))))))) + 
\ ((x[7,3] + (0.07 * u[7,1])) * sin(x[7,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[7,3]) + (1.3605442176870750e-01 * u[7,1])) 
\ * tan(u[7,0])))))))
 rk4_Y_7: x[8,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[7,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[7,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[7,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[7,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[7,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[7,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[7,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[7,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[7,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[7,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[7,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[7,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[7,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[7,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[7,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[7,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[7,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[7,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[7,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[7,0] , 72 )
\ x[8,2] = x[7,2] + (1.1666666666666667e-02 * (((((3.8872691933916426e+00 
\ * x[7,3]) * tan(u[7,0])) + (2 * (((3.8872691933916426e+00 * x[7,3]) + 
\ (1.3605442176870750e-01 * u[7,1])) * tan(u[7,0])))) + (2 * 
\ (((3.8872691933916426e+00 * x[7,3]) + (1.3605442176870750e-01 * u[7,1])) 
\ * tan(u[7,0])))) + (((3.8872691933916426e+00 * x[7,3]) + 
\ (0.272108843537415 * u[7,1])) * tan(u[7,0]))))
 rk4_psi_7: x[8,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[7,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[7,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[7,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[7,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[7,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[7,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[7,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[7,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[7,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[7,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[7,1] , 42 ) ( TAN , -1 , 37 ) ( VARIABLE , u[7,0] , 45 )
\ x[9,0] = x[8,0] + (1.1666666666666667e-02 * ((((x[8,3] * cos(x[8,2])) + 
\ (2 * ((x[8,3] + (0.035 * u[8,1])) * cos(x[8,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[8,3]) * tan(u[8,0]))))))) + (2 * ((x[8,3] + 
\ (0.035 * u[8,1])) * cos(x[8,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[8,3]) + (1.3605442176870750e-01 * u[8,1])) * tan(u[8,0]))))))) + 
\ ((x[8,3] + (0.07 * u[8,1])) * cos(x[8,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[8,3]) + (1.3605442176870750e-01 * u[8,1])) 
\ * tan(u[8,0])))))))
 rk4_X_8: x[9,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[8,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[8,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[8,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[8,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[8,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[8,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[8,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[8,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[8,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[8,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[8,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[8,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[8,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[8,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[8,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[8,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[8,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[8,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[8,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[8,0] , 72 )
\ x[9,1] = x[8,1] + (1.1666666666666667e-02 * ((((x[8,3] * sin(x[8,2])) + 
\ (2 * ((x[8,3] + (0.035 * u[8,1])) * sin(x[8,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[8,3]) * tan(u[8,0]))))))) + (2 * ((x[8,3] + 
\ (0.035 * u[8,1])) * sin(x[8,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[8,3]) + (1.3605442176870750e-01 * u[8,1])) * tan(u[8,0]))))))) + 
\ ((x[8,3] + (0.07 * u[8,1])) * sin(x[8,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[8,3]) + (1.3605442176870750e-01 * u[8,1])) 
\ * tan(u[8,0])))))))
 rk4_Y_8: x[9,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[8,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[8,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[8,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[8,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[8,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[8,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[8,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[8,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[8,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[8,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[8,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[8,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[8,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[8,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[8,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[8,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[8,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[8,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[8,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[8,0] , 72 )
\ x[9,2] = x[8,2] + (1.1666666666666667e-02 * (((((3.8872691933916426e+00 
\ * x[8,3]) * tan(u[8,0])) + (2 * (((3.8872691933916426e+00 * x[8,3]) + 
\ (1.3605442176870750e-01 * u[8,1])) * tan(u[8,0])))) + (2 * 
\ (((3.8872691933916426e+00 * x[8,3]) + (1.3605442176870750e-01 * u[8,1])) 
\ * tan(u[8,0])))) + (((3.8872691933916426e+00 * x[8,3]) + 
\ (0.272108843537415 * u[8,1])) * tan(u[8,0]))))
 rk4_psi_8: x[9,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[8,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[8,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[8,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[8,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[8,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[8,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[8,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[8,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[8,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[8,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[8,1] , 42 ) ( TAN , -1 , 37 ) ( VARIABLE , u[8,0] , 45 )
\ x[10,0] = x[9,0] + (1.1666666666666667e-02 * ((((x[9,3] * cos(x[9,2])) + 
\ (2 * ((x[9,3] + (0.035 * u[9,1])) * cos(x[9,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[9,3]) * tan(u[9,0]))))))) + (2 * ((x[9,3] + 
\ (0.035 * u[9,1])) * cos(x[9,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[9,3]) + (1.3605442176870750e-01 * u[9,1])) * tan(u[9,0]))))))) + 
\ ((x[9,3] + (0.07 * u[9,1])) * cos(x[9,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[9,3]) + (1.3605442176870750e-01 * u[9,1])) 
\ * tan(u[9,0])))))))
 rk4_X_9: x[10,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[9,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[9,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[9,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[9,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[9,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[9,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[9,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[9,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[9,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[9,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[9,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[9,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[9,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[9,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[9,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[9,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[9,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[9,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[9,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[9,0] , 72 )
\ x[10,1] = x[9,1] + (1.1666666666666667e-02 * ((((x[9,3] * sin(x[9,2])) + 
\ (2 * ((x[9,3] + (0.035 * u[9,1])) * sin(x[9,2] + (0.035 * 
\ ((3.8872691933916426e+00 * x[9,3]) * tan(u[9,0]))))))) + (2 * ((x[9,3] + 
\ (0.035 * u[9,1])) * sin(x[9,2] + (0.035 * (((3.8872691933916426e+00 * 
\ x[9,3]) + (1.3605442176870750e-01 * u[9,1])) * tan(u[9,0]))))))) + 
\ ((x[9,3] + (0.07 * u[9,1])) * sin(x[9,2] + (0.07 * 
\ (((3.8872691933916426e+00 * x[9,3]) + (1.3605442176870750e-01 * u[9,1])) 
\ * tan(u[9,0])))))))
 rk4_Y_9: x[10,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[9,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[9,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[9,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[9,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[9,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[9,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[9,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[9,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[9,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[9,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[9,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[9,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[9,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[9,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[9,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[9,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[9,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[9,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[9,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[9,0] , 72 )
\ x[10,2] = x[9,2] + (1.1666666666666667e-02 * (((((3.8872691933916426e+00 
\ * x[9,3]) * tan(u[9,0])) + (2 * (((3.8872691933916426e+00 * x[9,3]) + 
\ (1.3605442176870750e-01 * u[9,1])) * tan(u[9,0])))) + (2 * 
\ (((3.8872691933916426e+00 * x[9,3]) + (1.3605442176870750e-01 * u[9,1])) 
\ * tan(u[9,0])))) + (((3.8872691933916426e+00 * x[9,3]) + 
\ (0.272108843537415 * u[9,1])) * tan(u[9,0]))))
 rk4_psi_9: x[10,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[9,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[9,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[9,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[9,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[9,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[9,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[9,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[9,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[9,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[9,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[9,1] , 42 ) ( TAN , -1 , 37 ) ( VARIABLE , u[9,0] , 45 )
\ x[11,0] = x[10,0] + (1.1666666666666667e-02 * ((((x[10,3] * 
\ cos(x[10,2])) + (2 * ((x[10,3] + (0.035 * u[10,1])) * cos(x[10,2] + 
\ (0.035 * ((3.8872691933916426e+00 * x[10,3]) * tan(u[10,0]))))))) + (2 * 
\ ((x[10,3] + (0.035 * u[10,1])) * cos(x[10,2] + (0.035 * 
\ (((3.8872691933916426e+00 * x[10,3]) + (1.3605442176870750e-01 * 
\ u[10,1])) * tan(u[10,0]))))))) + ((x[10,3] + (0.07 * u[10,1])) * 
\ cos(x[10,2] + (0.07 * (((3.8872691933916426e+00 * x[10,3]) + 
\ (1.3605442176870750e-01 * u[10,1])) * tan(u[10,0])))))))
 rk4_X_10: x[11,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[10,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[10,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[10,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[10,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[10,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[10,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[10,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[10,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[10,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[10,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[10,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[10,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[10,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[10,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[10,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[10,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[10,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[10,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[10,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[10,0] , 72 )
\ x[11,1] = x[10,1] + (1.1666666666666667e-02 * ((((x[10,3] * 
\ sin(x[10,2])) + (2 * ((x[10,3] + (0.035 * u[10,1])) * sin(x[10,2] + 
\ (0.035 * ((3.8872691933916426e+00 * x[10,3]) * tan(u[10,0]))))))) + (2 * 
\ ((x[10,3] + (0.035 * u[10,1])) * sin(x[10,2] + (0.035 * 
\ (((3.8872691933916426e+00 * x[10,3]) + (1.3605442176870750e-01 * 
\ u[10,1])) * tan(u[10,0]))))))) + ((x[10,3] + (0.07 * u[10,1])) * 
\ sin(x[10,2] + (0.07 * (((3.8872691933916426e+00 * x[10,3]) + 
\ (1.3605442176870750e-01 * u[10,1])) * tan(u[10,0])))))))
 rk4_Y_10: x[11,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[10,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[10,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[10,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[10,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[10,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[10,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[10,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[10,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[10,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[10,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[10,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[10,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[10,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[10,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[10,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[10,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[10,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[10,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[10,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[10,0] , 72 )
\ x[11,2] = x[10,2] + (1.1666666666666667e-02 * 
\ (((((3.8872691933916426e+00 * x[10,3]) * tan(u[10,0])) + (2 * 
\ (((3.8872691933916426e+00 * x[10,3]) + (1.3605442176870750e-01 * 
\ u[10,1])) * tan(u[10,0])))) + (2 * (((3.8872691933916426e+00 * x[10,3]) 
\ + (1.3605442176870750e-01 * u[10,1])) * tan(u[10,0])))) + 
\ (((3.8872691933916426e+00 * x[10,3]) + (0.272108843537415 * u[10,1])) * 
\ tan(u[10,0]))))
 rk4_psi_10: x[11,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[10,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[10,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[10,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[10,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[10,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[10,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[10,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[10,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[10,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[10,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[10,1] , 42 ) ( TAN , -1 , 37 ) 
  ( VARIABLE , u[10,0] , 45 )
\ x[12,0] = x[11,0] + (1.1666666666666667e-02 * ((((x[11,3] * 
\ cos(x[11,2])) + (2 * ((x[11,3] + (0.035 * u[11,1])) * cos(x[11,2] + 
\ (0.035 * ((3.8872691933916426e+00 * x[11,3]) * tan(u[11,0]))))))) + (2 * 
\ ((x[11,3] + (0.035 * u[11,1])) * cos(x[11,2] + (0.035 * 
\ (((3.8872691933916426e+00 * x[11,3]) + (1.3605442176870750e-01 * 
\ u[11,1])) * tan(u[11,0]))))))) + ((x[11,3] + (0.07 * u[11,1])) * 
\ cos(x[11,2] + (0.07 * (((3.8872691933916426e+00 * x[11,3]) + 
\ (1.3605442176870750e-01 * u[11,1])) * tan(u[11,0])))))))
 rk4_X_11: x[12,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[11,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[11,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[11,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[11,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[11,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[11,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[11,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[11,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[11,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[11,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[11,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[11,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[11,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[11,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[11,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[11,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[11,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[11,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[11,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[11,0] , 72 )
\ x[12,1] = x[11,1] + (1.1666666666666667e-02 * ((((x[11,3] * 
\ sin(x[11,2])) + (2 * ((x[11,3] + (0.035 * u[11,1])) * sin(x[11,2] + 
\ (0.035 * ((3.8872691933916426e+00 * x[11,3]) * tan(u[11,0]))))))) + (2 * 
\ ((x[11,3] + (0.035 * u[11,1])) * sin(x[11,2] + (0.035 * 
\ (((3.8872691933916426e+00 * x[11,3]) + (1.3605442176870750e-01 * 
\ u[11,1])) * tan(u[11,0]))))))) + ((x[11,3] + (0.07 * u[11,1])) * 
\ sin(x[11,2] + (0.07 * (((3.8872691933916426e+00 * x[11,3]) + 
\ (1.3605442176870750e-01 * u[11,1])) * tan(u[11,0])))))))
 rk4_Y_11: x[12,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[11,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[11,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[11,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[11,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[11,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[11,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[11,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[11,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[11,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[11,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[11,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[11,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[11,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[11,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[11,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[11,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[11,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[11,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[11,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[11,0] , 72 )
\ x[12,2] = x[11,2] + (1.1666666666666667e-02 * 
\ (((((3.8872691933916426e+00 * x[11,3]) * tan(u[11,0])) + (2 * 
\ (((3.8872691933916426e+00 * x[11,3]) + (1.3605442176870750e-01 * 
\ u[11,1])) * tan(u[11,0])))) + (2 * (((3.8872691933916426e+00 * x[11,3]) 
\ + (1.3605442176870750e-01 * u[11,1])) * tan(u[11,0])))) + 
\ (((3.8872691933916426e+00 * x[11,3]) + (0.272108843537415 * u[11,1])) * 
\ tan(u[11,0]))))
 rk4_psi_11: x[12,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[11,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[11,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[11,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[11,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[11,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[11,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[11,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[11,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[11,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[11,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[11,1] , 42 ) ( TAN , -1 , 37 ) 
  ( VARIABLE , u[11,0] , 45 )
\ x[13,0] = x[12,0] + (1.1666666666666667e-02 * ((((x[12,3] * 
\ cos(x[12,2])) + (2 * ((x[12,3] + (0.035 * u[12,1])) * cos(x[12,2] + 
\ (0.035 * ((3.8872691933916426e+00 * x[12,3]) * tan(u[12,0]))))))) + (2 * 
\ ((x[12,3] + (0.035 * u[12,1])) * cos(x[12,2] + (0.035 * 
\ (((3.8872691933916426e+00 * x[12,3]) + (1.3605442176870750e-01 * 
\ u[12,1])) * tan(u[12,0]))))))) + ((x[12,3] + (0.07 * u[12,1])) * 
\ cos(x[12,2] + (0.07 * (((3.8872691933916426e+00 * x[12,3]) + 
\ (1.3605442176870750e-01 * u[12,1])) * tan(u[12,0])))))))
 rk4_X_12: x[13,0] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[12,0] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[12,3] , 7 ) ( COS , -1 , 7 ) 
  ( VARIABLE , x[12,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[12,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[12,1] , 16 ) ( COS , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[12,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[12,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[12,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[12,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[12,1] , 35 ) ( COS , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[12,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[12,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[12,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[12,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[12,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[12,1] , 56 ) ( COS , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[12,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[12,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[12,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[12,0] , 72 )
\ x[13,1] = x[12,1] + (1.1666666666666667e-02 * ((((x[12,3] * 
\ sin(x[12,2])) + (2 * ((x[12,3] + (0.035 * u[12,1])) * sin(x[12,2] + 
\ (0.035 * ((3.8872691933916426e+00 * x[12,3]) * tan(u[12,0]))))))) + (2 * 
\ ((x[12,3] + (0.035 * u[12,1])) * sin(x[12,2] + (0.035 * 
\ (((3.8872691933916426e+00 * x[12,3]) + (1.3605442176870750e-01 * 
\ u[12,1])) * tan(u[12,0]))))))) + ((x[12,3] + (0.07 * u[12,1])) * 
\ sin(x[12,2] + (0.07 * (((3.8872691933916426e+00 * x[12,3]) + 
\ (1.3605442176870750e-01 * u[12,1])) * tan(u[12,0])))))))
 rk4_Y_12: x[13,1] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[12,1] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( VARIABLE , x[12,3] , 7 ) ( SIN , -1 , 7 ) 
  ( VARIABLE , x[12,2] , 9 ) ( MULTIPLY , -1 , 6 ) ( CONSTANT , 2 , 11 ) 
  ( MULTIPLY , -1 , 11 ) ( PLUS , -1 , 13 ) ( VARIABLE , x[12,3] , 14 ) 
  ( MULTIPLY , -1 , 14 ) ( CONSTANT , 0.035 , 16 ) 
  ( VARIABLE , u[12,1] , 16 ) ( SIN , -1 , 13 ) ( PLUS , -1 , 19 ) 
  ( VARIABLE , x[12,2] , 20 ) ( MULTIPLY , -1 , 20 ) 
  ( CONSTANT , 0.035 , 22 ) ( MULTIPLY , -1 , 22 ) ( MULTIPLY , -1 , 24 ) 
  ( CONSTANT , 3.887269193391643 , 25 ) ( VARIABLE , x[12,3] , 25 ) 
  ( TAN , -1 , 24 ) ( VARIABLE , u[12,0] , 28 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 30 ) ( MULTIPLY , -1 , 30 ) ( PLUS , -1 , 32 ) 
  ( VARIABLE , x[12,3] , 33 ) ( MULTIPLY , -1 , 33 ) 
  ( CONSTANT , 0.035 , 35 ) ( VARIABLE , u[12,1] , 35 ) ( SIN , -1 , 32 ) 
  ( PLUS , -1 , 38 ) ( VARIABLE , x[12,2] , 39 ) ( MULTIPLY , -1 , 39 ) 
  ( CONSTANT , 0.035 , 41 ) ( MULTIPLY , -1 , 41 ) ( PLUS , -1 , 43 ) 
  ( MULTIPLY , -1 , 44 ) ( CONSTANT , 3.887269193391643 , 45 ) 
  ( VARIABLE , x[12,3] , 45 ) ( MULTIPLY , -1 , 44 ) 
  ( CONSTANT , 0.1360544217687075 , 48 ) ( VARIABLE , u[12,1] , 48 ) 
  ( TAN , -1 , 43 ) ( VARIABLE , u[12,0] , 51 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 53 ) ( VARIABLE , x[12,3] , 54 ) ( MULTIPLY , -1 , 54 ) 
  ( CONSTANT , 0.07 , 56 ) ( VARIABLE , u[12,1] , 56 ) ( SIN , -1 , 53 ) 
  ( PLUS , -1 , 59 ) ( VARIABLE , x[12,2] , 60 ) ( MULTIPLY , -1 , 60 ) 
  ( CONSTANT , 0.07 , 62 ) ( MULTIPLY , -1 , 62 ) ( PLUS , -1 , 64 ) 
  ( MULTIPLY , -1 , 65 ) ( CONSTANT , 3.887269193391643 , 66 ) 
  ( VARIABLE , x[12,3] , 66 ) ( MULTIPLY , -1 , 65 ) 
  ( CONSTANT , 0.1360544217687075 , 69 ) ( VARIABLE , u[12,1] , 69 ) 
  ( TAN , -1 , 64 ) ( VARIABLE , u[12,0] , 72 )
\ x[13,2] = x[12,2] + (1.1666666666666667e-02 * 
\ (((((3.8872691933916426e+00 * x[12,3]) * tan(u[12,0])) + (2 * 
\ (((3.8872691933916426e+00 * x[12,3]) + (1.3605442176870750e-01 * 
\ u[12,1])) * tan(u[12,0])))) + (2 * (((3.8872691933916426e+00 * x[12,3]) 
\ + (1.3605442176870750e-01 * u[12,1])) * tan(u[12,0])))) + 
\ (((3.8872691933916426e+00 * x[12,3]) + (0.272108843537415 * u[12,1])) * 
\ tan(u[12,0]))))
 rk4_psi_12: x[13,2] = NL : ( PLUS , -1 , -1 ) ( VARIABLE , x[12,2] , 0 ) 
  ( MULTIPLY , -1 , 0 ) ( CONSTANT , 0.0116666666666667 , 2 ) 
  ( PLUS , -1 , 2 ) ( PLUS , -1 , 4 ) ( PLUS , -1 , 5 ) 
  ( MULTIPLY , -1 , 6 ) ( MULTIPLY , -1 , 7 ) 
  ( CONSTANT , 3.887269193391643 , 8 ) ( VARIABLE , x[12,3] , 8 ) 
  ( TAN , -1 , 7 ) ( VARIABLE , u[12,0] , 11 ) ( MULTIPLY , -1 , 6 ) 
  ( CONSTANT , 2 , 13 ) ( MULTIPLY , -1 , 13 ) ( PLUS , -1 , 15 ) 
  ( MULTIPLY , -1 , 16 ) ( CONSTANT , 3.887269193391643 , 17 ) 
  ( VARIABLE , x[12,3] , 17 ) ( MULTIPLY , -1 , 16 ) 
  ( CONSTANT , 0.1360544217687075 , 20 ) ( VARIABLE , u[12,1] , 20 ) 
  ( TAN , -1 , 15 ) ( VARIABLE , u[12,0] , 23 ) ( MULTIPLY , -1 , 5 ) 
  ( CONSTANT , 2 , 25 ) ( MULTIPLY , -1 , 25 ) ( PLUS , -1 , 27 ) 
  ( MULTIPLY , -1 , 28 ) ( CONSTANT , 3.887269193391643 , 29 ) 
  ( VARIABLE , x[12,3] , 29 ) ( MULTIPLY , -1 , 28 ) 
  ( CONSTANT , 0.1360544217687075 , 32 ) ( VARIABLE , u[12,1] , 32 ) 
  ( TAN , -1 , 27 ) ( VARIABLE , u[12,0] , 35 ) ( MULTIPLY , -1 , 4 ) 
  ( PLUS , -1 , 37 ) ( MULTIPLY , -1 , 38 ) 
  ( CONSTANT , 3.887269193391643 , 39 ) ( VARIABLE , x[12,3] , 39 ) 
  ( MULTIPLY , -1 , 38 ) ( CONSTANT , 0.272108843537415 , 42 ) 
  ( VARIABLE , u[12,1] , 42 ) ( TAN , -1 , 37 ) 
  ( VARIABLE , u[12,0] , 45 )
End
