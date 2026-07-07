    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 11;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc paramMap
        ;%
        paramMap.nSections           = nTotSects;
        paramMap.sectIdxOffset       = sectIdxOffset;
            paramMap.sections(nTotSects) = dumSection; %prealloc
        paramMap.nTotData            = -1;

        ;%
        ;% Auto data (QCar2_autonomous_driving_exam_P)
        ;%
            section.nData     = 7;
            section.data(7)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.camera_rate
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.depth_rate
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.LeftSteeringLimit_const
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.RightSteeringLimit_const
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_P.CompareToConstant3_const
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exam_P.CompareToConstant1_const
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exam_P.CompareToConstant2_const
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 11;
            section.data(11)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding1_b_compari
                    section.data(1).logicalSrcIdx = 7;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.ImageLogic_column
                    section.data(2).logicalSrcIdx = 8;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.ImageLogic1_column
                    section.data(3).logicalSrcIdx = 9;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.ImageLogic2_column
                    section.data(4).logicalSrcIdx = 10;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_P.ImageFindObjects_connectivity
                    section.data(5).logicalSrcIdx = 11;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding1_g_compari
                    section.data(6).logicalSrcIdx = 12;
                    section.data(6).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding1_r_compari
                    section.data(7).logicalSrcIdx = 13;
                    section.data(7).dtTransOffset = 6;

                    ;% QCar2_autonomous_driving_exam_P.ImageLogic_row
                    section.data(8).logicalSrcIdx = 14;
                    section.data(8).dtTransOffset = 7;

                    ;% QCar2_autonomous_driving_exam_P.ImageLogic1_row
                    section.data(9).logicalSrcIdx = 15;
                    section.data(9).dtTransOffset = 8;

                    ;% QCar2_autonomous_driving_exam_P.ImageLogic2_row
                    section.data(10).logicalSrcIdx = 16;
                    section.data(10).dtTransOffset = 9;

                    ;% QCar2_autonomous_driving_exam_P.ImageFindObjects_sort_order
                    section.data(11).logicalSrcIdx = 17;
                    section.data(11).dtTransOffset = 10;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 8;
            section.data(8)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.HILRead_analog_channels
                    section.data(1).logicalSrcIdx = 18;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.HILWrite_digital_channels
                    section.data(2).logicalSrcIdx = 19;
                    section.data(2).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.HILRead_encoder_channels
                    section.data(3).logicalSrcIdx = 20;
                    section.data(3).dtTransOffset = 18;

                    ;% QCar2_autonomous_driving_exam_P.ImageFindObjects_max_pixels
                    section.data(4).logicalSrcIdx = 21;
                    section.data(4).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exam_P.ImageFindObjects_min_pixels
                    section.data(5).logicalSrcIdx = 22;
                    section.data(5).dtTransOffset = 20;

                    ;% QCar2_autonomous_driving_exam_P.HILRead_other_channels
                    section.data(6).logicalSrcIdx = 23;
                    section.data(6).dtTransOffset = 21;

                    ;% QCar2_autonomous_driving_exam_P.HILWrite_other_channels
                    section.data(7).logicalSrcIdx = 24;
                    section.data(7).dtTransOffset = 27;

                    ;% QCar2_autonomous_driving_exam_P.Depth_stream_index
                    section.data(8).logicalSrcIdx = 25;
                    section.data(8).dtTransOffset = 29;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.Video3DInitialize_active
                    section.data(1).logicalSrcIdx = 26;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.ImageFindObjects_exclude_at_edg
                    section.data(2).logicalSrcIdx = 27;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.ImageFindObjects_largest
                    section.data(3).logicalSrcIdx = 28;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section

            section.nData     = 142;
            section.data(142)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.Constant10_Value
                    section.data(1).logicalSrcIdx = 29;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.Constant8_Value
                    section.data(2).logicalSrcIdx = 30;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.SpeedMaxms_Value
                    section.data(3).logicalSrcIdx = 31;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.Saturation1_UpperSat
                    section.data(4).logicalSrcIdx = 32;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_P.Saturation1_LowerSat
                    section.data(5).logicalSrcIdx = 33;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exam_P.Constant9_Value
                    section.data(6).logicalSrcIdx = 34;
                    section.data(6).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exam_P.distancem_Y0
                    section.data(7).logicalSrcIdx = 35;
                    section.data(7).dtTransOffset = 6;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value
                    section.data(8).logicalSrcIdx = 36;
                    section.data(8).dtTransOffset = 7;

                    ;% QCar2_autonomous_driving_exam_P.Constant1_Value
                    section.data(9).logicalSrcIdx = 37;
                    section.data(9).dtTransOffset = 8;

                    ;% QCar2_autonomous_driving_exam_P.Constant2_Value
                    section.data(10).logicalSrcIdx = 38;
                    section.data(10).dtTransOffset = 9;

                    ;% QCar2_autonomous_driving_exam_P.Constant3_Value
                    section.data(11).logicalSrcIdx = 39;
                    section.data(11).dtTransOffset = 10;

                    ;% QCar2_autonomous_driving_exam_P.scale_Value
                    section.data(12).logicalSrcIdx = 40;
                    section.data(12).dtTransOffset = 13;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_j
                    section.data(13).logicalSrcIdx = 41;
                    section.data(13).dtTransOffset = 14;

                    ;% QCar2_autonomous_driving_exam_P.Saturation_UpperSat
                    section.data(14).logicalSrcIdx = 42;
                    section.data(14).dtTransOffset = 15;

                    ;% QCar2_autonomous_driving_exam_P.Saturation_LowerSat
                    section.data(15).logicalSrcIdx = 43;
                    section.data(15).dtTransOffset = 16;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_i
                    section.data(16).logicalSrcIdx = 44;
                    section.data(16).dtTransOffset = 17;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOTerminate
                    section.data(17).logicalSrcIdx = 45;
                    section.data(17).dtTransOffset = 18;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOExit
                    section.data(18).logicalSrcIdx = 46;
                    section.data(18).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOStart
                    section.data(19).logicalSrcIdx = 47;
                    section.data(19).dtTransOffset = 20;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOEnter
                    section.data(20).logicalSrcIdx = 48;
                    section.data(20).dtTransOffset = 21;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POFinal
                    section.data(21).logicalSrcIdx = 49;
                    section.data(21).dtTransOffset = 22;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOFinal
                    section.data(22).logicalSrcIdx = 50;
                    section.data(22).dtTransOffset = 23;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AIHigh
                    section.data(23).logicalSrcIdx = 51;
                    section.data(23).dtTransOffset = 24;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AILow
                    section.data(24).logicalSrcIdx = 52;
                    section.data(24).dtTransOffset = 25;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIFrequency
                    section.data(25).logicalSrcIdx = 53;
                    section.data(25).dtTransOffset = 26;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POFrequency
                    section.data(26).logicalSrcIdx = 54;
                    section.data(26).dtTransOffset = 27;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POInitial
                    section.data(27).logicalSrcIdx = 55;
                    section.data(27).dtTransOffset = 28;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POWatchdog
                    section.data(28).logicalSrcIdx = 56;
                    section.data(28).dtTransOffset = 29;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOInitial
                    section.data(29).logicalSrcIdx = 57;
                    section.data(29).dtTransOffset = 30;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOWatchdog
                    section.data(30).logicalSrcIdx = 58;
                    section.data(30).dtTransOffset = 31;

                    ;% QCar2_autonomous_driving_exam_P.Constant1_Value_i
                    section.data(31).logicalSrcIdx = 59;
                    section.data(31).dtTransOffset = 32;

                    ;% QCar2_autonomous_driving_exam_P.Constant2_Value_d
                    section.data(32).logicalSrcIdx = 60;
                    section.data(32).dtTransOffset = 33;

                    ;% QCar2_autonomous_driving_exam_P.Constant3_Value_d
                    section.data(33).logicalSrcIdx = 61;
                    section.data(33).dtTransOffset = 34;

                    ;% QCar2_autonomous_driving_exam_P.Constant4_Value
                    section.data(34).logicalSrcIdx = 62;
                    section.data(34).dtTransOffset = 35;

                    ;% QCar2_autonomous_driving_exam_P.Constant5_Value
                    section.data(35).logicalSrcIdx = 63;
                    section.data(35).dtTransOffset = 36;

                    ;% QCar2_autonomous_driving_exam_P.Constant6_Value
                    section.data(36).logicalSrcIdx = 64;
                    section.data(36).dtTransOffset = 37;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_d
                    section.data(37).logicalSrcIdx = 65;
                    section.data(37).dtTransOffset = 38;

                    ;% QCar2_autonomous_driving_exam_P.Unwrap224_Modulus
                    section.data(38).logicalSrcIdx = 66;
                    section.data(38).dtTransOffset = 39;

                    ;% QCar2_autonomous_driving_exam_P.Integrator2_IC
                    section.data(39).logicalSrcIdx = 67;
                    section.data(39).dtTransOffset = 40;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_h
                    section.data(40).logicalSrcIdx = 68;
                    section.data(40).dtTransOffset = 41;

                    ;% QCar2_autonomous_driving_exam_P.Integrator2_IC_g
                    section.data(41).logicalSrcIdx = 69;
                    section.data(41).dtTransOffset = 42;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_g
                    section.data(42).logicalSrcIdx = 70;
                    section.data(42).dtTransOffset = 43;

                    ;% QCar2_autonomous_driving_exam_P.Integrator2_IC_e
                    section.data(43).logicalSrcIdx = 71;
                    section.data(43).dtTransOffset = 44;

                    ;% QCar2_autonomous_driving_exam_P.RateTransition_InitialCondition
                    section.data(44).logicalSrcIdx = 72;
                    section.data(44).dtTransOffset = 45;

                    ;% QCar2_autonomous_driving_exam_P.PulsingLight_Amp
                    section.data(45).logicalSrcIdx = 73;
                    section.data(45).dtTransOffset = 46;

                    ;% QCar2_autonomous_driving_exam_P.PulsingLight_Period
                    section.data(46).logicalSrcIdx = 74;
                    section.data(46).dtTransOffset = 47;

                    ;% QCar2_autonomous_driving_exam_P.PulsingLight_Duty
                    section.data(47).logicalSrcIdx = 75;
                    section.data(47).dtTransOffset = 48;

                    ;% QCar2_autonomous_driving_exam_P.PulsingLight_PhaseDelay
                    section.data(48).logicalSrcIdx = 76;
                    section.data(48).dtTransOffset = 49;

                    ;% QCar2_autonomous_driving_exam_P.Constant1_Value_f
                    section.data(49).logicalSrcIdx = 77;
                    section.data(49).dtTransOffset = 50;

                    ;% QCar2_autonomous_driving_exam_P.RateTransition1_InitialConditio
                    section.data(50).logicalSrcIdx = 78;
                    section.data(50).dtTransOffset = 51;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_p
                    section.data(51).logicalSrcIdx = 79;
                    section.data(51).dtTransOffset = 52;

                    ;% QCar2_autonomous_driving_exam_P.Constant2_Value_f
                    section.data(52).logicalSrcIdx = 80;
                    section.data(52).dtTransOffset = 53;

                    ;% QCar2_autonomous_driving_exam_P.Switch_Threshold
                    section.data(53).logicalSrcIdx = 81;
                    section.data(53).dtTransOffset = 54;

                    ;% QCar2_autonomous_driving_exam_P.RateLimiter_RisingLim
                    section.data(54).logicalSrcIdx = 82;
                    section.data(54).dtTransOffset = 55;

                    ;% QCar2_autonomous_driving_exam_P.RateLimiter_FallingLim
                    section.data(55).logicalSrcIdx = 83;
                    section.data(55).dtTransOffset = 56;

                    ;% QCar2_autonomous_driving_exam_P.RateLimiter_IC
                    section.data(56).logicalSrcIdx = 84;
                    section.data(56).dtTransOffset = 57;

                    ;% QCar2_autonomous_driving_exam_P.Constant1_Value_f1
                    section.data(57).logicalSrcIdx = 85;
                    section.data(57).dtTransOffset = 58;

                    ;% QCar2_autonomous_driving_exam_P.Switch_Threshold_h
                    section.data(58).logicalSrcIdx = 86;
                    section.data(58).dtTransOffset = 59;

                    ;% QCar2_autonomous_driving_exam_P.commandsaturation_UpperSat
                    section.data(59).logicalSrcIdx = 87;
                    section.data(59).dtTransOffset = 60;

                    ;% QCar2_autonomous_driving_exam_P.commandsaturation_LowerSat
                    section.data(60).logicalSrcIdx = 88;
                    section.data(60).dtTransOffset = 61;

                    ;% QCar2_autonomous_driving_exam_P.Kffms_Gain
                    section.data(61).logicalSrcIdx = 89;
                    section.data(61).dtTransOffset = 62;

                    ;% QCar2_autonomous_driving_exam_P.countstorotations_Gain
                    section.data(62).logicalSrcIdx = 90;
                    section.data(62).dtTransOffset = 63;

                    ;% QCar2_autonomous_driving_exam_P.gearratios_Gain
                    section.data(63).logicalSrcIdx = 91;
                    section.data(63).dtTransOffset = 64;

                    ;% QCar2_autonomous_driving_exam_P.rotstorads_Gain
                    section.data(64).logicalSrcIdx = 92;
                    section.data(64).dtTransOffset = 65;

                    ;% QCar2_autonomous_driving_exam_P.wheelradius_Gain
                    section.data(65).logicalSrcIdx = 93;
                    section.data(65).dtTransOffset = 66;

                    ;% QCar2_autonomous_driving_exam_P.Kpms_Gain
                    section.data(66).logicalSrcIdx = 94;
                    section.data(66).dtTransOffset = 67;

                    ;% QCar2_autonomous_driving_exam_P.Integrator1_IC
                    section.data(67).logicalSrcIdx = 95;
                    section.data(67).dtTransOffset = 68;

                    ;% QCar2_autonomous_driving_exam_P.Integrator1_UpperSat
                    section.data(68).logicalSrcIdx = 96;
                    section.data(68).dtTransOffset = 69;

                    ;% QCar2_autonomous_driving_exam_P.Integrator1_LowerSat
                    section.data(69).logicalSrcIdx = 97;
                    section.data(69).dtTransOffset = 70;

                    ;% QCar2_autonomous_driving_exam_P.Memory_InitialCondition
                    section.data(70).logicalSrcIdx = 98;
                    section.data(70).dtTransOffset = 71;

                    ;% QCar2_autonomous_driving_exam_P.Constant2_Value_b
                    section.data(71).logicalSrcIdx = 99;
                    section.data(71).dtTransOffset = 72;

                    ;% QCar2_autonomous_driving_exam_P.one_shot_block_trigger_type
                    section.data(72).logicalSrcIdx = 100;
                    section.data(72).dtTransOffset = 73;

                    ;% QCar2_autonomous_driving_exam_P.one_shot_block_redun_pulse
                    section.data(73).logicalSrcIdx = 101;
                    section.data(73).dtTransOffset = 74;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_di
                    section.data(74).logicalSrcIdx = 102;
                    section.data(74).dtTransOffset = 75;

                    ;% QCar2_autonomous_driving_exam_P.Switch_Threshold_e
                    section.data(75).logicalSrcIdx = 103;
                    section.data(75).dtTransOffset = 76;

                    ;% QCar2_autonomous_driving_exam_P.Gain_Gain
                    section.data(76).logicalSrcIdx = 104;
                    section.data(76).dtTransOffset = 77;

                    ;% QCar2_autonomous_driving_exam_P.SteeringBias_Bias
                    section.data(77).logicalSrcIdx = 105;
                    section.data(77).dtTransOffset = 78;

                    ;% QCar2_autonomous_driving_exam_P.directionconvention_Gain
                    section.data(78).logicalSrcIdx = 106;
                    section.data(78).dtTransOffset = 79;

                    ;% QCar2_autonomous_driving_exam_P.commandsaturation_UpperSat_n
                    section.data(79).logicalSrcIdx = 107;
                    section.data(79).dtTransOffset = 80;

                    ;% QCar2_autonomous_driving_exam_P.commandsaturation_LowerSat_d
                    section.data(80).logicalSrcIdx = 108;
                    section.data(80).dtTransOffset = 81;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_c
                    section.data(81).logicalSrcIdx = 109;
                    section.data(81).dtTransOffset = 82;

                    ;% QCar2_autonomous_driving_exam_P.RateTransition4_InitialConditio
                    section.data(82).logicalSrcIdx = 110;
                    section.data(82).dtTransOffset = 83;

                    ;% QCar2_autonomous_driving_exam_P.RateTransition3_InitialConditio
                    section.data(83).logicalSrcIdx = 111;
                    section.data(83).dtTransOffset = 84;

                    ;% QCar2_autonomous_driving_exam_P.Kim_Gain
                    section.data(84).logicalSrcIdx = 112;
                    section.data(84).dtTransOffset = 85;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Brightness
                    section.data(85).logicalSrcIdx = 113;
                    section.data(85).dtTransOffset = 86;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Contrast
                    section.data(86).logicalSrcIdx = 114;
                    section.data(86).dtTransOffset = 87;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Hue
                    section.data(87).logicalSrcIdx = 115;
                    section.data(87).dtTransOffset = 88;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Saturation
                    section.data(88).logicalSrcIdx = 116;
                    section.data(88).dtTransOffset = 89;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Sharpness
                    section.data(89).logicalSrcIdx = 117;
                    section.data(89).dtTransOffset = 90;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Gamma
                    section.data(90).logicalSrcIdx = 118;
                    section.data(90).dtTransOffset = 91;

                    ;% QCar2_autonomous_driving_exam_P.Depth_WhiteBalance
                    section.data(91).logicalSrcIdx = 119;
                    section.data(91).dtTransOffset = 92;

                    ;% QCar2_autonomous_driving_exam_P.Depth_BacklightCompensation
                    section.data(92).logicalSrcIdx = 120;
                    section.data(92).dtTransOffset = 93;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Gain
                    section.data(93).logicalSrcIdx = 121;
                    section.data(93).dtTransOffset = 94;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Exposure
                    section.data(94).logicalSrcIdx = 122;
                    section.data(94).dtTransOffset = 95;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Emitter
                    section.data(95).logicalSrcIdx = 123;
                    section.data(95).dtTransOffset = 96;

                    ;% QCar2_autonomous_driving_exam_P.RateTransition2_InitialConditio
                    section.data(96).logicalSrcIdx = 124;
                    section.data(96).dtTransOffset = 97;

                    ;% QCar2_autonomous_driving_exam_P.StoppingDistancem_Value
                    section.data(97).logicalSrcIdx = 125;
                    section.data(97).dtTransOffset = 98;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Brightness
                    section.data(98).logicalSrcIdx = 126;
                    section.data(98).dtTransOffset = 99;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Contrast
                    section.data(99).logicalSrcIdx = 127;
                    section.data(99).dtTransOffset = 100;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Hue
                    section.data(100).logicalSrcIdx = 128;
                    section.data(100).dtTransOffset = 101;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Saturation
                    section.data(101).logicalSrcIdx = 129;
                    section.data(101).dtTransOffset = 102;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Sharpness
                    section.data(102).logicalSrcIdx = 130;
                    section.data(102).dtTransOffset = 103;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Gamma
                    section.data(103).logicalSrcIdx = 131;
                    section.data(103).dtTransOffset = 104;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_ColorEnable
                    section.data(104).logicalSrcIdx = 132;
                    section.data(104).dtTransOffset = 105;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_WhiteBalance
                    section.data(105).logicalSrcIdx = 133;
                    section.data(105).dtTransOffset = 106;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_BacklightCompensat
                    section.data(106).logicalSrcIdx = 134;
                    section.data(106).dtTransOffset = 107;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Gain
                    section.data(107).logicalSrcIdx = 135;
                    section.data(107).dtTransOffset = 108;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Pan
                    section.data(108).logicalSrcIdx = 136;
                    section.data(108).dtTransOffset = 109;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Tilt
                    section.data(109).logicalSrcIdx = 137;
                    section.data(109).dtTransOffset = 110;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Roll
                    section.data(110).logicalSrcIdx = 138;
                    section.data(110).dtTransOffset = 111;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Zoom
                    section.data(111).logicalSrcIdx = 139;
                    section.data(111).dtTransOffset = 112;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Exposure
                    section.data(112).logicalSrcIdx = 140;
                    section.data(112).dtTransOffset = 113;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Iris
                    section.data(113).logicalSrcIdx = 141;
                    section.data(113).dtTransOffset = 114;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Focus
                    section.data(114).logicalSrcIdx = 142;
                    section.data(114).dtTransOffset = 115;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Mirror
                    section.data(115).logicalSrcIdx = 143;
                    section.data(115).dtTransOffset = 116;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform1_MinPixel
                    section.data(116).logicalSrcIdx = 144;
                    section.data(116).dtTransOffset = 117;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform1_MaxPixel
                    section.data(117).logicalSrcIdx = 145;
                    section.data(117).dtTransOffset = 118;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform1_ContourDepth
                    section.data(118).logicalSrcIdx = 146;
                    section.data(118).dtTransOffset = 119;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform1_FocalLen
                    section.data(119).logicalSrcIdx = 147;
                    section.data(119).dtTransOffset = 120;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform1_Extrapolated
                    section.data(120).logicalSrcIdx = 148;
                    section.data(120).dtTransOffset = 121;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform1_Angle
                    section.data(121).logicalSrcIdx = 149;
                    section.data(121).dtTransOffset = 122;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform1_RCoeff
                    section.data(122).logicalSrcIdx = 150;
                    section.data(122).dtTransOffset = 123;

                    ;% QCar2_autonomous_driving_exam_P.minhue_Value
                    section.data(123).logicalSrcIdx = 151;
                    section.data(123).dtTransOffset = 125;

                    ;% QCar2_autonomous_driving_exam_P.minsat_Value
                    section.data(124).logicalSrcIdx = 152;
                    section.data(124).dtTransOffset = 126;

                    ;% QCar2_autonomous_driving_exam_P.minval_Value
                    section.data(125).logicalSrcIdx = 153;
                    section.data(125).dtTransOffset = 127;

                    ;% QCar2_autonomous_driving_exam_P.maxhue_Value
                    section.data(126).logicalSrcIdx = 154;
                    section.data(126).dtTransOffset = 128;

                    ;% QCar2_autonomous_driving_exam_P.maxsat_Value
                    section.data(127).logicalSrcIdx = 155;
                    section.data(127).dtTransOffset = 129;

                    ;% QCar2_autonomous_driving_exam_P.maxval_Value
                    section.data(128).logicalSrcIdx = 156;
                    section.data(128).dtTransOffset = 130;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding1_Channel0M
                    section.data(129).logicalSrcIdx = 157;
                    section.data(129).dtTransOffset = 131;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding1_Channel_i
                    section.data(130).logicalSrcIdx = 158;
                    section.data(130).dtTransOffset = 132;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding1_Channel1M
                    section.data(131).logicalSrcIdx = 159;
                    section.data(131).dtTransOffset = 133;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding1_Channel_m
                    section.data(132).logicalSrcIdx = 160;
                    section.data(132).dtTransOffset = 134;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding1_Channel2M
                    section.data(133).logicalSrcIdx = 161;
                    section.data(133).dtTransOffset = 135;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding1_Channel_o
                    section.data(134).logicalSrcIdx = 162;
                    section.data(134).dtTransOffset = 136;

                    ;% QCar2_autonomous_driving_exam_P.ROIxminxmaxyminymax_Value
                    section.data(135).logicalSrcIdx = 163;
                    section.data(135).dtTransOffset = 137;

                    ;% QCar2_autonomous_driving_exam_P.NomimalLanePositionPixelColumn_
                    section.data(136).logicalSrcIdx = 164;
                    section.data(136).dtTransOffset = 141;

                    ;% QCar2_autonomous_driving_exam_P.Gain1_Gain
                    section.data(137).logicalSrcIdx = 165;
                    section.data(137).dtTransOffset = 142;

                    ;% QCar2_autonomous_driving_exam_P.SteeringSaturation1_UpperSat
                    section.data(138).logicalSrcIdx = 166;
                    section.data(138).dtTransOffset = 143;

                    ;% QCar2_autonomous_driving_exam_P.SteeringSaturation1_LowerSat
                    section.data(139).logicalSrcIdx = 167;
                    section.data(139).dtTransOffset = 144;

                    ;% QCar2_autonomous_driving_exam_P.Constant2_Value_k
                    section.data(140).logicalSrcIdx = 168;
                    section.data(140).dtTransOffset = 145;

                    ;% QCar2_autonomous_driving_exam_P.Constant3_Value_a
                    section.data(141).logicalSrcIdx = 169;
                    section.data(141).dtTransOffset = 148;

                    ;% QCar2_autonomous_driving_exam_P.Constant4_Value_m
                    section.data(142).logicalSrcIdx = 170;
                    section.data(142).dtTransOffset = 151;

            nTotData = nTotData + section.nData;
            paramMap.sections(5) = section;
            clear section

            section.nData     = 14;
            section.data(14)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOWatchdog
                    section.data(1).logicalSrcIdx = 171;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIInitial
                    section.data(2).logicalSrcIdx = 172;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POModes
                    section.data(3).logicalSrcIdx = 173;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POConfiguration
                    section.data(4).logicalSrcIdx = 174;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POAlignment
                    section.data(5).logicalSrcIdx = 175;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POPolarity
                    section.data(6).logicalSrcIdx = 176;
                    section.data(6).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform1_PrPoint
                    section.data(7).logicalSrcIdx = 177;
                    section.data(7).dtTransOffset = 6;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform1_Interpolation
                    section.data(8).logicalSrcIdx = 178;
                    section.data(8).dtTransOffset = 8;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform1_Origin
                    section.data(9).logicalSrcIdx = 179;
                    section.data(9).dtTransOffset = 9;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform1_OOrigin
                    section.data(10).logicalSrcIdx = 180;
                    section.data(10).dtTransOffset = 11;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_Divisor
                    section.data(11).logicalSrcIdx = 181;
                    section.data(11).dtTransOffset = 13;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_Offset
                    section.data(12).logicalSrcIdx = 182;
                    section.data(12).dtTransOffset = 14;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_Divisor
                    section.data(13).logicalSrcIdx = 183;
                    section.data(13).dtTransOffset = 15;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_Offset
                    section.data(14).logicalSrcIdx = 184;
                    section.data(14).dtTransOffset = 16;

            nTotData = nTotData + section.nData;
            paramMap.sections(6) = section;
            clear section

            section.nData     = 5;
            section.data(5)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.Gain_Gain_g
                    section.data(1).logicalSrcIdx = 185;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_Sigma
                    section.data(2).logicalSrcIdx = 186;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_Alpha
                    section.data(3).logicalSrcIdx = 187;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_Sigma
                    section.data(4).logicalSrcIdx = 188;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_Alpha
                    section.data(5).logicalSrcIdx = 189;
                    section.data(5).dtTransOffset = 4;

            nTotData = nTotData + section.nData;
            paramMap.sections(7) = section;
            clear section

            section.nData     = 23;
            section.data(23)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AIChannels
                    section.data(1).logicalSrcIdx = 190;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DIChannels
                    section.data(2).logicalSrcIdx = 191;
                    section.data(2).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOChannels
                    section.data(3).logicalSrcIdx = 192;
                    section.data(3).dtTransOffset = 20;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIChannels
                    section.data(4).logicalSrcIdx = 193;
                    section.data(4).dtTransOffset = 36;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIQuadrature
                    section.data(5).logicalSrcIdx = 194;
                    section.data(5).dtTransOffset = 39;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POChannels
                    section.data(6).logicalSrcIdx = 195;
                    section.data(6).dtTransOffset = 40;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOChannels
                    section.data(7).logicalSrcIdx = 196;
                    section.data(7).dtTransOffset = 42;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Preset
                    section.data(8).logicalSrcIdx = 197;
                    section.data(8).dtTransOffset = 44;

                    ;% QCar2_autonomous_driving_exam_P.ImageCompress_Quality
                    section.data(9).logicalSrcIdx = 198;
                    section.data(9).dtTransOffset = 45;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform1_ColorTheme
                    section.data(10).logicalSrcIdx = 199;
                    section.data(10).dtTransOffset = 46;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_KernelSize
                    section.data(11).logicalSrcIdx = 200;
                    section.data(11).dtTransOffset = 47;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_MaskSize
                    section.data(12).logicalSrcIdx = 201;
                    section.data(12).dtTransOffset = 48;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_GapThreshold
                    section.data(13).logicalSrcIdx = 202;
                    section.data(13).dtTransOffset = 50;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_Iterations
                    section.data(14).logicalSrcIdx = 203;
                    section.data(14).dtTransOffset = 51;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_Norm
                    section.data(15).logicalSrcIdx = 204;
                    section.data(15).dtTransOffset = 52;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_KernelSize
                    section.data(16).logicalSrcIdx = 205;
                    section.data(16).dtTransOffset = 53;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_MaskSize
                    section.data(17).logicalSrcIdx = 206;
                    section.data(17).dtTransOffset = 54;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_GapThreshold
                    section.data(18).logicalSrcIdx = 207;
                    section.data(18).dtTransOffset = 56;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_Iterations
                    section.data(19).logicalSrcIdx = 208;
                    section.data(19).dtTransOffset = 57;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_Norm
                    section.data(20).logicalSrcIdx = 209;
                    section.data(20).dtTransOffset = 58;

                    ;% QCar2_autonomous_driving_exam_P.ImageCompress_Quality_n
                    section.data(21).logicalSrcIdx = 210;
                    section.data(21).dtTransOffset = 59;

                    ;% QCar2_autonomous_driving_exam_P.ImageCompress_Quality_a
                    section.data(22).logicalSrcIdx = 211;
                    section.data(22).dtTransOffset = 60;

                    ;% QCar2_autonomous_driving_exam_P.ImageCompress_Quality_h
                    section.data(23).logicalSrcIdx = 212;
                    section.data(23).dtTransOffset = 61;

            nTotData = nTotData + section.nData;
            paramMap.sections(8) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_Kernel
                    section.data(1).logicalSrcIdx = 213;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_Kernel
                    section.data(2).logicalSrcIdx = 214;
                    section.data(2).dtTransOffset = 9;

            nTotData = nTotData + section.nData;
            paramMap.sections(9) = section;
            clear section

            section.nData     = 44;
            section.data(44)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_Active
                    section.data(1).logicalSrcIdx = 215;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOTerminate
                    section.data(2).logicalSrcIdx = 216;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOExit
                    section.data(3).logicalSrcIdx = 217;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOTerminate
                    section.data(4).logicalSrcIdx = 218;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOExit
                    section.data(5).logicalSrcIdx = 219;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POTerminate
                    section.data(6).logicalSrcIdx = 220;
                    section.data(6).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POExit
                    section.data(7).logicalSrcIdx = 221;
                    section.data(7).dtTransOffset = 6;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_CKPStart
                    section.data(8).logicalSrcIdx = 222;
                    section.data(8).dtTransOffset = 7;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_CKPEnter
                    section.data(9).logicalSrcIdx = 223;
                    section.data(9).dtTransOffset = 8;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_CKStart
                    section.data(10).logicalSrcIdx = 224;
                    section.data(10).dtTransOffset = 9;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_CKEnter
                    section.data(11).logicalSrcIdx = 225;
                    section.data(11).dtTransOffset = 10;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AIPStart
                    section.data(12).logicalSrcIdx = 226;
                    section.data(12).dtTransOffset = 11;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AIPEnter
                    section.data(13).logicalSrcIdx = 227;
                    section.data(13).dtTransOffset = 12;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOPStart
                    section.data(14).logicalSrcIdx = 228;
                    section.data(14).dtTransOffset = 13;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOPEnter
                    section.data(15).logicalSrcIdx = 229;
                    section.data(15).dtTransOffset = 14;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOStart
                    section.data(16).logicalSrcIdx = 230;
                    section.data(16).dtTransOffset = 15;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOEnter
                    section.data(17).logicalSrcIdx = 231;
                    section.data(17).dtTransOffset = 16;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOReset
                    section.data(18).logicalSrcIdx = 232;
                    section.data(18).dtTransOffset = 17;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOPStart
                    section.data(19).logicalSrcIdx = 233;
                    section.data(19).dtTransOffset = 18;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOPEnter
                    section.data(20).logicalSrcIdx = 234;
                    section.data(20).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOStart
                    section.data(21).logicalSrcIdx = 235;
                    section.data(21).dtTransOffset = 20;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOEnter
                    section.data(22).logicalSrcIdx = 236;
                    section.data(22).dtTransOffset = 21;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOReset
                    section.data(23).logicalSrcIdx = 237;
                    section.data(23).dtTransOffset = 22;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIPStart
                    section.data(24).logicalSrcIdx = 238;
                    section.data(24).dtTransOffset = 23;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIPEnter
                    section.data(25).logicalSrcIdx = 239;
                    section.data(25).dtTransOffset = 24;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIStart
                    section.data(26).logicalSrcIdx = 240;
                    section.data(26).dtTransOffset = 25;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIEnter
                    section.data(27).logicalSrcIdx = 241;
                    section.data(27).dtTransOffset = 26;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POPStart
                    section.data(28).logicalSrcIdx = 242;
                    section.data(28).dtTransOffset = 27;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POPEnter
                    section.data(29).logicalSrcIdx = 243;
                    section.data(29).dtTransOffset = 28;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POStart
                    section.data(30).logicalSrcIdx = 244;
                    section.data(30).dtTransOffset = 29;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POEnter
                    section.data(31).logicalSrcIdx = 245;
                    section.data(31).dtTransOffset = 30;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POReset
                    section.data(32).logicalSrcIdx = 246;
                    section.data(32).dtTransOffset = 31;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOReset
                    section.data(33).logicalSrcIdx = 247;
                    section.data(33).dtTransOffset = 32;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOFinal
                    section.data(34).logicalSrcIdx = 248;
                    section.data(34).dtTransOffset = 33;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOInitial
                    section.data(35).logicalSrcIdx = 249;
                    section.data(35).dtTransOffset = 34;

                    ;% QCar2_autonomous_driving_exam_P.HILRead_Active
                    section.data(36).logicalSrcIdx = 250;
                    section.data(36).dtTransOffset = 35;

                    ;% QCar2_autonomous_driving_exam_P.SteadyLight_Value
                    section.data(37).logicalSrcIdx = 251;
                    section.data(37).dtTransOffset = 36;

                    ;% QCar2_autonomous_driving_exam_P.LightOff_Value
                    section.data(38).logicalSrcIdx = 252;
                    section.data(38).dtTransOffset = 37;

                    ;% QCar2_autonomous_driving_exam_P.HILWrite_Active
                    section.data(39).logicalSrcIdx = 253;
                    section.data(39).dtTransOffset = 38;

                    ;% QCar2_autonomous_driving_exam_P.VideoDisplay_UseHardware
                    section.data(40).logicalSrcIdx = 254;
                    section.data(40).dtTransOffset = 39;

                    ;% QCar2_autonomous_driving_exam_P.VideoDisplay_UseHardware_o
                    section.data(41).logicalSrcIdx = 255;
                    section.data(41).dtTransOffset = 40;

                    ;% QCar2_autonomous_driving_exam_P.VideoDisplay_UseHardware_i
                    section.data(42).logicalSrcIdx = 256;
                    section.data(42).dtTransOffset = 41;

                    ;% QCar2_autonomous_driving_exam_P.VideoDisplay_UseHardware_it
                    section.data(43).logicalSrcIdx = 257;
                    section.data(43).dtTransOffset = 42;

                    ;% QCar2_autonomous_driving_exam_P.VideoDisplay_UseHardware_b
                    section.data(44).logicalSrcIdx = 258;
                    section.data(44).dtTransOffset = 43;

            nTotData = nTotData + section.nData;
            paramMap.sections(10) = section;
            clear section

            section.nData     = 20;
            section.data(20)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.imageDepthForDisplay_Y0
                    section.data(1).logicalSrcIdx = 259;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.uArm0Disarm1_CurrentSetting
                    section.data(2).logicalSrcIdx = 260;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_Zone
                    section.data(3).logicalSrcIdx = 261;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_BdrType
                    section.data(4).logicalSrcIdx = 262;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_BdrValue
                    section.data(5).logicalSrcIdx = 263;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_RoundingMode
                    section.data(6).logicalSrcIdx = 264;
                    section.data(6).dtTransOffset = 7;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_AlgorithmHint
                    section.data(7).logicalSrcIdx = 265;
                    section.data(7).dtTransOffset = 8;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_Threshold
                    section.data(8).logicalSrcIdx = 266;
                    section.data(8).dtTransOffset = 9;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_PrsFrames
                    section.data(9).logicalSrcIdx = 267;
                    section.data(9).dtTransOffset = 10;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_PrsValid
                    section.data(10).logicalSrcIdx = 268;
                    section.data(10).dtTransOffset = 11;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter_DepthThreshold
                    section.data(11).logicalSrcIdx = 269;
                    section.data(11).dtTransOffset = 12;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_Zone
                    section.data(12).logicalSrcIdx = 270;
                    section.data(12).dtTransOffset = 13;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_BdrType
                    section.data(13).logicalSrcIdx = 271;
                    section.data(13).dtTransOffset = 14;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_BdrValue
                    section.data(14).logicalSrcIdx = 272;
                    section.data(14).dtTransOffset = 15;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_RoundingMode
                    section.data(15).logicalSrcIdx = 273;
                    section.data(15).dtTransOffset = 18;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_AlgorithmHint
                    section.data(16).logicalSrcIdx = 274;
                    section.data(16).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_Threshold
                    section.data(17).logicalSrcIdx = 275;
                    section.data(17).dtTransOffset = 20;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_PrsFrames
                    section.data(18).logicalSrcIdx = 276;
                    section.data(18).dtTransOffset = 21;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_PrsValid
                    section.data(19).logicalSrcIdx = 277;
                    section.data(19).dtTransOffset = 22;

                    ;% QCar2_autonomous_driving_exam_P.ImageFilter1_DepthThreshold
                    section.data(20).logicalSrcIdx = 278;
                    section.data(20).dtTransOffset = 23;

            nTotData = nTotData + section.nData;
            paramMap.sections(11) = section;
            clear section


            ;%
            ;% Non-auto Data (parameter)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        paramMap.nTotData = nTotData;



    ;%**************************
    ;% Create Block Output Map *
    ;%**************************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 6;
        sectIdxOffset = 0;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc sigMap
        ;%
        sigMap.nSections           = nTotSects;
        sigMap.sectIdxOffset       = sectIdxOffset;
            sigMap.sections(nTotSects) = dumSection; %prealloc
        sigMap.nTotData            = -1;

        ;%
        ;% Auto data (QCar2_autonomous_driving_exam_B)
        ;%
            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_B.Depth_o2
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 45;
            section.data(45)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_B.batteryvoltage
                    section.data(1).logicalSrcIdx = 1;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_B.motorcurrent
                    section.data(2).logicalSrcIdx = 2;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_B.encodercounts
                    section.data(3).logicalSrcIdx = 3;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_B.HILRead_o4
                    section.data(4).logicalSrcIdx = 4;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_B.HILRead_o5
                    section.data(5).logicalSrcIdx = 5;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exam_B.HILRead_o6
                    section.data(6).logicalSrcIdx = 6;
                    section.data(6).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exam_B.HILRead_o7
                    section.data(7).logicalSrcIdx = 7;
                    section.data(7).dtTransOffset = 6;

                    ;% QCar2_autonomous_driving_exam_B.HILRead_o8
                    section.data(8).logicalSrcIdx = 8;
                    section.data(8).dtTransOffset = 7;

                    ;% QCar2_autonomous_driving_exam_B.HILRead_o9
                    section.data(9).logicalSrcIdx = 9;
                    section.data(9).dtTransOffset = 8;

                    ;% QCar2_autonomous_driving_exam_B.Unwrap224
                    section.data(10).logicalSrcIdx = 10;
                    section.data(10).dtTransOffset = 9;

                    ;% QCar2_autonomous_driving_exam_B.Product
                    section.data(11).logicalSrcIdx = 11;
                    section.data(11).dtTransOffset = 10;

                    ;% QCar2_autonomous_driving_exam_B.Product1
                    section.data(12).logicalSrcIdx = 12;
                    section.data(12).dtTransOffset = 11;

                    ;% QCar2_autonomous_driving_exam_B.Product_a
                    section.data(13).logicalSrcIdx = 13;
                    section.data(13).dtTransOffset = 12;

                    ;% QCar2_autonomous_driving_exam_B.Product1_e
                    section.data(14).logicalSrcIdx = 14;
                    section.data(14).dtTransOffset = 13;

                    ;% QCar2_autonomous_driving_exam_B.Product_d
                    section.data(15).logicalSrcIdx = 15;
                    section.data(15).dtTransOffset = 14;

                    ;% QCar2_autonomous_driving_exam_B.Product1_i
                    section.data(16).logicalSrcIdx = 16;
                    section.data(16).dtTransOffset = 15;

                    ;% QCar2_autonomous_driving_exam_B.RateTransition
                    section.data(17).logicalSrcIdx = 17;
                    section.data(17).dtTransOffset = 16;

                    ;% QCar2_autonomous_driving_exam_B.RateTransition1
                    section.data(18).logicalSrcIdx = 18;
                    section.data(18).dtTransOffset = 17;

                    ;% QCar2_autonomous_driving_exam_B.uArm0Disarm1
                    section.data(19).logicalSrcIdx = 19;
                    section.data(19).dtTransOffset = 18;

                    ;% QCar2_autonomous_driving_exam_B.DesiredSpeedms
                    section.data(20).logicalSrcIdx = 20;
                    section.data(20).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exam_B.desired
                    section.data(21).logicalSrcIdx = 21;
                    section.data(21).dtTransOffset = 20;

                    ;% QCar2_autonomous_driving_exam_B.Kffms
                    section.data(22).logicalSrcIdx = 22;
                    section.data(22).dtTransOffset = 21;

                    ;% QCar2_autonomous_driving_exam_B.measured
                    section.data(23).logicalSrcIdx = 23;
                    section.data(23).dtTransOffset = 22;

                    ;% QCar2_autonomous_driving_exam_B.pwmdutycycle
                    section.data(24).logicalSrcIdx = 24;
                    section.data(24).dtTransOffset = 23;

                    ;% QCar2_autonomous_driving_exam_B.Abs
                    section.data(25).logicalSrcIdx = 25;
                    section.data(25).dtTransOffset = 24;

                    ;% QCar2_autonomous_driving_exam_B.one_shot_block
                    section.data(26).logicalSrcIdx = 26;
                    section.data(26).dtTransOffset = 25;

                    ;% QCar2_autonomous_driving_exam_B.commandsaturation
                    section.data(27).logicalSrcIdx = 27;
                    section.data(27).dtTransOffset = 26;

                    ;% QCar2_autonomous_driving_exam_B.SampleTime
                    section.data(28).logicalSrcIdx = 28;
                    section.data(28).dtTransOffset = 27;

                    ;% QCar2_autonomous_driving_exam_B.Constant
                    section.data(29).logicalSrcIdx = 29;
                    section.data(29).dtTransOffset = 28;

                    ;% QCar2_autonomous_driving_exam_B.ComputationTime
                    section.data(30).logicalSrcIdx = 30;
                    section.data(30).dtTransOffset = 29;

                    ;% QCar2_autonomous_driving_exam_B.RateTransition4
                    section.data(31).logicalSrcIdx = 31;
                    section.data(31).dtTransOffset = 30;

                    ;% QCar2_autonomous_driving_exam_B.RateTransition3
                    section.data(32).logicalSrcIdx = 32;
                    section.data(32).dtTransOffset = 33;

                    ;% QCar2_autonomous_driving_exam_B.Kim
                    section.data(33).logicalSrcIdx = 33;
                    section.data(33).dtTransOffset = 36;

                    ;% QCar2_autonomous_driving_exam_B.Depth_o3
                    section.data(34).logicalSrcIdx = 34;
                    section.data(34).dtTransOffset = 37;

                    ;% QCar2_autonomous_driving_exam_B.minhue
                    section.data(35).logicalSrcIdx = 35;
                    section.data(35).dtTransOffset = 38;

                    ;% QCar2_autonomous_driving_exam_B.minsat
                    section.data(36).logicalSrcIdx = 36;
                    section.data(36).dtTransOffset = 39;

                    ;% QCar2_autonomous_driving_exam_B.minval
                    section.data(37).logicalSrcIdx = 37;
                    section.data(37).dtTransOffset = 40;

                    ;% QCar2_autonomous_driving_exam_B.maxhue
                    section.data(38).logicalSrcIdx = 38;
                    section.data(38).dtTransOffset = 41;

                    ;% QCar2_autonomous_driving_exam_B.maxsat
                    section.data(39).logicalSrcIdx = 39;
                    section.data(39).dtTransOffset = 42;

                    ;% QCar2_autonomous_driving_exam_B.maxval
                    section.data(40).logicalSrcIdx = 40;
                    section.data(40).dtTransOffset = 43;

                    ;% QCar2_autonomous_driving_exam_B.Width
                    section.data(41).logicalSrcIdx = 41;
                    section.data(41).dtTransOffset = 44;

                    ;% QCar2_autonomous_driving_exam_B.SteeringSaturation1
                    section.data(42).logicalSrcIdx = 42;
                    section.data(42).dtTransOffset = 45;

                    ;% QCar2_autonomous_driving_exam_B.Multiply
                    section.data(43).logicalSrcIdx = 43;
                    section.data(43).dtTransOffset = 46;

                    ;% QCar2_autonomous_driving_exam_B.y
                    section.data(44).logicalSrcIdx = 46;
                    section.data(44).dtTransOffset = 47;

                    ;% QCar2_autonomous_driving_exam_B.speed_cmd
                    section.data(45).logicalSrcIdx = 47;
                    section.data(45).dtTransOffset = 48;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 5;
            section.data(5)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_B.Channel
                    section.data(1).logicalSrcIdx = 50;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_B.Channel_f
                    section.data(2).logicalSrcIdx = 51;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_B.Channel_m
                    section.data(3).logicalSrcIdx = 52;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_B.Channel_i
                    section.data(4).logicalSrcIdx = 53;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_B.Channel_a
                    section.data(5).logicalSrcIdx = 54;
                    section.data(5).dtTransOffset = 4;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_B.Depth_o1
                    section.data(1).logicalSrcIdx = 55;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(4) = section;
            clear section

            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_B.VideoCapture_o1
                    section.data(1).logicalSrcIdx = 58;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_B.img_out
                    section.data(2).logicalSrcIdx = 59;
                    section.data(2).dtTransOffset = 1008600;

                    ;% QCar2_autonomous_driving_exam_B.y_j
                    section.data(3).logicalSrcIdx = 60;
                    section.data(3).dtTransOffset = 1085640;

                    ;% QCar2_autonomous_driving_exam_B.y_f
                    section.data(4).logicalSrcIdx = 61;
                    section.data(4).dtTransOffset = 1249640;

                    ;% QCar2_autonomous_driving_exam_B.img_out_e
                    section.data(5).logicalSrcIdx = 64;
                    section.data(5).dtTransOffset = 1741640;

                    ;% QCar2_autonomous_driving_exam_B.ImageCompress
                    section.data(6).logicalSrcIdx = 66;
                    section.data(6).dtTransOffset = 2233640;

                    ;% QCar2_autonomous_driving_exam_B.ImageCompress_m
                    section.data(7).logicalSrcIdx = 67;
                    section.data(7).dtTransOffset = 2310680;

                    ;% QCar2_autonomous_driving_exam_B.ImageCompress_a
                    section.data(8).logicalSrcIdx = 68;
                    section.data(8).dtTransOffset = 2474680;

                    ;% QCar2_autonomous_driving_exam_B.ImageCompress_l
                    section.data(9).logicalSrcIdx = 69;
                    section.data(9).dtTransOffset = 2638680;

            nTotData = nTotData + section.nData;
            sigMap.sections(5) = section;
            clear section

            section.nData     = 7;
            section.data(7)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_B.AND3
                    section.data(1).logicalSrcIdx = 70;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_B.AND1
                    section.data(2).logicalSrcIdx = 71;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_B.Compare
                    section.data(3).logicalSrcIdx = 72;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_B.Compare_d
                    section.data(4).logicalSrcIdx = 73;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_B.DataTypeConversion1
                    section.data(5).logicalSrcIdx = 74;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exam_B.Depth_o4
                    section.data(6).logicalSrcIdx = 75;
                    section.data(6).dtTransOffset = 12;

                    ;% QCar2_autonomous_driving_exam_B.VideoCapture_o2
                    section.data(7).logicalSrcIdx = 76;
                    section.data(7).dtTransOffset = 13;

            nTotData = nTotData + section.nData;
            sigMap.sections(6) = section;
            clear section


            ;%
            ;% Non-auto Data (signal)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        sigMap.nTotData = nTotData;



    ;%*******************
    ;% Create DWork Map *
    ;%*******************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 17;
        sectIdxOffset = 6;

        ;%
        ;% Define dummy sections & preallocate arrays
        ;%
        dumSection.nData = -1;
        dumSection.data  = [];

        dumData.logicalSrcIdx = -1;
        dumData.dtTransOffset = -1;

        ;%
        ;% Init/prealloc dworkMap
        ;%
        dworkMap.nSections           = nTotSects;
        dworkMap.sectIdxOffset       = sectIdxOffset;
            dworkMap.sections(nTotSects) = dumSection; %prealloc
        dworkMap.nTotData            = -1;

        ;%
        ;% Auto data (QCar2_autonomous_driving_exa_DW)
        ;%
            section.nData     = 9;
            section.data(9)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.ComputationTime_BeginTime
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationTime
                    section.data(3).logicalSrcIdx = 2;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime_e
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exa_DW.ComputationTime_BeginTime_p
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationTi_o
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime_g
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% QCar2_autonomous_driving_exa_DW.ComputationTime_BeginTime_b
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationT_of
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 20;
            section.data(20)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.one_shot_block_DSTATE
                    section.data(1).logicalSrcIdx = 9;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_AIMinimums
                    section.data(2).logicalSrcIdx = 10;
                    section.data(2).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_AIMaximums
                    section.data(3).logicalSrcIdx = 11;
                    section.data(3).dtTransOffset = 8;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_FilterFrequency
                    section.data(4).logicalSrcIdx = 12;
                    section.data(4).dtTransOffset = 13;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedFreqs
                    section.data(5).logicalSrcIdx = 13;
                    section.data(5).dtTransOffset = 16;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_POValues
                    section.data(6).logicalSrcIdx = 14;
                    section.data(6).dtTransOffset = 18;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_OOValues
                    section.data(7).logicalSrcIdx = 15;
                    section.data(7).dtTransOffset = 20;

                    ;% QCar2_autonomous_driving_exa_DW.HILRead_AnalogBuffer
                    section.data(8).logicalSrcIdx = 16;
                    section.data(8).dtTransOffset = 22;

                    ;% QCar2_autonomous_driving_exa_DW.HILRead_OtherBuffer
                    section.data(9).logicalSrcIdx = 17;
                    section.data(9).dtTransOffset = 24;

                    ;% QCar2_autonomous_driving_exa_DW.Unwrap224_PreviousInput
                    section.data(10).logicalSrcIdx = 18;
                    section.data(10).dtTransOffset = 30;

                    ;% QCar2_autonomous_driving_exa_DW.Unwrap224_Revolutions
                    section.data(11).logicalSrcIdx = 19;
                    section.data(11).dtTransOffset = 31;

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition_Buffer0
                    section.data(12).logicalSrcIdx = 20;
                    section.data(12).dtTransOffset = 32;

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition1_Buffer0
                    section.data(13).logicalSrcIdx = 21;
                    section.data(13).dtTransOffset = 33;

                    ;% QCar2_autonomous_driving_exa_DW.PrevY
                    section.data(14).logicalSrcIdx = 22;
                    section.data(14).dtTransOffset = 34;

                    ;% QCar2_autonomous_driving_exa_DW.Memory_PreviousInput
                    section.data(15).logicalSrcIdx = 23;
                    section.data(15).dtTransOffset = 35;

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition4_Buffer0
                    section.data(16).logicalSrcIdx = 24;
                    section.data(16).dtTransOffset = 36;

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition3_Buffer0
                    section.data(17).logicalSrcIdx = 25;
                    section.data(17).dtTransOffset = 39;

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition2_Buffer0
                    section.data(18).logicalSrcIdx = 26;
                    section.data(18).dtTransOffset = 42;

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition7_Buffer
                    section.data(19).logicalSrcIdx = 27;
                    section.data(19).dtTransOffset = 43;

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition9_Buffer
                    section.data(20).logicalSrcIdx = 28;
                    section.data(20).dtTransOffset = 47;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_Compress
                    section.data(1).logicalSrcIdx = 29;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_l
                    section.data(2).logicalSrcIdx = 30;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_j
                    section.data(3).logicalSrcIdx = 31;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_lh
                    section.data(4).logicalSrcIdx = 32;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.ImageFindObjects_FindHandle
                    section.data(1).logicalSrcIdx = 33;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.VideoCapture_VideoCapture
                    section.data(1).logicalSrcIdx = 34;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.Video3DInitialize_Video3D
                    section.data(1).logicalSrcIdx = 35;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.Depth_Video3D
                    section.data(2).logicalSrcIdx = 36;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.Depth_Stream
                    section.data(1).logicalSrcIdx = 37;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.ImageFilter_Filter
                    section.data(1).logicalSrcIdx = 38;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.ImageFilter1_Filter
                    section.data(2).logicalSrcIdx = 39;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(8) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.ImageTransform1_AlgHandle
                    section.data(1).logicalSrcIdx = 40;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(9) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_Card
                    section.data(1).logicalSrcIdx = 41;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(10) = section;
            clear section

            section.nData     = 16;
            section.data(16)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.HILRead_PWORK
                    section.data(1).logicalSrcIdx = 42;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.Scope_PWORK.LoggedData
                    section.data(2).logicalSrcIdx = 43;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exa_DW.HILWrite_PWORK
                    section.data(3).logicalSrcIdx = 44;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exa_DW.Scope_PWORK_f.LoggedData
                    section.data(4).logicalSrcIdx = 45;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exa_DW.Scope1_PWORK.LoggedData
                    section.data(5).logicalSrcIdx = 46;
                    section.data(5).dtTransOffset = 6;

                    ;% QCar2_autonomous_driving_exa_DW.Scope_PWORK_j.LoggedData
                    section.data(6).logicalSrcIdx = 47;
                    section.data(6).dtTransOffset = 7;

                    ;% QCar2_autonomous_driving_exa_DW.Scope2_PWORK.LoggedData
                    section.data(7).logicalSrcIdx = 48;
                    section.data(7).dtTransOffset = 9;

                    ;% QCar2_autonomous_driving_exa_DW.Scope_PWORK_d.LoggedData
                    section.data(8).logicalSrcIdx = 49;
                    section.data(8).dtTransOffset = 10;

                    ;% QCar2_autonomous_driving_exa_DW.Scope_PWORK_a.LoggedData
                    section.data(9).logicalSrcIdx = 50;
                    section.data(9).dtTransOffset = 12;

                    ;% QCar2_autonomous_driving_exa_DW.Channel_PWORK.Fifo
                    section.data(10).logicalSrcIdx = 51;
                    section.data(10).dtTransOffset = 14;

                    ;% QCar2_autonomous_driving_exa_DW.SteeringCommand_PWORK.LoggedData
                    section.data(11).logicalSrcIdx = 52;
                    section.data(11).dtTransOffset = 15;

                    ;% QCar2_autonomous_driving_exa_DW.Scope_PWORK_b.LoggedData
                    section.data(12).logicalSrcIdx = 53;
                    section.data(12).dtTransOffset = 16;

                    ;% QCar2_autonomous_driving_exa_DW.Channel_PWORK_a.Fifo
                    section.data(13).logicalSrcIdx = 54;
                    section.data(13).dtTransOffset = 17;

                    ;% QCar2_autonomous_driving_exa_DW.Channel_PWORK_f.Fifo
                    section.data(14).logicalSrcIdx = 55;
                    section.data(14).dtTransOffset = 18;

                    ;% QCar2_autonomous_driving_exa_DW.Channel_PWORK_m.Fifo
                    section.data(15).logicalSrcIdx = 56;
                    section.data(15).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exa_DW.Channel_PWORK_o.Fifo
                    section.data(16).logicalSrcIdx = 57;
                    section.data(16).dtTransOffset = 20;

            nTotData = nTotData + section.nData;
            dworkMap.sections(11) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition10_Buffer
                    section.data(1).logicalSrcIdx = 58;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.last_location
                    section.data(2).logicalSrcIdx = 59;
                    section.data(2).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(12) = section;
            clear section

            section.nData     = 31;
            section.data(31)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_DOStates
                    section.data(1).logicalSrcIdx = 60;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_QuadratureModes
                    section.data(2).logicalSrcIdx = 61;
                    section.data(2).dtTransOffset = 16;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_InitialEICounts
                    section.data(3).logicalSrcIdx = 62;
                    section.data(3).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues
                    section.data(4).logicalSrcIdx = 63;
                    section.data(4).dtTransOffset = 22;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_POAlignValues
                    section.data(5).logicalSrcIdx = 64;
                    section.data(5).dtTransOffset = 24;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_POPolarityVals
                    section.data(6).logicalSrcIdx = 65;
                    section.data(6).dtTransOffset = 26;

                    ;% QCar2_autonomous_driving_exa_DW.HILRead_EncoderBuffer
                    section.data(7).logicalSrcIdx = 66;
                    section.data(7).dtTransOffset = 28;

                    ;% QCar2_autonomous_driving_exa_DW.clockTickCounter
                    section.data(8).logicalSrcIdx = 67;
                    section.data(8).dtTransOffset = 29;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1
                    section.data(9).logicalSrcIdx = 68;
                    section.data(9).dtTransOffset = 30;

                    ;% QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS2
                    section.data(10).logicalSrcIdx = 69;
                    section.data(10).dtTransOffset = 31;

                    ;% QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS3
                    section.data(11).logicalSrcIdx = 70;
                    section.data(11).dtTransOffset = 32;

                    ;% QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS4
                    section.data(12).logicalSrcIdx = 71;
                    section.data(12).dtTransOffset = 34;

                    ;% QCar2_autonomous_driving_exa_DW.ImageFindObjects_DIMS5
                    section.data(13).logicalSrcIdx = 72;
                    section.data(13).dtTransOffset = 36;

                    ;% QCar2_autonomous_driving_exa_DW.Reshape_DIMS1
                    section.data(14).logicalSrcIdx = 73;
                    section.data(14).dtTransOffset = 37;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_f
                    section.data(15).logicalSrcIdx = 74;
                    section.data(15).dtTransOffset = 38;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_b
                    section.data(16).logicalSrcIdx = 75;
                    section.data(16).dtTransOffset = 39;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_e
                    section.data(17).logicalSrcIdx = 76;
                    section.data(17).dtTransOffset = 40;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent
                    section.data(18).logicalSrcIdx = 77;
                    section.data(18).dtTransOffset = 41;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_g
                    section.data(19).logicalSrcIdx = 78;
                    section.data(19).dtTransOffset = 42;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_gp
                    section.data(20).logicalSrcIdx = 79;
                    section.data(20).dtTransOffset = 43;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_n
                    section.data(21).logicalSrcIdx = 80;
                    section.data(21).dtTransOffset = 44;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_c
                    section.data(22).logicalSrcIdx = 81;
                    section.data(22).dtTransOffset = 45;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_a
                    section.data(23).logicalSrcIdx = 82;
                    section.data(23).dtTransOffset = 46;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_j
                    section.data(24).logicalSrcIdx = 83;
                    section.data(24).dtTransOffset = 47;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_i
                    section.data(25).logicalSrcIdx = 84;
                    section.data(25).dtTransOffset = 48;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_o
                    section.data(26).logicalSrcIdx = 85;
                    section.data(26).dtTransOffset = 49;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_f
                    section.data(27).logicalSrcIdx = 86;
                    section.data(27).dtTransOffset = 50;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_fz
                    section.data(28).logicalSrcIdx = 87;
                    section.data(28).dtTransOffset = 51;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_g0
                    section.data(29).logicalSrcIdx = 88;
                    section.data(29).dtTransOffset = 52;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_e
                    section.data(30).logicalSrcIdx = 89;
                    section.data(30).dtTransOffset = 53;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_l
                    section.data(31).logicalSrcIdx = 90;
                    section.data(31).dtTransOffset = 54;

            nTotData = nTotData + section.nData;
            dworkMap.sections(13) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedChans
                    section.data(1).logicalSrcIdx = 91;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(14) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.obstacleDetection_SubsysRanBC
                    section.data(1).logicalSrcIdx = 92;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(15) = section;
            clear section

            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_ScanLine
                    section.data(1).logicalSrcIdx = 93;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition6_Buffer
                    section.data(2).logicalSrcIdx = 94;
                    section.data(2).dtTransOffset = 5136;

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition8_Buffer
                    section.data(3).logicalSrcIdx = 95;
                    section.data(3).dtTransOffset = 497136;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_ScanLine_c
                    section.data(4).logicalSrcIdx = 96;
                    section.data(4).dtTransOffset = 661136;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_ScanLine_i
                    section.data(5).logicalSrcIdx = 97;
                    section.data(5).dtTransOffset = 667696;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_ScanLine_ix
                    section.data(6).logicalSrcIdx = 98;
                    section.data(6).dtTransOffset = 674256;

            nTotData = nTotData + section.nData;
            dworkMap.sections(16) = section;
            clear section

            section.nData     = 20;
            section.data(20)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_DOBits
                    section.data(1).logicalSrcIdx = 99;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.Unwrap224_FirstSample
                    section.data(2).logicalSrcIdx = 100;
                    section.data(2).dtTransOffset = 16;

                    ;% QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1
                    section.data(3).logicalSrcIdx = 101;
                    section.data(3).dtTransOffset = 17;

                    ;% QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_c
                    section.data(4).logicalSrcIdx = 102;
                    section.data(4).dtTransOffset = 18;

                    ;% QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_o
                    section.data(5).logicalSrcIdx = 103;
                    section.data(5).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit
                    section.data(6).logicalSrcIdx = 104;
                    section.data(6).dtTransOffset = 20;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_e
                    section.data(7).logicalSrcIdx = 105;
                    section.data(7).dtTransOffset = 21;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_eh
                    section.data(8).logicalSrcIdx = 106;
                    section.data(8).dtTransOffset = 22;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_o
                    section.data(9).logicalSrcIdx = 107;
                    section.data(9).dtTransOffset = 23;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_a
                    section.data(10).logicalSrcIdx = 108;
                    section.data(10).dtTransOffset = 24;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_at
                    section.data(11).logicalSrcIdx = 109;
                    section.data(11).dtTransOffset = 25;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_n
                    section.data(12).logicalSrcIdx = 110;
                    section.data(12).dtTransOffset = 26;

                    ;% QCar2_autonomous_driving_exa_DW.last_location_not_empty
                    section.data(13).logicalSrcIdx = 111;
                    section.data(13).dtTransOffset = 27;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_d
                    section.data(14).logicalSrcIdx = 112;
                    section.data(14).dtTransOffset = 28;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_m
                    section.data(15).logicalSrcIdx = 113;
                    section.data(15).dtTransOffset = 29;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_dg
                    section.data(16).logicalSrcIdx = 114;
                    section.data(16).dtTransOffset = 30;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_i
                    section.data(17).logicalSrcIdx = 115;
                    section.data(17).dtTransOffset = 31;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_g
                    section.data(18).logicalSrcIdx = 116;
                    section.data(18).dtTransOffset = 32;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_mb
                    section.data(19).logicalSrcIdx = 117;
                    section.data(19).dtTransOffset = 33;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_b
                    section.data(20).logicalSrcIdx = 118;
                    section.data(20).dtTransOffset = 34;

            nTotData = nTotData + section.nData;
            dworkMap.sections(17) = section;
            clear section


            ;%
            ;% Non-auto Data (dwork)
            ;%


        ;%
        ;% Add final counts to struct.
        ;%
        dworkMap.nTotData = nTotData;



    ;%
    ;% Add individual maps to base struct.
    ;%

    targMap.paramMap  = paramMap;
    targMap.signalMap = sigMap;
    targMap.dworkMap  = dworkMap;

    ;%
    ;% Add checksums to base struct.
    ;%


    targMap.checksum0 = 205858571;
    targMap.checksum1 = 2076415648;
    targMap.checksum2 = 3348101739;
    targMap.checksum3 = 888618615;

