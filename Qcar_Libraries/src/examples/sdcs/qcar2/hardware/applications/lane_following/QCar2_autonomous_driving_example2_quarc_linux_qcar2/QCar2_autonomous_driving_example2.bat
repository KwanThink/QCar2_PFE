
cd .

chcp 1252

if "%1"=="" ("D:\MATLAB~2\MATLAB~2\bin\win64\gmake"  -f QCar2_autonomous_driving_example2.mk all) else ("D:\MATLAB~2\MATLAB~2\bin\win64\gmake"  -f QCar2_autonomous_driving_example2.mk %1)
@if errorlevel 1 goto error_exit

exit /B 0

:error_exit
echo The make command returned an error of %errorlevel%
exit /B 1