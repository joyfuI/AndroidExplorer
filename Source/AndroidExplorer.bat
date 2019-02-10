@echo off
pushd %~dp0
title ¾Èµå·ÎÀÌµå Å½»ö±â v5                    by joyfuI
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
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
echo        ÀåÄ¡ÀÌ¸§       ¦¢ »óÅÂ                                                                     
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
adb devices
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
echo   »õ·Î°íÄ§: E ¦¢ ¹«¼±¿¬°á: C ¦¢ Á¾·á: X 
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
echo  (¡Ø ÀåÄ¡°¡ ÇÏ³ª¸é ºóÄ­À¸·Î µÎ¼Åµµ µË´Ï´Ù.)
set /p device=¿øÇÏ´Â ¼±ÅÃÀÌ³ª ÀåÄ¡ÀÌ¸§À» ÀÔ·ÂÈÄ ¿£ÅÍÅ°¸¦ ´©¸£¼¼¿ä : 
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
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
echo  °æ·Î¦¢ %path%
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
echo    ±ÇÇÑ    ¼ÒÀ¯ÀÚ ¼ÒÀ¯±×·ì  ¿ë·®      ¸¸µç³¯Â¥                       ÀÌ¸§                   
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
adb%device% shell ls -al "%path%"
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
echo   ÆÄÀÏ¼±ÅÃ: S ¦¢ ¼±ÅÃÆú´õ·ÎÀÌµ¿: U ¦¢ Æú´õ»ý¼º: F ¦¢ ÆùÀ¸·ÎÆÄÀÏº¸³»±â: P ¦¢ ºÙ¿©³Ö±â: A 
echo   ÃÖ±ÙÀ§Ä¡: H ¦¢ ºÏ¸¶Å©: B ¦¢ ±âÅ¸¸Þ´º: M ¦¢ Á¾·á: X 
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
set /p menu=¿øÇÏ´Â ¼±ÅÃÀÌ³ª ÀÌµ¿ÇÏ°íÀÚ ÇÏ´Â ÀüÃ¼ °æ·Î¸¦ ÀÔ·ÂÈÄ ¿£ÅÍÅ°¸¦ ´©¸£¼¼¿ä : 
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
set /p file=ÆÄÀÏorÆú´õ¸íÀ» ÀÔ·ÂÇØ ÁÖ¼¼¿ä : 
if "%file%"=="" goto Main
goto Selection_Menu

:Selection_Folder
echo.
set /p file=Æú´õ¸íÀ» ÀÔ·ÂÇØ ÁÖ¼¼¿ä : 
if "%file%"=="" goto Main
set path=%path%/%file%
goto Main

:Mkdir
echo.
set /p var=¸¸µé°íÀÚÇÏ´Â Æú´õ¸íÀ» ÀÔ·ÂÇØ ÁÖ¼¼¿ä : 
if "%var%"=="" goto Main
echo.
adb%device% shell mkdir "%path%/%var%"
pause
goto Main

:Push
echo.
echo ÁÖÀÇ! º¸³»´Â ÆÄÀÏorÆú´õ °æ·Î¿¡ ÇÑ±Û°ú ¶ç¾î¾²±â°¡ Æ÷ÇÔµÇ¾î ÀÖÀ¸¸é ¾È µË´Ï´Ù!
echo ¸¸¾à ÆùÀ¸·Î ÆÄÀÏorÆú´õ¸¦ º¸³¾ ¼ö ¾ø´Ù¸é sdÄ«µå¿¡ ÆÄÀÏorÆú´õ¸¦ º¸³»°í ÀÌµ¿½ÃÄÑº¸¼¼¿ä.
echo ÆùÀ¸·Î º¸³»°í ½ÍÀº ÆÄÀÏorÆú´õ¸¦ ¿©±â¿¡ µå·¡±×¾Øµå·ÓÀ¸·Î ¶³±¸°í ¿£ÅÍÅ°¸¦ ´©¸£¼¼¿ä.
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
if "%clip%"=="" echo ¸ÕÀú ÆÄÀÏorÆú´õ¸¦ ¼±ÅÃÇØÁÖ¼¼¿ä.
set clipboard=
set clip=
pause
goto Main

