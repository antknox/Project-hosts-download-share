@echo off&PUSHD %~DP0
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
title 移动hosts备份文件
cd /d C:\Windows\System32\Drivers\etc
move hosts-bak-* "%~dp0hosts-bak"
:move hosts-bak-* D:\"Project hosts download"\hosts-bak
:ipconfig /flushdns
:ipconfig /registerdns
