@echo off&PUSHD %~DP0
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
title 还原hosts文件
cd /d C:\Windows\System32\Drivers\etc
ren hosts hosts-bak-"%date:~0,4%-%date:~5,2%-%date:~8,2%_%time:~0,2%-%time:~3,2%"
if not exist hosts-last-y copy %~dp0hosts-bak\hosts-last-y" C:\Windows\System32\Drivers\etc
:if not exist hosts-last-y copy D:\"Project hosts download"\hosts-bak\hosts-last-y C:\Windows\System32\Drivers\etc
ren hosts-last-y hosts

ipconfig /flushdns
ipconfig /registerdns