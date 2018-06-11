set path="D:\Program Files\WinRAR"
rar a "Project-hosts-download.rar" "Project-hosts-download"

ren *.png "Project-hosts-download.png"

copy /b "Project-hosts-download.png" + "Project-hosts-download.rar" "Project-hosts-download-a.png"

if not exist .\history\tmp md .\history\tmp

ren "Project-hosts-download.png" "Project-hosts-download-"%date:~0,4%%date:~5,2%%date:~8,2%".png"

ren "Project-hosts-download.rar" "Project-hosts-download-"%date:~0,4%%date:~5,2%%date:~8,2%".rar"

ren "Project-hosts-download-a.png" "Project-hosts-download-"%date:~0,4%%date:~5,2%%date:~8,2%" code.png"

move *.png .\history\tmp

move *.rar .\history\tmp

cd /d .\history

ren tmp "%date:~0,4%%date:~5,2%%date:~8,2%"



::"%date:~0,4%-%date:~5,2%-%date:~8,2%_%time:~0,2%-%time:~3,2%"

:Project hosts download share

:20160526
:http://ww2.sinaimg.cn/large/66ebe593gw1f482lf7gtij20mm08ngov.jpg

:20161018
:http://ww1.sinaimg.cn/large/66ebe593gw1f8wo7awrs9j20hn0a54qq.jpg

:20161024
:http://ww3.sinaimg.cn/large/66ebe593gw1f92o6t5bukj20fn09d4qq.jpg

:20170101
:http://ww4.sinaimg.cn/large/66ebe593gw1fbbjpbfaz9j20gz09h4qq.jpg

:20180209
:https://ws1.sinaimg.cn/large/66ebe593gy1fo9lik3br0j20gw09mu0y.jpg

:20180523
:http://ww1.sinaimg.cn/large/66ebe593ly1frkoxe7abqj20ij0cou0y.jpg

:20180611
:http://ww1.sinaimg.cn/large/66ebe593gy1fs7gvtasvkj20h70c4npg.jpg