@echo off

echo ======================================================

echo [*] �����̷��µ���Ȥ�ļ�

@For /F "Skip=1" %%i in ('Wmic Logicaldisk Where "DriveType=3" Get Name') Do cd %%i&&%%i&&dir /s *pass* == *vnc* == *.config*


echo ======================================================

echo [*] �����̷����ļ��а���password�ؼ��ֵ�


@For /F "Skip=1" %%i in ('Wmic Logicaldisk Where "DriveType=3" Get Name') Do cd %%i&&%%i&&findstr /si password *.xml *.ini *.txt *.config

echo ======================================================

echo [*] �����̷����ļ��а�������ؼ��ֵ�
@For /F "Skip=1" %%i in ('Wmic Logicaldisk Where "DriveType=3" Get Name') Do cd %%i&&%%i&&findstr /si ���� *.xml *.ini *.txt *.config

echo ======================================================

echo [*] �����̷����ļ��а����˺Źؼ��ֵ�
@For /F "Skip=1" %%i in ('Wmic Logicaldisk Where "DriveType=3" Get Name') Do cd %%i&&%%i&&findstr /si �˺� *.xml *.ini *.txt *.config

echo ======================================================

echo [*] �����̷����ļ��а���Password�ؼ��ֵ�
@For /F "Skip=1" %%i in ('Wmic Logicaldisk Where "DriveType=3" Get Name') Do cd %%i&&%%i&&findstr /si Password *.xml *.ini *.txt *.config

