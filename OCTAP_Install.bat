ECHO OFF
REM  
REM  BATCH FILE: OCTAP_Version.BAT
REM
REM  This will copy the most current OCTAP application
REM  to the user local drive & desktop.
REM
REM
REM  Copy from P drive to local C drive

ECHO ON
REM *********   DO NOT CLOSE THIS WINDOW     ***********
REM *********    UPDATING YOUR PROGRAM       ***********
REM ********* THIS MAY TAKE A FEW MINUTES    ***********
REM *********     PLEASE BE PATIENT          ***********
ECHO OFF

REM  Copy App to local C drive

REM Pause the batch file for 10 seconds to allow OCTAP to close properly
ping -n 11 OCTANT05

c:
cd "\Program Files"

IF NOT EXIST "C:\Program Files\OCTADEV" GOTO MakeOCTADev
   	CD \OCTADev
:MakeOCTADev
	MD "c:\Program Files\OCTADEV"

IF NOT EXIST "C:\Program Files\OCTADEV\OCTAP" GOTO MakeOCTADevOCTAP
   	CD \OCTAP
:MakeOCTADevOCTAP
	MD "c:\Program Files\OCTADEV\OCTAP"

echo y|copy "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\OCTAP\ClientInstall\OCTARTRACS.accdb" "C:\Program Files\OCTADEV\OCTAP\"
echo y|copy "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\OCTAP\ClientInstall\OCTAP.ico" "C:\Program Files\OCTADEV\OCTAP\"
echo y|copy "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\OCTAP\ClientInstall\AccessImagine.ocx" "C:\Program Files\OCTADEV\OCTAP\"
echo y|copy "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\OCTAP\ClientInstall\Codejock.Calendar.v15.2.1.ocx" "C:\Program Files\OCTADEV\OCTAP\"

copy "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\OCTAP\ClientInstall\OCTAP.LNK" "%USERPROFILE%\DESKTOP\*.*"

C:
CD "\Documents and Settings\All Users\Start Menu\Programs"
MD "OCTA Apps"

echo y|copy  "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\OCTAP\ClientInstall\OCTAP.LNK" "C:\Documents and Settings\All Users\Start Menu\Programs\OCTA Apps\*.*"


REM  Start OCTAP back up again
c:

"C:\Program Files\OCTADEV\OCTAP\OCTARTRACS.accdb"