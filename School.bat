@ECHO OFF
MODE CON:COLS=47 LINES=20

SET ZOOM_EXAMPLE=https://tinyurl.com/y6hkkay6
SET CANVAS_EXAMPLE=https://ldsd.instructure.com/courses/21524

SET ZOOM1=https://tinyurl.com/y6hkkay6
SET CANVAS1=https://ldsd.instructure.com/courses/21524

SET ZOOM2=https://tinyurl.com/y6hkkay6
SET CANVAS2=https://ldsd.instructure.com/courses/21550

SET ZOOM3=https://ldsd-org.zoom.us/j/83778197700?pwd=VitLTmUyTElVcGUwd3E2SHFLUWMyUT09
SET CANVAS3=https://ldsd.instructure.com/courses/21271
SET DOC3=C:\Users\htmilic\Documents\AP_World\AP_World_Notes.docx

SET ZOOM4=https://ldsd-org.zoom.us/j/4685474224?pwd=K3l0cVZDWHNPYzRVNDlXWUQzQ21hUT09%20
SET CANVAS4=https://ldsd.instructure.com/courses/21233/assignments

SET ZOOM5/6=https://ldsd-org.zoom.us/j/2340098572?pwd=TjNpQk9HQnF0WjhJcEpXRXpnb3k4dz09
SET CANVAS5/6=https://ldsd.instructure.com/courses/21813/modules
SET LINK5/6=https://cad.onshape.com/documents?resourceType=filter&nodeId=1

SET ZOOM8/9=https://ldsd-org.zoom.us/j/6330353976?pwd=MTZqcG05MlE2M2kwdXVBbURxczZrdz09%20
SET CANVAS8/9=https://ldsd.instructure.com/courses/21390/modules#module_34629

SET ZOOM10=https://ldsd-org.zoom.us/j/4325549531?pwd=VzBPVFdReFJWUnpQT3JXQ0R1V2pXQT09
SET CANVAS10=https://ldsd.instructure.com/courses/22635/pages/unit-1-schedule
SET DOC10=C:\Users\htmilic\Documents\Hon_Chem\PeriodicTable.pdf

SET ZOOM11=https://ldsd-org.zoom.us/j/9189928853?pwd=azRlRllCYUVERk4vOE9PMFM4UUVMdz09
SET CANVAS11=https://ldsd.instructure.com/courses/21840

::CLASS NAMES
SET C1=BAND
SET C2=THEORY
SET C3=WORLD
SET C4=CAREERS
SET C5/6=ACAD
SET C7=LUNCH
SET C8/9=ANAL
SET C10=CHEM
SET C11=LANG

SET A=0
SET B=0
SET C=0
SET D=0
SET E=0
SET F=0
SET G=0
SET H=0
SET I=0

SET "currentTime=%TIME: =0%"
::TITLE SCREEN
TITLE School_Program
COLOR 0B
ECHO  --------------------------------------------- 
ECHO.
ECHO                School Program
ECHO.
ECHO  --------------------------------------------- 
ECHO. 
PAUSE

CLS
ECHO  Is it a 
ECHO  (S)chool day, or
ECHO  (O)ffline day?
CHOICE /c SO /N
IF ERRORLEVEL 1 SET DAY=1
IF ERRORLEVEL 2 SET DAY=2


ECHO. 
ECHO  Are you opperating on the:
ECHO  (N)ormal schedule,
ECHO  (M)odified schedule,
ECHO  (F)riday hyrbid,
ECHO  (1) hour delay, or
ECHO  (2) hour delay?
CHOICE /c NMF12 /N
IF ERRORLEVEL 1 SET SD=1
IF ERRORLEVEL 2 SET SD=2
IF ERRORLEVEL 3 SET SD=3
IF ERRORLEVEL 4 SET SD=4
IF ERRORLEVEL 5 SET SD=5
CLS
COLOR 0F

