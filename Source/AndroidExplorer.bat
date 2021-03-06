@echo off
pushd %~dp0
title 寰萄煎檜萄 鬚儀晦 v5                    by joyfuI
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
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
echo        濰纂檜葷       弛 鼻鷓                                                                     
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
adb devices
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
echo   億煎堅藹: E 弛 鼠摹翱唸: C 弛 謙猿: X 
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
echo  (≦ 濰纂陛 ж釭賊 綴蘊戲煎 舒敷紫 腌棲棻.)
set /p device=錳ж朝 摹鷗檜釭 濰纂檜葷擊 殮溘�� 縛攪酈蒂 援腦撮蹂 : 
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
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
echo  唳煎弛 %path%
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
echo    掏и    模嶸濠 模嶸斜瑜  辨榆      虜萇陳瞼                       檜葷                   
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
adb%device% shell ls -al "%path%"
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
echo   だ橾摹鷗: S 弛 摹鷗ィ渦煎檜翕: U 弛 ィ渦儅撩: F 弛 ア戲煎だ橾爾頂晦: P 弛 稱罹厥晦: A 
echo   譆斬嬪纂: H 弛 磁葆觼: B 弛 晦顫詭景: M 弛 謙猿: X 
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
set /p menu=錳ж朝 摹鷗檜釭 檜翕ж堅濠 ж朝 瞪羹 唳煎蒂 殮溘�� 縛攪酈蒂 援腦撮蹂 : 
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
set /p file=だ橾orィ渦貲擊 殮溘п 輿撮蹂 : 
if "%file%"=="" goto Main
goto Selection_Menu

:Selection_Folder
echo.
set /p file=ィ渦貲擊 殮溘п 輿撮蹂 : 
if "%file%"=="" goto Main
set path=%path%/%file%
goto Main

:Mkdir
echo.
set /p var=虜菟堅濠ж朝 ィ渦貲擊 殮溘п 輿撮蹂 : 
if "%var%"=="" goto Main
echo.
adb%device% shell mkdir "%path%/%var%"
pause
goto Main

:Push
echo.
echo 輿曖! 爾頂朝 だ橾orィ渦 唳煎縑 и旋婁 嗥橫噙晦陛 んл腎橫 氈戲賊 寰 腌棲棻!
echo 虜擒 ア戲煎 だ橾orィ渦蒂 爾鳥 熱 橈棻賊 sd蘋萄縑 だ橾orィ渦蒂 爾頂堅 檜翕衛麵爾撮蹂.
echo ア戲煎 爾頂堅 談擎 だ橾orィ渦蒂 罹晦縑 萄楚斜撻萄照戲煎 雲掘堅 縛攪酈蒂 援腦撮蹂.
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
if "%clip%"=="" echo 試盪 だ橾orィ渦蒂 摹鷗п輿撮蹂.
set clipboard=
set clip=
pause
goto Main

:History
set menu=
echo.
echo   忙式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式忖
echo     譆斬嬪纂 跡煙
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
echo   戌式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式戎
set /p menu=錳ж朝 摹鷗擊 殮溘�� 縛攪酈蒂 援腦撮蹂 : 
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
echo   忙式式式式式式式式式式式忖
echo   弛 磁葆觼 跡煙          弛
echo   弛 1. 衛蝶蠱 root 唳煎  弛
echo   弛 2. 頂睡 詭賅葬       弛
echo   弛 3. 偉楝葬            弛
echo   弛 4. 棻遴煎萄          弛
echo   弛 5. System ィ渦       弛
echo   弛 6. Data ィ渦         弛
echo   戌式式式式式式式式式式式戎
set /p menu=錳ж朝 摹鷗擊 殮溘�� 縛攪酈蒂 援腦撮蹂 : 
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
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
echo  唳煎弛 %path%/%file%
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
echo    掏и    模嶸濠 模嶸斜瑜  辨榆      虜萇陳瞼                       檜葷                   
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
adb%device% shell ls -al "%path%"
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
echo   檜葷夥紱晦: N 弛 餉薯: D 弛 ア縑憮だ橾嫡晦: R 弛 掏и滲唳: P 弛 tar儅撩: T 弛 澀塭頂晦: X 
echo   犒餌: C 弛 摹鷗鏃模: B 
echo 式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式式
set /p menu=錳ж朝 摹鷗擊 殮溘�� 縛攪酈蒂 援腦撮蹂 : 
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
set /p var=夥羚 だ橾orィ渦貲擊 殮溘п 輿撮蹂 : 
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
set /p var=ぷ嘐暮擊 殮溘п 輿撮蹂 (ex. 644, 06755, 0777) : 
if "%var%"=="" goto Main
echo.
adb%device% shell chmod "%var%" "%path%/%file%"
pause
goto Main

:Tar
echo.
adb%device% shell tar -cv -f "/sdcard/%file%.tar" "%path%/%file%"
echo sdcard ィ渦縑 %file%.tar だ橾檜 儅撩腎歷蝗棲棻.
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
echo   忙式式式式式式式式式式式式式式式式式式式式式式式式式式式式式忖
echo   弛 晦顫詭景                                                 弛
echo   弛 1. 攪嘐割 褒ч                                           弛
echo   弛 2. APK だ橾 撲纂  3. 擁Ы葬馨檜暮 餉薯                   弛
echo   弛 4. 衛蝶蠱 營睡た  5. 睡お煎渦 營睡た  6. 葬醴幗葬 營睡た 弛
echo   弛 7. 虜萇檜 綰煎斜 蕾樓                                    弛
echo   戌式式式式式式式式式式式式式式式式式式式式式式式式式式式式式戎
set /p menu=錳ж朝 摹鷗擊 殮溘�� 縛攪酈蒂 援腦撮蹂 : 
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
echo 攪嘐割 鼻鷓縑憮 釭陛溥賊 exit擊 殮溘п 輿撮蹂.
echo.
adb%device% shell
echo.
pause
goto Main

:APK_Install
cls
echo.
echo 輿曖! だ橾 唳煎縑 и旋婁 嗥橫噙晦陛 んл腎橫 氈戲賊 寰 腌棲棻!
echo 撲纂ж堅濠 ж朝 APK だ橾擊 罹晦縑 萄楚斜撻萄照戲煎 雲掘堅 縛攪酈蒂 援腦撮蹂.
set /p var=
if "%var%"=="" goto Main
echo.
adb%device% install "%var%"
echo.
echo 撲纂陛 諫猿腎歷蝗棲棻.
pause
goto Main

:APK_Uninstall
cls
echo.
echo ぬ酈雖 跡煙
adb%device% shell pm list packages
echo.
set /p var=餉薯й 擄曖 ぬ酈雖貲擊 殮溘п輿撮蹂. : 
if "%var%"=="" goto Main
echo.
adb%device% uninstall %var%
echo.
echo 薯剪陛 諫猿腎歷蝗棲棻.
pause
goto Main

:Connect
set var=
echo.
set /p var=�ˊ瘋捂�:んお(ex.127.0.0.1:5555)蒂 殮溘п 輿撮蹂 : 
if "%var%"=="" goto Start
echo.
adb connect %var%
pause
goto Start
