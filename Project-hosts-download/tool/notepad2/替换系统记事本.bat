@echo off
takeown /f c:\windows\notepad.exe
takeown /f c:\windows\system32\notepad.exe
echo �ڴ�֮ǰ�����뱣���������򿪵ļ��±��ļ�����
pause
echo ���ڽ������±����̡�
taskkill /f /im notepad.exe 2>nul
echo ����ϵͳ���±���C�̡�
copy /y %windir%\notepad.exe c:\
copy /y %windir%\notepad.exe %windir%\notepad.exe.bak
icacls %windir%\notepad.exe /grant %username%:f /t
icacls %windir%\system32\notepad.exe /grant %username%:f /t
copy /y Notepad2.exe %windir%\notepad.exe
copy /y Notepad2.exe %windir%\system32\notepad.exe
copy /y notepad2.ini %windir%\system32
echo �滻���
notepad