@echo off
title 查询域名IP地址/IP实际地址
:chcp 65001
:mode con cp select=936
:demo
if exist getip del getip
wget http://ip.zxinc.org/getip
type getip
echo  ---(ip地址)
echo 请输入IP地址或者域名地址:
set /p DZ=
if not exist tmp md tmp
if exist .\tmp\*.* del .\tmp*.*
echo %DZ%
echo .>.\tmp\data0.txt
echo "%date:~0,4%-%date:~5,2%-%date:~8,2%_%time:~0,2%-%time:~3,2%">>.\tmp\data0.txt
echo %DZ%>>.\tmp\data0.txt
:pause 
:wget -O .\tmp\data1.txt http://www.ip138.com/ips1388.asp?ip=%DZ%&action=2
wget -O .\tmp\data2.txt "http://test.ip138.com/query/?ip=%DZ%&datatype=text"
:wget -O .\tmp\data2.txt "http://ip.zxinc.org/ipquery/?ip=%DZ%&textarea=text"
:copy /b .\tmp\data0.txt+.\tmp\data1.txt+.\tmp\data2.txt .\tmp\data.txt /y
:copy /b .\tmp\data0.txt+.\tmp\data1.txt .\tmp\data.txt /y
copy /b .\tmp\data0.txt+.\tmp\data2.txt .\tmp\data.txt /y
:type .\tmp\data.txt
copy /b .\tmp\data.txt+.\tmp\o.log .\tmp\n.log /y
copy /b .\tmp\n.log .\tmp\o.log
copy /b .\tmp\o.log checkip.txt
ipf1 %DZ%
ping -n 10 127.0.0.1>null
if exist null del null
cls
goto demo