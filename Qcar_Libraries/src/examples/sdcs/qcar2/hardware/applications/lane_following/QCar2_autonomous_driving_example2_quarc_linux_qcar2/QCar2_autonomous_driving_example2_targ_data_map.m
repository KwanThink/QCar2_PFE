    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
        nTotData      = 0; %add to this count as we go
        nTotSects     = 10;
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

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding_b_comparis
                    section.data(1).logicalSrcIdx = 7;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding_g_comparis
                    section.data(2).logicalSrcIdx = 8;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding_r_comparis
                    section.data(3).logicalSrcIdx = 9;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.HILRead_analog_channels
                    section.data(1).logicalSrcIdx = 10;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.HILWrite_digital_channels
                    section.data(2).logicalSrcIdx = 11;
                    section.data(2).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.HILRead_encoder_channels
                    section.data(3).logicalSrcIdx = 12;
                    section.data(3).dtTransOffset = 18;

                    ;% QCar2_autonomous_driving_exam_P.HILRead_other_channels
                    section.data(4).logicalSrcIdx = 13;
                    section.data(4).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exam_P.HILWrite_other_channels
                    section.data(5).logicalSrcIdx = 14;
                    section.data(5).dtTransOffset = 25;

                    ;% QCar2_autonomous_driving_exam_P.Depth_stream_index
                    section.data(6).logicalSrcIdx = 15;
                    section.data(6).dtTransOffset = 27;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.Video3DInitialize_active
                    section.data(1).logicalSrcIdx = 16;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section

            section.nData     = 171;
            section.data(171)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.distancem_Y0
                    section.data(1).logicalSrcIdx = 17;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value
                    section.data(2).logicalSrcIdx = 18;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.Constant1_Value
                    section.data(3).logicalSrcIdx = 19;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.Constant2_Value
                    section.data(4).logicalSrcIdx = 20;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_P.Constant3_Value
                    section.data(5).logicalSrcIdx = 21;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exam_P.scale_Value
                    section.data(6).logicalSrcIdx = 22;
                    section.data(6).dtTransOffset = 7;

                    ;% QCar2_autonomous_driving_exam_P.b_n_Value
                    section.data(7).logicalSrcIdx = 23;
                    section.data(7).dtTransOffset = 8;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_j
                    section.data(8).logicalSrcIdx = 24;
                    section.data(8).dtTransOffset = 9;

                    ;% QCar2_autonomous_driving_exam_P.Saturation_UpperSat
                    section.data(9).logicalSrcIdx = 25;
                    section.data(9).dtTransOffset = 10;

                    ;% QCar2_autonomous_driving_exam_P.Saturation_LowerSat
                    section.data(10).logicalSrcIdx = 26;
                    section.data(10).dtTransOffset = 11;

                    ;% QCar2_autonomous_driving_exam_P.Constant10_Value
                    section.data(11).logicalSrcIdx = 27;
                    section.data(11).dtTransOffset = 12;

                    ;% QCar2_autonomous_driving_exam_P.Constant8_Value
                    section.data(12).logicalSrcIdx = 28;
                    section.data(12).dtTransOffset = 13;

                    ;% QCar2_autonomous_driving_exam_P.Constant4_Value
                    section.data(13).logicalSrcIdx = 29;
                    section.data(13).dtTransOffset = 14;

                    ;% QCar2_autonomous_driving_exam_P.Constant3_Value_b
                    section.data(14).logicalSrcIdx = 30;
                    section.data(14).dtTransOffset = 15;

                    ;% QCar2_autonomous_driving_exam_P.SpeedMaxms_Value
                    section.data(15).logicalSrcIdx = 31;
                    section.data(15).dtTransOffset = 16;

                    ;% QCar2_autonomous_driving_exam_P.SpeedSelector1_Gain
                    section.data(16).logicalSrcIdx = 32;
                    section.data(16).dtTransOffset = 17;

                    ;% QCar2_autonomous_driving_exam_P.Saturation1_UpperSat
                    section.data(17).logicalSrcIdx = 33;
                    section.data(17).dtTransOffset = 18;

                    ;% QCar2_autonomous_driving_exam_P.Saturation1_LowerSat
                    section.data(18).logicalSrcIdx = 34;
                    section.data(18).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exam_P.Constant9_Value
                    section.data(19).logicalSrcIdx = 35;
                    section.data(19).dtTransOffset = 20;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_i
                    section.data(20).logicalSrcIdx = 36;
                    section.data(20).dtTransOffset = 21;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOTerminate
                    section.data(21).logicalSrcIdx = 37;
                    section.data(21).dtTransOffset = 22;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOExit
                    section.data(22).logicalSrcIdx = 38;
                    section.data(22).dtTransOffset = 23;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOStart
                    section.data(23).logicalSrcIdx = 39;
                    section.data(23).dtTransOffset = 24;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOEnter
                    section.data(24).logicalSrcIdx = 40;
                    section.data(24).dtTransOffset = 25;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POFinal
                    section.data(25).logicalSrcIdx = 41;
                    section.data(25).dtTransOffset = 26;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOFinal
                    section.data(26).logicalSrcIdx = 42;
                    section.data(26).dtTransOffset = 27;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AIHigh
                    section.data(27).logicalSrcIdx = 43;
                    section.data(27).dtTransOffset = 28;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AILow
                    section.data(28).logicalSrcIdx = 44;
                    section.data(28).dtTransOffset = 29;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIFrequency
                    section.data(29).logicalSrcIdx = 45;
                    section.data(29).dtTransOffset = 30;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POFrequency
                    section.data(30).logicalSrcIdx = 46;
                    section.data(30).dtTransOffset = 31;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POInitial
                    section.data(31).logicalSrcIdx = 47;
                    section.data(31).dtTransOffset = 32;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POWatchdog
                    section.data(32).logicalSrcIdx = 48;
                    section.data(32).dtTransOffset = 33;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOInitial
                    section.data(33).logicalSrcIdx = 49;
                    section.data(33).dtTransOffset = 34;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOWatchdog
                    section.data(34).logicalSrcIdx = 50;
                    section.data(34).dtTransOffset = 35;

                    ;% QCar2_autonomous_driving_exam_P.Constant1_Value_h
                    section.data(35).logicalSrcIdx = 51;
                    section.data(35).dtTransOffset = 36;

                    ;% QCar2_autonomous_driving_exam_P.Constant2_Value_n
                    section.data(36).logicalSrcIdx = 52;
                    section.data(36).dtTransOffset = 37;

                    ;% QCar2_autonomous_driving_exam_P.Constant3_Value_d
                    section.data(37).logicalSrcIdx = 53;
                    section.data(37).dtTransOffset = 38;

                    ;% QCar2_autonomous_driving_exam_P.Constant4_Value_h
                    section.data(38).logicalSrcIdx = 54;
                    section.data(38).dtTransOffset = 39;

                    ;% QCar2_autonomous_driving_exam_P.Constant5_Value
                    section.data(39).logicalSrcIdx = 55;
                    section.data(39).dtTransOffset = 40;

                    ;% QCar2_autonomous_driving_exam_P.Constant6_Value
                    section.data(40).logicalSrcIdx = 56;
                    section.data(40).dtTransOffset = 41;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_l
                    section.data(41).logicalSrcIdx = 57;
                    section.data(41).dtTransOffset = 42;

                    ;% QCar2_autonomous_driving_exam_P.Unwrap224_Modulus
                    section.data(42).logicalSrcIdx = 58;
                    section.data(42).dtTransOffset = 43;

                    ;% QCar2_autonomous_driving_exam_P.Integrator2_IC
                    section.data(43).logicalSrcIdx = 59;
                    section.data(43).dtTransOffset = 44;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_h
                    section.data(44).logicalSrcIdx = 60;
                    section.data(44).dtTransOffset = 45;

                    ;% QCar2_autonomous_driving_exam_P.Integrator2_IC_l
                    section.data(45).logicalSrcIdx = 61;
                    section.data(45).dtTransOffset = 46;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_p
                    section.data(46).logicalSrcIdx = 62;
                    section.data(46).dtTransOffset = 47;

                    ;% QCar2_autonomous_driving_exam_P.Integrator2_IC_d
                    section.data(47).logicalSrcIdx = 63;
                    section.data(47).dtTransOffset = 48;

                    ;% QCar2_autonomous_driving_exam_P.RateTransition_InitialCondition
                    section.data(48).logicalSrcIdx = 64;
                    section.data(48).dtTransOffset = 49;

                    ;% QCar2_autonomous_driving_exam_P.PulsingLight_Amp
                    section.data(49).logicalSrcIdx = 65;
                    section.data(49).dtTransOffset = 50;

                    ;% QCar2_autonomous_driving_exam_P.PulsingLight_Period
                    section.data(50).logicalSrcIdx = 66;
                    section.data(50).dtTransOffset = 51;

                    ;% QCar2_autonomous_driving_exam_P.PulsingLight_Duty
                    section.data(51).logicalSrcIdx = 67;
                    section.data(51).dtTransOffset = 52;

                    ;% QCar2_autonomous_driving_exam_P.PulsingLight_PhaseDelay
                    section.data(52).logicalSrcIdx = 68;
                    section.data(52).dtTransOffset = 53;

                    ;% QCar2_autonomous_driving_exam_P.Constant1_Value_f
                    section.data(53).logicalSrcIdx = 69;
                    section.data(53).dtTransOffset = 54;

                    ;% QCar2_autonomous_driving_exam_P.RateTransition1_InitialConditio
                    section.data(54).logicalSrcIdx = 70;
                    section.data(54).dtTransOffset = 55;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_po
                    section.data(55).logicalSrcIdx = 71;
                    section.data(55).dtTransOffset = 56;

                    ;% QCar2_autonomous_driving_exam_P.Constant2_Value_f
                    section.data(56).logicalSrcIdx = 72;
                    section.data(56).dtTransOffset = 57;

                    ;% QCar2_autonomous_driving_exam_P.Switch_Threshold
                    section.data(57).logicalSrcIdx = 73;
                    section.data(57).dtTransOffset = 58;

                    ;% QCar2_autonomous_driving_exam_P.RateLimiter_RisingLim
                    section.data(58).logicalSrcIdx = 74;
                    section.data(58).dtTransOffset = 59;

                    ;% QCar2_autonomous_driving_exam_P.RateLimiter_FallingLim
                    section.data(59).logicalSrcIdx = 75;
                    section.data(59).dtTransOffset = 60;

                    ;% QCar2_autonomous_driving_exam_P.RateLimiter_IC
                    section.data(60).logicalSrcIdx = 76;
                    section.data(60).dtTransOffset = 61;

                    ;% QCar2_autonomous_driving_exam_P.Constant1_Value_f1
                    section.data(61).logicalSrcIdx = 77;
                    section.data(61).dtTransOffset = 62;

                    ;% QCar2_autonomous_driving_exam_P.Switch_Threshold_h
                    section.data(62).logicalSrcIdx = 78;
                    section.data(62).dtTransOffset = 63;

                    ;% QCar2_autonomous_driving_exam_P.commandsaturation_UpperSat
                    section.data(63).logicalSrcIdx = 79;
                    section.data(63).dtTransOffset = 64;

                    ;% QCar2_autonomous_driving_exam_P.commandsaturation_LowerSat
                    section.data(64).logicalSrcIdx = 80;
                    section.data(64).dtTransOffset = 65;

                    ;% QCar2_autonomous_driving_exam_P.Kffms_Gain
                    section.data(65).logicalSrcIdx = 81;
                    section.data(65).dtTransOffset = 66;

                    ;% QCar2_autonomous_driving_exam_P.countstorotations_Gain
                    section.data(66).logicalSrcIdx = 82;
                    section.data(66).dtTransOffset = 67;

                    ;% QCar2_autonomous_driving_exam_P.gearratios_Gain
                    section.data(67).logicalSrcIdx = 83;
                    section.data(67).dtTransOffset = 68;

                    ;% QCar2_autonomous_driving_exam_P.rotstorads_Gain
                    section.data(68).logicalSrcIdx = 84;
                    section.data(68).dtTransOffset = 69;

                    ;% QCar2_autonomous_driving_exam_P.wheelradius_Gain
                    section.data(69).logicalSrcIdx = 85;
                    section.data(69).dtTransOffset = 70;

                    ;% QCar2_autonomous_driving_exam_P.Kpms_Gain
                    section.data(70).logicalSrcIdx = 86;
                    section.data(70).dtTransOffset = 71;

                    ;% QCar2_autonomous_driving_exam_P.Integrator1_IC
                    section.data(71).logicalSrcIdx = 87;
                    section.data(71).dtTransOffset = 72;

                    ;% QCar2_autonomous_driving_exam_P.Integrator1_UpperSat
                    section.data(72).logicalSrcIdx = 88;
                    section.data(72).dtTransOffset = 73;

                    ;% QCar2_autonomous_driving_exam_P.Integrator1_LowerSat
                    section.data(73).logicalSrcIdx = 89;
                    section.data(73).dtTransOffset = 74;

                    ;% QCar2_autonomous_driving_exam_P.Memory_InitialCondition
                    section.data(74).logicalSrcIdx = 90;
                    section.data(74).dtTransOffset = 75;

                    ;% QCar2_autonomous_driving_exam_P.Constant2_Value_b
                    section.data(75).logicalSrcIdx = 91;
                    section.data(75).dtTransOffset = 76;

                    ;% QCar2_autonomous_driving_exam_P.one_shot_block_trigger_type
                    section.data(76).logicalSrcIdx = 92;
                    section.data(76).dtTransOffset = 77;

                    ;% QCar2_autonomous_driving_exam_P.one_shot_block_redun_pulse
                    section.data(77).logicalSrcIdx = 93;
                    section.data(77).dtTransOffset = 78;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_d
                    section.data(78).logicalSrcIdx = 94;
                    section.data(78).dtTransOffset = 79;

                    ;% QCar2_autonomous_driving_exam_P.Switch_Threshold_e
                    section.data(79).logicalSrcIdx = 95;
                    section.data(79).dtTransOffset = 80;

                    ;% QCar2_autonomous_driving_exam_P.Gain_Gain
                    section.data(80).logicalSrcIdx = 96;
                    section.data(80).dtTransOffset = 81;

                    ;% QCar2_autonomous_driving_exam_P.SteeringBias_Bias
                    section.data(81).logicalSrcIdx = 97;
                    section.data(81).dtTransOffset = 82;

                    ;% QCar2_autonomous_driving_exam_P.directionconvention_Gain
                    section.data(82).logicalSrcIdx = 98;
                    section.data(82).dtTransOffset = 83;

                    ;% QCar2_autonomous_driving_exam_P.commandsaturation_UpperSat_e
                    section.data(83).logicalSrcIdx = 99;
                    section.data(83).dtTransOffset = 84;

                    ;% QCar2_autonomous_driving_exam_P.commandsaturation_LowerSat_j
                    section.data(84).logicalSrcIdx = 100;
                    section.data(84).dtTransOffset = 85;

                    ;% QCar2_autonomous_driving_exam_P.Gain_Gain_p
                    section.data(85).logicalSrcIdx = 101;
                    section.data(85).dtTransOffset = 86;

                    ;% QCar2_autonomous_driving_exam_P.Bias1_Bias
                    section.data(86).logicalSrcIdx = 102;
                    section.data(86).dtTransOffset = 87;

                    ;% QCar2_autonomous_driving_exam_P.Saturation_UpperSat_p
                    section.data(87).logicalSrcIdx = 103;
                    section.data(87).dtTransOffset = 88;

                    ;% QCar2_autonomous_driving_exam_P.Saturation_LowerSat_p
                    section.data(88).logicalSrcIdx = 104;
                    section.data(88).dtTransOffset = 89;

                    ;% QCar2_autonomous_driving_exam_P.Kim_Gain
                    section.data(89).logicalSrcIdx = 105;
                    section.data(89).dtTransOffset = 90;

                    ;% QCar2_autonomous_driving_exam_P.Constant_Value_c
                    section.data(90).logicalSrcIdx = 106;
                    section.data(90).dtTransOffset = 91;

                    ;% QCar2_autonomous_driving_exam_P.RateTransition4_InitialConditio
                    section.data(91).logicalSrcIdx = 107;
                    section.data(91).dtTransOffset = 92;

                    ;% QCar2_autonomous_driving_exam_P.RateTransition3_InitialConditio
                    section.data(92).logicalSrcIdx = 108;
                    section.data(92).dtTransOffset = 93;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Brightness
                    section.data(93).logicalSrcIdx = 109;
                    section.data(93).dtTransOffset = 94;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Contrast
                    section.data(94).logicalSrcIdx = 110;
                    section.data(94).dtTransOffset = 95;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Hue
                    section.data(95).logicalSrcIdx = 111;
                    section.data(95).dtTransOffset = 96;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Saturation
                    section.data(96).logicalSrcIdx = 112;
                    section.data(96).dtTransOffset = 97;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Sharpness
                    section.data(97).logicalSrcIdx = 113;
                    section.data(97).dtTransOffset = 98;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Gamma
                    section.data(98).logicalSrcIdx = 114;
                    section.data(98).dtTransOffset = 99;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_ColorEnable
                    section.data(99).logicalSrcIdx = 115;
                    section.data(99).dtTransOffset = 100;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_WhiteBalance
                    section.data(100).logicalSrcIdx = 116;
                    section.data(100).dtTransOffset = 101;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_BacklightCompensat
                    section.data(101).logicalSrcIdx = 117;
                    section.data(101).dtTransOffset = 102;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Gain
                    section.data(102).logicalSrcIdx = 118;
                    section.data(102).dtTransOffset = 103;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Pan
                    section.data(103).logicalSrcIdx = 119;
                    section.data(103).dtTransOffset = 104;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Tilt
                    section.data(104).logicalSrcIdx = 120;
                    section.data(104).dtTransOffset = 105;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Roll
                    section.data(105).logicalSrcIdx = 121;
                    section.data(105).dtTransOffset = 106;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Zoom
                    section.data(106).logicalSrcIdx = 122;
                    section.data(106).dtTransOffset = 107;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Exposure
                    section.data(107).logicalSrcIdx = 123;
                    section.data(107).dtTransOffset = 108;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Iris
                    section.data(108).logicalSrcIdx = 124;
                    section.data(108).dtTransOffset = 109;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Focus
                    section.data(109).logicalSrcIdx = 125;
                    section.data(109).dtTransOffset = 110;

                    ;% QCar2_autonomous_driving_exam_P.VideoCapture_Mirror
                    section.data(110).logicalSrcIdx = 126;
                    section.data(110).dtTransOffset = 111;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform_MinPixel
                    section.data(111).logicalSrcIdx = 127;
                    section.data(111).dtTransOffset = 112;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform_MaxPixel
                    section.data(112).logicalSrcIdx = 128;
                    section.data(112).dtTransOffset = 113;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform_ContourDepth
                    section.data(113).logicalSrcIdx = 129;
                    section.data(113).dtTransOffset = 114;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform_FocalLen
                    section.data(114).logicalSrcIdx = 130;
                    section.data(114).dtTransOffset = 115;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform_Extrapolated
                    section.data(115).logicalSrcIdx = 131;
                    section.data(115).dtTransOffset = 116;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform_Angle
                    section.data(116).logicalSrcIdx = 132;
                    section.data(116).dtTransOffset = 117;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform_RCoeff
                    section.data(117).logicalSrcIdx = 133;
                    section.data(117).dtTransOffset = 118;

                    ;% QCar2_autonomous_driving_exam_P.HueMin_Value
                    section.data(118).logicalSrcIdx = 134;
                    section.data(118).dtTransOffset = 120;

                    ;% QCar2_autonomous_driving_exam_P.HueMax_Value
                    section.data(119).logicalSrcIdx = 135;
                    section.data(119).dtTransOffset = 121;

                    ;% QCar2_autonomous_driving_exam_P.Gain_Gain_d
                    section.data(120).logicalSrcIdx = 136;
                    section.data(120).dtTransOffset = 122;

                    ;% QCar2_autonomous_driving_exam_P.u0_Gain
                    section.data(121).logicalSrcIdx = 137;
                    section.data(121).dtTransOffset = 123;

                    ;% QCar2_autonomous_driving_exam_P.ColorSelectingMean0_Value
                    section.data(122).logicalSrcIdx = 138;
                    section.data(122).dtTransOffset = 124;

                    ;% QCar2_autonomous_driving_exam_P.Gain1_Gain
                    section.data(123).logicalSrcIdx = 139;
                    section.data(123).dtTransOffset = 125;

                    ;% QCar2_autonomous_driving_exam_P.ColorSelectingWindow1_Value
                    section.data(124).logicalSrcIdx = 140;
                    section.data(124).dtTransOffset = 126;

                    ;% QCar2_autonomous_driving_exam_P.Gain6_Gain
                    section.data(125).logicalSrcIdx = 141;
                    section.data(125).dtTransOffset = 127;

                    ;% QCar2_autonomous_driving_exam_P.SatMin_Value
                    section.data(126).logicalSrcIdx = 142;
                    section.data(126).dtTransOffset = 128;

                    ;% QCar2_autonomous_driving_exam_P.SatMax_Value
                    section.data(127).logicalSrcIdx = 143;
                    section.data(127).dtTransOffset = 129;

                    ;% QCar2_autonomous_driving_exam_P.Gain2_Gain
                    section.data(128).logicalSrcIdx = 144;
                    section.data(128).dtTransOffset = 130;

                    ;% QCar2_autonomous_driving_exam_P.u01_Gain
                    section.data(129).logicalSrcIdx = 145;
                    section.data(129).dtTransOffset = 131;

                    ;% QCar2_autonomous_driving_exam_P.ColorMixingMean0_Value
                    section.data(130).logicalSrcIdx = 146;
                    section.data(130).dtTransOffset = 132;

                    ;% QCar2_autonomous_driving_exam_P.Gain3_Gain
                    section.data(131).logicalSrcIdx = 147;
                    section.data(131).dtTransOffset = 133;

                    ;% QCar2_autonomous_driving_exam_P.ColorMixingWindow1_Value
                    section.data(132).logicalSrcIdx = 148;
                    section.data(132).dtTransOffset = 134;

                    ;% QCar2_autonomous_driving_exam_P.ValMin_Value
                    section.data(133).logicalSrcIdx = 149;
                    section.data(133).dtTransOffset = 135;

                    ;% QCar2_autonomous_driving_exam_P.ValMax_Value
                    section.data(134).logicalSrcIdx = 150;
                    section.data(134).dtTransOffset = 136;

                    ;% QCar2_autonomous_driving_exam_P.Gain4_Gain
                    section.data(135).logicalSrcIdx = 151;
                    section.data(135).dtTransOffset = 137;

                    ;% QCar2_autonomous_driving_exam_P.u02_Gain
                    section.data(136).logicalSrcIdx = 152;
                    section.data(136).dtTransOffset = 138;

                    ;% QCar2_autonomous_driving_exam_P.BrightnessMean0_Value
                    section.data(137).logicalSrcIdx = 153;
                    section.data(137).dtTransOffset = 139;

                    ;% QCar2_autonomous_driving_exam_P.Gain5_Gain
                    section.data(138).logicalSrcIdx = 154;
                    section.data(138).dtTransOffset = 140;

                    ;% QCar2_autonomous_driving_exam_P.BrightnessWindow1_Value
                    section.data(139).logicalSrcIdx = 155;
                    section.data(139).dtTransOffset = 141;

                    ;% QCar2_autonomous_driving_exam_P.Saturation_UpperSat_i
                    section.data(140).logicalSrcIdx = 156;
                    section.data(140).dtTransOffset = 142;

                    ;% QCar2_autonomous_driving_exam_P.Saturation_LowerSat_g
                    section.data(141).logicalSrcIdx = 157;
                    section.data(141).dtTransOffset = 145;

                    ;% QCar2_autonomous_driving_exam_P.Gain7_Gain
                    section.data(142).logicalSrcIdx = 158;
                    section.data(142).dtTransOffset = 148;

                    ;% QCar2_autonomous_driving_exam_P.Saturation1_UpperSat_d
                    section.data(143).logicalSrcIdx = 159;
                    section.data(143).dtTransOffset = 149;

                    ;% QCar2_autonomous_driving_exam_P.Saturation1_LowerSat_o
                    section.data(144).logicalSrcIdx = 160;
                    section.data(144).dtTransOffset = 152;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding_Channel0Mi
                    section.data(145).logicalSrcIdx = 161;
                    section.data(145).dtTransOffset = 155;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding_Channel0Ma
                    section.data(146).logicalSrcIdx = 162;
                    section.data(146).dtTransOffset = 156;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding_Channel1Mi
                    section.data(147).logicalSrcIdx = 163;
                    section.data(147).dtTransOffset = 157;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding_Channel1Ma
                    section.data(148).logicalSrcIdx = 164;
                    section.data(148).dtTransOffset = 158;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding_Channel2Mi
                    section.data(149).logicalSrcIdx = 165;
                    section.data(149).dtTransOffset = 159;

                    ;% QCar2_autonomous_driving_exam_P.HSVColorThresholding_Channel2Ma
                    section.data(150).logicalSrcIdx = 166;
                    section.data(150).dtTransOffset = 160;

                    ;% QCar2_autonomous_driving_exam_P.Constant4_Value_a
                    section.data(151).logicalSrcIdx = 167;
                    section.data(151).dtTransOffset = 161;

                    ;% QCar2_autonomous_driving_exam_P.Gain_Gain_a
                    section.data(152).logicalSrcIdx = 168;
                    section.data(152).dtTransOffset = 162;

                    ;% QCar2_autonomous_driving_exam_P.Bias_Bias
                    section.data(153).logicalSrcIdx = 169;
                    section.data(153).dtTransOffset = 163;

                    ;% QCar2_autonomous_driving_exam_P.Constant3_Value_br
                    section.data(154).logicalSrcIdx = 170;
                    section.data(154).dtTransOffset = 164;

                    ;% QCar2_autonomous_driving_exam_P.m_n_Value
                    section.data(155).logicalSrcIdx = 171;
                    section.data(155).dtTransOffset = 165;

                    ;% QCar2_autonomous_driving_exam_P.DistaneToLane0_Value
                    section.data(156).logicalSrcIdx = 172;
                    section.data(156).dtTransOffset = 166;

                    ;% QCar2_autonomous_driving_exam_P.SteeringSaturation1_UpperSat
                    section.data(157).logicalSrcIdx = 173;
                    section.data(157).dtTransOffset = 167;

                    ;% QCar2_autonomous_driving_exam_P.SteeringSaturation1_LowerSat
                    section.data(158).logicalSrcIdx = 174;
                    section.data(158).dtTransOffset = 168;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Brightness
                    section.data(159).logicalSrcIdx = 175;
                    section.data(159).dtTransOffset = 169;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Contrast
                    section.data(160).logicalSrcIdx = 176;
                    section.data(160).dtTransOffset = 170;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Hue
                    section.data(161).logicalSrcIdx = 177;
                    section.data(161).dtTransOffset = 171;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Saturation
                    section.data(162).logicalSrcIdx = 178;
                    section.data(162).dtTransOffset = 172;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Sharpness
                    section.data(163).logicalSrcIdx = 179;
                    section.data(163).dtTransOffset = 173;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Gamma
                    section.data(164).logicalSrcIdx = 180;
                    section.data(164).dtTransOffset = 174;

                    ;% QCar2_autonomous_driving_exam_P.Depth_WhiteBalance
                    section.data(165).logicalSrcIdx = 181;
                    section.data(165).dtTransOffset = 175;

                    ;% QCar2_autonomous_driving_exam_P.Depth_BacklightCompensation
                    section.data(166).logicalSrcIdx = 182;
                    section.data(166).dtTransOffset = 176;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Gain
                    section.data(167).logicalSrcIdx = 183;
                    section.data(167).dtTransOffset = 177;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Exposure
                    section.data(168).logicalSrcIdx = 184;
                    section.data(168).dtTransOffset = 178;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Emitter
                    section.data(169).logicalSrcIdx = 185;
                    section.data(169).dtTransOffset = 179;

                    ;% QCar2_autonomous_driving_exam_P.StoppingDistancem_Value
                    section.data(170).logicalSrcIdx = 186;
                    section.data(170).dtTransOffset = 180;

                    ;% QCar2_autonomous_driving_exam_P.StoppingDistanceOffset0_Gain
                    section.data(171).logicalSrcIdx = 187;
                    section.data(171).dtTransOffset = 181;

            nTotData = nTotData + section.nData;
            paramMap.sections(5) = section;
            clear section

            section.nData     = 10;
            section.data(10)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOWatchdog
                    section.data(1).logicalSrcIdx = 188;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIInitial
                    section.data(2).logicalSrcIdx = 189;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POModes
                    section.data(3).logicalSrcIdx = 190;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POConfiguration
                    section.data(4).logicalSrcIdx = 191;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POAlignment
                    section.data(5).logicalSrcIdx = 192;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POPolarity
                    section.data(6).logicalSrcIdx = 193;
                    section.data(6).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform_PrPoint
                    section.data(7).logicalSrcIdx = 194;
                    section.data(7).dtTransOffset = 6;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform_Interpolation
                    section.data(8).logicalSrcIdx = 195;
                    section.data(8).dtTransOffset = 8;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform_Origin
                    section.data(9).logicalSrcIdx = 196;
                    section.data(9).dtTransOffset = 9;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform_OOrigin
                    section.data(10).logicalSrcIdx = 197;
                    section.data(10).dtTransOffset = 11;

            nTotData = nTotData + section.nData;
            paramMap.sections(6) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.Gain_Gain_g
                    section.data(1).logicalSrcIdx = 198;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(7) = section;
            clear section

            section.nData     = 12;
            section.data(12)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AIChannels
                    section.data(1).logicalSrcIdx = 199;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DIChannels
                    section.data(2).logicalSrcIdx = 200;
                    section.data(2).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOChannels
                    section.data(3).logicalSrcIdx = 201;
                    section.data(3).dtTransOffset = 20;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIChannels
                    section.data(4).logicalSrcIdx = 202;
                    section.data(4).dtTransOffset = 36;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIQuadrature
                    section.data(5).logicalSrcIdx = 203;
                    section.data(5).dtTransOffset = 39;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POChannels
                    section.data(6).logicalSrcIdx = 204;
                    section.data(6).dtTransOffset = 40;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOChannels
                    section.data(7).logicalSrcIdx = 205;
                    section.data(7).dtTransOffset = 42;

                    ;% QCar2_autonomous_driving_exam_P.ImageTransform_ColorTheme
                    section.data(8).logicalSrcIdx = 206;
                    section.data(8).dtTransOffset = 44;

                    ;% QCar2_autonomous_driving_exam_P.ImageCompress_Quality
                    section.data(9).logicalSrcIdx = 207;
                    section.data(9).dtTransOffset = 45;

                    ;% QCar2_autonomous_driving_exam_P.ImageCompress_Quality_p
                    section.data(10).logicalSrcIdx = 208;
                    section.data(10).dtTransOffset = 46;

                    ;% QCar2_autonomous_driving_exam_P.Depth_Preset
                    section.data(11).logicalSrcIdx = 209;
                    section.data(11).dtTransOffset = 47;

                    ;% QCar2_autonomous_driving_exam_P.ImageCompress_Quality_k
                    section.data(12).logicalSrcIdx = 210;
                    section.data(12).dtTransOffset = 48;

            nTotData = nTotData + section.nData;
            paramMap.sections(8) = section;
            clear section

            section.nData     = 42;
            section.data(42)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_Active
                    section.data(1).logicalSrcIdx = 211;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOTerminate
                    section.data(2).logicalSrcIdx = 212;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOExit
                    section.data(3).logicalSrcIdx = 213;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOTerminate
                    section.data(4).logicalSrcIdx = 214;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOExit
                    section.data(5).logicalSrcIdx = 215;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POTerminate
                    section.data(6).logicalSrcIdx = 216;
                    section.data(6).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POExit
                    section.data(7).logicalSrcIdx = 217;
                    section.data(7).dtTransOffset = 6;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_CKPStart
                    section.data(8).logicalSrcIdx = 218;
                    section.data(8).dtTransOffset = 7;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_CKPEnter
                    section.data(9).logicalSrcIdx = 219;
                    section.data(9).dtTransOffset = 8;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_CKStart
                    section.data(10).logicalSrcIdx = 220;
                    section.data(10).dtTransOffset = 9;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_CKEnter
                    section.data(11).logicalSrcIdx = 221;
                    section.data(11).dtTransOffset = 10;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AIPStart
                    section.data(12).logicalSrcIdx = 222;
                    section.data(12).dtTransOffset = 11;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AIPEnter
                    section.data(13).logicalSrcIdx = 223;
                    section.data(13).dtTransOffset = 12;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOPStart
                    section.data(14).logicalSrcIdx = 224;
                    section.data(14).dtTransOffset = 13;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOPEnter
                    section.data(15).logicalSrcIdx = 225;
                    section.data(15).dtTransOffset = 14;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOStart
                    section.data(16).logicalSrcIdx = 226;
                    section.data(16).dtTransOffset = 15;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOEnter
                    section.data(17).logicalSrcIdx = 227;
                    section.data(17).dtTransOffset = 16;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_AOReset
                    section.data(18).logicalSrcIdx = 228;
                    section.data(18).dtTransOffset = 17;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOPStart
                    section.data(19).logicalSrcIdx = 229;
                    section.data(19).dtTransOffset = 18;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOPEnter
                    section.data(20).logicalSrcIdx = 230;
                    section.data(20).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOStart
                    section.data(21).logicalSrcIdx = 231;
                    section.data(21).dtTransOffset = 20;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOEnter
                    section.data(22).logicalSrcIdx = 232;
                    section.data(22).dtTransOffset = 21;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOReset
                    section.data(23).logicalSrcIdx = 233;
                    section.data(23).dtTransOffset = 22;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIPStart
                    section.data(24).logicalSrcIdx = 234;
                    section.data(24).dtTransOffset = 23;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIPEnter
                    section.data(25).logicalSrcIdx = 235;
                    section.data(25).dtTransOffset = 24;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIStart
                    section.data(26).logicalSrcIdx = 236;
                    section.data(26).dtTransOffset = 25;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_EIEnter
                    section.data(27).logicalSrcIdx = 237;
                    section.data(27).dtTransOffset = 26;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POPStart
                    section.data(28).logicalSrcIdx = 238;
                    section.data(28).dtTransOffset = 27;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POPEnter
                    section.data(29).logicalSrcIdx = 239;
                    section.data(29).dtTransOffset = 28;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POStart
                    section.data(30).logicalSrcIdx = 240;
                    section.data(30).dtTransOffset = 29;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POEnter
                    section.data(31).logicalSrcIdx = 241;
                    section.data(31).dtTransOffset = 30;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_POReset
                    section.data(32).logicalSrcIdx = 242;
                    section.data(32).dtTransOffset = 31;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_OOReset
                    section.data(33).logicalSrcIdx = 243;
                    section.data(33).dtTransOffset = 32;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOFinal
                    section.data(34).logicalSrcIdx = 244;
                    section.data(34).dtTransOffset = 33;

                    ;% QCar2_autonomous_driving_exam_P.HILInitialize_DOInitial
                    section.data(35).logicalSrcIdx = 245;
                    section.data(35).dtTransOffset = 34;

                    ;% QCar2_autonomous_driving_exam_P.HILRead_Active
                    section.data(36).logicalSrcIdx = 246;
                    section.data(36).dtTransOffset = 35;

                    ;% QCar2_autonomous_driving_exam_P.SteadyLight_Value
                    section.data(37).logicalSrcIdx = 247;
                    section.data(37).dtTransOffset = 36;

                    ;% QCar2_autonomous_driving_exam_P.LightOff_Value
                    section.data(38).logicalSrcIdx = 248;
                    section.data(38).dtTransOffset = 37;

                    ;% QCar2_autonomous_driving_exam_P.HILWrite_Active
                    section.data(39).logicalSrcIdx = 249;
                    section.data(39).dtTransOffset = 38;

                    ;% QCar2_autonomous_driving_exam_P.VideoDisplay_UseHardware
                    section.data(40).logicalSrcIdx = 250;
                    section.data(40).dtTransOffset = 39;

                    ;% QCar2_autonomous_driving_exam_P.VideoDisplay_UseHardware_b
                    section.data(41).logicalSrcIdx = 251;
                    section.data(41).dtTransOffset = 40;

                    ;% QCar2_autonomous_driving_exam_P.VideoDisplay_UseHardware_c
                    section.data(42).logicalSrcIdx = 252;
                    section.data(42).dtTransOffset = 41;

            nTotData = nTotData + section.nData;
            paramMap.sections(9) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_P.imageDepthForDisplay_Y0
                    section.data(1).logicalSrcIdx = 253;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_P.uArm0Disarm1_CurrentSetting
                    section.data(2).logicalSrcIdx = 254;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_P.uRight0Left_CurrentSetting
                    section.data(3).logicalSrcIdx = 255;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_P.ManualSwitch_CurrentSetting
                    section.data(4).logicalSrcIdx = 256;
                    section.data(4).dtTransOffset = 3;

            nTotData = nTotData + section.nData;
            paramMap.sections(10) = section;
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
        nTotSects     = 7;
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

            section.nData     = 53;
            section.data(53)  = dumData; %prealloc

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

                    ;% QCar2_autonomous_driving_exam_B.Product1_c
                    section.data(14).logicalSrcIdx = 14;
                    section.data(14).dtTransOffset = 13;

                    ;% QCar2_autonomous_driving_exam_B.Product_c
                    section.data(15).logicalSrcIdx = 15;
                    section.data(15).dtTransOffset = 14;

                    ;% QCar2_autonomous_driving_exam_B.Product1_o
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

                    ;% QCar2_autonomous_driving_exam_B.Kim
                    section.data(28).logicalSrcIdx = 28;
                    section.data(28).dtTransOffset = 27;

                    ;% QCar2_autonomous_driving_exam_B.SampleTime
                    section.data(29).logicalSrcIdx = 29;
                    section.data(29).dtTransOffset = 28;

                    ;% QCar2_autonomous_driving_exam_B.Constant
                    section.data(30).logicalSrcIdx = 30;
                    section.data(30).dtTransOffset = 29;

                    ;% QCar2_autonomous_driving_exam_B.ComputationTime
                    section.data(31).logicalSrcIdx = 31;
                    section.data(31).dtTransOffset = 30;

                    ;% QCar2_autonomous_driving_exam_B.RateTransition4
                    section.data(32).logicalSrcIdx = 32;
                    section.data(32).dtTransOffset = 31;

                    ;% QCar2_autonomous_driving_exam_B.RateTransition3
                    section.data(33).logicalSrcIdx = 33;
                    section.data(33).dtTransOffset = 34;

                    ;% QCar2_autonomous_driving_exam_B.ColorSelectingMean0
                    section.data(34).logicalSrcIdx = 34;
                    section.data(34).dtTransOffset = 37;

                    ;% QCar2_autonomous_driving_exam_B.ColorSelectingWindow1
                    section.data(35).logicalSrcIdx = 35;
                    section.data(35).dtTransOffset = 38;

                    ;% QCar2_autonomous_driving_exam_B.Subtract1
                    section.data(36).logicalSrcIdx = 36;
                    section.data(36).dtTransOffset = 39;

                    ;% QCar2_autonomous_driving_exam_B.ColorMixingMean0
                    section.data(37).logicalSrcIdx = 37;
                    section.data(37).dtTransOffset = 40;

                    ;% QCar2_autonomous_driving_exam_B.ColorMixingWindow1
                    section.data(38).logicalSrcIdx = 38;
                    section.data(38).dtTransOffset = 41;

                    ;% QCar2_autonomous_driving_exam_B.Subtract3
                    section.data(39).logicalSrcIdx = 39;
                    section.data(39).dtTransOffset = 42;

                    ;% QCar2_autonomous_driving_exam_B.BrightnessMean0
                    section.data(40).logicalSrcIdx = 40;
                    section.data(40).dtTransOffset = 43;

                    ;% QCar2_autonomous_driving_exam_B.BrightnessWindow1
                    section.data(41).logicalSrcIdx = 41;
                    section.data(41).dtTransOffset = 44;

                    ;% QCar2_autonomous_driving_exam_B.Subtract5
                    section.data(42).logicalSrcIdx = 42;
                    section.data(42).dtTransOffset = 45;

                    ;% QCar2_autonomous_driving_exam_B.Saturation
                    section.data(43).logicalSrcIdx = 43;
                    section.data(43).dtTransOffset = 46;

                    ;% QCar2_autonomous_driving_exam_B.Add2
                    section.data(44).logicalSrcIdx = 44;
                    section.data(44).dtTransOffset = 49;

                    ;% QCar2_autonomous_driving_exam_B.Add5
                    section.data(45).logicalSrcIdx = 45;
                    section.data(45).dtTransOffset = 50;

                    ;% QCar2_autonomous_driving_exam_B.Add8
                    section.data(46).logicalSrcIdx = 46;
                    section.data(46).dtTransOffset = 51;

                    ;% QCar2_autonomous_driving_exam_B.Saturation1
                    section.data(47).logicalSrcIdx = 47;
                    section.data(47).dtTransOffset = 52;

                    ;% QCar2_autonomous_driving_exam_B.DistaneToLane0
                    section.data(48).logicalSrcIdx = 48;
                    section.data(48).dtTransOffset = 55;

                    ;% QCar2_autonomous_driving_exam_B.SteeringSaturation1
                    section.data(49).logicalSrcIdx = 49;
                    section.data(49).dtTransOffset = 56;

                    ;% QCar2_autonomous_driving_exam_B.Depth_o3
                    section.data(50).logicalSrcIdx = 50;
                    section.data(50).dtTransOffset = 57;

                    ;% QCar2_autonomous_driving_exam_B.Multiply
                    section.data(51).logicalSrcIdx = 54;
                    section.data(51).dtTransOffset = 58;

                    ;% QCar2_autonomous_driving_exam_B.y
                    section.data(52).logicalSrcIdx = 57;
                    section.data(52).dtTransOffset = 59;

                    ;% QCar2_autonomous_driving_exam_B.speed_cmd
                    section.data(53).logicalSrcIdx = 58;
                    section.data(53).dtTransOffset = 60;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_B.Channel
                    section.data(1).logicalSrcIdx = 60;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_B.Channel_b
                    section.data(2).logicalSrcIdx = 61;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_B.Channel_g
                    section.data(3).logicalSrcIdx = 62;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_B.Depth_o1
                    section.data(1).logicalSrcIdx = 63;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(4) = section;
            clear section

            section.nData     = 6;
            section.data(6)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_B.VideoCapture_o1
                    section.data(1).logicalSrcIdx = 64;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_B.y_d
                    section.data(2).logicalSrcIdx = 67;
                    section.data(2).dtTransOffset = 1008600;

                    ;% QCar2_autonomous_driving_exam_B.img_out
                    section.data(3).logicalSrcIdx = 68;
                    section.data(3).dtTransOffset = 1121214;

                    ;% QCar2_autonomous_driving_exam_B.imageToThreshold
                    section.data(4).logicalSrcIdx = 69;
                    section.data(4).dtTransOffset = 1198254;

                    ;% QCar2_autonomous_driving_exam_B.ImageCompress
                    section.data(5).logicalSrcIdx = 70;
                    section.data(5).dtTransOffset = 1366149;

                    ;% QCar2_autonomous_driving_exam_B.ImageCompress_h
                    section.data(6).logicalSrcIdx = 71;
                    section.data(6).dtTransOffset = 1478763;

            nTotData = nTotData + section.nData;
            sigMap.sections(5) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_B.ImageCompress_o
                    section.data(1).logicalSrcIdx = 72;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(6) = section;
            clear section

            section.nData     = 7;
            section.data(7)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exam_B.AND3
                    section.data(1).logicalSrcIdx = 73;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exam_B.AND1
                    section.data(2).logicalSrcIdx = 74;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exam_B.Compare
                    section.data(3).logicalSrcIdx = 75;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exam_B.Compare_d
                    section.data(4).logicalSrcIdx = 76;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exam_B.DataTypeConversion1
                    section.data(5).logicalSrcIdx = 77;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exam_B.VideoCapture_o2
                    section.data(6).logicalSrcIdx = 78;
                    section.data(6).dtTransOffset = 12;

                    ;% QCar2_autonomous_driving_exam_B.Depth_o4
                    section.data(7).logicalSrcIdx = 79;
                    section.data(7).dtTransOffset = 13;

            nTotData = nTotData + section.nData;
            sigMap.sections(7) = section;
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
        nTotSects     = 14;
        sectIdxOffset = 7;

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

                    ;% QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime_g
                    section.data(4).logicalSrcIdx = 3;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exa_DW.ComputationTime_BeginTime_b
                    section.data(5).logicalSrcIdx = 4;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationTi_o
                    section.data(6).logicalSrcIdx = 5;
                    section.data(6).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exa_DW.SampleTime_PreviousTime_e
                    section.data(7).logicalSrcIdx = 6;
                    section.data(7).dtTransOffset = 6;

                    ;% QCar2_autonomous_driving_exa_DW.ComputationTime_BeginTime_p
                    section.data(8).logicalSrcIdx = 7;
                    section.data(8).dtTransOffset = 7;

                    ;% QCar2_autonomous_driving_exa_DW.ComputationTime_ComputationT_om
                    section.data(9).logicalSrcIdx = 8;
                    section.data(9).dtTransOffset = 8;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 18;
            section.data(18)  = dumData; %prealloc

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

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition5_Buffer
                    section.data(16).logicalSrcIdx = 24;
                    section.data(16).dtTransOffset = 36;

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition4_Buffer0
                    section.data(17).logicalSrcIdx = 25;
                    section.data(17).dtTransOffset = 37;

                    ;% QCar2_autonomous_driving_exa_DW.RateTransition3_Buffer0
                    section.data(18).logicalSrcIdx = 26;
                    section.data(18).dtTransOffset = 40;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_Compress
                    section.data(1).logicalSrcIdx = 27;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_c
                    section.data(2).logicalSrcIdx = 28;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_Compress_cq
                    section.data(3).logicalSrcIdx = 29;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.VideoCapture_VideoCapture
                    section.data(1).logicalSrcIdx = 30;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.Video3DInitialize_Video3D
                    section.data(1).logicalSrcIdx = 31;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.Depth_Video3D
                    section.data(2).logicalSrcIdx = 32;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.Depth_Stream
                    section.data(1).logicalSrcIdx = 33;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.ImageTransform_AlgHandle
                    section.data(1).logicalSrcIdx = 34;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_Card
                    section.data(1).logicalSrcIdx = 35;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(8) = section;
            clear section

            section.nData     = 12;
            section.data(12)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.HILRead_PWORK
                    section.data(1).logicalSrcIdx = 36;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.Scope_PWORK.LoggedData
                    section.data(2).logicalSrcIdx = 37;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_autonomous_driving_exa_DW.HILWrite_PWORK
                    section.data(3).logicalSrcIdx = 38;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_autonomous_driving_exa_DW.Scope_PWORK_j.LoggedData
                    section.data(4).logicalSrcIdx = 39;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_autonomous_driving_exa_DW.Scope2_PWORK.LoggedData
                    section.data(5).logicalSrcIdx = 40;
                    section.data(5).dtTransOffset = 5;

                    ;% QCar2_autonomous_driving_exa_DW.Scope_PWORK_d.LoggedData
                    section.data(6).logicalSrcIdx = 41;
                    section.data(6).dtTransOffset = 6;

                    ;% QCar2_autonomous_driving_exa_DW.Scope_PWORK_a.LoggedData
                    section.data(7).logicalSrcIdx = 42;
                    section.data(7).dtTransOffset = 8;

                    ;% QCar2_autonomous_driving_exa_DW.Scope_PWORK_f.LoggedData
                    section.data(8).logicalSrcIdx = 43;
                    section.data(8).dtTransOffset = 10;

                    ;% QCar2_autonomous_driving_exa_DW.Channel_PWORK.Fifo
                    section.data(9).logicalSrcIdx = 44;
                    section.data(9).dtTransOffset = 13;

                    ;% QCar2_autonomous_driving_exa_DW.Channel_PWORK_b.Fifo
                    section.data(10).logicalSrcIdx = 45;
                    section.data(10).dtTransOffset = 14;

                    ;% QCar2_autonomous_driving_exa_DW.Scope_PWORK_b.LoggedData
                    section.data(11).logicalSrcIdx = 46;
                    section.data(11).dtTransOffset = 15;

                    ;% QCar2_autonomous_driving_exa_DW.Channel_PWORK_m.Fifo
                    section.data(12).logicalSrcIdx = 47;
                    section.data(12).dtTransOffset = 16;

            nTotData = nTotData + section.nData;
            dworkMap.sections(9) = section;
            clear section

            section.nData     = 21;
            section.data(21)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_DOStates
                    section.data(1).logicalSrcIdx = 48;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_QuadratureModes
                    section.data(2).logicalSrcIdx = 49;
                    section.data(2).dtTransOffset = 16;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_InitialEICounts
                    section.data(3).logicalSrcIdx = 50;
                    section.data(3).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_POModeValues
                    section.data(4).logicalSrcIdx = 51;
                    section.data(4).dtTransOffset = 22;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_POAlignValues
                    section.data(5).logicalSrcIdx = 52;
                    section.data(5).dtTransOffset = 24;

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_POPolarityVals
                    section.data(6).logicalSrcIdx = 53;
                    section.data(6).dtTransOffset = 26;

                    ;% QCar2_autonomous_driving_exa_DW.HILRead_EncoderBuffer
                    section.data(7).logicalSrcIdx = 54;
                    section.data(7).dtTransOffset = 28;

                    ;% QCar2_autonomous_driving_exa_DW.clockTickCounter
                    section.data(8).logicalSrcIdx = 55;
                    section.data(8).dtTransOffset = 29;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1
                    section.data(9).logicalSrcIdx = 56;
                    section.data(9).dtTransOffset = 30;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_m
                    section.data(10).logicalSrcIdx = 57;
                    section.data(10).dtTransOffset = 31;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_DIMS1_g
                    section.data(11).logicalSrcIdx = 58;
                    section.data(11).dtTransOffset = 32;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent
                    section.data(12).logicalSrcIdx = 59;
                    section.data(12).dtTransOffset = 33;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_n
                    section.data(13).logicalSrcIdx = 60;
                    section.data(13).dtTransOffset = 34;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_j
                    section.data(14).logicalSrcIdx = 61;
                    section.data(14).dtTransOffset = 35;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_o
                    section.data(15).logicalSrcIdx = 62;
                    section.data(15).dtTransOffset = 36;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_o3
                    section.data(16).logicalSrcIdx = 63;
                    section.data(16).dtTransOffset = 37;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_p
                    section.data(17).logicalSrcIdx = 64;
                    section.data(17).dtTransOffset = 38;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_g
                    section.data(18).logicalSrcIdx = 65;
                    section.data(18).dtTransOffset = 39;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_gp
                    section.data(19).logicalSrcIdx = 66;
                    section.data(19).dtTransOffset = 40;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_nr
                    section.data(20).logicalSrcIdx = 67;
                    section.data(20).dtTransOffset = 41;

                    ;% QCar2_autonomous_driving_exa_DW.sfEvent_k
                    section.data(21).logicalSrcIdx = 68;
                    section.data(21).dtTransOffset = 42;

            nTotData = nTotData + section.nData;
            dworkMap.sections(10) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_POSortedChans
                    section.data(1).logicalSrcIdx = 69;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(11) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.obstacleDetection_SubsysRanBC
                    section.data(1).logicalSrcIdx = 70;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(12) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_ScanLine
                    section.data(1).logicalSrcIdx = 71;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_ScanLine_d
                    section.data(2).logicalSrcIdx = 72;
                    section.data(2).dtTransOffset = 6576;

                    ;% QCar2_autonomous_driving_exa_DW.ImageCompress_ScanLine_m
                    section.data(3).logicalSrcIdx = 73;
                    section.data(3).dtTransOffset = 13128;

            nTotData = nTotData + section.nData;
            dworkMap.sections(13) = section;
            clear section

            section.nData     = 15;
            section.data(15)  = dumData; %prealloc

                    ;% QCar2_autonomous_driving_exa_DW.HILInitialize_DOBits
                    section.data(1).logicalSrcIdx = 74;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_autonomous_driving_exa_DW.Unwrap224_FirstSample
                    section.data(2).logicalSrcIdx = 75;
                    section.data(2).dtTransOffset = 16;

                    ;% QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1
                    section.data(3).logicalSrcIdx = 76;
                    section.data(3).dtTransOffset = 17;

                    ;% QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_j
                    section.data(4).logicalSrcIdx = 77;
                    section.data(4).dtTransOffset = 18;

                    ;% QCar2_autonomous_driving_exa_DW.Integrator1_DWORK1_m
                    section.data(5).logicalSrcIdx = 78;
                    section.data(5).dtTransOffset = 19;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit
                    section.data(6).logicalSrcIdx = 79;
                    section.data(6).dtTransOffset = 20;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_i
                    section.data(7).logicalSrcIdx = 80;
                    section.data(7).dtTransOffset = 21;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_d
                    section.data(8).logicalSrcIdx = 81;
                    section.data(8).dtTransOffset = 22;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_j
                    section.data(9).logicalSrcIdx = 82;
                    section.data(9).dtTransOffset = 23;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_g
                    section.data(10).logicalSrcIdx = 83;
                    section.data(10).dtTransOffset = 24;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_k
                    section.data(11).logicalSrcIdx = 84;
                    section.data(11).dtTransOffset = 25;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_e
                    section.data(12).logicalSrcIdx = 85;
                    section.data(12).dtTransOffset = 26;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_eh
                    section.data(13).logicalSrcIdx = 86;
                    section.data(13).dtTransOffset = 27;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_o
                    section.data(14).logicalSrcIdx = 87;
                    section.data(14).dtTransOffset = 28;

                    ;% QCar2_autonomous_driving_exa_DW.doneDoubleBufferReInit_jq
                    section.data(15).logicalSrcIdx = 88;
                    section.data(15).dtTransOffset = 29;

            nTotData = nTotData + section.nData;
            dworkMap.sections(14) = section;
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


    targMap.checksum0 = 3929161557;
    targMap.checksum1 = 1525605064;
    targMap.checksum2 = 1492113437;
    targMap.checksum3 = 2175012024;

