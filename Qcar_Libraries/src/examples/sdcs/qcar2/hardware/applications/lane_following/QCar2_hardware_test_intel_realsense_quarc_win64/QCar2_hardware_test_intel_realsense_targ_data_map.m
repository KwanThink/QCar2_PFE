    function targMap = targDataMap(),

    ;%***********************
    ;% Create Parameter Map *
    ;%***********************
    
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
        ;% Init/prealloc paramMap
        ;%
        paramMap.nSections           = nTotSects;
        paramMap.sectIdxOffset       = sectIdxOffset;
            paramMap.sections(nTotSects) = dumSection; %prealloc
        paramMap.nTotData            = -1;

        ;%
        ;% Auto data (QCar2_hardware_test_intel_rea_P)
        ;%
            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_rea_P.ImageTransform_max_pixel
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_rea_P.ImageTransform_min_pixel
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            paramMap.sections(1) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_rea_P.Depth_stream_index
                    section.data(1).logicalSrcIdx = 2;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_stream_index
                    section.data(2).logicalSrcIdx = 3;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            paramMap.sections(2) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_rea_P.Video3DInitialize_active
                    section.data(1).logicalSrcIdx = 4;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            paramMap.sections(3) = section;
            clear section

            section.nData     = 27;
            section.data(27)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_rea_P.Depth_Brightness
                    section.data(1).logicalSrcIdx = 5;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_rea_P.Depth_Contrast
                    section.data(2).logicalSrcIdx = 6;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_hardware_test_intel_rea_P.Depth_Hue
                    section.data(3).logicalSrcIdx = 7;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_hardware_test_intel_rea_P.Depth_Saturation
                    section.data(4).logicalSrcIdx = 8;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_hardware_test_intel_rea_P.Depth_Sharpness
                    section.data(5).logicalSrcIdx = 9;
                    section.data(5).dtTransOffset = 4;

                    ;% QCar2_hardware_test_intel_rea_P.Depth_Gamma
                    section.data(6).logicalSrcIdx = 10;
                    section.data(6).dtTransOffset = 5;

                    ;% QCar2_hardware_test_intel_rea_P.Depth_WhiteBalance
                    section.data(7).logicalSrcIdx = 11;
                    section.data(7).dtTransOffset = 6;

                    ;% QCar2_hardware_test_intel_rea_P.Depth_BacklightCompensation
                    section.data(8).logicalSrcIdx = 12;
                    section.data(8).dtTransOffset = 7;

                    ;% QCar2_hardware_test_intel_rea_P.Depth_Gain
                    section.data(9).logicalSrcIdx = 13;
                    section.data(9).dtTransOffset = 8;

                    ;% QCar2_hardware_test_intel_rea_P.Depth_Exposure
                    section.data(10).logicalSrcIdx = 14;
                    section.data(10).dtTransOffset = 9;

                    ;% QCar2_hardware_test_intel_rea_P.Depth_Emitter
                    section.data(11).logicalSrcIdx = 15;
                    section.data(11).dtTransOffset = 10;

                    ;% QCar2_hardware_test_intel_rea_P.ImageTransform_ContourDepth
                    section.data(12).logicalSrcIdx = 16;
                    section.data(12).dtTransOffset = 11;

                    ;% QCar2_hardware_test_intel_rea_P.ImageTransform_FocalLen
                    section.data(13).logicalSrcIdx = 17;
                    section.data(13).dtTransOffset = 12;

                    ;% QCar2_hardware_test_intel_rea_P.ImageTransform_Extrapolated
                    section.data(14).logicalSrcIdx = 18;
                    section.data(14).dtTransOffset = 13;

                    ;% QCar2_hardware_test_intel_rea_P.ImageTransform_Angle
                    section.data(15).logicalSrcIdx = 19;
                    section.data(15).dtTransOffset = 14;

                    ;% QCar2_hardware_test_intel_rea_P.ImageTransform_RCoeff
                    section.data(16).logicalSrcIdx = 20;
                    section.data(16).dtTransOffset = 15;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_Brightness
                    section.data(17).logicalSrcIdx = 21;
                    section.data(17).dtTransOffset = 17;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_Contrast
                    section.data(18).logicalSrcIdx = 22;
                    section.data(18).dtTransOffset = 18;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_Hue
                    section.data(19).logicalSrcIdx = 23;
                    section.data(19).dtTransOffset = 19;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_Saturation
                    section.data(20).logicalSrcIdx = 24;
                    section.data(20).dtTransOffset = 20;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_Sharpness
                    section.data(21).logicalSrcIdx = 25;
                    section.data(21).dtTransOffset = 21;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_Gamma
                    section.data(22).logicalSrcIdx = 26;
                    section.data(22).dtTransOffset = 22;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_WhiteBalance
                    section.data(23).logicalSrcIdx = 27;
                    section.data(23).dtTransOffset = 23;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_BacklightCompensation
                    section.data(24).logicalSrcIdx = 28;
                    section.data(24).dtTransOffset = 24;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_Gain
                    section.data(25).logicalSrcIdx = 29;
                    section.data(25).dtTransOffset = 25;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_Exposure
                    section.data(26).logicalSrcIdx = 30;
                    section.data(26).dtTransOffset = 26;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_Emitter
                    section.data(27).logicalSrcIdx = 31;
                    section.data(27).dtTransOffset = 27;

            nTotData = nTotData + section.nData;
            paramMap.sections(4) = section;
            clear section

            section.nData     = 4;
            section.data(4)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_rea_P.ImageTransform_PrPoint
                    section.data(1).logicalSrcIdx = 32;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_rea_P.ImageTransform_Interpolation
                    section.data(2).logicalSrcIdx = 33;
                    section.data(2).dtTransOffset = 2;

                    ;% QCar2_hardware_test_intel_rea_P.ImageTransform_Origin
                    section.data(3).logicalSrcIdx = 34;
                    section.data(3).dtTransOffset = 3;

                    ;% QCar2_hardware_test_intel_rea_P.ImageTransform_OOrigin
                    section.data(4).logicalSrcIdx = 35;
                    section.data(4).dtTransOffset = 5;

            nTotData = nTotData + section.nData;
            paramMap.sections(5) = section;
            clear section

            section.nData     = 5;
            section.data(5)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_rea_P.Depth_Preset
                    section.data(1).logicalSrcIdx = 36;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_rea_P.ImageTransform_ColorTheme
                    section.data(2).logicalSrcIdx = 37;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_hardware_test_intel_rea_P.ImageCompress_Quality
                    section.data(3).logicalSrcIdx = 38;
                    section.data(3).dtTransOffset = 2;

                    ;% QCar2_hardware_test_intel_rea_P.RGB_Preset
                    section.data(4).logicalSrcIdx = 39;
                    section.data(4).dtTransOffset = 3;

                    ;% QCar2_hardware_test_intel_rea_P.ImageCompress_Quality_n
                    section.data(5).logicalSrcIdx = 40;
                    section.data(5).dtTransOffset = 4;

            nTotData = nTotData + section.nData;
            paramMap.sections(6) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_rea_P.VideoDisplay_UseHardware
                    section.data(1).logicalSrcIdx = 41;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_rea_P.VideoDisplay_UseHardware_k
                    section.data(2).logicalSrcIdx = 42;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            paramMap.sections(7) = section;
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
        nTotSects     = 5;
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
        ;% Auto data (QCar2_hardware_test_intel_rea_B)
        ;%
            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_rea_B.Depth_o2
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_rea_B.RGB_o2
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            sigMap.sections(1) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_rea_B.Depth_o3
                    section.data(1).logicalSrcIdx = 2;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_rea_B.RGB_o3
                    section.data(2).logicalSrcIdx = 3;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            sigMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_rea_B.Channel
                    section.data(1).logicalSrcIdx = 4;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_rea_B.Channel_a
                    section.data(2).logicalSrcIdx = 5;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            sigMap.sections(3) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_rea_B.Depth_o1
                    section.data(1).logicalSrcIdx = 6;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            sigMap.sections(4) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_rea_B.RGB_o1
                    section.data(1).logicalSrcIdx = 7;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_rea_B.ImageCompress
                    section.data(2).logicalSrcIdx = 8;
                    section.data(2).dtTransOffset = 2764800;

                    ;% QCar2_hardware_test_intel_rea_B.ImageCompress_l
                    section.data(3).logicalSrcIdx = 9;
                    section.data(3).dtTransOffset = 5529600;

            nTotData = nTotData + section.nData;
            sigMap.sections(5) = section;
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
        nTotSects     = 7;
        sectIdxOffset = 5;

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
        ;% Auto data (QCar2_hardware_test_intel_re_DW)
        ;%
            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_re_DW.ImageCompress_Compress
                    section.data(1).logicalSrcIdx = 0;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_re_DW.ImageCompress_Compress_g
                    section.data(2).logicalSrcIdx = 1;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(1) = section;
            clear section

            section.nData     = 3;
            section.data(3)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_re_DW.Video3DInitialize_Video3D
                    section.data(1).logicalSrcIdx = 2;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_re_DW.Depth_Video3D
                    section.data(2).logicalSrcIdx = 3;
                    section.data(2).dtTransOffset = 1;

                    ;% QCar2_hardware_test_intel_re_DW.RGB_Video3D
                    section.data(3).logicalSrcIdx = 4;
                    section.data(3).dtTransOffset = 2;

            nTotData = nTotData + section.nData;
            dworkMap.sections(2) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_re_DW.Depth_Stream
                    section.data(1).logicalSrcIdx = 5;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_re_DW.RGB_Stream
                    section.data(2).logicalSrcIdx = 6;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(3) = section;
            clear section

            section.nData     = 1;
            section.data(1)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_re_DW.ImageTransform_AlgHandle
                    section.data(1).logicalSrcIdx = 7;
                    section.data(1).dtTransOffset = 0;

            nTotData = nTotData + section.nData;
            dworkMap.sections(4) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_re_DW.Channel_PWORK.Fifo
                    section.data(1).logicalSrcIdx = 8;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_re_DW.Channel_PWORK_i.Fifo
                    section.data(2).logicalSrcIdx = 9;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(5) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_re_DW.ImageCompress_DIMS1
                    section.data(1).logicalSrcIdx = 10;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_re_DW.ImageCompress_DIMS1_h
                    section.data(2).logicalSrcIdx = 11;
                    section.data(2).dtTransOffset = 1;

            nTotData = nTotData + section.nData;
            dworkMap.sections(6) = section;
            clear section

            section.nData     = 2;
            section.data(2)  = dumData; %prealloc

                    ;% QCar2_hardware_test_intel_re_DW.ImageCompress_ScanLine
                    section.data(1).logicalSrcIdx = 12;
                    section.data(1).dtTransOffset = 0;

                    ;% QCar2_hardware_test_intel_re_DW.ImageCompress_ScanLine_g
                    section.data(2).logicalSrcIdx = 13;
                    section.data(2).dtTransOffset = 30720;

            nTotData = nTotData + section.nData;
            dworkMap.sections(7) = section;
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


    targMap.checksum0 = 1279489484;
    targMap.checksum1 = 4193232206;
    targMap.checksum2 = 1715601137;
    targMap.checksum3 = 1562832192;

