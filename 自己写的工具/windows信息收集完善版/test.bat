@echo off
echo [*] ����ϵͳ����ϵ�ṹ�Ͳ���
systeminfo
wmic qfe

echo ======================================================

echo [*] ��������
set

echo ======================================================

echo [*] �̷�
wmic logicaldisk get caption,description,providername

echo ======================================================

echo [*] ��������
net use

echo ======================================================

echo [*] ��ǰ�û�
whoami

echo ======================================================

echo [*] ��ǰ�û�Ȩ��
whoami /priv

echo ======================================================

echo [*] ϵͳ�ϴ��ڵ��û�
net user 

echo ======================================================

echo [*] �û���������
dir /b /ad "C:\Users\"

echo ======================================================

echo [*] ��ǰ���ߵ��û�
query user

echo ======================================================

echo [*] ��ǰϵͳ�ϵ���
net localgroup

echo ======================================================

echo [*] ��ǰ����Ա�������û���
net localgroup Administrators

echo ======================================================

echo [*] �û��Զ���¼ע����е�����
reg query "reg query "HKLM\SOFTWARE\Microsoft\Windows NT\Currentversion\Winlogon"

echo ======================================================

echo [*] �û������ڱ��ص�ƾ֤
cmdkey /list

echo ======================================================

echo [*] ��װ��ʲô���
dir /a "C:\Program Files"

echo ======================================================

echo [*] �ļ��л��ļ�Ȩ���Ƿ���

icacls "C:\Program Files\*" 2>nul | findstr "(F)" | findstr "Everyone"
icacls "C:\Program Files (x86)\*" 2>nul | findstr "(F)" | findstr "Everyone"

icacls "C:\Program Files\*" 2>nul | findstr "(F)" | findstr "BUILTIN\Users"
icacls "C:\Program Files (x86)\*" 2>nul | findstr "(F)" | findstr "BUILTIN\Users" 

echo ======================================================

echo [*] �������еĽ���

tasklist /svc

echo ======================================================

echo [*] �������ķ���
net start


echo ======================================================

echo [*] ����ʱ������ʲô
wmic startup get caption,command

echo ======================================================
echo [*] �Ƿ�������AlwaysInstallElevated
reg query HKCU\SOFTWARE\Policies\Microsoft\Windows\Installer /v AlwaysInstallElevated

echo AlwaysInstallElevatedt��Ȩ:https://www.4hou.com/technology/19286.html

echo ======================================================

echo [*] ��������
ipconfig /all


echo ======================================================

echo [*] ·�ɱ�
route print

echo ======================================================

echo [*] ARP�����
arp -a


echo ======================================================

echo [*] ����˿ڵĿ���
netstat -ano

echo ======================================================

echo [*] hosts�ļ��е�����
type C:\WINDOWS\System32\drivers\etc\hosts

echo ======================================================

echo [*] ����ǽ�Ƿ��
netsh firewall show state

echo ======================================================

echo [*] ����ǽ������
netsh firewall show config

echo ======================================================

echo [*] ��������ǽ����firewall.txt
netsh advfirewall export "firewall.txt"

echo ======================================================

echo [*] SNMP������Ϣ
reg query HKLM\SYSTEM\CurrentControlSet\Services\SNMP /s


echo ======================================================

echo [*] ע����е�����

reg query HKCU /f password /t REG_SZ /s
reg query HKLM /f password /t REG_SZ /s 

echo ======================================================

echo [*] �Ƿ��а�װphpstudy��PHP��Apache
dir /s php.ini httpd.conf httpd-xampp.conf my.ini my.cnf

echo ======================================================

echo [*] Apache������־
dir /s access.log error.log


echo ======================================================

echo [*] Ŀ¼����Ȥ���ļ�
dir /s *pass* == *vnc* == *.config*

echo ======================================================

echo [*] �ļ��а���password�ؼ��ֵ�
findstr /si password *.xml *.ini *.txt *.config