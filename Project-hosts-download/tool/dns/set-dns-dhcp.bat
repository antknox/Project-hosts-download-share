:�޸�ip���������룬���أ�dns����������������������������������￴������������������ĳ��Լ�����������
:netsh interface ip set address "����������" static 192.168.0.88 255.255.255.0 192.168.0.1 1
:netsh interface ip set dns "����������" static 202.216.224.66
:netsh interface ip add dns "����������" 202.216.224.67  

:���Ҫ�ĳɶ�̬����ip���Զ����dnsʹ���������
:netsh interface ip set address "����������" dhcp
:netsh interface ip set dns "����������" dhcp


:netsh interface ip set dns "��������" static 127.0.0.1
netsh interface ip set dns "��������" dhcp

ipconfig /flushdns
ipconfig /registerdns