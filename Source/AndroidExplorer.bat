@echo off
pushd %~dp0
title �ȵ���̵� Ž���� v5                    by joyfuI
mode con cols=99 lines=1000

set path=/

set h1=/
set h2=/
set h3=/
set h4=/
set h5=/
set h6=/
set h7=/
set h8=/
set h9=/
set h0=/

cls
echo.
adb start-server

:Start
set device=
cls
echo ��������������������������������������������������������������������������������������������������
echo        ��ġ�̸�       �� ����                                                                     
echo ��������������������������������������������������������������������������������������������������
adb devices
echo ��������������������������������������������������������������������������������������������������
echo   ���ΰ�ħ: E �� ��������: C �� ����: X 
echo ��������������������������������������������������������������������������������������������������
echo  (�� ��ġ�� �ϳ��� ��ĭ���� �μŵ� �˴ϴ�.)
set /p device=���ϴ� �����̳� ��ġ�̸��� �Է��� ����Ű�� �������� : 
if /i "%device%"=="e" goto Start
if /i "%device%"=="c" goto Connect
if /i "%device%"=="x" adb kill-server & exit
if not "%device%"=="" set device= -s %device%

cls
echo.
adb%device% root
adb%device% remount
adb%device% shell mount /system
adb%device% shell mount /data
adb%device% shell mount /cache
adb%device% shell mount /efs
adb%device% shell mount /sdcard

:Main
set menu=
set file=
set var=
cls
echo ��������������������������������������������������������������������������������������������������
echo  ��Φ� %path%
echo ��������������������������������������������������������������������������������������������������
echo    ����    ������ �����׷�  �뷮      ���糯¥                       �̸�                   
echo ��������������������������������������������������������������������������������������������������
adb%device% shell ls -al "%path%"
echo ��������������������������������������������������������������������������������������������������
echo   ���ϼ���: S �� �����������̵�: U �� ��������: F �� ���������Ϻ�����: P �� �ٿ��ֱ�: A 
echo   �ֱ���ġ: H �� �ϸ�ũ: B �� ��Ÿ�޴�: M �� ����: X 
echo ��������������������������������������������������������������������������������������������������
set /p menu=���ϴ� �����̳� �̵��ϰ��� �ϴ� ��ü ��θ� �Է��� ����Ű�� �������� : 
if "%menu%"=="" goto Main
if "%menu%"=="." goto Main
if /i "%menu%"=="s" goto Selection
if /i "%menu%"=="u" goto Selection_Folder
if /i "%menu%"=="f" goto Mkdir
if /i "%menu%"=="p" goto Push
if /i "%menu%"=="a" goto Paste
if /i "%menu%"=="h" goto History
if /i "%menu%"=="b" goto Bookmark
if /i "%menu%"=="m" goto Menu
if /i "%menu%"=="x" adb kill-server & exit
set path=%menu%
set h0=%h9%
set h9=%h8%
set h8=%h7%
set h7=%h6%
set h6=%h5%
set h5=%h4%
set h4=%h3%
set h3=%h2%
set h2=%h1%
set h1=%path%
goto Main

:Selection
echo.
set /p file=����or�������� �Է��� �ּ��� : 
if "%file%"=="" goto Main
goto Selection_Menu

:Selection_Folder
echo.
set /p file=�������� �Է��� �ּ��� : 
if "%file%"=="" goto Main
set path=%path%/%file%
goto Main

:Mkdir
echo.
set /p var=��������ϴ� �������� �Է��� �ּ��� : 
if "%var%"=="" goto Main
echo.
adb%device% shell mkdir "%path%/%var%"
pause
goto Main