:History
set menu=
echo.
echo   ¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤
echo     ÃÖ±ÙÀ§Ä¡ ¸ñ·Ï
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
echo   ¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥
set /p menu=¿øÇÏ´Â ¼±ÅÃÀ» ÀÔ·ÂÈÄ ¿£ÅÍÅ°¸¦ ´©¸£¼¼¿ä : 
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
echo   ¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤
echo   ¦¢ ºÏ¸¶Å© ¸ñ·Ï          ¦¢
echo   ¦¢ 1. ½Ã½ºÅÛ root °æ·Î  ¦¢
echo   ¦¢ 2. ³»ºÎ ¸Þ¸ð¸®       ¦¢
echo   ¦¢ 3. °¶·¯¸®            ¦¢
echo   ¦¢ 4. ´Ù¿î·Îµå          ¦¢
echo   ¦¢ 5. System Æú´õ       ¦¢
echo   ¦¢ 6. Data Æú´õ         ¦¢
echo   ¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥
set /p menu=¿øÇÏ´Â ¼±ÅÃÀ» ÀÔ·ÂÈÄ ¿£ÅÍÅ°¸¦ ´©¸£¼¼¿ä : 
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
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
echo  °æ·Î¦¢ %path%/%file%
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
echo    ±ÇÇÑ    ¼ÒÀ¯ÀÚ ¼ÒÀ¯±×·ì  ¿ë·®      ¸¸µç³¯Â¥                       ÀÌ¸§                   
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
adb%device% shell ls -al "%path%"
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
echo   ÀÌ¸§¹Ù²Ù±â: N ¦¢ »èÁ¦: D ¦¢ Æù¿¡¼­ÆÄÀÏ¹Þ±â: R ¦¢ ±ÇÇÑº¯°æ: P ¦¢ tar»ý¼º: T ¦¢ Àß¶ó³»±â: X 
echo   º¹»ç: C ¦¢ ¼±ÅÃÃë¼Ò: B 
echo ¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡
set /p menu=¿øÇÏ´Â ¼±ÅÃÀ» ÀÔ·ÂÈÄ ¿£ÅÍÅ°¸¦ ´©¸£¼¼¿ä : 
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
set /p var=¹Ù²Ü ÆÄÀÏorÆú´õ¸íÀ» ÀÔ·ÂÇØ ÁÖ¼¼¿ä : 
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
set /p var=ÆÛ¹Ì¼ÇÀ» ÀÔ·ÂÇØ ÁÖ¼¼¿ä (ex. 644, 06755, 0777) : 
if "%var%"=="" goto Main
echo.
adb%device% shell chmod "%var%" "%path%/%file%"
pause
goto Main

:Tar
echo.
adb%device% shell tar -cv -f "/sdcard/%file%.tar" "%path%/%file%"
echo sdcard Æú´õ¿¡ %file%.tar ÆÄÀÏÀÌ »ý¼ºµÇ¾ú½À´Ï´Ù.
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
echo   ¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¤
echo   ¦¢ ±âÅ¸¸Þ´º                                                 ¦¢
echo   ¦¢ 1. ÅÍ¹Ì³Î ½ÇÇà                                           ¦¢
echo   ¦¢ 2. APK ÆÄÀÏ ¼³Ä¡  3. ¾ÖÇÃ¸®ÄÉÀÌ¼Ç »èÁ¦                   ¦¢
echo   ¦¢ 4. ½Ã½ºÅÛ ÀçºÎÆÃ  5. ºÎÆ®·Î´õ ÀçºÎÆÃ  6. ¸®Ä¿¹ö¸® ÀçºÎÆÃ ¦¢
echo   ¦¢ 7. ¸¸µçÀÌ ºí·Î±× Á¢¼Ó                                    ¦¢
echo   ¦¦¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¥
set /p menu=¿øÇÏ´Â ¼±ÅÃÀ» ÀÔ·ÂÈÄ ¿£ÅÍÅ°¸¦ ´©¸£¼¼¿ä : 
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
echo ÅÍ¹Ì³Î »óÅÂ¿¡¼­ ³ª°¡·Á¸é exitÀ» ÀÔ·ÂÇØ ÁÖ¼¼¿ä.
echo.
adb%device% shell
echo.
pause
goto Main

:APK_Install
cls
echo.
echo ÁÖÀÇ! ÆÄÀÏ °æ·Î¿¡ ÇÑ±Û°ú ¶ç¾î¾²±â°¡ Æ÷ÇÔµÇ¾î ÀÖÀ¸¸é ¾È µË´Ï´Ù!
echo ¼³Ä¡ÇÏ°íÀÚ ÇÏ´Â APK ÆÄÀÏÀ» ¿©±â¿¡ µå·¡±×¾Øµå·ÓÀ¸·Î ¶³±¸°í ¿£ÅÍÅ°¸¦ ´©¸£¼¼¿ä.
set /p var=
if "%var%"=="" goto Main
echo.
adb%device% install "%var%"
echo.
echo ¼³Ä¡°¡ ¿Ï·áµÇ¾ú½À´Ï´Ù.
pause
goto Main

:APK_Uninstall
cls
echo.
echo ÆÐÅ°Áö ¸ñ·Ï
adb%device% shell pm list packages
echo.
set /p var=»èÁ¦ÇÒ ¾ÛÀÇ ÆÐÅ°Áö¸íÀ» ÀÔ·ÂÇØÁÖ¼¼¿ä. : 
if "%var%"=="" goto Main
echo.
adb%device% uninstall %var%
echo.
echo Á¦°Å°¡ ¿Ï·áµÇ¾ú½À´Ï´Ù.
pause
goto Main

:Connect
set var=
echo.
set /p var=È£½ºÆ®¸í:Æ÷Æ®(ex.127.0.0.1:5555)¸¦ ÀÔ·ÂÇØ ÁÖ¼¼¿ä : 
if "%var%"=="" goto Start
echo.
adb connect %var%
pause
goto Start
