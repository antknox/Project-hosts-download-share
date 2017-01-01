:修改ip，子网掩码，网关，dns。“网络连接名”是你机器上网络属性里看到的连接名，把下面改成自己的连接名。
:netsh interface ip set address "网络连接名" static 192.168.0.88 255.255.255.0 192.168.0.1 1
:netsh interface ip set dns "网络连接名" static 202.216.224.66
:netsh interface ip add dns "网络连接名" 202.216.224.67  

:如果要改成动态分配ip和自动获得dns使用下面命令。
:netsh interface ip set address "网络连接名" dhcp
:netsh interface ip set dns "网络连接名" dhcp


:netsh interface ip set dns "本地连接" static 127.0.0.1
netsh interface ip set dns "本地连接" dhcp

ipconfig /flushdns
ipconfig /registerdns