:Push
echo.
echo ����! ������ ����or���� ��ο� �ѱ۰� ���Ⱑ ���ԵǾ� ������ �� �˴ϴ�!
echo ���� ������ ����or������ ���� �� ���ٸ� sdī�忡 ����or������ ������ �̵����Ѻ�����.
echo ������ ������ ���� ����or������ ���⿡ �巡�׾ص������ ������ ����Ű�� ��������.
set /p file=
if "%file%"=="" goto Main
echo.
adb%device% push "%file%" "%path%"
pause
goto Main

:Paste
echo.
if "%clip%"=="copy" adb%device% shell cp -r "%clipboard%" "%path%"
if "%clip%"=="cut" adb%device% shell mv "%clipboard%" "%path%"
if "%clip%"=="" echo ���� ����or������ �������ּ���.
set clipboard=
set clip=
pause
goto Main

:History
set menu=
echo.
echo   ����������������������������������������������������������������������������������������������
echo     �ֱ���ġ ���
echo     1. %h1%
echo     2. %h2%
echo     3. %h3%
echo     4. %h4%
echo     5. %h5%
echo     6. %h6%
echo     7. %h7%
echo     8. %h8%
echo     9. %h9%
echo     0. %h0%
echo   ����������������������������������������������������������������������������������������������
set /p menu=���ϴ� ������ �Է��� ����Ű�� �������� : 
if "%menu%"=="" goto Main
if /i "%menu%"=="1" set path=%h1%
if /i "%menu%"=="2" set path=%h2%
if /i "%menu%"=="3" set path=%h3%
if /i "%menu%"=="4" set path=%h4%
if /i "%menu%"=="5" set path=%h5%
if /i "%menu%"=="6" set path=%h6%
if /i "%menu%"=="7" set path=%h7%
if /i "%menu%"=="8" set path=%h8%
if /i "%menu%"=="9" set path=%h9%
if /i "%menu%"=="0" set path=%h0%
set h0=%h9%
set h9=%h8%
set h8=%h7%
set h7=%h6%
set h6=%h5%
set h5=%h4%
set h4=%h3%
set h3=%h2%
set h2=%h1%
set h1=%path%
goto Main

:Bookmark
set menu=
echo.
echo   ��������������������������
echo   �� �ϸ�ũ ���          ��
echo   �� 1. �ý��� root ���  ��
echo   �� 2. ���� �޸�       ��
echo   �� 3. ������            ��
echo   �� 4. �ٿ�ε�          ��
echo   �� 5. System ����       ��
echo   �� 6. Data ����         ��
echo   ��������������������������
set /p menu=���ϴ� ������ �Է��� ����Ű�� �������� : 
if "%menu%"=="" goto Main
if /i "%menu%"=="1" set path=/
if /i "%menu%"=="2" set path=/sdcard
if /i "%menu%"=="3" set path=/sdcard/DCIM
if /i "%menu%"=="4" set path=/sdcard/Download
if /i "%menu%"=="5" set path=/system
if /i "%menu%"=="6" set path=/data
set h0=%h9%
set h9=%h8%
set h8=%h7%
set h7=%h6%
set h6=%h5%
set h5=%h4%
set h4=%h3%
set h3=%h2%
set h2=%h1%
set h1=%path%
goto Main

:Selection_Menu
set menu=
cls
echo ��������������������������������������������������������������������������������������������������
echo  ��Φ� %path%/%file%
echo ��������������������������������������������������������������������������������������������������
echo    ����    ������ �����׷�  �뷮      ���糯¥                       �̸�                   
echo ��������������������������������������������������������������������������������������������������
adb%device% shell ls -al "%path%"
echo ��������������������������������������������������������������������������������������������������
echo   �̸��ٲٱ�: N �� ����: D �� ���������Ϲޱ�: R �� ���Ѻ���: P �� tar����: T �� �߶󳻱�: X 
echo   ����: C �� �������: B 
echo ��������������������������������������������������������������������������������������������������
set /p menu=���ϴ� ������ �Է��� ����Ű�� �������� : 
if /i "%menu%"=="n" goto Rename
if /i "%menu%"=="d" goto Rm
if /i "%menu%"=="r" goto Pull
if /i "%menu%"=="p" goto Chmod
if /i "%menu%"=="t" goto Tar
if /i "%menu%"=="c" goto Mv
if /i "%menu%"=="x" goto Cp
if /i "%menu%"=="b" goto Main
goto Selection_Menu

