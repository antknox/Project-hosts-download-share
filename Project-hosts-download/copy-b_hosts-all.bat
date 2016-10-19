@echo off
title 合成hosts
cd /d .\hosts
:copy /b hosts-liuker+hosts-ad+hosts-ads+hosts-soft hostss /y
copy /b hosts-liuker+hosts-ads+hosts-soft hostss /y