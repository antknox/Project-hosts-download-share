@echo off
title 下载hosts文件

:wget -i .\list.txt -o .\wget.log
:wget -t 10 -nd %DL% -O "%NM%.mp3"
:ex
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://raw.githubusercontent.com/racaljk/hosts/master/hosts -O .\hosts\hosts-racaljk

if not exist hosts md hosts

echo 下载hosts列表
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://raw.githubusercontent.com/racaljk/hosts/master/hosts -O .\hosts\hosts-racaljk
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://coding.net/u/scaffrey/p/hosts/git/raw/master/hosts-files/hosts -O .\hosts\hosts-scaffrey
:
.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://raw.githubusercontent.com/googlehosts/hosts/master/hosts-files/hosts -O .\hosts\hosts-googlehosts
:bak
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://coding.net/u/scaffrey/p/hosts/git/raw/master/hosts-files/hosts -O .\hosts\hosts-googlehosts
:D
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://raw.githubusercontent.com/highsea/Hosts/master/hosts -O .\hosts\hosts-highsea
:D
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd http://down.zdfans.com/hosts.txt -O .\hosts\hosts-zdfans -o .\tool\wget\wget.log
:D
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://raw.githubusercontent.com/liuker/hosts/master/hosts -O .\hosts\hosts-liuker
:D
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://raw.githubusercontent.com/txthinking/google-hosts/master/hosts -O .\hosts\google-hosts-txthinking
:D
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://raw.githubusercontent.com/headingy/adaway_hosts/master/hosts.txt -O .\hosts\hosts-ad
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest -O .\hosts\apnic-GFW-list
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt -O .\hosts\gfwlist.txt
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd http://adblock-chinalist.googlecode.com/svn/trunk/adblock.txt -O .\hosts\adblock.txt
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://easylist-downloads.adblockplus.org/easylistchina+easylist.txt -O .\hosts\easylistchina+easylist.txt
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://raw.githubusercontent.com/cjx82630/cjxlist/master/cjxlist.txt -O .\hosts\cjxlist.txt
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://raw.githubusercontent.com/cjx82630/cjxlist/master/cjx-annoyance.txt -O .\hosts\cjx-annoyance.txt
:ad
:.\tool\wget\wget.exe --no-check-certificate -t 10 -nd https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O .\hosts\hosts-ad-StevenBlack