:Rename
echo.
set /p var=�ٲ� ����or�������� �Է��� �ּ��� : 
if "%var%"=="" goto Main
echo.
adb%device% shell mv "%path%/%file%" "%path%/%var%"
pause
goto Main

:Rm
echo.
adb%device% shell rm -r "%path%/%file%"
pause
goto Main

:Pull
echo.
adb%device% pull "%path%/%file%" "%USERPROFILE%\File\%file%"
if exist "%USERPROFILE%\File\%file%" start "" "explorer.exe" %USERPROFILE%\File
pause
goto Main

:Chmod
echo.
set /p var=�۹̼��� �Է��� �ּ��� (ex. 644, 06755, 0777) : 
if "%var%"=="" goto Main
echo.
adb%device% shell chmod "%var%" "%path%/%file%"
pause
goto Main

:Tar
echo.
adb%device% shell tar -cv -f "/sdcard/%file%.tar" "%path%/%file%"
echo sdcard ������ %file%.tar ������ �����Ǿ����ϴ�.
pause
goto Main

:Mv
echo.
set clipboard=%path%/%file%
set clip=cut
goto Main

:Cp
echo.
set clipboard=%path%/%file%
set clip=copy
goto Main

:Menu
set menu=
echo.
echo   ��������������������������������������������������������������
echo   �� ��Ÿ�޴�                                                 ��
echo   �� 1. �͹̳� ����                                           ��
echo   �� 2. APK ���� ��ġ  3. ���ø����̼� ����                   ��
echo   �� 4. �ý��� �����  5. ��Ʈ�δ� �����  6. ��Ŀ���� ����� ��
echo   �� 7. ������ ��α� ����                                    ��
echo   ��������������������������������������������������������������
set /p menu=���ϴ� ������ �Է��� ����Ű�� �������� : 
if /i "%menu%"=="1" goto Shell
if /i "%menu%"=="2" goto APK_Install
if /i "%menu%"=="3" goto APK_Uninstall
if /i "%menu%"=="4" adb%device% reboot
if /i "%menu%"=="5" adb%device% reboot bootloader
if /i "%menu%"=="6" adb%device% reboot recovery
if /i "%menu%"=="7" start http://joyfui.wo.tc/
goto Main

:Shell
cls
echo.
echo �͹̳� ���¿��� �������� exit�� �Է��� �ּ���.
echo.
adb%device% shell
echo.
pause
goto Main

:APK_Install
cls
echo.
echo ����! ���� ��ο� �ѱ۰� ���Ⱑ ���ԵǾ� ������ �� �˴ϴ�!
echo ��ġ�ϰ��� �ϴ� APK ������ ���⿡ �巡�׾ص������ ������ ����Ű�� ��������.
set /p var=
if "%var%"=="" goto Main
echo.
adb%device% install "%var%"
echo.
echo ��ġ�� �Ϸ�Ǿ����ϴ�.
pause
goto Main

:APK_Uninstall
cls
echo.
echo ��Ű�� ���
adb%device% shell pm list packages
echo.
set /p var=������ ���� ��Ű������ �Է����ּ���. : 
if "%var%"=="" goto Main
echo.
adb%device% uninstall %var%
echo.
echo ���Ű� �Ϸ�Ǿ����ϴ�.
pause
goto Main

:Connect
set var=
echo.
set /p var=ȣ��Ʈ��:��Ʈ(ex.127.0.0.1:5555)�� �Է��� �ּ��� : 
if "%var%"=="" goto Start
echo.
adb connect %var%
pause
goto Start
