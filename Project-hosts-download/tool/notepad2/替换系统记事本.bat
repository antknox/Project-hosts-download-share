@echo off
takeown /f c:\windows\notepad.exe
takeown /f c:\windows\system32\notepad.exe
echo 在此之前。。请保存所有正打开的记事本文件。。
pause
echo 正在结束记事本进程…
taskkill /f /im notepad.exe 2>nul
echo 备份系统记事本到C盘…
copy /y %windir%\notepad.exe c:\
copy /y %windir%\notepad.exe %windir%\notepad.exe.bak
icacls %windir%\notepad.exe /grant %username%:f /t
icacls %windir%\system32\notepad.exe /grant %username%:f /t
copy /y Notepad2.exe %windir%\notepad.exe
copy /y Notepad2.exe %windir%\system32\notepad.exe
copy /y notepad2.ini %windir%\system32
echo 替换完成
notepad