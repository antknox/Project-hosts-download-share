@echo off&PUSHD %~DP0
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
title ��ԭhosts�ļ�

:echo 1
if not exist hosts-last-y copy "%~dp0hosts-bak\hosts-last-y" C:\Windows\System32\Drivers\etc
:echo 2
:if not exist C:\Windows\System32\Drivers\etc\hosts-last-y copy "%~dp0hosts-bak\hosts-last-y" C:\Windows\System32\Drivers\etc
:echo 3
:if not exist C:\Windows\System32\Drivers\etc\hosts-last-y copy .\hosts-bak\hosts-last-y C:\Windows\System32\Drivers\etc

cd /d C:\Windows\System32\Drivers\etc
ren hosts hosts-bak-"%date:~0,4%-%date:~5,2%-%date:~8,2%_%time:~0,2%-%time:~3,2%"

ren hosts-last-y hosts

ipconfig /flushdns
ipconfig /registerdns