::SCHEDULE HOURS
IF %SD% EQU 1 (
	:: NORMAL BELL SCHEDULE
	SET P1=07:30:00.00
	SET P2=08:26:00.00
	SET P3=09:14:00.00
	SET P4=10:02:00.00
	SET P5/6=10:50:00.00
	SET P7=11:36:00.00
	SET P8/9=12:04:00.00
	SET P10=12:52:00.00
	SET P11=13:40:00.00
)
IF %SD% EQU 2 (
	:: MODIFIED BELL SCHEDULE
	SET P1=07:58:00.00
	SET P2=08:43:00.00
	SET P3=09:28:00.00
	SET P4=10:13:00.00
	SET P5/6=10:58:00.00
	SET P7=11:42:00.00
	SET P8/9=12:12:00.00
	SET P10=12:56:00.00
	SET P11=13:42:00.00
)
IF %SD% EQU 3 (
	:: HYBRID FRIDAY SCHDULE
	SET P1=07:58:00.00
	SET P2=08:18:00.00
	SET P3=08:38:00.00
	SET P4=08:58:00.00
	SET P7=09:13:00.00
	SET P5/6=09:48:00.00
	SET P8/9=10:08:00.00
	SET P10=10:28:00.00
	SET P11=10:48:00.00
)
IF %SD% EQU 4 (
	:: 1 HOUR DELAY SCHDULE
	SET P1=08:32:00.00
	SET P2=09:15:00.00
	SET P3=09:56:00.00
	SET P4=10:37:00.00
	SET P5/6=11:18:00.00
	SET P7=11:57:00.00
	SET P8/9=12:25:00.00
	SET P10=13:06:00.00
	SET P11=13:47:00.00
)
IF %SD% EQU 5 (
	:: 2 HOUR DELAY SCHEDULE
	SET P1=09:32:00.00
	SET P2=10:04:00.00
	SET P3=10:38:00.00
	SET P4=11:12:00.00
	SET P5/6=11:46:00.00
	SET P7=12:18:00.00
	SET P8/9=12:46:00.00
	SET P10=13:20:00.00
	SET P11=13:54:00.00
)

if %currentTime% LEQ 14:30:00.00 (
	CLS
	GOTO MLOOP
) ELSE (
	GOTO END
)

:MLOOP
ECHO  -----------------------------TIME:%TIME% 
ECHO  --------------------------------------------- 
ECHO.
ECHO                   Schedule
ECHO.

:: NORMAL SCHEDULE
IF %SD% EQU 1 (
	ECHO  1 -   Band/Orchesta -  Richardson - 7:34-8:24 
	ECHO  2 -   Music Theory 2 - Richardson - 8:28-9:12 
	ECHO  3 -   AP World -       Fackler -   9:16-10:00 
	ECHO  4 -   Careers -        Meese -    10:04-10:48 
	ECHO  5-6 - Engineer CAD -   James -    10:52-11:36 
	ECHO  7 -   Lunch -          N/A -      11:36-12:06 
	ECHO  8-9 - Hon. Analysis -  Reigne -   12:06-12:50 
	ECHO  10 -  Hon. Chemistry - Hannien -  12:54-13:38 
	ECHO  11 -  AP Lang Comp -   May -      13:42-14:26 
)
:: MODIFIED SCHDULE
IF %SD% EQU 2 (
	ECHO  ACT - N/A -            N/A -        7:34-7:56 
	ECHO  1 -   Band/Orchesta -  Richardson - 8:00-8:41 
	ECHO  2 -   Music Theory 2 - Richardson - 8:45-9:26 
	ECHO  3 -   AP World -       Fackler -   9:30-10:11 
	ECHO  4 -   Careers -        Meese -    10:15-10:56 
	ECHO  5-6 - Engineer CAD -   James -    11:00-11:42 
	ECHO  7 -   Lunch -          N/A -      11:42-12:12 
	ECHO  8-9 - Hon. Analysis -  Reigne -   12:12-12:54 
	ECHO  10 -  Hon. Chemistry - Hannien -  12:58-13:40 
	ECHO  11 -  AP Lang Comp -   May -      13:44-14:26 
)
:: FRIDAY HYBRID SCHDULE
IF %SD% EQU 3 (
	IF %DAY% EQU 1 (
		ECHO INVALID INPUT
		PAUSE
		GOTO END
	) ELSE (
	ECHO  1 -   Band/Orchesta -  Richardson - 8:00-8:15 
	ECHO  2 -   Music Theory 2 - Richardson - 8:20-8:35 
	ECHO  3 -   AP World -       Fackler -    8:40-8:55 
	ECHO  4 -   Careers -        Meese -      9:00-9:15 
	ECHO  BK -  N/A -            N/A -        9:15-9:45 
	ECHO  5-6 - Engineer CAD -   James -     9:50-10:05 
	ECHO  8-9 - Hon. Analysis -  Reigne -   10:10-10:25 
	ECHO  10 -  Hon. Chemistry - Hannien -  10:30-10:45 
	ECHO  11 -  AP Lang Comp -   May -      10:50-11:05 
	)
)
:: 1 HOUR DELAY
IF %SD% EQU 4 (
	ECHO  1 -   Band/Orchesta -  Richardson - 8:34-9:13 
	ECHO  2 -   Music Theory 2 - Richardson - 9:17-9:54 
	ECHO  3 -   AP World -       Fackler -   9:59-10:35 
	ECHO  4 -   Careers -        Meese -    10:39-11:16 
	ECHO  5-6 - Engineer CAD -   James -    11:20-11:57 
	ECHO  7 -   Lunch -          N/A -      11:57-12:27 
	ECHO  8-9 - Hon. Analysis -  Reigne -   12:27-13:04 
	ECHO  10 -  Hon. Chemistry - Hannien -  13:08-12:45 
	ECHO  11 -  AP Lang Comp -   May -      13:49-14:26 
)
:: 2 HOUR DELAY
IF %SD% EQU 5 (
	ECHO  1 -   Band/Orch. -   Richardson -  9:34-10:02 
	ECHO  2 -   Theory 2 -     Richardson - 10:06-10:36 
	ECHO  3 -   AP World -     Fackler -    10:40-11:10 
	ECHO  4 -   Careers -      Meese -      11:14-11:44 
	ECHO  5-6 - Engineer CAD - James -      11:48-12:18 
	ECHO  7 -   Lunch -        N/A -        12:18-12:48 
	ECHO  8-9 - Hon. Anal. -   Reigne -     12:48-13:18 
	ECHO  10 -  Hon. Chem. -   Hannien -    13:22-13:52 
	ECHO  11 -  AP Lang Comp - May -        13:56-14:26 
)

