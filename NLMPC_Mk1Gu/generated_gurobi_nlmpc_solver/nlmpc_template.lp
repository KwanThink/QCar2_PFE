\ Model qcar2_single_track_nlmpc_mk1gu
\ LP format - for model browsing. Use MPS format to capture full model detail.
\ Signature: 0x286edf68eb44f214
Minimize
  0 x[1,0] + 0 x[1,1] + 0 x[1,2] + 0 x[2,0] + 0 x[2,1] + 0 x[2,2] + 0 x[3,0]
   + 0 x[3,1] + 0 x[3,2] + 0 x[4,0] + 0 x[4,1] + 0 x[4,2] + 0 x[5,0]
   + 0 x[5,1] + 0 x[5,2] + 0 x[6,0] + 0 x[6,1] + 0 x[6,2] + 0 x[7,0]
   + 0 x[7,1] + 0 x[7,2] + 0 x[8,0] + 0 x[8,1] + 0 x[8,2] + 0 x[9,0]
   + 0 x[9,1] + 0 x[9,2] + 0 x[10,0] + 0 x[10,1] + 0 x[10,2] + 0 u[0,0]
   + 0 u[1,0] + 0 u[2,0] + 0 u[3,0] + 0 u[4,0] + 0 u[5,0] + 0 u[6,0]
   + 0 u[7,0] + 0 u[8,0] + 0 u[9,0]
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
Bounds
 x[0,0] free
 x[0,1] free
 x[0,2] free
 -1 <= x[0,3] <= 1
 x[1,0] free
 x[1,1] free
 x[1,2] free
 -1 <= x[1,3] <= 1
 x[2,0] free
 x[2,1] free
 x[2,2] free
 -1 <= x[2,3] <= 1
 x[3,0] free
 x[3,1] free
 x[3,2] free
 -1 <= x[3,3] <= 1
 x[4,0] free
 x[4,1] free
 x[4,2] free
 -1 <= x[4,3] <= 1
 x[5,0] free
 x[5,1] free
 x[5,2] free
 -1 <= x[5,3] <= 1
 x[6,0] free
 x[6,1] free
 x[6,2] free
 -1 <= x[6,3] <= 1
 x[7,0] free
 x[7,1] free
 x[7,2] free
 -1 <= x[7,3] <= 1
 x[8,0] free
 x[8,1] free
 x[8,2] free
 -1 <= x[8,3] <= 1
 x[9,0] free
 x[9,1] free
 x[9,2] free
 -1 <= x[9,3] <= 1
 x[10,0] free
 x[10,1] free
 x[10,2] free
 -1 <= x[10,3] <= 1
 -0.5236 <= u[0,0] <= 0.5236
 -0.3 <= u[0,1] <= 0.3
 -0.5236 <= u[1,0] <= 0.5236
 -0.3 <= u[1,1] <= 0.3
 -0.5236 <= u[2,0] <= 0.5236
 -0.3 <= u[2,1] <= 0.3
 -0.5236 <= u[3,0] <= 0.5236
 -0.3 <= u[3,1] <= 0.3
 -0.5236 <= u[4,0] <= 0.5236
 -0.3 <= u[4,1] <= 0.3
 -0.5236 <= u[5,0] <= 0.5236
 -0.3 <= u[5,1] <= 0.3
 -0.5236 <= u[6,0] <= 0.5236
 -0.3 <= u[6,1] <= 0.3
 -0.5236 <= u[7,0] <= 0.5236
 -0.3 <= u[7,1] <= 0.3
 -0.5236 <= u[8,0] <= 0.5236
 -0.3 <= u[8,1] <= 0.3
 -0.5236 <= u[9,0] <= 0.5236
 -0.3 <= u[9,1] <= 0.3
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
End
