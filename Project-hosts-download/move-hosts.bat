@echo off&PUSHD %~DP0
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
title �ƶ�hosts�����ļ�
cd /d C:\Windows\System32\Drivers\etc
move hosts-bak-* "%~dp0hosts-bak"
:move hosts-bak-* D:\"Project hosts download"\hosts-bak
:ipconfig /flushdns
:ipconfig /registerdns