::CLASS CHECKS
:CLASSCHECK
SET "currentTime=%TIME: =0%"
IF %currentTime% GEQ %P1% (
	IF %currentTime% LEQ %P2% ( 
		IF NOT %A% EQU 1 (
			SET A=1
			ECHO %C1% STARTED
			START %CANVAS1%
			IF %DAY% EQU 2 START %ZOOM1%
		)	
	)
) 
IF %currentTime% GEQ %P2% (
	IF %currentTime% LEQ %P3% (
		IF NOT %B% EQU 1 (
			SET B=1
			ECHO %C2% STARTED
			START %CANVAS2%
			IF %DAY% EQU 2 START %ZOOM2%
			GOTO RETURN
		)
	)
)
IF %currentTime% GEQ %P3% (
	IF %currentTime% LEQ %P4% (
		IF NOT %C% EQU 1 (
			SET C=1
			ECHO %C3% STARTED
			START %CANVAS3%
			START %DOC3%
			IF %DAY% EQU 2 START %ZOOM3%
			GOTO RETURN
		)
	)
)
IF %currentTime% GEQ %P4% (
	IF %currentTime% LEQ %P5/6% (
		IF NOT %D% EQU 1 (
			SET D=1
			COLOR B0
			ECHO %C4% STARTED
			START %CANVAS4%
			ECHO PASSWORD- 612860
			IF %DAY% EQU 2 START %ZOOM4%
			PING -n 150 127.0.0.1>nul
			GOTO RETURN
		)
	)
)
IF %currentTime% GEQ %P5/6% (
	IF %SD% EQU 3 (
		IF NOT %E% EQU 1 (
			SET E=1
			ECHO %C5/6% STARTED
			START %CANVAS5/6%
			START %LINK5/6%
			IF %DAY% EQU 2 START %ZOOM5/6%
			GOTO RETURN
		)
	)
	IF %currentTime% LEQ %P7% (
		IF NOT %E% EQU 1 (
			SET E=1
			ECHO %C5/6% STARTED
			START %CANVAS5/6%
			START %LINK5/6%
			IF %DAY% EQU 2 START %ZOOM5/6%
			GOTO RETURN
		)
	)
)

IF %currentTime% GEQ %P7% (
	IF %SD% EQU 3 (
		SET I=1
		COLOR B0
		ECHO %C7% STARTED 
		GOTO RETURN
	)
	IF %currentTime% LEQ %P8/9% (
		IF NOT %I% EQU 1 (
			COLOR B0
			ECHO %C7% STARTED
			GOTO RETURN
		)
	)
)
IF %currentTime% GEQ %P8/9% (
	IF %currentTime% LEQ %P10% (
		IF NOT %F% EQU 1 (
			SET F=1
			COLOR B0
			ECHO %C8/9% STARTED
			START %CANVAS8/9%
			ECHO PASSWORD- falcons
			IF %DAY% EQU 2 START %ZOOM8/9%
			PING -n 150 127.0.0.1>nul
			GOTO RETURN
		)
	)
)
IF %currentTime% GEQ %P10% (
	IF %currentTime% LEQ %P11% (
		IF NOT %G% EQU 1 (
			SET G=1
			ECHO %C10% STARTED
			START %CANVAS10%
			START %DOC10%
			START %ZOOM10%
			GOTO RETURN
		)
	)
)
IF %currentTime% GEQ %P11% (
	IF %currentTime% LEQ 14:26:00:00 (
		IF NOT %H% EQU 1 (
			SET H=1
			ECHO %C11% STARTED
			START %CANVAS11%
			IF %DAY% EQU 2 START %ZOOM11%
			GOTO RETURN
		)
	)
)
:RETURN
PING -n 10 127.0.0.1>nul
if %currentTime% LEQ 14:30:00.00 (
	CLS
	COLOR 0F
	GOTO MLOOP
) ELSE (
	GOTO END
)

:END
CLS
COLOR B0
ECHO.
ECHO IT IS NOT SCHOOL HOURS RETARD.
ECHO.
PAUSE
