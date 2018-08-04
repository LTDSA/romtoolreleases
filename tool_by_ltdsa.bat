author:pengfei@www.cn-dos.net
ÿ?
clsÿ?
cls
@echo off
if %UserName%==Administrator (goto AIHGT_home) else (goto Administrator)
:Administrator
echo.
bin\ctext {0B}²»ÊÇAdministrator¹ÜÀíÔ±ÕË»§Ã¿´Î½«»á³öÏÖ´ËÌáÊ¾£¬ROMTool½«ÆôÓÃAdministrator¹ÜÀíÔ±ÕË»§µÇÂ¼{\n}
echo.
bin\ctext {0C}½¨ÒéµçÄÔ¿ª»úÊ±Ê¹ÓÃAdministrator¹ÜÀíÔ±ÕË»§£¬¼õÉÙ²»±ØÒªµÄ·±Ëö²Ù×÷£¡{0F}{\n}
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
:AIHGT_home
cd.>bin\AIHGT
start /b "" cmd /v:on /c "@echo off&for /l %%a in () do (title ROMTool by LTDSA"
cd /d "%~dp0"
:home
cls
bin\ctext {0A}" =========================="
echo.
echo       ROMTool by LTDSA     
echo.
echo            v1.0.0
echo.
echo       ÌØ±ğÃùĞ»£º@AIHGT
echo.
echo  ==========================
bin\ctext  {0A} ÇëÑ¡ÔñÏÂÃæÑ¡Ïî:{0C}¡¾¾¯¸æ£º{0F}°×É«{0C}Ñ¡ÏîÎª¾É·½°¸·Ö½â´ò°üÑ¡Ïî£¡¡¿{\n}
bin\ctext "{0E} 01{0D}\{0F}1.{0E}·Ö½âboot.img{\n}"
bin\ctext "{0E} 02{0D}\{0F}2.{0E}ºÏ³Éboot.img{\n}"
bin\ctext "{0E} 03{0D}\{0F}3.{0E}·Ö½ârecovery.img{\n}"
bin\ctext "{0E} 04{0D}\{0F}4.{0E}ºÏ³Érecovery.img{\n}"
bin\ctext "{0E} 5.file_contexts.binºÍfile_contexts×ª»» {\n}"
bin\ctext " 55.·Ö½â\ºÏ³Éramdisk»òramdisk.gz{\n}"
bin\ctext " 555.Éú³Ésystem\vendorÈíÏÎ½Ó½Å±¾{\n}"
bin\ctext {0D}{\n}
bin\ctext "{05} 06{0D}\6\{07}66{0D}\{0F}666{0D}.·Ö½âsystem.new.dat.br{\n}"
bin\ctext "{05} 07{0D}\7\{07}77{0D}\{0F}777{0D}.·Ö½âvendor.new.dat.br{\n}"
bin\ctext "{05} 08{0D}\8\{07}88{0D}\{0F}888{0D}.·Ö½âsystem.new.dat{\n}"
bin\ctext "{05} 09{0D}\9\{07}99{0D}\{0F}999{0D}.·Ö½âsystem.img{\n} 
bin\ctext "{05}010{0D}\10\{07}100{0D}\{0F}101{0D}.·Ö½âÈÎÒâÃû³Æ.img\.ext4\.win\.raw¸ñÊ½¾µÏñ{\n}"
bin\ctext "{05} 011{0D}\11\{07}111{0D}\{0F}112{0D}.·Ö½âÈÎÒâÃû³Æxxx.dat\xxx.dat.br{\n}"
bin\ctext "{05} 12\{0F}122{0D}.system.img×ª»»³Ésystem.new.dat{\n}"
bin\ctext "{05} 13.system.new.dat\system.new.dat.br×ª»»³Ésystem.img
bin\ctext {02}{\n} 
echo.
echo  14.´ÓsystemÎÄ¼ş¼Ğ´ò°ü³Ésystem.new.dat
echo  15.´ÓsystemÄ¿Â¼´ò°ü³Ésystem.img(ÄÚºËÌáÈ¡file_contexts)
echo  16.sparse image(imgÑ¹Ëõ¸ñÊ½)×ª»»³Éext4 image(ÍêÕûimg¸ñÊ½)
echo  17.ext4 image(ÍêÕûimg¸ñÊ½)×ª»»³Ésparse image(imgÑ¹Ëõ¸ñÊ½)  
bin\ctext {0B}{\n}
echo  18.adb\fastboot¹¦ÄÜ´óÈ«ºÍadb\fastboot¿ØÖÆÌ¨
bin\ctext {0C}{\n}
echo  19.java8ºÍNet¿ò¼Ü4.7°²×°
bin\ctext "{0C} 20.ÎÄ±¾±à¼­Æ÷°²×°
echo  21.µçÄÔ·´±àÒë¹¤¾ßApkdb°²×°
bin\ctext "{0C} 22.apk\zip¿¨Ë¢°ü¼ÓÃÜ
echo  23.odex\vdexºÏ²¢°²×¿5.0-°²×¿8.1(Ğèjava»·¾³)
bin\ctext "{0C} 24.´ò¿ªmtkÏßË¢spFlash\¸ßÍ¨9008¹¤¾ß(º¬Çı¶¯){\n}"
echo  25.´ò¿ªÎÄ¼ş¶Ô±ÈÆ÷
bin\ctext "{0C} 26.µçÄÔ¶¨Ê±¹Ø»ú\ÖØÆô\Ëø¶¨{\n}"
echo  27.boot\recovery×Ô¶¨ÒåÒÆÖ²\×Ô¶¯ÒÆÖ²
bin\ctext "{0A} 28.ÆäËû¹¤¾ß\¸ñÊ½½â°üºÍ´ò°ü{0C}{\n}"
echo  29\299.system»òvendor\build.propĞÅÏ¢Äñî«
bin\ctext "{0C} 30.zip¿¨Ë¢°üÇ©Ãû{0E}\300.apk°²×°°üÇ©Ãû{\n}"
bin\ctext "{0C} 333.ÇåÀíÁÙÊ±ÎÄ¼ş¹¤¾ßÏä{\n}"
bin\ctext "{0C} 123.¹Ø±ÕROMToolËùÓĞ½ø³ÌÇåÀí»º´æ»ØÊÕÕ¾{\n}"
bin\ctext {0F}{\n}
set /p web=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%web%"=="333" goto Clear_home
if "%web%"=="123" goto exit
if "%web%"=="01" goto unpack_bootimg_new
if "%web%"=="1" goto unpack_bootimg
if "%web%"=="02" goto make_bootimg_new
if "%web%"=="2" goto make_bootimg
if "%web%"=="03" goto unpack_recovery_new
if "%web%"=="3" goto unpack_recovery
if "%web%"=="04" goto make_recovery_new
if "%web%"=="4" goto make_recovery
if "%web%"=="5" goto file_contexts.bin_and_file_contexts_home
if "%web%"=="55" goto make_ramdisk_home
if "%web%"=="555" goto make_symlinks
if "%web%"=="06" goto unpack_br_to_systemimg_ext4
if "%web%"=="6" goto unpack_br_to_systemimg_mount
if "%web%"=="66" goto unpack_br_to_systemimg_4Gplus
if "%web%"=="666" goto unpack_br_to_systemimg_4Gno
if "%web%"=="07" goto unpack_br_to_vendorimg_ext4
if "%web%"=="7" goto unpack_br_to_vendorimg_mount
if "%web%"=="77" goto unpack_br_to_vendorimg_4Gplus
if "%web%"=="777" goto unpack_br_to_vendorimg_4Gno
if "%web%"=="08" goto unpack_dat_unpack_img_ext4
if "%web%"=="8" goto unpack_dat_unpack_img_mount
if "%web%"=="88" goto unpack_dat_unpack_img_4Gplus
if "%web%"=="888" goto unpack_dat_unpack_img_4Gno
if "%web%"=="09" goto unpack_system.img_ext4
if "%web%"=="9" goto unpack_system.img_mount
if "%web%"=="99" goto unpack_system.img_4Gplus
if "%web%"=="999" goto unpack_system.img_4Gno
if "%web%"=="010" goto unpack_xxx.img_ext4
if "%web%"=="10" goto unpack_xxx.img_mount
if "%web%"=="100" goto unpack_xxx.img_4Gplus
if "%web%"=="101" goto unpack_xxx.img_4Gno
if "%web%"=="011" goto unpack_xxx.datbr_ext4
if "%web%"=="11" goto unpack_xxx.datbr_mount
if "%web%"=="111" goto unpack_xxx.datbr_4Gplus
if "%web%"=="112" goto unpack_xxx.datbr_4Gno
if "%web%"=="12" goto makedat
if "%web%"=="122" goto makedat2
if "%web%"=="13" goto systemdatbr_to_systemimg
if "%web%"=="14" goto home_systemdat
if "%web%"=="15" goto home_systemimg
if "%web%"=="16" goto simg2img
if "%web%"=="17" goto img2simg
if "%web%"=="18" goto home_adb_fastboot
if "%web%"=="19" goto java8_home
if "%web%"=="20" goto install_notepad
if "%web%"=="21" goto install_Apkdb
if "%web%"=="22" goto encryption_zip
if "%web%"=="200" goto decrypt_zip
if "%web%"=="23" goto odex_merge
if "%web%"=="24" goto open_SP_Flash_Tool_home
if "%web%"=="25" goto open_Compare
if "%web%"=="26" goto pc_home
if "%web%"=="27" goto home_auto_custom_recovery_kernel_porting
if "%web%"=="28" goto others_unpack_repack
if "%web%"=="29" goto rom_look_build_system
if "%web%"=="299" goto rom_look_build_vendor
if "%web%"=="30" goto sign_zip
if "%web%"=="300" goto sign_apk
goto home
:make_symlinks
echo.
echo.
bin\ctext "{0B} ========================{\n}"
bin\ctext "{0E}  1.system·ÖÇøÉú³ÉÈíÏÎ½Ó{\n}"
bin\ctext "{0E}  2.vendor·ÖÇøÉú³ÉÈíÏÎ½Ó{\n}"
bin\ctext "{0B} ========================{0F}{\n}"
echo.
set /p websymlink=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%websymlink%"=="1" goto make_symlinks_system
if "%websymlink%"=="2" goto make_symlinks_vendor
goto make_symlinks
:make_symlinks_system
del Éú³ÉsystemÈíÏÎ½Ósymlinks.txt >nul 2>nul
echo.
echo.
bin\ctext "{0E}    ÕıÔÚÉú³ÉÈíÏÎ½Ósymlinks½Å±¾£¬ÇëÉÔºò...{\n}"
echo.
setlocal enabledelayedexpansion
set busybox=bin\busybox.exe
if not exist "Éú³ÉsystemÈíÏÎ½Ósymlinks.txt" for /f "delims=" %%a in ('bin\findfile.exe /system -type l ^| !busybox! sed "s/AIHGT//"') do (
for /f "delims=" %%b in ('!busybox! readlink %%a') do echo symlink("%%b", "%%a";;;| !busybox! sed "s/;;;/);/">>Éú³ÉsystemÈíÏÎ½Ósymlinks.txt
)
for /f "delims=" %%a in ('echo "%cd%" ^| !busybox! cut -d":" -f1') do set drive_up=%%a
for /f "delims=" %%a in ('echo "%cd%"^| !busybox! cut -d":" -f2') do set second=%%a
set drive_low=!drive_up!
for %%b in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do set drive_low=!drive_low:%%b=%%b!
for /f "delims=" %%a in ('echo \cygdrive\!drive_low!!second!\system^| !busybox! tr \\ /') do set rm1=%%a
for /f "delims=" %%a in ('echo \cygdrive\!drive_up!!second!\system^| !busybox! tr \\ /') do set rm2=%%a
set rm1=!rm1:/=\/!
set rm2=!rm2:/=\/!
set rm1=!rm1:"=!
set rm2=!rm2:"=!
set symlink_test=0
echo.
echo.
bin\ctext {0C}     ÈíÏÎ½ÓÊ¶±ğÍê³É£¬´ò¿ª£¨Éú³ÉsystemÈíÏÎ½Ósymlinks.txt£©²é¿´. {0F}{\n}
echo.
echo.
pause
start Éú³ÉsystemÈíÏÎ½Ósymlinks.txt
goto home
:make_symlinks_vendor
del Éú³ÉvendorÈíÏÎ½Ósymlinks.txt >nul 2>nul
echo.
echo.
bin\ctext "{0E}    ÕıÔÚÉú³ÉÈíÏÎ½Ósymlinks½Å±¾£¬ÇëÉÔºò...{\n}"
echo.
setlocal enabledelayedexpansion
set busybox=bin\busybox.exe
if not exist "Éú³ÉvendorÈíÏÎ½Ósymlinks.txt" for /f "delims=" %%a in ('bin\findfile.exe /vendor -type l ^| !busybox! sed "s/AIHGT//"') do (
for /f "delims=" %%b in ('!busybox! readlink %%a') do echo symlink("%%b", "%%a";;;| !busybox! sed "s/;;;/);/">>Éú³ÉvendorÈíÏÎ½Ósymlinks.txt
)
for /f "delims=" %%a in ('echo "%cd%" ^| !busybox! cut -d":" -f1') do set drive_up=%%a
for /f "delims=" %%a in ('echo "%cd%"^| !busybox! cut -d":" -f2') do set second=%%a
set drive_low=!drive_up!
for %%b in (a b c d e f g h i j k l m n o p q r s t u v w x y z) do set drive_low=!drive_low:%%b=%%b!
for /f "delims=" %%a in ('echo \cygdrive\!drive_low!!second!\vendor^| !busybox! tr \\ /') do set rm1=%%a
for /f "delims=" %%a in ('echo \cygdrive\!drive_up!!second!\vendor^| !busybox! tr \\ /') do set rm2=%%a
set rm1=!rm1:/=\/!
set rm2=!rm2:/=\/!
set rm1=!rm1:"=!
set rm2=!rm2:"=!
set symlink_test=0
echo.
echo.
bin\ctext {0C}     ÈíÏÎ½ÓÊ¶±ğÍê³É£¬´ò¿ª£¨Éú³ÉvendorÈíÏÎ½Ósymlinks.txt£©²é¿´. {0F}{\n}
echo.
echo.
pause
start Éú³ÉvendorÈíÏÎ½Ósymlinks.txt
goto home
:rawprogram_unsparse
echo.
bin\ctext "{0E}    Çë°ÑÈ«²¿¸ßÍ¨ÏßË¢°ü·Ö¶Î¾µÏñ·ÅÔÚº½Ä¸µ±Ç°Ä¿Â¼£¡{\n}"
echo.
bin\ctext "{0E}    ÇëÔÚµ¯´°Ñ¡Ôñrawprogram_unsparse.xmlÀàËÆxml¸ßÍ¨ÏßË¢ÎÄ±¾ÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼ºÏ²¢...{\n}"
bin\ctext {0C}{\n}
echo     1.system
echo     2.userdata
echo     3.cache
echo     4.×Ô¶¨ÒåÊäÈë·ÖÇøÃû³Æ
bin\ctext {0F}{\n}
set /p weba= ÇëÑ¡ÔñĞèÒªºÏ²¢µÄ¾µÏñµÄÃû³Æ:
if "%weba%"=="1" goto rawprogram_unsparse_system
if "%weba%"=="2" goto rawprogram_unsparse_userdata
if "%weba%"=="3" goto rawprogram_unsparse_cache
if "%weba%"=="4" goto rawprogram_unsparse_custom
goto rawprogram_unsparse
:rawprogram_unsparse_system
set rawprogramsystem=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set rawprogramsystem=" "%~dp0\*.xml"`) do %%a
bin\sparseimg2scatterwith.exe %rawprogramsystem% system
ren system.raw system.img >nul 2>nul
echo.
echo.
bin\ctext "{0C}      system.imgºÏ²¢Íê³É£¡{0F}{\n}"
echo.
pause
goto home
:rawprogram_unsparse_userdata
set rawprogramuserdata=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set rawprogramuserdata=" "%~dp0\*.xml"`) do %%a
bin\sparseimg2scatterwith.exe %rawprogramuserdata% userdata
ren userdata.raw userdata.img >nul 2>nul
echo.
echo.
bin\ctext "{0C}      userdata.imgºÏ²¢Íê³É£¡{0F}{\n}"
echo.
pause
goto home
:rawprogram_unsparse_cache
set rawprogramcache=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set rawprogramcache=" "%~dp0\*.xml"`) do %%a
bin\sparseimg2scatterwith.exe %rawprogramcache% cache
ren cache.raw cache.img >nul 2>nul
echo.
echo.
bin\ctext "{0C}      cache.imgºÏ²¢Íê³É£¡{0F}{\n}"
echo.
pause
goto home
:rawprogram_unsparse_custom
echo.
echo.
echo.
bin\ctext "{0E}ÇëÊäÈë·ÖÇøÃû³Æ£¡ÊäÍê·ÖÇøÃû³ÆÇëÈÏÕæºË¶ÔÎŞÎó²Å°´ÏÂEnter»Ø³µ¼üÈ·ÈÏ£¡{0F}{\n}"
echo.
echo.
set /p partition=ÊäÈëĞèÒªºÏ²¢µÄ·ÖÇøÃû³Æ£¨Ó¢ÎÄĞ¡Ğ´×´Ì¬ÊäÈë£©£º
echo.
set rawprogramcustom=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set rawprogramcustom=" "%~dp0\*.xml"`) do %%a
bin\sparseimg2scatterwith.exe %rawprogramcustom% %partition%
ren %partition%.raw %partition%.img >nul 2>nul
echo.
echo.
bin\ctext "{0C}     %partition%·ÖÇøºÏ²¢Íê³É£¡{0F}{\n}"
echo.
pause
goto home
:encryption_zip
echo.
bin\ctext "{0E}    ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄxxx.apk\xxx.zip¿¨Ë¢°üÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼¼ÓÃÜ...{0F}{\n}"
echo.
set zipencryption=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set zipencryption=" "%~dp0\*.apk;*.zip"`) do %%a
bin\jre\bin\java -jar bin\ZipCenOp.jar e %zipencryption%
echo.
echo.
bin\ctext "{0C}      ³É¹¦¼ÓÃÜ£¡{0F}{\n}"
echo.
pause
goto home
:decrypt_zip
echo.
bin\ctext "{0E}    ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄxxx.apk\xxx.zip¿¨Ë¢°üÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼½âÃÜ...{0F}{\n}"
echo.
set zipdecrypt=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set zipdecrypt=" "%~dp0\*.apk;*.zip"`) do %%a
bin\jre\bin\java -jar bin\ZipCenOp.jar r %zipdecrypt%
echo.
echo.
bin\ctext "{0C}      ³É¹¦½âÃÜ£¡{0F}{\n}"
echo.
pause
goto home
:sign_zip
echo.
bin\ctext "{0E}    ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄxxx.zip¸ñÊ½µÄ¿¨Ë¢°üÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼Ç©Ãû...{0F}{\n}"
echo.
set zips=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set zips=" "%~dp0\*.zip"`) do %%a
bin\jre\bin\java -jar bin\signapk.jar bin\testkey.x509.pem bin\testkey.pk8 %zips% %zips%_signed.zip
echo.
bin\ctext "{0C}      ³É¹¦Ç©Ãû¿¨Ë¢°ü£¡{0F}{\n}"
echo.
pause
goto home
:sign_apk
echo.
bin\ctext "{0E}    ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄxxx.zpk¸ñÊ½ÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼Ç©Ãû...{0F}{\n}"
echo.
set apksign=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set apksign=" "%~dp0\*.apk"`) do %%a
bin\jre\bin\java -jar bin\signapk.jar bin\testkey.x509.pem bin\testkey.pk8 %apksign% %apksign%_signed.apk
echo.
bin\ctext "{0C}      ³É¹¦Ç©Ãûapk£¡{0F}{\n}"
echo.
pause
goto home
:others_unpack_repack
cls
bin\ctext "{0A} ==========================================================================={\n}"
echo.  
echo.                         Çë×ÔĞĞÑ¡ÔñĞèÒªµÄ¹¦ÄÜ£¡
echo. 
echo  ===========================================================================
bin\ctext {0E}{\n}
echo   1.·Ö¶ÎdatºÏ²¢\·Ö¸î¹¤¾ß
bin\ctext {0D}{\n}
echo   2.»ªÎªupdate.app½â°ü¹¤¾ß£¨ĞèÒªµçÄÔÓĞNet_Framework_4.7¿ò¼ÜÖ§³Ö£©
bin\ctext "{0B}{\n}"
echo   3.ozip×ª»»zip¸ñÊ½
bin\ctext "{0C}{\n}"
echo   4.cpb¸ñÊ½½â°üºÍ´ò°ü
bin\ctext "{0A}{\n}"
echo   5.motoµÄsystem.img_sparsechunk·Ö¶Î¸ñÊ½ºÏ²¢
bin\ctext "{0E}{\n}"
echo   6.qsb¸ñÊ½½â°ü
bin\ctext "{0D}{\n}"
echo   7.¸ßÍ¨ÏßË¢°ü·Ö¶Î¾µÏñºÏ²¢
bin\ctext "{0B}{\n}"
echo   8.°²×°Net_Framework_4.7
bin\ctext {0C}{\n}
echo   9.²é¿´ÄÚºËkernel°æ±¾ĞÅÏ¢
bin\ctext {0A}{\n}
echo  10.¿ª»úLOGOµÚÒ»ÆÁÖÆ×÷
echo.
bin\ctext "{0E} 0.»Øµ½¹¤¾ßÊ×Ò³{\n}"
bin\ctext {0F}{\n}
set /p webb=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webb%"=="1" goto open_FileSplitter
if "%webb%"=="2" goto open_huawei_tools
if "%webb%"=="3" goto ozip2zip
if "%webb%"=="4" goto cpb
if "%webb%"=="5" goto moto_sparsechunk
if "%webb%"=="6" goto qsb
if "%webb%"=="7" goto rawprogram_unsparse
if "%webb%"=="8" goto install_Net_Framework_4.7
if "%webb%"=="9" goto rootkernel
if "%webb%"=="10" goto LogoBuilder1.6
if "%webb%"=="0" goto home
goto others_unpack_repack
:qsb
set qsbunpack=
for /f "usebackq delims=" %%a in (`bin\FileToOpen.exe "set qsbunpack=" "%~dp0\*.qsb"`) do %%a
start %~dp0\bin\qsbextract.bat %qsbunpack%
goto home
:moto_sparsechunk
del system.img >nul 2>nul
echo.
echo.
if not exist system.img_sparsechunk* (bin\ctext "{0E}Çë¼ì²ésystem.img_sparsechunk·Ö¶Î¾µÏñÊÇ·ñ´æÔÚ£¡{0F}" & echo. & echo. & pause & goto others_unpack_repack)
echo.
echo.
bin\ctext "{0D} ÕıÔÚºÏ²¢Éú³Ésystem.img ¾µÏñÎÄ¼şÖĞ£¬ÇëÉÔºò...{0F}"
(for %%a in (system.img_sparsechunk*) do %wf%bin\sparse2img.exe %%a system.img ) 
echo.
echo.
if exist system.img (bin\ctext "{0E} ºÏ²¢system.img³É¹¦£¡{0F}" & echo. & echo. & pause & goto home)
:cpb
start bin\CPB_Editor_V6.3.exe
goto home
:LogoBuilder1.6
start bin\LogoBuilder1.6\LogoBuilder.exe
echo.
bin\ctext "{0D}  =================================================================================={\n}"
bin\ctext "{0D}   ´Ë¹¤¾ßÊÊºÏÖÆ×÷logo.bin¿ª»úµÚÒ»ÆÁ£¡Çë×ÔĞĞ·ÅÖÃÒ»¸ö¹Ì¶¨µÄ¹¤×÷Ä¿Â¼·½±ã¹ÜÀí²é¿´½â°ü³öÀ´µÄlogoÄÚÖÃÍ¼Æ¬ºÍÅäÖÃÎÄ¼ş£¡{\n}"
bin\ctext "{0D}  =================================================================================={0F}{\n}"
echo.
pause
goto home
:open_FileSplitter
start bin\FileSplitter.exe
echo.
bin\ctext "{0D}  =================================================================================={\n}"
bin\ctext "{0D}   ´Ë¹¤¾ßÊÊºÏsystem.new.dat1   system.new.dat2   ...µÈµÈÕâÒ»Àà·Ö¶Îdat¸ñÊ½·Ö¸î\ºÏ²¢£¡{\n}"
bin\ctext "{0D}  =================================================================================={0F}{\n}"
echo.
pause
goto home
:open_huawei_tools
attrib -h bin\HuaweiUpdateExtractor\Profiles.xml
copy bin\HuaweiUpdateExtractor\Profiles.xml Profiles.xml >nul 2>nul
attrib +h Profiles.xml >nul 2>nul
rd /s /q EMUI_ROM 2>nul
md EMUI_ROM >nul 2>nul
echo.
bin\ctext "{0E}    ÇëÔÚµ¯´°Ñ¡Ôñ»ªÎªµÄUPDATE.APPÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî½«×Ô¶¯½â°üµ½{0C}EMUI_ROM{0E}ÎÄ¼ş¼ĞÀïÃæ...{0F}{\n}"
echo.
echo.
echo    ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´½â°ü£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
set hwapp=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set hwapp=" "%~dp0\*.app"`) do %%a
bin\HuaweiUpdateExtractor\HuaweiUpdateExtractor.exe extract %hwapp% EMUI_ROM
echo.
echo.
echo.
bin\ctext "{0B}    ½â°üÍê±Ï£¡½â°üµ½{0C}EMUI_ROM{0B}ÎÄ¼ş¼ĞÀïÃæ{0F}{\n}"
echo.
pause
attrib -h Profiles.xml >nul 2>nul
attrib +h bin\HuaweiUpdateExtractor\Profiles.xml
del Profiles.xml >nul 2>nul
goto home
:ozip2zip
echo.
echo.
bin\ctext {0A}" ===================================================================================={\n}"
bin\ctext {0E}"   ÇëÔÚµ¯´°½çÃæÑ¡Ôñozip¸ñÊ½ÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî½«×Ô¶¯ozip×ª»»³Ézip¸ñÊ½£¡{\n}"
bin\ctext {0A}" ===================================================================================={0F}{\n}"
set ozip=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set ozip=" "%~dp0\*.ozip"`) do %%a
bin\ozip2zip.exe %ozip%
echo.
bin\ctext {0B}"     ×ª»»Íê±Ï£¡{0F}{\n}"
echo.
pause
goto home
:install_Net_Framework_4.7
start bin\Win10°²×°.net4.6Ê§°ÜµÄ½â¾ö·½·¨.doc & bin\NDP47-KB3186497-x86-x64-AllOS-ENU.exe
goto home
:home_systemimg
cls
if not exist bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1 goto custom_size1_img
if not exist bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2 goto custom_size2_img
if not exist bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3 goto custom_size3_img
if not exist bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4 goto custom_size4_img
if not exist bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5 goto custom_size5_img
if not exist bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6 goto custom_size6_img
if not exist bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1 goto custom_size1_img
if not exist bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2 goto custom_size2_img
if not exist bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3 goto custom_size3_img
if not exist bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4 goto custom_size4_img
if not exist bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5 goto custom_size5_img
if not exist bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6 goto custom_size6_img
for /f %%a in (bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1) do (set system_size1=%%a)
for /f %%a in (bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2) do (set system_size2=%%a)
for /f %%a in (bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3) do (set system_size3=%%a)
for /f %%a in (bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4) do (set system_size4=%%a)
for /f %%a in (bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5) do (set system_size5=%%a)
for /f %%a in (bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6) do (set system_size6=%%a)
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1) do (set system_sizeG1=%%a)
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2) do (set system_sizeG2=%%a)
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3) do (set system_sizeG3=%%a)
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4) do (set system_sizeG4=%%a)
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5) do (set system_sizeG5=%%a)
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6) do (set system_sizeG6=%%a)
bin\ctext "{0A} ==============================================================================================={\n}"
echo  Ê¹ÓÃÊÂÏî£ºÒÔÏÂ¹¦ÄÜĞè´ÓÄÚºËÌáÈ¡initrd\file_contexts»òramdisk\file_contexts,Ê¶±ğsystemÎª¹¤×÷Ä¿Â¼£¡ 
echo. 
echo  Çë¸ù¾İ×Ô¼º»úĞÍµÄ¹Ù·½system·ÖÇø×Ö½Ú´óĞ¡Ñ¡ÔñÏÂÃæÑ¡Ïî:
echo  ===============================================================================================
bin\ctext {0E}{\n}
echo  1.´ò°ü³É %system_sizeG1%G (%system_size1% ×Ö½Ú) ´óĞ¡µÄsystem.img
echo  2.´ò°ü³É %system_sizeG2%G (%system_size2% ×Ö½Ú) ´óĞ¡µÄsystem.img
echo  3.´ò°ü³É %system_sizeG3%G (%system_size3% ×Ö½Ú) ´óĞ¡µÄsystem.img
bin\ctext {0D}{\n}
echo  4.´ò°ü³É %system_sizeG4%G (%system_size4% ×Ö½Ú) ´óĞ¡µÄsystem.img
echo  5.´ò°ü³É %system_sizeG5%G (%system_size5% ×Ö½Ú) ´óĞ¡µÄsystem.img
echo  6.´ò°ü³É %system_sizeG6%G (%system_size6% ×Ö½Ú) ´óĞ¡µÄsystem.img
bin\ctext {0B}{\n}
echo  7.×Ô¶¨Òå´ò°üsystem.img´óĞ¡
echo  8.×Ô¶¨Òå´ò°üÈÎÒâ·ÖÇøÃû³ÆÈÎÒâ´óĞ¡ext4±àÂë£¨ÍêÕû¸ñÊ½£©µÄimg¾µÏñ
echo  9.²é¿´×Ô¼º»úĞÍ¹Ù·½system·ÖÇøÈİÁ¿´óĞ¡¡¾°Ñ×Ô¼º»úĞÍ¹Ù·½system.imgÃû³Æsparse image(imgÑ¹Ëõ¸ñÊ½)¾µÏñÎÄ¼ş¸´ÖÆµ½±¾¹¤¾ßÄ¿Â¼¡¿
bin\ctext {0C}{\n}
echo  10.¸ù¾İ¹Ù·½system·ÖÇøÈİÁ¿´óĞ¡À´´ò°üµÚÈı·½ROMµÄsystemÎÄ¼ş¼ĞÉú³Ésystem.img
echo     Ç°Ìá:¡¾°Ñ×Ô¼º»úĞÍ¹Ù·½system.imgÃû³Æsparse image(imgÑ¹Ëõ¸ñÊ½)¾µÏñÎÄ¼ş¸´ÖÆµ½±¾¹¤¾ßÄ¿Â¼¡¿
echo.
bin\ctext "{0A} 11.ÖØĞÂÉè¶¨±¾Ò³Ãæ1-6È«²¿Ñ¡ÏîÈİÁ¿´óĞ¡{\n}"
bin\ctext "{0A} 12.ÖØĞÂÉè¶¨±¾Ò³Ãæ1-6µ¥¶ÀÑ¡ÏîÈİÁ¿´óĞ¡{\n}"
bin\ctext "{0A}  0.»Øµ½¹¤¾ßÊ×Ò³{\n}"
bin\ctext {0F}{\n}
echo ÌáĞÑ£ºÒÔÉÏ¹¦ÄÜĞè´ÓÄÚºËÌáÈ¡initrd\file_contexts»òramdisk\file_contexts,Ê¶±ğsystemÎª¹¤×÷Ä¿Â¼£¡
echo.
set /p webc=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webc%"=="1" call :make_img %system_size1%
if "%webc%"=="2" call :make_img %system_size2%
if "%webc%"=="3" call :make_img %system_size3%
if "%webc%"=="4" call :make_img %system_size4%
if "%webc%"=="5" call :make_img %system_size5%
if "%webc%"=="6" call :make_img %system_size6%
if "%webc%"=="7" goto custom_system_img
if "%webc%"=="8" goto custom_arbitrarily_img
if "%webc%"=="9" goto look_systemimg_size
if "%webc%"=="10" goto looking_system_img_size_auto_make_new_img
if "%webc%"=="11" goto custom_settings_size_img
if "%webc%"=="12" goto custom_settings_size_img2
if "%webc%"=="0" goto home
goto home_systemimg
:custom_settings_size_img
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6 >nul 2>nul
del bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1
del bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2
del bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3
del bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4
del bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5
del bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6
goto home_systemimg
:custom_settings_size_img2
echo.
echo.
echo.
bin\ctext "{0B}====================================={\n}"
bin\ctext "{0A}        1.Ñ¡Ïî1µÄÈİÁ¿´óĞ¡Éè¶¨{\n}"
bin\ctext "{0A}        2.Ñ¡Ïî2µÄÈİÁ¿´óĞ¡Éè¶¨{\n}"
echo.
bin\ctext "{0E}        3.Ñ¡Ïî3µÄÈİÁ¿´óĞ¡Éè¶¨{\n}"
bin\ctext "{0E}        4.Ñ¡Ïî4µÄÈİÁ¿´óĞ¡Éè¶¨{\n}"
echo.
bin\ctext "{0D}        5.Ñ¡Ïî5µÄÈİÁ¿´óĞ¡Éè¶¨{\n}"
bin\ctext "{0D}        6.Ñ¡Ïî6µÄÈİÁ¿´óĞ¡Éè¶¨{\n}"
bin\ctext "{0B}====================================={0F}{\n}"
echo.
set /p systemzize=-^-^> ÇëÊäÈëĞèÒªÖØĞÂÉè¶¨µÄÑ¡Ïî:
if "%systemzize%"=="1" goto custom_size_img1
if "%systemzize%"=="2" goto custom_size_img2
if "%systemzize%"=="3" goto custom_size_img3
if "%systemzize%"=="4" goto custom_size_img4
if "%systemzize%"=="5" goto custom_size_img5
if "%systemzize%"=="6" goto custom_size_img6
goto custom_settings_size_img2
:custom_size_img1
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1 >nul 2>nul
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1
goto custom_size1_img
:custom_size_img2
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2 >nul 2>nul
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2
goto custom_size2_img
:custom_size_img3
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3 >nul 2>nul
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3
goto custom_size3_img
:custom_size_img4
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4 >nul 2>nul
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4
goto custom_size4_img
:custom_size_img5
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5 >nul 2>nul
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5
goto custom_size5_img
:custom_size_img6
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6 >nul 2>nul
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6
goto custom_size6_img
:custom_size1_img
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿×Ö½Ú´óĞ¡£¨´¿°¢À­²®Êı×Ö£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsize1=
echo %system_imgsize1%>bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1
attrib +r +h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿G£¨´¿°¢À­²®Êı×Ö,ÀıÈç1.00   2.50   3.25£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsizeG1=
echo %system_imgsizeG1%>bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1
attrib +r +h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1 >nul 2>nul
goto home_systemimg
:custom_size2_img
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî2ÈİÁ¿×Ö½Ú´óĞ¡£¨´¿°¢À­²®Êı×Ö£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsize2=
echo %system_imgsize2%>bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2
attrib +r +h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿G£¨´¿°¢À­²®Êı×Ö,ÀıÈç1.00   2.50   3.25£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsizeG2=
echo %system_imgsizeG2%>bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2
attrib +r +h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2 >nul 2>nul
goto home_systemimg
:custom_size3_img
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî3ÈİÁ¿×Ö½Ú´óĞ¡£¨´¿°¢À­²®Êı×Ö£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsize3=
echo %system_imgsize3%>bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3
attrib +r +h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿G£¨´¿°¢À­²®Êı×Ö,ÀıÈç1.00   2.50   3.25£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsizeG3=
echo %system_imgsizeG3%>bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3
attrib +r +h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3 >nul 2>nul
goto home_systemimg
:custom_size4_img
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî4ÈİÁ¿×Ö½Ú´óĞ¡£¨´¿°¢À­²®Êı×Ö£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsize4=
echo %system_imgsize4%>bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4
attrib +r +h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿G£¨´¿°¢À­²®Êı×Ö,ÀıÈç1.00   2.50   3.25£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsizeG4=
echo %system_imgsizeG4%>bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4
attrib +r +h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4 >nul 2>nul
goto home_systemimg
:custom_size5_img
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî5ÈİÁ¿×Ö½Ú´óĞ¡£¨´¿°¢À­²®Êı×Ö£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsize5=
echo %system_imgsize5%>bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5
attrib +r +h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿G£¨´¿°¢À­²®Êı×Ö,ÀıÈç1.00   2.50   3.25£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsizeG5=
echo %system_imgsizeG5%>bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5
attrib +r +h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5 >nul 2>nul
goto home_systemimg
:custom_size6_img
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî6ÈİÁ¿×Ö½Ú´óĞ¡£¨´¿°¢À­²®Êı×Ö£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsize6=
echo %system_imgsize6%>bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6
attrib +r +h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿G£¨´¿°¢À­²®Êı×Ö,ÀıÈç1.00   2.50   3.25£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsizeG6=
echo %system_imgsizeG6%>bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6
attrib +r +h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6 >nul 2>nul
goto home_systemimg
:make_img
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½system\build.prop£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñÍêÕû¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else
if exist "file_contexts" goto make_img_start
if not exist "file_contexts" goto make_img_bin
:make_img_bin
if exist "system\build.prop" (
FOR /f "tokens=1* delims==" %%a IN ('type "system\build.prop"') DO (
if /I "%%~a"=="ro.build.version.sdk" (
if not "%%~b"=="%api%" (
set api=%%~b
)
)
)
)
if %api% GEQ "26 27 28 29 30" (goto make_img_oreo_api)
if %api% GEQ "21 22 23 24 25" (goto make_img_Lollipop_api)
:make_img_oreo_api
bin\file_contexts_oreo.exe -o file_contexts file_contexts.bin >nul 2>nul & goto make_img_start
:make_img_Lollipop_api
bin\file_contexts_tool.exe file_contexts.bin -o file_contexts -e >nul 2>nul & goto make_img_start
:make_img_start
if not exist "system" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½systemÎÄ¼ş¼Ğ£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystemÎÄ¼ş¼ĞµÄÍêÕûĞÔ¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else
echo.
if not exist "file_contexts" (
echo.
echo.
bin\ctext "{0C}      È±ÉÙfile_contextsÉú³É×é¼ş,ÇëÔÚÄÚºËÌáÈ¡initrd\file_contexts²¢·ÅÖÃµ½±¾¹¤¾ßÄ¿Â¼ÏÂ{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.img  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
echo.¿ÉÍ¨¹ı±¾Ò³ÃæÑ¡Ïî11À´ÖØĞÂÉè¶¨±¾Ò³Ãæ1-6Ñ¡ÏîÈİÁ¿´óĞ¡
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %1 -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ´ò°ü±¨´íÈÕÖ¾³öÏÖ£¬Çë¼ì²éfile_contexts´úÂë³åÍ»  £¡{0F}{\n}" & echo. & pause & goto home_systemimg & else
goto home
:custom_arbitrarily_img
echo.
bin\ctext "{0E}ÄãËùÊäÈëµÄ·ÖÇøÃû³ÆĞèÒªfile_contexts¶ÔÓ¦ÎÄ±¾ÉÏÏÂÎÄ´úÂëÖ§³Ö£¡ÊäÍê·ÖÇøÃû³ÆÇëÈÏÕæºË¶ÔÎŞÎó²Å°´ÏÂEnter»Ø³µ¼üÈ·ÈÏ£¡{0F}{\n}"
echo.
echo.
set /p arbitrarily=ÊäÈëĞèÒª´ò°üµÄ·ÖÇøÃû³Æ£¨Ó¢ÎÄĞ¡Ğ´×´Ì¬ÊäÈë£©£º
echo.
pause
echo.
echo.
if exist "file_contexts" goto custom_arbitrarily_img_start
if not exist "file_contexts" goto custom_arbitrarily_img_bin
:custom_arbitrarily_img_bin
echo.
echo.
bin\ctext "{0B} ====================={\n}"
bin\ctext "{0E}  1.°²×¿5.0 - °²×¿7.1.2{\n}"
bin\ctext "{0E}  2.°²×¿8.0{\n}"
bin\ctext "{0B} ====================={0F}{\n}"
echo.
set /p webe=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webe%"=="1" bin\file_contexts_tool.exe file_contexts.bin -o file_contexts -e >nul 2>nul & goto custom_arbitrarily_img_start
if "%webe%"=="2" bin\file_contexts_oreo.exe -o file_contexts file_contexts.bin >nul 2>nul & goto custom_arbitrarily_img_start
goto custom_arbitrarily_img_bin
:custom_arbitrarily_img_start
echo.
if not exist "file_contexts" (
echo.
echo.
bin\ctext "{0C}      È±ÉÙfile_contextsÉú³É×é¼ş,ÇëÔÚÄÚºËÌáÈ¡initrd\file_contexts²¢·ÅÖÃµ½±¾¹¤¾ßÄ¿Â¼ÏÂ{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else (
bin\ctext {0F}{\n}
if not exist bin\×Ô¶¨Òå´óĞ¡ÈÎÒâ·ÖÇø´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾ goto custom_arbitrarily_size_img
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡ÈÎÒâ·ÖÇø´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾) do (set arbitrarily_size=%%a)
bin\ctext "{0F}     ÉÏ´Î´ò°üµÄÈİÁ¿´óĞ¡×Ö½ÚÊÇ:{0C}%arbitrarily_size%{\n}"
echo.
bin\ctext "{0B} ================================================{\n}"
bin\ctext "{0E}  1.Ê¹ÓÃÉÏ´Î±£´æµÄÈİÁ¿´óĞ¡×Ö½Ú{0C}%arbitrarily_size%{0E}½øĞĞ´ò°ü{\n}"
bin\ctext "{0E}  2.ĞÂ½¨ÈİÁ¿´óĞ¡×Ö½Ú´ò°ü{\n}"
bin\ctext "{0B} ================================================{0F}{\n}"
echo.
set /p webf=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webf%"=="1" goto custom_arbitrarily_size_start
if "%webf%"=="2" goto custom_arbitrarily_size_img
goto custom_arbitrarily_img_start
:custom_arbitrarily_size_start
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Éext4±àÂëµÄimg¾µÏñ ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
del %arbitrarily%.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %arbitrarily_size% -a %arbitrarily% %arbitrarily%.img %arbitrarily%
)
echo.
if not exist "%arbitrarily%" bin\ctext "{0C}      º½Ä¸Ä¿Â¼ÄÚ²»´æÔÚ %arbitrarily% ´ò°üÄ¿Â¼,ÎŞ·¨½øĞĞ´ò°ü£¡{0F}{\n}" & echo. & pause & goto home_systemimg & else
goto home
:custom_arbitrarily_size_img
attrib -r -h bin\×Ô¶¨Òå´óĞ¡ÈÎÒâ·ÖÇø´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾ >nul 2>nul
bin\ctext "ÇëÊäÈë×Ô¼º»úĞÍ{0C}%arbitrarily%·ÖÇø{0F}ÈİÁ¿×Ö½Ú´óĞ¡:{\n}"
set /p arbitrarily_size=
echo %arbitrarily_size%>bin\×Ô¶¨Òå´óĞ¡ÈÎÒâ·ÖÇø´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾
attrib +r +h bin\×Ô¶¨Òå´óĞ¡ÈÎÒâ·ÖÇø´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾ >nul 2>nul
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Éext4±àÂëµÄimg¾µÏñ ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
del %arbitrarily%.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %arbitrarily_size% -a %arbitrarily% %arbitrarily%.img %arbitrarily%
echo.
if not exist "%arbitrarily%" bin\ctext "{0C}      º½Ä¸Ä¿Â¼ÄÚ²»´æÔÚ %arbitrarily% ´ò°üÄ¿Â¼,ÎŞ·¨½øĞĞ´ò°ü£¡{0F}{\n}" & echo. & pause & goto home_systemimg & else
goto home
:custom_system_img
if exist "file_contexts" goto custom_system_img_start
if not exist "file_contexts" goto custom_system_img_bin
:custom_system_img_bin
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½system\build.prop£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñÍêÕû¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else
if exist "system\build.prop" (
FOR /f "tokens=1* delims==" %%a IN ('type "system\build.prop"') DO (
if /I "%%~a"=="ro.build.version.sdk" (
if not "%%~b"=="%api%" (
set api=%%~b
)
)
)
)
if %api% GEQ "26 27 28 29 30" (goto custom_system_img_oreo_api)
if %api% GEQ "21 22 23 24 25" (goto custom_system_img_Lollipop_api)
:custom_system_img_oreo_api
bin\file_contexts_oreo.exe -o file_contexts file_contexts.bin >nul 2>nul & goto custom_system_img_start
:custom_system_img_Lollipop_api
bin\file_contexts_tool.exe file_contexts.bin -o file_contexts -e >nul 2>nul & goto custom_system_img_start
:custom_system_img_start
if not exist "system" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½systemÎÄ¼ş¼Ğ£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystemÎÄ¼ş¼ĞµÄÍêÕûĞÔ¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else (
echo.
if not exist "file_contexts" (
echo.
echo.
bin\ctext "{0C}      È±ÉÙfile_contextsÉú³É×é¼ş,ÇëÔÚÄÚºËÌáÈ¡initrd\file_contexts²¢·ÅÖÃµ½±¾¹¤¾ßÄ¿Â¼ÏÂ{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else (
echo.
bin\ctext {0F}{\n}
if not exist bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾ goto custom_size_img
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾) do (set system_size=%%a)
bin\ctext "{0F}     ÉÏ´Î´ò°üµÄÈİÁ¿´óĞ¡×Ö½ÚÊÇ:{0C}%system_size%{\n}"
echo.
bin\ctext "{0B} ================================================{\n}"
bin\ctext "{0E}  1.Ê¹ÓÃÉÏ´Î±£´æµÄÈİÁ¿´óĞ¡×Ö½Ú{0C}%system_size%{0E}½øĞĞ´ò°ü{\n}"
bin\ctext "{0E}  2.ĞÂ½¨ÈİÁ¿´óĞ¡×Ö½Ú´ò°ü{\n}"
bin\ctext "{0B} ================================================{0F}{\n}"
echo.
set /p webh=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webh%"=="1" goto custom_system_size_start
if "%webh%"=="2" goto custom_size_img
goto custom_system_img_start
:custom_system_size_start
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.img  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %system_size% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ´ò°ü±¨´íÈÕÖ¾³öÏÖ£¬Çë¼ì²éfile_contexts´úÂë³åÍ»  £¡{0F}{\n}" & echo. & pause & goto home_systemimg & else
)
goto home
:custom_size_img
attrib -r -h bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾ >nul 2>nul
bin\ctext "ÇëÊäÈë×Ô¼º»úĞÍ{0C}¹Ù·½system·ÖÇø{0F}ÈİÁ¿×Ö½Ú´óĞ¡:{\n}"
set /p system_size=
echo %system_size%>bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾
attrib +r +h bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾ >nul 2>nul
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.img  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %system_size% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ´ò°ü±¨´íÈÕÖ¾³öÏÖ£¬Çë¼ì²éfile_contexts´úÂë³åÍ»  £¡{0F}{\n}" & echo. & pause & goto home_systemimg & else
goto home
:look_systemimg_size
if not exist "system.img" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½¹Ù·½system.img£¨sparse image(imgÑ¹Ëõ¸ñÊ½)£©£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚ¹Ù·½system.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else (
echo.
echo.
echo.ÕıÔÚ×ª»»¹Ù·½system.img£¬ÉÔºóÇë²é¿´system_ext4.img´ËÎÄ¼şµÄÊôĞÔ¼´¿É²é¿´ÈİÁ¿×Ö½Ú´óĞ¡
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
bin\simg2img.exe system.img system_ext4.img
echo.
@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a-d /b system_ext4.img') do (
bin\ctext "%%i:¹Ù·½system·ÖÇø×Ö½ÚÈİÁ¿´óĞ¡={0C}%%~zi{0F}×Ö½Ú.{\n}"
echo.
bin\ctext "{0C} Èç¹û²é¿´¹Ù·½ÊÇ0×Ö½ÚËµÃ÷ÒÑ¾­ÊÇext4 image(ÍêÕûimg¸ñÊ½)£¬·Ç¹Ù·½system.img£¨sparse image(imgÑ¹Ëõ¸ñÊ½)£©¾µÏñÎÄ¼ş¡£{0F}{\n}"
echo.
)
pause
del system_ext4.img 2>nul
goto home_systemimg
:looking_system_img_size_auto_make_new_img
if exist "file_contexts" goto looking_system_img_size_auto_make_new_img_start
if not exist "file_contexts" goto looking_system_img_size_auto_make_new_img_bin
:looking_system_img_size_auto_make_new_img_bin
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½system\build.prop£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñÍêÕû¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else
if exist "system\build.prop" (
FOR /f "tokens=1* delims==" %%a IN ('type "system\build.prop"') DO (
if /I "%%~a"=="ro.build.version.sdk" (
if not "%%~b"=="%api%" (
set api=%%~b
)
)
)
)
if %api% GEQ "26 27 28 29 30" (goto looking_system_img_size_auto_make_new_img_oreo_api)
if %api% GEQ "21 22 23 24 25" (goto looking_system_img_size_auto_make_new_img_Lollipop_api)
:looking_system_img_size_auto_make_new_img_oreo_api
bin\file_contexts_oreo.exe -o file_contexts file_contexts.bin >nul 2>nul & goto looking_system_img_size_auto_make_new_img_start
:looking_system_img_size_auto_make_new_img_Lollipop_api
bin\file_contexts_tool.exe file_contexts.bin -o file_contexts -e >nul 2>nul & goto looking_system_img_size_auto_make_new_img_start
:looking_system_img_size_auto_make_new_img_start
if not exist "system.img" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½¹Ù·½system.img£¨sparse image£¨imgÑ¹Ëõ¸ñÊ½£©£©£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚ¹Ù·½system.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else (
echo.
if not exist "file_contexts" (
echo.
echo.
bin\ctext "{0C}      È±ÉÙfile_contextsÉú³É×é¼ş,ÇëÔÚÄÚºËÌáÈ¡initrd\file_contexts²¢·ÅÖÃµ½±¾¹¤¾ßÄ¿Â¼ÏÂ{0F}{\n}"
echo.
echo.
pause
goto home_systemimg
)
) else (
echo.
if not exist "system" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½systemÎÄ¼ş¼Ğ£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystemÎÄ¼ş¼ĞµÄÍêÕûĞÔ¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else (
echo.
echo.ÕıÔÚ×ª»»¹Ù·½system.img£¬ÉÔºóÇë²é¿´system_ext4.img´ËÎÄ¼şµÄÊôĞÔ¼´¿É²é¿´ÈİÁ¿×Ö½Ú´óĞ¡
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
bin\simg2img.exe system.img system_ext4.img
echo.
@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a-d /b system_ext4.img') do (
bin\ctext "%%i:¹Ù·½system·ÖÇø×Ö½ÚÈİÁ¿´óĞ¡={0C}%%~zi{0F}×Ö½Ú.{\n}"
set ext4imgsizea=%%~zi
)
echo.
for /r %~dp0 %%a in (system_ext4.img) do (
if %%~za==0 del %~dp0\system_ext4.img
)
if not exist "%~dp0\system_ext4.img" goto Return
if exist "%~dp0\system_ext4.img" goto Continue
:Return
del system_ext4.img 2>nul
goto home_systemimg
:Continue
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.img  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
echo.¿ÉÍ¨¹ı±¾Ò³ÃæÑ¡Ïî11À´ÖØĞÂÉè¶¨±¾Ò³Ãæ1-6Ñ¡ÏîÈİÁ¿´óĞ¡
del system_ext4.img 2>nul
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %ext4imgsizea% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ´ò°ü±¨´íÈÕÖ¾³öÏÖ£¬Çë¼ì²éfile_contexts´úÂë³åÍ»  £¡{0F}{\n}" & echo. & pause & goto home_systemimg & else
)
goto home
:home_systemdat
cls
if not exist bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1 goto custom_size1_img
if not exist bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2 goto custom_size2_img
if not exist bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3 goto custom_size3_img
if not exist bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4 goto custom_size4_img
if not exist bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5 goto custom_size5_img
if not exist bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6 goto custom_size6_img
if not exist bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1 goto custom_size1_img
if not exist bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2 goto custom_size2_img
if not exist bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3 goto custom_size3_img
if not exist bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4 goto custom_size4_img
if not exist bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5 goto custom_size5_img
if not exist bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6 goto custom_size6_img
for /f %%a in (bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1) do (set system_size1=%%a)
for /f %%a in (bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2) do (set system_size2=%%a)
for /f %%a in (bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3) do (set system_size3=%%a)
for /f %%a in (bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4) do (set system_size4=%%a)
for /f %%a in (bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5) do (set system_size5=%%a)
for /f %%a in (bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6) do (set system_size6=%%a)
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1) do (set system_sizeG1=%%a)
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2) do (set system_sizeG2=%%a)
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3) do (set system_sizeG3=%%a)
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4) do (set system_sizeG4=%%a)
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5) do (set system_sizeG5=%%a)
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6) do (set system_sizeG6=%%a)
bin\ctext "{0A} ====================================================================================================={\n}"
echo.    Ê¹ÓÃÊÂÏî£ºÒÔÏÂ¹¦ÄÜĞè´ÓÄÚºËÌáÈ¡initrd\file_contexts»òramdisk\file_contexts,Ê¶±ğsystemÎª¹¤×÷Ä¿Â¼£¡
echo.
echo.              Ö±½Ó´ÓsystemÎÄ¼ş¼Ğ´ò°ü³Ésystem.new.datºÍsystem.transfer.list         
echo. =====================================================================================================
bin\ctext  {0A} Çë¸ù¾İ×Ô¼º»úĞÍµÄ¹Ù·½system·ÖÇø×Ö½Ú´óĞ¡Ñ¡ÔñÏÂÃæÑ¡Ïî:{0C}£¨¾¯¸æ£º{0F}°×É«{0C}Ñ¡ÏîÎª¾É·½°¸´ò°üÑ¡Ïî£¡£©{\n}
bin\ctext {0E}{\n}
bin\ctext "{0E}  1\{0F}11{0E}.´ò°ü³É %system_sizeG1%G (%system_size1% ×Ö½Ú) ´óĞ¡µÄsystem.img²¢ÔÙ´ÎÉú³Ésystem.new.datºÍsystem.transfer.list{\n}"
bin\ctext "{0E}  2\{0F}22{0E}.´ò°ü³É %system_sizeG2%G (%system_size2% ×Ö½Ú) ´óĞ¡µÄsystem.img²¢ÔÙ´ÎÉú³Ésystem.new.datºÍsystem.transfer.list{\n}"
bin\ctext "{0E}  3\{0F}33{0E}.´ò°ü³É %system_sizeG3%G (%system_size3% ×Ö½Ú) ´óĞ¡µÄsystem.img²¢ÔÙ´ÎÉú³Ésystem.new.datºÍsystem.transfer.list{\n}"
bin\ctext {0D}{\n}
bin\ctext "{0D}  4\{0F}44{0D}.´ò°ü³É %system_sizeG4%G (%system_size4% ×Ö½Ú) ´óĞ¡µÄsystem.img²¢ÔÙ´ÎÉú³Ésystem.new.datºÍsystem.transfer.list{\n}"
bin\ctext "{0D}  5\{0F}55{0D}.´ò°ü³É %system_sizeG5%G (%system_size5% ×Ö½Ú) ´óĞ¡µÄsystem.img²¢ÔÙ´ÎÉú³Ésystem.new.datºÍsystem.transfer.list{\n}"
bin\ctext "{0D}  6\{0F}66{0D}.´ò°ü³É %system_sizeG6%G (%system_size6% ×Ö½Ú) ´óĞ¡µÄsystem.img²¢ÔÙ´ÎÉú³Ésystem.new.datºÍsystem.transfer.list{\n}"
bin\ctext {0B} {\n}
bin\ctext "{0B}  7\{0F}77{0B}.×Ô¶¨Òå´ò°üsystem.img×Ö½ÚÈİÁ¿´óĞ¡£¬²¢ÔÙ´ÎÉú³Ésystem.new.datºÍsystem.transfer.list{\n}"
echo      8.²é¿´¹Ù·½system·ÖÇøÈİÁ¿´óĞ¡¡¾ÌáÈ¡¹Ù·½system.new.datºÍsystem.transfer.list¸´ÖÆµ½±¾¹¤¾ßÄ¿Â¼¡¿
bin\ctext {0C}{\n}
bin\ctext "{0C}  9\{0F}99{0C}.¸ù¾İ¹Ù·½system·ÖÇøÈİÁ¿´óĞ¡À´´ò°üµÚÈı·½ROMµÄsystemÄ¿Â¼Éú³Ésystem.new.datºÍsystem.transfer.list{\n}"
bin\ctext "{0C}       Ç°Ìá:¡¾ÌáÈ¡¹Ù·½system.new.datºÍsystem.transfer.list¸´ÖÆµ½±¾¹¤¾ßÄ¿Â¼¡¿{\n}"
bin\ctext {0A}{\n}
echo     10.ÖØĞÂÉè¶¨±¾Ò³Ãæ1-6È«²¿Ñ¡ÏîÈİÁ¿´óĞ¡
echo    100.ÖØĞÂÉè¶¨±¾Ò³Ãæ1-6µ¥¶ÀÑ¡ÏîÈİÁ¿´óĞ¡
echo      0.»Øµ½¹¤¾ßÊ×Ò³
bin\ctext {0F}{\n}
echo ÌáĞÑ£ºÒÔÉÏ¹¦ÄÜĞè´ÓÄÚºËÌáÈ¡initrd\file_contexts»òramdisk\file_contexts,Ê¶±ğsystemÎª¹¤×÷Ä¿Â¼£¡
echo.
set /p webj=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webj%"=="1" call :make_dat %system_size1%
if "%webj%"=="2" call :make_dat %system_size2%
if "%webj%"=="3" call :make_dat %system_size3%
if "%webj%"=="4" call :make_dat %system_size4%
if "%webj%"=="5" call :make_dat %system_size5%
if "%webj%"=="6" call :make_dat %system_size6%
if "%webj%"=="7" goto custom_system_dat
if "%webj%"=="8" goto looking_systemdat_size
if "%webj%"=="9" goto looking_system_size_to_make_new_dat
if "%webj%"=="11" call :make_dat2 %system_size1%
if "%webj%"=="22" call :make_dat2 %system_size2%
if "%webj%"=="33" call :make_dat2 %system_size3%
if "%webj%"=="44" call :make_dat2 %system_size4%
if "%webj%"=="55" call :make_dat2 %system_size5%
if "%webj%"=="66" call :make_dat2 %system_size6%
if "%webj%"=="77" goto custom_system_dat2
if "%webj%"=="99" goto looking_system_size_to_make_new_dat2
if "%webj%"=="10" goto custom_settings_size_dat
if "%webj%"=="100" goto custom_settings_size_dat2
if "%webj%"=="0" goto home
goto home_systemdat
:custom_settings_size_dat
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6 >nul 2>nul
del bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1
del bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2
del bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3
del bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4
del bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5
del bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6
goto home_systemdat
:custom_settings_size_dat2
echo.
echo.
echo.
bin\ctext "{0B}====================================={\n}"
bin\ctext "{0A}        1.Ñ¡Ïî1µÄÈİÁ¿´óĞ¡Éè¶¨{\n}"
bin\ctext "{0A}        2.Ñ¡Ïî2µÄÈİÁ¿´óĞ¡Éè¶¨{\n}"
echo.
bin\ctext "{0E}        3.Ñ¡Ïî3µÄÈİÁ¿´óĞ¡Éè¶¨{\n}"
bin\ctext "{0E}        4.Ñ¡Ïî4µÄÈİÁ¿´óĞ¡Éè¶¨{\n}"
echo.
bin\ctext "{0D}        5.Ñ¡Ïî5µÄÈİÁ¿´óĞ¡Éè¶¨{\n}"
bin\ctext "{0D}        6.Ñ¡Ïî6µÄÈİÁ¿´óĞ¡Éè¶¨{\n}"
bin\ctext "{0B}====================================={0F}{\n}"
echo.
set /p systemzize=-^-^> ÇëÊäÈëĞèÒªÖØĞÂÉè¶¨µÄÑ¡Ïî:
if "%systemzize%"=="1" goto custom_size_dat1
if "%systemzize%"=="2" goto custom_size_dat2
if "%systemzize%"=="3" goto custom_size_dat3
if "%systemzize%"=="4" goto custom_size_dat4
if "%systemzize%"=="5" goto custom_size_dat5
if "%systemzize%"=="6" goto custom_size_dat6
goto custom_settings_size_dat2
:custom_size_dat1
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1 >nul 2>nul
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1
goto custom_size1_dat
:custom_size_dat2
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2 >nul 2>nul
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2
goto custom_size2_dat
:custom_size_dat3
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3 >nul 2>nul
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3
goto custom_size3_dat
:custom_size_dat4
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4 >nul 2>nul
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4
goto custom_size4_dat
:custom_size_dat5
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5 >nul 2>nul
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5
goto custom_size5_dat
:custom_size_dat6
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6 >nul 2>nul
del bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6
goto custom_size6_dat
:custom_size1_dat
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿×Ö½Ú´óĞ¡£¨´¿°¢À­²®Êı×Ö£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsize1=
echo %system_imgsize1%>bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1
attrib +r +h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾1 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿G£¨´¿°¢À­²®Êı×Ö,ÀıÈç1.00   2.50   3.25£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsizeG1=
echo %system_imgsizeG1%>bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1
attrib +r +h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾1 >nul 2>nul
goto home_systemdat
:custom_size2_dat
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî2ÈİÁ¿×Ö½Ú´óĞ¡£¨´¿°¢À­²®Êı×Ö£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsize2=
echo %system_imgsize2%>bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2
attrib +r +h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾2 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿G£¨´¿°¢À­²®Êı×Ö,ÀıÈç1.00   2.50   3.25£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsizeG2=
echo %system_imgsizeG2%>bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2
attrib +r +h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾2 >nul 2>nul
goto home_systemdat
:custom_size3_dat
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî3ÈİÁ¿×Ö½Ú´óĞ¡£¨´¿°¢À­²®Êı×Ö£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsize3=
echo %system_imgsize3%>bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3
attrib +r +h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾3 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿G£¨´¿°¢À­²®Êı×Ö,ÀıÈç1.00   2.50   3.25£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsizeG3=
echo %system_imgsizeG3%>bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3
attrib +r +h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾3 >nul 2>nul
goto home_systemdat
:custom_size4_dat
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî4ÈİÁ¿×Ö½Ú´óĞ¡£¨´¿°¢À­²®Êı×Ö£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsize4=
echo %system_imgsize4%>bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4
attrib +r +h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾4 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿G£¨´¿°¢À­²®Êı×Ö,ÀıÈç1.00   2.50   3.25£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsizeG4=
echo %system_imgsizeG4%>bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4
attrib +r +h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾4 >nul 2>nul
goto home_systemdat
:custom_size5_dat
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî5ÈİÁ¿×Ö½Ú´óĞ¡£¨´¿°¢À­²®Êı×Ö£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsize5=
echo %system_imgsize5%>bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5
attrib +r +h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾5 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿G£¨´¿°¢À­²®Êı×Ö,ÀıÈç1.00   2.50   3.25£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsizeG5=
echo %system_imgsizeG5%>bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5
attrib +r +h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾5 >nul 2>nul
goto home_systemdat
:custom_size6_dat
attrib -r -h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî6ÈİÁ¿×Ö½Ú´óĞ¡£¨´¿°¢À­²®Êı×Ö£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsize6=
echo %system_imgsize6%>bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6
attrib +r +h bin\×Ô¶¨Òå×Ö½ÚÉè¶¨ÎğÉ¾6 >nul 2>nul
attrib -r -h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6 >nul 2>nul
bin\ctext "{0C}ÇëÊäÈëÑ¡Ïî1ÈİÁ¿G£¨´¿°¢À­²®Êı×Ö,ÀıÈç1.00   2.50   3.25£©½øĞĞ×ÔÎÒÉè¶¨:{\n}"
set /p system_imgsizeG6=
echo %system_imgsizeG6%>bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6
attrib +r +h bin\×Ô¶¨Òå´óĞ¡Éè¶¨ÎğÉ¾6 >nul 2>nul
goto home_systemdat
:make_dat
if exist "file_contexts" goto make_dat_start
if not exist "file_contexts" goto make_dat_bin
:make_dat_bin
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½system\build.prop£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñÍêÕû¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else
if exist "system\build.prop" (
FOR /f "tokens=1* delims==" %%a IN ('type "system\build.prop"') DO (
if /I "%%~a"=="ro.build.version.sdk" (
if not "%%~b"=="%api%" (
set api=%%~b
)
)
)
)
if %api% GEQ "26 27 28 29 30" (goto make_dat_oreo_api)
if %api% GEQ "21 22 23 24 25" (goto make_dat_Lollipop_api)
:make_dat_oreo_api
bin\file_contexts_oreo.exe -o file_contexts file_contexts.bin >nul 2>nul & goto make_dat_start
:make_dat_Lollipop_api
bin\file_contexts_tool.exe file_contexts.bin -o file_contexts -e >nul 2>nul & goto make_dat_start
:make_dat_start
if not exist "system" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½systemÎÄ¼ş¼Ğ£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystemÎÄ¼ş¼ĞµÄÍêÕûĞÔ¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
if not exist "file_contexts" (
echo.
echo.
bin\ctext "{0C}      È±ÉÙfile_contextsÉú³É×é¼ş,ÇëÔÚÄÚºËÌáÈ¡initrd\file_contexts²¢·ÅÖÃµ½±¾¹¤¾ßÄ¿Â¼ÏÂ{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)  else (
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.img  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
echo.¿ÉÍ¨¹ı±¾Ò³ÃæÑ¡Ïî10À´ÖØĞÂÉè¶¨±¾Ò³Ãæ1-6Ñ¡ÏîÈİÁ¿´óĞ¡
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %1 -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ´ò°ü±¨´íÈÕÖ¾³öÏÖ£¬Çë¼ì²éfile_contexts´úÂë³åÍ»  £¡{0F}{\n}" & echo. & pause & goto home_systemdat & else
)
echo.
if not exist "system.img" (
echo.
bin\ctext "{0C}      Ã»ÕÒµ½system.img£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.new.datºÍsystem.transfer.list  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
echo ÕıÔÚÂí²»Í£Ìã×ª»»ÖĞ... & bin\ext2simg system.img bin\cache\system_simg.img >nul 2>nul
if exist "bin\cache\system_simg.img" goto makesdat_img
if not exist "bin\cache\system_simg.img" goto makesdat_simg
)
:makesdat_img
start bin\simg2sdat.exe bin\cache\system_simg.img >nul 2>nul
goto home
:makesdat_simg
start bin\simg2sdat.exe system.img >nul 2>nul
goto home
:custom_system_dat
if exist "file_contexts" goto custom_system_dat_start
if not exist "file_contexts" goto custom_system_dat_bin
:custom_system_dat_bin
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½system\build.prop£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñÍêÕû¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else
if exist "system\build.prop" (
FOR /f "tokens=1* delims==" %%a IN ('type "system\build.prop"') DO (
if /I "%%~a"=="ro.build.version.sdk" (
if not "%%~b"=="%api%" (
set api=%%~b
)
)
)
)
if %api% GEQ "26 27 28 29 30" (goto custom_system_dat_oreo_api)
if %api% GEQ "21 22 23 24 25" (goto custom_system_dat_Lollipop_api)
:custom_system_dat_oreo_api
bin\file_contexts_oreo.exe -o file_contexts file_contexts.bin >nul 2>nul & goto custom_system_dat_start
:custom_system_dat_Lollipop_api
bin\file_contexts_tool.exe file_contexts.bin -o file_contexts -e >nul 2>nul & goto custom_system_dat_start
:custom_system_dat_start
if not exist "system" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½systemÎÄ¼ş¼Ğ£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystemÎÄ¼ş¼ĞµÄÍêÕûĞÔ¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
if not exist "file_contexts" (
echo.
echo.
bin\ctext "{0C}      È±ÉÙfile_contextsÉú³É×é¼ş,ÇëÔÚÄÚºËÌáÈ¡initrd\file_contexts²¢·ÅÖÃµ½±¾¹¤¾ßÄ¿Â¼ÏÂ{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
bin\ctext {0F}{\n}
if not exist bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾ goto custom_size_dat
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾) do (set dat_size=%%a)
bin\ctext "{0F}     ÉÏ´Î´ò°üµÄÈİÁ¿´óĞ¡×Ö½ÚÊÇ:{0C}%dat_size%{\n}"
echo.
bin\ctext "{0B} ================================================{\n}"
bin\ctext "{0E}  1.Ê¹ÓÃÉÏ´Î±£´æµÄÈİÁ¿´óĞ¡×Ö½Ú{0C}%dat_size%{0E}½øĞĞ´ò°ü{\n}"
bin\ctext "{0E}  2.ĞÂ½¨ÈİÁ¿´óĞ¡×Ö½Ú´ò°ü{\n}"
bin\ctext "{0B} ================================================{0F}{\n}"
echo.
set /p webm=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webm%"=="1" goto custom_dat_size_start
if "%webm%"=="2" goto custom_size_dat
goto custom_system_dat_start
:custom_dat_size_start
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.img  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %dat_size% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ´ò°ü±¨´íÈÕÖ¾³öÏÖ£¬Çë¼ì²éfile_contexts´úÂë³åÍ»  £¡{0F}{\n}" & echo. & pause & goto home_systemdat & else
)
goto makedat
:custom_size_dat
attrib -r -h bin\×Ô¶¨Òå´óĞ¡ÈÎÒâ·ÖÇø´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾ >nul 2>nul
bin\ctext "ÇëÊäÈë×Ô¼º»úĞÍ{0C}¹Ù·½system·ÖÇø{0F}ÈİÁ¿×Ö½Ú´óĞ¡:{\n}"
set /p dat_size=
echo %dat_size%>bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾
attrib +r +h bin\×Ô¶¨Òå´óĞ¡ÈÎÒâ·ÖÇø´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾ >nul 2>nul
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.img  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %dat_size% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ´ò°ü±¨´íÈÕÖ¾³öÏÖ£¬Çë¼ì²éfile_contexts´úÂë³åÍ»  £¡{0F}{\n}" & echo. & pause & goto home_systemdat & else
goto makedat
:looking_systemdat_size
if not exist "system.new.dat" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚ¹Ù·½system.new.datºÍsystem.transfer.list¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
if not exist "system.transfer.list" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚ¹Ù·½system.new.datºÍsystem.transfer.list¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
echo.ÕıÔÚ×ª»»¹Ù·½system.new.datºÍsystem.transfer.list
echo.ÉÔºóÇë²é¿´system.img.ext4´ËÎÄ¼şµÄÊôĞÔ¼´¿É²é¿´ÈİÁ¿×Ö½Ú´óĞ¡
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
del system.img.ext4 2>nul
bin\sdat2img.exe system.transfer.list system.new.dat system.img.ext4
echo.
@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a-d /b system.img.ext4') do (
bin\ctext "%%i:¹Ù·½system·ÖÇø×Ö½ÚÈİÁ¿´óĞ¡={0C}%%~zi{0F}×Ö½Ú.{\n}"
)
pause
del system.img.ext4 2>nul
goto home_systemdat
:looking_system_size_to_make_new_dat
if exist "file_contexts" goto looking_system_size_to_make_new_dat_start
if not exist "file_contexts" goto looking_system_size_to_make_new_dat_bin
:looking_system_size_to_make_new_dat_bin
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½system\build.prop£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñÍêÕû¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else
if exist "system\build.prop" (
FOR /f "tokens=1* delims==" %%a IN ('type "system\build.prop"') DO (
if /I "%%~a"=="ro.build.version.sdk" (
if not "%%~b"=="%api%" (
set api=%%~b
)
)
)
)
if %api% GEQ "26 27 28 29 30" (goto looking_system_size_to_make_new_dat_oreo_api)
if %api% GEQ "21 22 23 24 25" (goto looking_system_size_to_make_new_dat_Lollipop_api)
:looking_system_size_to_make_new_dat_oreo_api
bin\file_contexts_oreo.exe -o file_contexts file_contexts.bin >nul 2>nul & goto looking_system_size_to_make_new_dat_start
:looking_system_size_to_make_new_dat_Lollipop_api
bin\file_contexts_tool.exe file_contexts.bin -o file_contexts -e >nul 2>nul & goto looking_system_size_to_make_new_dat_start
:looking_system_size_to_make_new_dat_start
if not exist "system.new.dat" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚ¹Ù·½system.new.datºÍsystem.transfer.list¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
if not exist "system.transfer.list" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚ¹Ù·½system.new.datºÍsystem.transfer.list¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
if not exist "file_contexts" (
echo.
echo.
bin\ctext "{0C}      È±ÉÙfile_contextsÉú³É×é¼ş,ÇëÔÚÄÚºËÌáÈ¡initrd\file_contexts²¢·ÅÖÃµ½±¾¹¤¾ßÄ¿Â¼ÏÂ{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
if not exist "system" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½systemÎÄ¼ş¼Ğ£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystemÎÄ¼ş¼ĞÍêÕûĞÔ¡£{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
echo.ÕıÔÚ×ª»»¹Ù·½system.new.datºÍsystem.transfer.list
echo.ÉÔºóÇë²é¿´system.img.ext4´ËÎÄ¼şµÄÊôĞÔ¼´¿É²é¿´ÈİÁ¿×Ö½Ú´óĞ¡
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
del system.img.ext4 2>nul
bin\sdat2img.exe system.transfer.list system.new.dat system.img.ext4
echo.
@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a-d /b system.img.ext4') do (
bin\ctext "%%i:¹Ù·½system·ÖÇø×Ö½ÚÈİÁ¿´óĞ¡={0C}%%~zi{0F}×Ö½Ú.{\n}"
set ext4imgage2sizec=%%~zi
)
echo.
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.img  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
del system.img.ext4 2>nul
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %ext4imgage2sizec% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ´ò°ü±¨´íÈÕÖ¾³öÏÖ£¬Çë¼ì²éfile_contexts´úÂë³åÍ»  £¡{0F}{\n}" & echo. & pause & goto home_systemdat & else
)
goto makedat
:make_dat2
if exist "file_contexts" goto make_dat2_start
if not exist "file_contexts" goto make_dat2_bin
:make_dat2_bin
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½system\build.prop£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñÍêÕû¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else
if exist "system\build.prop" (
FOR /f "tokens=1* delims==" %%a IN ('type "system\build.prop"') DO (
if /I "%%~a"=="ro.build.version.sdk" (
if not "%%~b"=="%api%" (
set api=%%~b
)
)
)
)
if %api% GEQ "26 27 28 29 30" (goto make_dat2_oreo_api)
if %api% GEQ "21 22 23 24 25" (goto make_dat2_Lollipop_api)
:make_dat2_oreo_api
bin\file_contexts_oreo.exe -o file_contexts file_contexts.bin >nul 2>nul & goto make_dat2_start
:make_dat2_Lollipop_api
bin\file_contexts_tool.exe file_contexts.bin -o file_contexts -e >nul 2>nul & goto make_dat2_start
:make_dat2_start
if not exist "system" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½systemÎÄ¼ş¼Ğ£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystemÎÄ¼ş¼ĞµÄÍêÕûĞÔ¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
if not exist "file_contexts" (
echo.
echo.
bin\ctext "{0C}      È±ÉÙfile_contextsÉú³É×é¼ş,ÇëÔÚÄÚºËÌáÈ¡initrd\file_contexts²¢·ÅÖÃµ½±¾¹¤¾ßÄ¿Â¼ÏÂ{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)  else (
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.img  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %2 -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ´ò°ü±¨´íÈÕÖ¾³öÏÖ£¬Çë¼ì²éfile_contexts´úÂë³åÍ»  £¡{0F}{\n}" & echo. & pause & goto home_systemdat & else
)
goto makedat2
:makedat
if not exist "system.img" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½system.img£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
echo ÕıÔÚÂí²»Í£Ìã×ª»»ÖĞ... & bin\ext2simg system.img bin\cache\system_simg.img >nul 2>nul
if exist "bin\cache\system_simg.img" goto makesdat_img
if not exist "bin\cache\system_simg.img" goto makesdat_simg
)
goto home
:makedat2
if not exist "system.img" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½system.img£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo.
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.new.datºÍsystem.transfer.list  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
echo ÕıÔÚÂí²»Í£Ìã×ª»»ÖĞ... & bin\ext2simg system.img bin\cache\system_simg.img >nul 2>nul
bin\img2dat.exe bin\cache\system_simg.img >nul 2>nul
bin\img2dat.exe system.img
rd /s /q bin\cache >nul 2>nul
)
goto home
:custom_system_dat2
if exist "file_contexts" goto custom_system_dat2_start
if not exist "file_contexts" goto custom_system_dat2_bin
:custom_system_dat2_bin
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½system\build.prop£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñÍêÕû¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else
if exist "system\build.prop" (
FOR /f "tokens=1* delims==" %%a IN ('type "system\build.prop"') DO (
if /I "%%~a"=="ro.build.version.sdk" (
if not "%%~b"=="%api%" (
set api=%%~b
)
)
)
)
if %api% GEQ "26 27 28 29 30" (goto custom_system_dat2_oreo_api)
if %api% GEQ "21 22 23 24 25" (goto custom_system_dat2_Lollipop_api)
:custom_system_dat2_oreo_api
bin\file_contexts_oreo.exe -o file_contexts file_contexts.bin >nul 2>nul & goto custom_system_dat2_start
:custom_system_dat2_Lollipop_api
bin\file_contexts_tool.exe file_contexts.bin -o file_contexts -e >nul 2>nul & goto custom_system_dat2_start
:custom_system_dat2_start
if not exist "system" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½systemÎÄ¼ş¼Ğ£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystemÎÄ¼ş¼ĞµÄÍêÕûĞÔ¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
if not exist "file_contexts" (
echo.
echo.
bin\ctext "{0C}      È±ÉÙfile_contextsÉú³É×é¼ş,ÇëÔÚÄÚºËÌáÈ¡initrd\file_contexts²¢·ÅÖÃµ½±¾¹¤¾ßÄ¿Â¼ÏÂ{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
bin\ctext {0F}{\n}
if not exist bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾ goto custom_size_dat2
for /f %%a in (bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾) do (set dat2_size=%%a)
bin\ctext "{0F}     ÉÏ´Î´ò°üµÄÈİÁ¿´óĞ¡×Ö½ÚÊÇ:{0C}%dat2_size%{\n}"
echo.
bin\ctext "{0B} ================================================{\n}"
bin\ctext "{0E}  1.Ê¹ÓÃÉÏ´Î±£´æµÄÈİÁ¿´óĞ¡×Ö½Ú{0C}%dat2_size%{0E}½øĞĞ´ò°ü{\n}"
bin\ctext "{0E}  2.ĞÂ½¨ÈİÁ¿´óĞ¡×Ö½Ú´ò°ü{\n}"
bin\ctext "{0B} ================================================{0F}{\n}"
echo.
set /p webq=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webq%"=="1" goto custom_dat2_size_start
if "%webq%"=="2" goto custom_size_dat2
goto custom_system_dat2_start
:custom_dat2_size_start
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.img  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %dat2_size% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ´ò°ü±¨´íÈÕÖ¾³öÏÖ£¬Çë¼ì²éfile_contexts´úÂë³åÍ»  £¡{0F}{\n}" & echo. & pause & goto home_systemdat & else
)
goto makedat2
:custom_size_dat2
attrib -r -h bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾ >nul 2>nul
bin\ctext "ÇëÊäÈë×Ô¼º»úĞÍ{0C}¹Ù·½system·ÖÇø{0F}ÈİÁ¿×Ö½Ú´óĞ¡:{\n}"
set /p dat2_size=
echo %dat2_size%>bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾
attrib +r +h bin\×Ô¶¨Òå´óĞ¡´ò°üAIÈË¹¤ÖÇÄÜ¼ÇÒäÌåÎğÉ¾ >nul 2>nul
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.img  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %dat2_size% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ´ò°ü±¨´íÈÕÖ¾³öÏÖ£¬Çë¼ì²éfile_contexts´úÂë³åÍ»  £¡{0F}{\n}" & echo. & pause & goto home_systemdat & else
goto makedat2
:looking_system_size_to_make_new_dat2
if exist "file_contexts" goto looking_system_size_to_make_new_dat2_start
if not exist "file_contexts" goto looking_system_size_to_make_new_dat2_bin
:looking_system_size_to_make_new_dat2_bin
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½system\build.prop£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñÍêÕû¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else
if exist "system\build.prop" (
FOR /f "tokens=1* delims==" %%a IN ('type "system\build.prop"') DO (
if /I "%%~a"=="ro.build.version.sdk" (
if not "%%~b"=="%api%" (
set api=%%~b
)
)
)
)
if %api% GEQ "26 27 28 29 30" (goto looking_system_size_to_make_new_dat2_oreo_api)
if %api% GEQ "21 22 23 24 25" (goto looking_system_size_to_make_new_dat2_Lollipop_api)
:looking_system_size_to_make_new_dat2_oreo_api
bin\file_contexts_oreo.exe -o file_contexts file_contexts.bin >nul 2>nul & goto looking_system_size_to_make_new_dat2_start
:looking_system_size_to_make_new_dat2_Lollipop_api
bin\file_contexts_tool.exe file_contexts.bin -o file_contexts -e >nul 2>nul & goto looking_system_size_to_make_new_dat2_start
:looking_system_size_to_make_new_dat2_start
if not exist "system.new.dat" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚ¹Ù·½system.new.datºÍsystem.transfer.list¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
if not exist "system.transfer.list" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚ¹Ù·½system.new.datºÍsystem.transfer.list¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
if not exist "file_contexts" (
echo.
echo.
bin\ctext "{0C}      È±ÉÙfile_contextsÉú³É×é¼ş,ÇëÔÚÄÚºËÌáÈ¡initrd\file_contexts²¢·ÅÖÃµ½±¾¹¤¾ßÄ¿Â¼ÏÂ{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
if not exist "system" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½systemÎÄ¼ş¼Ğ£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystemÎÄ¼ş¼ĞÍêÕûĞÔ¡£{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
echo.ÕıÔÚ×ª»»¹Ù·½system.new.datºÍsystem.transfer.list
echo.ÉÔºóÇë²é¿´system.img.ext4´ËÎÄ¼şµÄÊôĞÔ¼´¿É²é¿´ÈİÁ¿×Ö½Ú´óĞ¡
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
echo.
del system.img.ext4 2>nul
bin\sdat2img.exe system.transfer.list system.new.dat system.img.ext4
echo.
@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a-d /b system.img.ext4') do (
bin\ctext "%%i:¹Ù·½system·ÖÇø×Ö½ÚÈİÁ¿´óĞ¡={0C}%%~zi{0F}×Ö½Ú.{\n}"
set ext4imgage2sizee=%%~zi
)
echo.
echo.
echo ÇëÄÍĞÄµÈ´ı£¬ÕıÔÚ´ò°üÉú³Ésystem.img  ...
echo.
echo ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...
del system.img.ext4 2>nul
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %ext4imgage2sizee% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ´ò°ü±¨´íÈÕÖ¾³öÏÖ£¬Çë¼ì²éfile_contexts´úÂë³åÍ»  £¡{0F}{\n}" & echo. & pause & goto home_systemdat & else
)
goto makedat2
:Clear_home
cls
bin\ctext "{0A} =================================================================={\n}"
echo                         ÇëÑ¡ÔñÆäÖĞÒ»ÖÖÇåÀí·½Ê½
echo  ==================================================================
echo.
echo   1.ÇåÀíÁÙÊ±ÄÚºË\recÒÅÁôÎÄ¼ş
bin\ctext {0D}{\n}
echo   2.ÇåÀíËùÓĞµÄÎÄ¼şºÍÎÄ¼ş¼Ğ(É÷ÓÃ£¡Ö»¶ÁÊôĞÔ½«²»±»Çå³ı)
bin\ctext {0A}{\n}
echo   0.»Øµ½¹¤¾ßÊ×Ò³
bin\ctext {0F}{\n}
echo.
set /p webs=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webs%"=="1" goto Clear_boot_recovery
if "%webs%"=="2" goto Clear_all
if "%webs%"=="0" goto home
goto Clear_home
:Clear_boot_recovery
del bootinfo.txt 2>nul
del cpiolist.txt 2>nul
del dt_image 2>nul
del kernel 2>nul
del kernel.gz 2>nul
del boot.img.tmp 2>nul
del ramdisk 2>nul
del ramdisk.gz 2>nul
del file_contexts 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
rd /s /q initrd 2>nul
rd /s /q ¹Ù·½ÄÚºË 2>nul
rd /s /q ÒªÒÆÖ²ÄÚºË 2>nul
rd /s /q ³É¹¦ÒÆÖ²µÄÄÚºË 2>nul
rd /s /q ¹Ù·½recovery 2>nul
rd /s /q ÒªÒÆÖ²recovery 2>nul
rd /s /q ³É¹¦ÒÆÖ²recovery 2>nul
rd /s /q ramdisk 2>nul
rd /s /q split_img 2>nul
goto home
:Clear_all
forfiles /p %~dp0 /s /m * /d -0 /c "cmd /c del @path /q /s" 2>nul
for /d %%i in (*) do (
rd /s /q "%%i"
del /a /q *
) 2>nul
for /f "tokens=*" %%a in ('dir /b /ad /s^|sort /r') do rd "%%a" 2>nul
goto home
:file_contexts.bin_and_file_contexts_home
cls
bin\ctext "{0A} ============================={\n}"
echo     ÇëÑ¡ÔñÄãĞèÒªµÄ¹¦ÄÜÑ¡Ïî£º
echo  =============================
bin\ctext {0E}{\n}
echo   1.file_contexts.bin×ª»»Îªfile_contexts
bin\ctext {0B}{\n}
echo   2.file_contexts×ª»»Îªfile_contexts.bin
bin\ctext {0C}{\n}
echo   0.·µ»Ø¹¤¾ßÊ×Ò³
bin\ctext {0F}{\n}
set /p webt=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webt%"=="1" goto file_contexts.bin_to_file_contexts
if "%webt%"=="2" goto file_contexts_to_file_contexts.bin
if "%webt%"=="0" goto home
goto file_contexts.bin_and_file_contexts_home
:file_contexts.bin_to_file_contexts
del file_contexts >nul 2>nul
echo.
if not exist "file_contexts.bin" (
echo.
echo.
bin\ctext "{0C}    Ã»ÕÒµ½file_contexts.binÎÄ¼ş£¬Çë°Ñfile_contexts.bin·Åµ½±¾¹¤¾ßÄ¿Â¼ÏÂ!{0F}{\n}"
echo.
echo.
pause
goto home
)
) else (
echo.
echo.
bin\ctext "{0B} ======================={\n}"
bin\ctext "{0E}  1.°²×¿7.0 - °²×¿7.1.2{\n}"
bin\ctext "{0E}  2.°²×¿8.0{\n}"
bin\ctext "{0B} ======================={0F}{\n}"
echo.
set /p webu=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webu%"=="1" goto file_contexts.bin_txt
if "%webu%"=="2" goto file_contexts.bin_oreo
goto file_contexts.bin_to_file_contexts
:file_contexts.bin_txt
bin\file_contexts_tool.exe file_contexts.bin -o file_contexts -e >nul 2>nul
goto home
:file_contexts.bin_oreo
bin\file_contexts_oreo.exe -o file_contexts file_contexts.bin >nul 2>nul
goto home
:file_contexts_to_file_contexts.bin
del file_contexts.bin >nul 2>nul
echo.
if not exist "file_contexts" (
echo.
echo.
bin\ctext "{0C}    Ã»ÕÒµ½file_contextsÎÄ¼ş£¬Çë°Ñfile_contexts·Åµ½±¾¹¤¾ßÄ¿Â¼ÏÂ!{0F}{\n}"
echo.
echo.
pause
goto home
)
) else (
bin\file_contexts_tool.exe file_contexts -o file_contexts.bin >nul 2>nul
)
goto home
:unpack_bootimg_new
echo.
if not exist "boot.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚboot.img¡£{0F}{\n}"
echo.
echo.
pause
goto home
)
) else (
echo.
bin\ctext {0E} ÕıÔÚ½â°üÄÚºË boot.img   ...{0F}{\n}
echo.
rd /s /q bin\split_img >nul 2>nul
rd /s /q bin\ramdisk >nul 2>nul
del bin\boot.img >nul 2>nul
copy boot.img bin\boot.img >nul 2>nul
del boot---old.img >nul 2>nul
ren boot.img boot---old.img >nul 2>nul
start bin\ÄÚºËrec·Ö½â.bat boot.img >nul 2>nul
)
goto home
:unpack_recovery_new
echo.
if not exist "recovery.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚrecovery.img¡£{0F}{\n}"
echo.
echo.
pause
goto home
)
) else (
echo.
bin\ctext {0E} ÕıÔÚ½â°ü recovery.img   ...{0F}{\n}
echo.
rd /s /q bin\split_img >nul 2>nul
rd /s /q bin\ramdisk >nul 2>nul
del bin\recovery.img >nul 2>nul
copy recovery.img bin\recovery.img >nul 2>nul
del recovery---old.img >nul 2>nul
ren recovery.img recovery---old.img >nul 2>nul
start bin\ÄÚºËrec·Ö½â.bat recovery.img >nul 2>nul
)
goto home
:make_bootimg_new
echo.
echo.
echo.
bin\ctext {0E}{\n}
echo  **********************************************************************
echo. 
echo.                   Çë¸ù¾İboot.imgµÄ°²×¿°æ±¾½øĞĞ´ò°ü£¡
echo. 
echo. **********************************************************************
bin\ctext {0B}{\n}
echo   1.°²×¿5.0 - °²×¿6.0.1´ò°üboot.img
bin\ctext {0D}{\n}
echo   2.°²×¿7.0 - °²×¿7.1.2´ò°üboot.img
bin\ctext {0F}{\n}
echo.
set /p webv=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webv%"=="1" goto Lollipop_Marshmallow_boot
if "%webv%"=="2" goto Nougat_boot
goto make_bootimg_new
:Lollipop_Marshmallow_boot
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
del boot-new.img >nul 2>nul
del boot.img.tmp >nul 2>nul
del boot_old.img >nul 2>nul
rd /s /q bin\split_img >nul 2>nul
rd /s /q bin\ramdisk >nul 2>nul
del bin\boot.img >nul 2>nul
del ramdisk\file_contexts.bin >nul 2>nul
move ramdisk bin\ramdisk >nul 2>nul
move split_img bin\split_img >nul 2>nul
start bin\´ò°üÄÚºË.bat >nul 2>nul
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
goto home
:Nougat_boot
bin\file_contexts_tool.exe ramdisk\file_contexts -o ramdisk\file_contexts.bin >nul 2>nul
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
del boot-new.img >nul 2>nul
del boot.img.tmp >nul 2>nul
del boot_old.img >nul 2>nul
rd /s /q bin\split_img >nul 2>nul
rd /s /q bin\ramdisk >nul 2>nul
del ramdisk\file_contexts >nul 2>nul
del bin\boot.img >nul 2>nul
move split_img bin\split_img >nul 2>nul
move ramdisk bin\ramdisk >nul 2>nul
start bin\´ò°üÄÚºË.bat >nul 2>nul
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
goto home
:make_recovery_new
echo.
echo.
echo.
bin\ctext {0E}{\n}
echo  **********************************************************************
echo. 
echo.                Çë¸ù¾İrecovery.imgµÄ°²×¿°æ±¾½øĞĞ´ò°ü£¡
echo. 
echo. **********************************************************************
bin\ctext {0B}{\n}
echo   1.°²×¿5.0 - °²×¿6.0.1´ò°ürecovery.img
bin\ctext {0D}{\n}
echo   2.°²×¿7.0 - °²×¿7.1.2´ò°ürecovery.img
bin\ctext {0F}{\n}
echo.
set /p webw=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webw%"=="1" goto Lollipop_Marshmallow_recovery
if "%webw%"=="2" goto Nougat_recovery
goto make_recovery_new
:Lollipop_Marshmallow_recovery
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
del boot-new.img >nul 2>nul
del boot.img.tmp >nul 2>nul
del boot_old.img >nul 2>nul
rd /s /q bin\split_img >nul 2>nul
rd /s /q bin\ramdisk >nul 2>nul
del bin\recovery.img >nul 2>nul
del ramdisk\file_contexts.bin >nul 2>nul
move split_img bin\split_img >nul 2>nul
move ramdisk bin\ramdisk >nul 2>nul
start bin\´ò°ürecovery.bat >nul 2>nul
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
goto home
:Nougat_recovery
bin\file_contexts_tool.exe ramdisk\file_contexts -o ramdisk\file_contexts.bin >nul 2>nul
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
del boot-new.img >nul 2>nul
del boot.img.tmp >nul 2>nul
del boot_old.img >nul 2>nul
rd /s /q bin\split_img >nul 2>nul
rd /s /q bin\ramdisk >nul 2>nul
del bin\recovery.img >nul 2>nul
del ramdisk\file_contexts >nul 2>nul
move split_img bin\split_img >nul 2>nul
move ramdisk bin\ramdisk >nul 2>nul
start bin\´ò°ürecovery.bat >nul 2>nul
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
goto home
:unpack_bootimg
echo.
if not exist "boot.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚboot.img¡£{0F}{\n}"
echo.
echo.
pause
goto home
)
) else (
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
bin\bootimg.exe --unpack-bootimg
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
bin\file_contexts_tool.exe initrd\file_contexts.bin -o initrd\file_contexts -e >nul 2>nul
)
goto home
:make_bootimg
bin\file_contexts_tool.exe initrd\file_contexts -o initrd\file_contexts.bin >nul 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
bin\bootimg.exe --repack-bootimg
ren boot-new.img boot.img >nul 2>nul
ren boot-old.img boot_old.img >nul 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
goto home
:unpack_recovery
echo.
if not exist "recovery.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚrecovery.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
ren boot.img bot.img >nul 2>nul
ren recovery.img boot.img 2>nul
bin\bootimg.exe --unpack-bootimg
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
bin\file_contexts_tool.exe initrd\file_contexts.bin -o initrd\file_contexts -e >nul 2>nul
)
goto home
:make_recovery
bin\file_contexts_tool.exe initrd\file_contexts -o initrd\file_contexts.bin >nul 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del recovery-new.img 2>nul
del recovery-old.img 2>nul
ren boot-old.img recovery-old.img>nul 2>nul
del boot.img >nul 2>nul
bin\bootimg.exe --repack-bootimg
del boot-old.img >nul 2>nul
del boot.img >nul 2>nul
ren recovery.img recovery-old.img 2>nul
ren boot-new.img recovery-new.img >nul 2>nul
ren bot.img boot.img >nul 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
goto home
:make_ramdisk_home
cls
bin\ctext "{0A} ============================={\n}"
echo     ÇëÑ¡ÔñÄãĞèÒªµÄ¹¦ÄÜÑ¡Ïî£º
echo  =============================
bin\ctext {0E}{\n}
echo   1.·Ö½âramdisk»òramdisk.gz
bin\ctext {0B}{\n}
echo   2.´ò°üÎªramdisk
bin\ctext {0A}{\n}
echo   3.´ò°üÎªramdisk.gz
bin\ctext {0C}{\n}
echo   0.·µ»Ø¹¤¾ßÊ×Ò³
bin\ctext {0F}{\n}
set /p webx=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webx%"=="1" goto unpack_ramdisk
if "%webx%"=="2" goto make_ramdisk
if "%webx%"=="3" goto make_ramdisk.gz
if "%webx%"=="0" goto home
goto make_ramdisk_home
:unpack_ramdisk
echo.
echo.
bin\ctext "{0C} Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚramdisk»òramdisk.gz{0F}{\n}"
echo.
bin\ctext "{0B} ÔÚº½Ä¸Ä¿Â¼ÏÂÍ¬Ê±´æÔÚramdisk»òramdisk.gz£¬ramdisk²»×ö·Ö½â£¬Ä¬ÈÏÖ»·Ö½âramdisk.gz{0F}{\n}"
echo.
pause
echo Please wait, unpacks "ramdisk"...
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
bin\bootimg.exe --unpack-ramdisk
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
goto home
:make_ramdisk
echo.
if not exist "initrd" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚinitrdÎÄ¼ş¼Ğ¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo ÇëÉÔµÈÕıÔÚ´ÓinitrdÎÄ¼ş¼Ğ´ò°üÎªramdisk...
del ramdisk 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
bin\bootimg.exe --repack-ramdisk
ren ramdisk.cpio ramdisk
ren ramdisk.cpio.gz ramdisk
del ramdisk.cpio.gz.tmp 2>nul
)
goto home
:make_ramdisk.gz
echo.
if not exist "initrd" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚinitrdÎÄ¼ş¼Ğ¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo ÇëÉÔµÈÕıÔÚ´ÓinitrdÎÄ¼ş¼Ğ´ò°üÎªramdisk.gz...
del ramdisk 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
bin\bootimg.exe --repack-ramdisk
ren ramdisk.cpio ramdisk
ren ramdisk.cpio.gz ramdisk
bin\7z a ramdisk.gz ramdisk 2>nul
del ramdisk 2>nul
del ramdisk.cpio.gz.tmp 2>nul
)
goto home
:home_auto_custom_recovery_kernel_porting
cls
bin\ctext "{0A} =================================================================={\n}"
echo  boot.img/recovery.img×Ô¶¨ÒåÒÆÖ²Èç¹ûÒ»Ö±°´ÏÂEnter½«Ä¬ÈÏÎª×Ô¶¯ÒÆÖ² 
echo ==================================================================
echo.
echo   1.×Ô¶¯ÒÆÖ²boot.img
bin\ctext {0D}{\n}
echo   2.×Ô¶¯ÒÆÖ²recovery.img
bin\ctext {0B}{\n}
echo   3.×Ô¶¨ÒåÒÆÖ²boot.img
bin\ctext {0C}{\n}
echo   4.×Ô¶¨ÒåÒÆÖ²recovery.img
bin\ctext {0A}{\n}
echo   0.»Øµ½¹¤¾ßÊ×Ò³
bin\ctext {0F}{\n}
echo.
set /p weby=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%weby%"=="1" goto auto_kernel_porting
if "%weby%"=="2" goto auto_recovery_porting
if "%weby%"=="3" goto custom_kernel_porting
if "%weby%"=="4" goto custom_recovery_porting
if "%weby%"=="0" goto home
goto home_auto_custom_recovery_kernel_porting
:auto_kernel_porting
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
md ¹Ù·½ÄÚºË >nul 2>nul
md ÒªÒÆÖ²ÄÚºË >nul 2>nul
echo.
bin\ctext "{0D} ========================================{\n}"
echo  ½«¹Ù·½ROMÖĞboot.img·Åµ½"¹Ù·½ÄÚºË"ÎÄ¼ş¼Ğ
echo  ½«ÒªÒÆÖ²ROMÖĞboot.img·Åµ½"ÒªÒÆÖ²ÄÚºË"ÎÄ¼ş¼Ğ
bin\ctext "{0D} ========================================{0F}{\n}"
pause
echo.
if not exist "¹Ù·½ÄÚºË\boot.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²é´ËÂ·¾¶ÏÂÊÇ·ñ´æÔÚ ¹Ù·½ÄÚºË\boot.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
echo.
if not exist "ÒªÒÆÖ²ÄÚºË\boot.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²é´ËÂ·¾¶ÏÂÊÇ·ñ´æÔÚ ÒªÒÆÖ²ÄÚºË\boot.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
copy ¹Ù·½ÄÚºË\boot.img >nul 2>nul
bin\bootimg.exe --unpack-bootimg
ren kernel kernel_backups >nul 2>nul
ren kernel.gz kernel_backups >nul 2>nul
del ramdisk >nul 2>nul
del ramdisk.gz >nul 2>nul
del boot.img >nul 2>nul
rd /s /q initrd >nul 2>nul
del bootinfo.txt >nul 2>nul
del cpiolist.txt >nul 2>nul
del boot-old.img >nul 2>nul
copy ÒªÒÆÖ²ÄÚºË\boot.img >nul 2>nul
echo.
bin\bootimg.exe --unpack-bootimg
del kernel >nul 2>nul
del kernel.gz >nul 2>nul
ren kernel_backups kernel >nul 2>nul
ren kernel_backups kernel.gz >nul 2>nul
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
del boot-new.img >nul 2>nul
del boot.img.tmp >nul 2>nul
del boot_old.img >nul 2>nul
bin\file_contexts_tool.exe initrd\file_contexts.bin -o initrd\file_contexts -e >nul 2>nul
echo.
bin\bootimg.exe --repack-bootimg
md ³É¹¦ÒÆÖ²µÄÄÚºË >nul 2>nul
ren boot-new.img boot.img
del ³É¹¦ÒÆÖ²µÄÄÚºË\boot.img >nul 2>nul
move boot.img ³É¹¦ÒÆÖ²µÄÄÚºË >nul 2>nul
del boot-old.img >nul 2>nul
bin\ctext "{0B} ============================================================{\n}"
echo  ³É¹¦Ò»¼üÒÆÖ²boot.imgÄÚºË£¡Çëµ½"³É¹¦ÒÆÖ²µÄÄÚºË"ÎÄ¼ş¼ĞÖĞÌáÈ¡
bin\ctext "{0B} ============================================================{0F}{\n}"
start ³É¹¦ÒÆÖ²µÄÄÚºË\
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
)
pause
goto home
:auto_recovery_porting
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
del recovery-new.img 2>nul
md ¹Ù·½recovery >nul 2>nul
md ÒªÒÆÖ²recovery >nul 2>nul
echo.
bin\ctext "{0D} ==================================================={\n}"
echo  ½«¹Ù·½ROMÖĞµÄrecovery.img·Åµ½"¹Ù·½recovery"ÎÄ¼ş¼Ğ
echo  ½«ÒªÒÆÖ²µÄrecovery.img·Åµ½"ÒªÒÆÖ²recovery"ÎÄ¼ş¼Ğ
bin\ctext "{0D} ==================================================={0F}{\n}"
pause
echo.
if not exist "ÒªÒÆÖ²recovery\recovery.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²é´ËÂ·¾¶ÏÂÊÇ·ñ´æÔÚ ÒªÒÆÖ²recovery\recovery.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
echo.
if not exist "¹Ù·½recovery\recovery.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²é´ËÂ·¾¶ÏÂÊÇ·ñ´æÔÚ ¹Ù·½recovery\recovery.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
copy ¹Ù·½recovery\recovery.img >nul 2>nul
ren recovery.img boot.img >nul 2>nul
bin\bootimg.exe --unpack-bootimg
ren kernel kernel_backups >nul 2>nul
ren kernel.gz kernel_backups >nul 2>nul
del ramdisk >nul 2>nul
del ramdisk.gz >nul 2>nul
del boot.img >nul 2>nul
rd /s /q initrd >nul 2>nul
del bootinfo.txt >nul 2>nul
del cpiolist.txt >nul 2>nul
del boot-old.img >nul 2>nul
copy ÒªÒÆÖ²recovery\recovery.img >nul 2>nul
ren recovery.img boot.img
echo.
bin\bootimg.exe --unpack-bootimg
del kernel >nul 2>nul
del kernel.gz >nul 2>nul
ren kernel_backups kernel >nul 2>nul
ren kernel_backups kernel.gz >nul 2>nul
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
del boot-new.img >nul 2>nul
del boot.img.tmp >nul 2>nul
del boot_old.img >nul 2>nul
del recovery-new.img 2>nul
echo.
bin\bootimg.exe --repack-bootimg
md ³É¹¦ÒÆÖ²recovery >nul 2>nul
ren boot-new.img recovery.img
del ³É¹¦ÒÆÖ²recovery\recovery.img >nul 2>nul
move recovery.img ³É¹¦ÒÆÖ²recovery >nul 2>nul
del boot-old.img >nul 2>nul
bin\ctext "{0B} =========================================================={\n}"
echo  ³É¹¦Ò»¼üÒÆÖ²recovery£¡Çëµ½"³É¹¦ÒÆÖ²recovery"ÎÄ¼ş¼ĞÖĞÌáÈ¡
bin\ctext "{0B} =========================================================={0F}{\n}"
start ³É¹¦ÒÆÖ²recovery\
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
)
pause
goto home
:custom_kernel_porting
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
md ¹Ù·½ÄÚºË >nul 2>nul
md ÒªÒÆÖ²ÄÚºË >nul 2>nul
echo.
bin\ctext "{0D} ========================================{\n}"
echo  ½«¹Ù·½ROMÖĞboot.img·Åµ½"¹Ù·½ÄÚºË"ÎÄ¼ş¼Ğ
echo  ½«ÒªÒÆÖ²ROMÖĞboot.img·Åµ½"ÒªÒÆÖ²ÄÚºË"ÎÄ¼ş¼Ğ
bin\ctext "{0D} ========================================{0F}{\n}"
pause
echo.
if not exist "ÒªÒÆÖ²ÄÚºË\boot.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²é´ËÂ·¾¶ÏÂÊÇ·ñ´æÔÚ ÒªÒÆÖ²ÄÚºË\boot.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
echo.
if not exist "¹Ù·½ÄÚºË\boot.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²é´ËÂ·¾¶ÏÂÊÇ·ñ´æÔÚ ¹Ù·½ÄÚºË\boot.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
copy ¹Ù·½ÄÚºË\boot.img boot.img >nul 2>nul
bin\bootimg.exe --unpack-bootimg
ping -n 1 127.1 >nul 2>nul
if exist "file_contexts.bin" goto custom_kernel_porting_file_contexts.bin
if exist "file_contexts" goto custom_kernel_porting_file_contexts
:custom_kernel_porting_file_contexts.bin
bin\file_contexts_tool.exe initrd\file_contexts.bin -o initrd\file_contexts -e >nul 2>nul
del ¹Ù·½ÄÚºË\kernel.gz >nul 2>nul
del ¹Ù·½ÄÚºË\kernel >nul 2>nul
del ¹Ù·½ÄÚºË\ramdisk.gz >nul 2>nul
del ¹Ù·½ÄÚºË\ramdisk >nul 2>nul
del ¹Ù·½ÄÚºË\cpiolist.txt >nul 2>nul
del ¹Ù·½ÄÚºË\bootinfo.txt >nul 2>nul
rd /s /q ¹Ù·½ÄÚºË\initrd >nul 2>nul
move kernel.gz ¹Ù·½ÄÚºË\ >nul 2>nul
move kernel ¹Ù·½ÄÚºË\ >nul 2>nul
move ramdisk.gz ¹Ù·½ÄÚºË\ >nul 2>nul
move ramdisk ¹Ù·½ÄÚºË\ >nul 2>nul
move cpiolist.txt ¹Ù·½ÄÚºË\ >nul 2>nul
move bootinfo.txt ¹Ù·½ÄÚºË\ >nul 2>nul
move initrd ¹Ù·½ÄÚºË\ >nul 2>nul
move dt.img ¹Ù·½ÄÚºË\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
copy ÒªÒÆÖ²ÄÚºË\boot.img boot.img >nul 2>nul
echo.
bin\bootimg.exe --unpack-bootimg
ping -n 1 127.1 >nul 2>nul
bin\file_contexts_tool.exe initrd\file_contexts.bin -o initrd\file_contexts -e >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\kernel.gz >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\kernel >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\ramdisk.gz >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\ramdisk >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\cpiolist.txt >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\bootinfo.txt >nul 2>nul
rd /s /q ÒªÒÆÖ²ÄÚºË\initrd >nul 2>nul
move kernel.gz ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move kernel ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move ramdisk.gz ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move ramdisk ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move cpiolist.txt ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move bootinfo.txt ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move initrd ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move dt.img ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
start bin\Beyond_Compare\BCompare.exe
bin\ctext "{0E} ============================================================{\n}"
echo  ÕıÔÚ´ò¿ªÎÄ¼ş¶Ô±ÈÆ÷½øĞĞÒÆÖ²²Ù×÷´¦Àí... 
echo.
echo  ´¦ÀíºÃÄÚºË½â¿ªµÄËùÓĞÎÄ¼şºó£¬°´ÏÂÈÎÒâ¼ü¿ªÊ¼´ò°üÄÚºËboot.img
bin\ctext "{0E} ============================================================{0F}{\n}"
pause
del ÒªÒÆÖ²ÄÚºË\initrd\file_contexts.bin >nul 2>nul
bin\file_contexts_tool.exe ÒªÒÆÖ²ÄÚºË\initrd\file_contexts -o ÒªÒÆÖ²ÄÚºË\initrd\file_contexts.bin >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\initrd\file_contexts >nul 2>nul
del ¹Ù·½ÄÚºË\initrd\file_contexts.bin >nul 2>nul
bin\file_contexts_tool.exe ¹Ù·½ÄÚºË\initrd\file_contexts -o ¹Ù·½ÄÚºË\initrd\file_contexts.bin >nul 2>nul
del ¹Ù·½ÄÚºË\initrd\file_contexts >nul 2>nul
move ¹Ù·½ÄÚºË\kernel.gz kernel.gz >nul 2>nul
move ¹Ù·½ÄÚºË\kernel kernel >nul 2>nul
move ÒªÒÆÖ²ÄÚºË\ramdisk.gz ramdisk.gz >nul 2>nul
move ÒªÒÆÖ²ÄÚºË\ramdisk ramdisk >nul 2>nul
move ÒªÒÆÖ²ÄÚºË\cpiolist.txt cpiolist.txt >nul 2>nul
move ÒªÒÆÖ²ÄÚºË\bootinfo.txt bootinfo.txt >nul 2>nul
xcopy /e ÒªÒÆÖ²ÄÚºË\initrd\* initrd\* >nul 2>nul
move ÒªÒÆÖ²ÄÚºË\dt.img dt.img >nul 2>nul
ping -n 1 127.1 >nul 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
echo.
bin\bootimg.exe --repack-bootimg
ren boot-new.img boot.img
del ³É¹¦ÒÆÖ²µÄÄÚºË\boot.img >nul 2>nul
md ³É¹¦ÒÆÖ²µÄÄÚºË >nul 2>nul
move boot.img ³É¹¦ÒÆÖ²µÄÄÚºË\ >nul 2>nul
del ¹Ù·½ÄÚºË\ramdisk.gz >nul 2>nul
del ¹Ù·½ÄÚºË\ramdisk >nul 2>nul
del ¹Ù·½ÄÚºË\cpiolist.txt >nul 2>nul
del ¹Ù·½ÄÚºË\bootinfo.txt >nul 2>nul
rd /s /q ¹Ù·½ÄÚºË\initrd >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\kernel.gz >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\kernel >nul 2>nul
rd /s /q ÒªÒÆÖ²ÄÚºË\initrd >nul 2>nul
bin\ctext "{0B} ============================================================{\n}"
echo  ³É¹¦Ò»¼üÒÆÖ²boot.imgÄÚºË£¡Çëµ½"³É¹¦ÒÆÖ²µÄÄÚºË"ÎÄ¼ş¼ĞÖĞÌáÈ¡
bin\ctext "{0B} ============================================================{0F}{\n}"
start ³É¹¦ÒÆÖ²µÄÄÚºË\
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
)
pause
goto home
:custom_kernel_porting_file_contexts
del ¹Ù·½ÄÚºË\kernel.gz >nul 2>nul
del ¹Ù·½ÄÚºË\kernel >nul 2>nul
del ¹Ù·½ÄÚºË\ramdisk.gz >nul 2>nul
del ¹Ù·½ÄÚºË\ramdisk >nul 2>nul
del ¹Ù·½ÄÚºË\cpiolist.txt >nul 2>nul
del ¹Ù·½ÄÚºË\bootinfo.txt >nul 2>nul
rd /s /q ¹Ù·½ÄÚºË\initrd >nul 2>nul
move kernel.gz ¹Ù·½ÄÚºË\ >nul 2>nul
move kernel ¹Ù·½ÄÚºË\ >nul 2>nul
move ramdisk.gz ¹Ù·½ÄÚºË\ >nul 2>nul
move ramdisk ¹Ù·½ÄÚºË\ >nul 2>nul
move cpiolist.txt ¹Ù·½ÄÚºË\ >nul 2>nul
move bootinfo.txt ¹Ù·½ÄÚºË\ >nul 2>nul
move initrd ¹Ù·½ÄÚºË\ >nul 2>nul
move dt.img ¹Ù·½ÄÚºË\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
copy ÒªÒÆÖ²ÄÚºË\boot.img boot.img >nul 2>nul
echo.
bin\bootimg.exe --unpack-bootimg
ping -n 1 127.1 >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\kernel.gz >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\kernel >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\ramdisk.gz >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\ramdisk >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\cpiolist.txt >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\bootinfo.txt >nul 2>nul
rd /s /q ÒªÒÆÖ²ÄÚºË\initrd >nul 2>nul
move kernel.gz ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move kernel ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move ramdisk.gz ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move ramdisk ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move cpiolist.txt ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move bootinfo.txt ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move initrd ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
move dt.img ÒªÒÆÖ²ÄÚºË\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
start bin\Beyond_Compare\BCompare.exe
bin\ctext "{0E} ============================================================{\n}"
echo  ÕıÔÚ´ò¿ªÎÄ¼ş¶Ô±ÈÆ÷½øĞĞÒÆÖ²²Ù×÷´¦Àí... 
echo.
echo  ´¦ÀíºÃÄÚºË½â¿ªµÄËùÓĞÎÄ¼şºó£¬°´ÏÂÈÎÒâ¼ü¿ªÊ¼´ò°üÄÚºËboot.img
bin\ctext "{0E} ============================================================{0F}{\n}"
pause
move ¹Ù·½ÄÚºË\kernel.gz kernel.gz >nul 2>nul
move ¹Ù·½ÄÚºË\kernel kernel >nul 2>nul
move ÒªÒÆÖ²ÄÚºË\ramdisk.gz ramdisk.gz >nul 2>nul
move ÒªÒÆÖ²ÄÚºË\ramdisk ramdisk >nul 2>nul
move ÒªÒÆÖ²ÄÚºË\cpiolist.txt cpiolist.txt >nul 2>nul
move ÒªÒÆÖ²ÄÚºË\bootinfo.txt bootinfo.txt >nul 2>nul
xcopy /e ÒªÒÆÖ²ÄÚºË\initrd\* initrd\* >nul 2>nul
move ÒªÒÆÖ²ÄÚºË\dt.img dt.img >nul 2>nul
ping -n 1 127.1 >nul 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
echo.
bin\bootimg.exe --repack-bootimg
ren boot-new.img boot.img
del ³É¹¦ÒÆÖ²µÄÄÚºË\boot.img >nul 2>nul
md ³É¹¦ÒÆÖ²µÄÄÚºË >nul 2>nul
move boot.img ³É¹¦ÒÆÖ²µÄÄÚºË\ >nul 2>nul
del ¹Ù·½ÄÚºË\ramdisk.gz >nul 2>nul
del ¹Ù·½ÄÚºË\ramdisk >nul 2>nul
del ¹Ù·½ÄÚºË\cpiolist.txt >nul 2>nul
del ¹Ù·½ÄÚºË\bootinfo.txt >nul 2>nul
rd /s /q ¹Ù·½ÄÚºË\initrd >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\kernel.gz >nul 2>nul
del ÒªÒÆÖ²ÄÚºË\kernel >nul 2>nul
rd /s /q ÒªÒÆÖ²ÄÚºË\initrd >nul 2>nul
bin\ctext "{0B} ============================================================{\n}"
echo  ³É¹¦Ò»¼üÒÆÖ²boot.imgÄÚºË£¡Çëµ½"³É¹¦ÒÆÖ²µÄÄÚºË"ÎÄ¼ş¼ĞÖĞÌáÈ¡
bin\ctext "{0B} ============================================================{0F}{\n}"
start ³É¹¦ÒÆÖ²µÄÄÚºË\
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
)
pause
goto home
:custom_recovery_porting
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
md ¹Ù·½recovery >nul 2>nul
md ÒªÒÆÖ²recovery >nul 2>nul
bin\ctext "{0D} ==================================================={\n}"
echo  ½«¹Ù·½ROMÖĞµÄrecovery.img·Åµ½"¹Ù·½recovery"ÎÄ¼ş¼Ğ
echo  ½«ÒªÒÆÖ²µÄrecovery.img·Åµ½"ÒªÒÆÖ²recovery"ÎÄ¼ş¼Ğ
bin\ctext "{0D} ==================================================={0F}{\n}"
pause
echo.
if not exist "¹Ù·½recovery\recovery.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²é´ËÂ·¾¶ÏÂÊÇ·ñ´æÔÚ ¹Ù·½recovery\recovery.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
echo.
if not exist "ÒªÒÆÖ²recovery\recovery.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²é´ËÂ·¾¶ÏÂÊÇ·ñ´æÔÚ ÒªÒÆÖ²recovery\recovery.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
copy ¹Ù·½recovery\recovery.img recovery.img >nul 2>nul
ren recovery.img boot.img
bin\bootimg.exe --unpack-bootimg
ping -n 1 127.1 >nul 2>nul
if exist "file_contexts.bin" goto custom_recovery_porting_file_contexts.bin
if exist "file_contexts" goto custom_recovery_porting_file_contexts
:custom_recovery_porting_file_contexts.bin
bin\file_contexts_tool.exe initrd\file_contexts.bin -o initrd\file_contexts -e >nul 2>nul
rd /s /q ¹Ù·½recovery\kernel.gz >nul 2>nul
rd /s /q ¹Ù·½recovery\kernel >nul 2>nul
rd /s /q ¹Ù·½recovery\ramdisk.gz >nul 2>nul
rd /s /q ¹Ù·½recovery\ramdisk >nul 2>nul
rd /s /q ¹Ù·½recovery\cpiolist.txt >nul 2>nul
rd /s /q ¹Ù·½recovery\bootinfo.txt >nul 2>nul
rd /s /q ¹Ù·½recovery\initrd >nul 2>nul
move kernel.gz ¹Ù·½recovery\ >nul 2>nul
move kernel ¹Ù·½recovery\ >nul 2>nul
move ramdisk.gz ¹Ù·½recovery\ >nul 2>nul
move ramdisk ¹Ù·½recovery\ >nul 2>nul
move cpiolist.txt ¹Ù·½recovery\ >nul 2>nul
move bootinfo.txt ¹Ù·½recovery\ >nul 2>nul
move initrd ¹Ù·½recovery\ >nul 2>nul
move dt.img ¹Ù·½recovery\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
copy ÒªÒÆÖ²recovery\recovery.img recovery.img >nul 2>nul
ren recovery.img boot.img
echo.
bin\bootimg.exe --unpack-bootimg
ping -n 1 127.1 >nul 2>nul
bin\file_contexts_tool.exe initrd\file_contexts.bin -o initrd\file_contexts -e >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\kernel.gz >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\kernel >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\ramdisk.gz >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\ramdisk >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\cpiolist.txt >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\bootinfo.txt >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\initrd >nul 2>nul
move kernel.gz ÒªÒÆÖ²recovery\ >nul 2>nul
move kernel ÒªÒÆÖ²recovery\ >nul 2>nul
move ramdisk.gz ÒªÒÆÖ²recovery\ >nul 2>nul
move ramdisk ÒªÒÆÖ²recovery\ >nul 2>nul
move cpiolist.txt ÒªÒÆÖ²recovery\ >nul 2>nul
move bootinfo.txt ÒªÒÆÖ²recovery\ >nul 2>nul
move initrd ÒªÒÆÖ²recovery\ >nul 2>nul
move dt.img ÒªÒÆÖ²recovery\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
start bin\Beyond_Compare\BCompare.exe
bin\ctext "{0D} ================================================================{\n}"
echo  ÕıÔÚ´ò¿ªÎÄ¼ş¶Ô±ÈÆ÷½øĞĞÒÆÖ²²Ù×÷´¦Àí...  
echo.
echo  ´¦ÀíºÃrecovery½â¿ªµÄËùÓĞÎÄ¼şºó£¬°´ÏÂÈÎÒâ¼ü¿ªÊ¼´ò°ürecovery.img
bin\ctext "{0D} ================================================================{0F}{\n}"
pause
del ÒªÒÆÖ²recovery\initrd\file_contexts.bin >nul 2>nul
bin\file_contexts_tool.exe ÒªÒÆÖ²recovery\initrd\file_contexts -o ÒªÒÆÖ²recovery\initrd\file_contexts.bin >nul 2>nul
del ÒªÒÆÖ²recovery\initrd\file_contexts >nul 2>nul
del ¹Ù·½recovery\initrd\file_contexts.bin >nul 2>nul
bin\file_contexts_tool.exe ¹Ù·½recovery\initrd\file_contexts -o ¹Ù·½recovery\initrd\file_contexts.bin >nul 2>nul
del ¹Ù·½recovery\initrd\file_contexts >nul 2>nul
move ¹Ù·½recovery\kernel.gz kernel.gz >nul 2>nul
move ¹Ù·½recovery\kernel kernel >nul 2>nul
move ÒªÒÆÖ²recovery\ramdisk.gz ramdisk.gz >nul 2>nul
move ÒªÒÆÖ²recovery\ramdisk ramdisk >nul 2>nul
move ÒªÒÆÖ²recovery\cpiolist.txt cpiolist.txt >nul 2>nul
move ÒªÒÆÖ²recovery\bootinfo.txt bootinfo.txt >nul 2>nul
xcopy /e ÒªÒÆÖ²recovery\initrd\* initrd\* >nul 2>nul
move ÒªÒÆÖ²recovery\dt.img dt.img >nul 2>nul
ping -n 1 127.1 >nul 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
echo.
bin\bootimg.exe --repack-bootimg
ren boot-new.img recovery.img
del ³É¹¦ÒÆÖ²recovery\recovery.img >nul 2>nul
md ³É¹¦ÒÆÖ²recovery >nul 2>nul
move recovery.img ³É¹¦ÒÆÖ²recovery\ >nul 2>nul
del ¹Ù·½recovery\ramdisk.gz >nul 2>nul
del ¹Ù·½recovery\ramdisk >nul 2>nul
del ¹Ù·½recovery\cpiolist.txt >nul 2>nul
del ¹Ù·½recovery\bootinfo.txt >nul 2>nul
rd /s /q ¹Ù·½recovery\initrd >nul 2>nul
del ÒªÒÆÖ²recovery\kernel.gz >nul 2>nul
del ÒªÒÆÖ²recovery\kernel >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\initrd >nul 2>nul
bin\ctext "{0B} =========================================================={\n}"
echo  ³É¹¦Ò»¼üÒÆÖ²recovery£¡Çëµ½"³É¹¦ÒÆÖ²recovery"ÎÄ¼ş¼ĞÖĞÌáÈ¡ 
bin\ctext "{0B} =========================================================={0F}{\n}"
start ³É¹¦ÒÆÖ²recovery\
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
)
pause
goto home
:custom_recovery_porting_file_contexts
rd /s /q ¹Ù·½recovery\kernel.gz >nul 2>nul
rd /s /q ¹Ù·½recovery\kernel >nul 2>nul
rd /s /q ¹Ù·½recovery\ramdisk.gz >nul 2>nul
rd /s /q ¹Ù·½recovery\ramdisk >nul 2>nul
rd /s /q ¹Ù·½recovery\cpiolist.txt >nul 2>nul
rd /s /q ¹Ù·½recovery\bootinfo.txt >nul 2>nul
rd /s /q ¹Ù·½recovery\initrd >nul 2>nul
move kernel.gz ¹Ù·½recovery\ >nul 2>nul
move kernel ¹Ù·½recovery\ >nul 2>nul
move ramdisk.gz ¹Ù·½recovery\ >nul 2>nul
move ramdisk ¹Ù·½recovery\ >nul 2>nul
move cpiolist.txt ¹Ù·½recovery\ >nul 2>nul
move bootinfo.txt ¹Ù·½recovery\ >nul 2>nul
move initrd ¹Ù·½recovery\ >nul 2>nul
move dt.img ¹Ù·½recovery\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
copy ÒªÒÆÖ²recovery\recovery.img recovery.img >nul 2>nul
ren recovery.img boot.img
echo.
bin\bootimg.exe --unpack-bootimg
ping -n 1 127.1 >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\kernel.gz >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\kernel >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\ramdisk.gz >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\ramdisk >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\cpiolist.txt >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\bootinfo.txt >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\initrd >nul 2>nul
move kernel.gz ÒªÒÆÖ²recovery\ >nul 2>nul
move kernel ÒªÒÆÖ²recovery\ >nul 2>nul
move ramdisk.gz ÒªÒÆÖ²recovery\ >nul 2>nul
move ramdisk ÒªÒÆÖ²recovery\ >nul 2>nul
move cpiolist.txt ÒªÒÆÖ²recovery\ >nul 2>nul
move bootinfo.txt ÒªÒÆÖ²recovery\ >nul 2>nul
move initrd ÒªÒÆÖ²recovery\ >nul 2>nul
move dt.img ÒªÒÆÖ²recovery\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
start bin\Beyond_Compare\BCompare.exe
bin\ctext "{0D} ================================================================{\n}"
echo  ÕıÔÚ´ò¿ªÎÄ¼ş¶Ô±ÈÆ÷½øĞĞÒÆÖ²²Ù×÷´¦Àí...  
echo.
echo  ´¦ÀíºÃrecovery½â¿ªµÄËùÓĞÎÄ¼şºó£¬°´ÏÂÈÎÒâ¼ü¿ªÊ¼´ò°ürecovery.img
bin\ctext "{0D} ================================================================{0F}{\n}"
pause
move ¹Ù·½recovery\kernel.gz kernel.gz >nul 2>nul
move ¹Ù·½recovery\kernel kernel >nul 2>nul
move ÒªÒÆÖ²recovery\ramdisk.gz ramdisk.gz >nul 2>nul
move ÒªÒÆÖ²recovery\ramdisk ramdisk >nul 2>nul
move ÒªÒÆÖ²recovery\cpiolist.txt cpiolist.txt >nul 2>nul
move ÒªÒÆÖ²recovery\bootinfo.txt bootinfo.txt >nul 2>nul
xcopy /e ÒªÒÆÖ²recovery\initrd\* initrd\* >nul 2>nul
move ÒªÒÆÖ²recovery\dt.img dt.img >nul 2>nul
ping -n 1 127.1 >nul 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
echo.
bin\bootimg.exe --repack-bootimg
ren boot-new.img recovery.img
del ³É¹¦ÒÆÖ²recovery\recovery.img >nul 2>nul
md ³É¹¦ÒÆÖ²recovery >nul 2>nul
move recovery.img ³É¹¦ÒÆÖ²recovery\ >nul 2>nul
del ¹Ù·½recovery\ramdisk.gz >nul 2>nul
del ¹Ù·½recovery\ramdisk >nul 2>nul
del ¹Ù·½recovery\cpiolist.txt >nul 2>nul
del ¹Ù·½recovery\bootinfo.txt >nul 2>nul
rd /s /q ¹Ù·½recovery\initrd >nul 2>nul
del ÒªÒÆÖ²recovery\kernel.gz >nul 2>nul
del ÒªÒÆÖ²recovery\kernel >nul 2>nul
rd /s /q ÒªÒÆÖ²recovery\initrd >nul 2>nul
bin\ctext "{0B} =========================================================={\n}"
echo  ³É¹¦Ò»¼üÒÆÖ²recovery£¡Çëµ½"³É¹¦ÒÆÖ²recovery"ÎÄ¼ş¼ĞÖĞÌáÈ¡ 
bin\ctext "{0B} =========================================================={0F}{\n}"
start ³É¹¦ÒÆÖ²recovery\
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
)
pause
goto home
:simg2img
echo.
echo.
bin\ctext {0A}" ===================================================================================================================={\n}"
bin\ctext {0E}"   ÇëÈ·±£ÈÎÒâÃüÃûµÄext4¸ñÊ½µÄimg¾µÏñÎÄ¼şºÍ±¾¹¤¾ßÏàÍ¬µçÄÔÅÌ·û»òÕßÔÚ±¾¹¤¾ßÄ¿Â¼ÏÂ£¬²»Í¬µçÄÔÅÌ·ûÎŞ·¨×ª»»Ê¹ÓÃ£¡{\n}"
echo.
bin\ctext {0C}"   ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄext4¸ñÊ½µÄimg¾µÏñÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼×ª»»{\n}"
echo.
bin\ctext {0B}"   ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...{\n}"
bin\ctext {0A}" ===================================================================================================================={0F}{\n}"
set afolder=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set afolder=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
echo.
set simg2img=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set simg2img=" "%~dp0\*.img"`) do %%a
bin\simg2img.exe %simg2img% %afolder%.ext4.img >nul 2>nul
echo.
bin\ctext {0F}"×ª»»Íê±Ï£¡×ª»»ËùµÃÎÄ¼şÎª{0D} %afolder%.ext4.img {0F}{\n}"
pause
goto home
:img2simg
echo.
echo.
bin\ctext {0A}" ===================================================================================================================={\n}"
bin\ctext {0E}"   ÇëÈ·±£ÈÎÒâÃüÃûµÄsimg¸ñÊ½µÄimg¾µÏñÎÄ¼şºÍ±¾¹¤¾ßÏàÍ¬µçÄÔÅÌ·û»òÕßÔÚ±¾¹¤¾ßÄ¿Â¼ÏÂ£¬²»Í¬µçÄÔÅÌ·ûÎŞ·¨×ª»»Ê¹ÓÃ£¡{\n}"
echo.
bin\ctext {0C}"   ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄsimg¸ñÊ½µÄimg¾µÏñÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼×ª»»{\n}"
echo.
bin\ctext {0B}"   ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´Éú³É£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ£¬ÇëÄÍĞÄµÈ´ı...{\n}"
bin\ctext {0A}" ===================================================================================================================={0F}{\n}"
set folderb=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set folderb=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
echo.
set img2simg=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set img2simg=" "%~dp0\*.img;*.raw;*.ext4;*.win"`) do %%a
bin\ext2simg.exe %img2simg% %folderb%.simg.img >nul 2>nul
echo.
bin\ctext {0F}"×ª»»Íê±Ï£¡×ª»»ËùµÃÎÄ¼şÎª{0D} %folderb%.simg.img {0F}{\n}"
pause
goto home
:systemdatbr_to_systemimg
bin\ctext {0F}"Èç¹û½â°üdat¸ñÊ½ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÍ¬Ê±ÓĞsystem.new.datºÍsystem.transfer.list  {0F}{\n}"
echo.
bin\ctext {0F}"Èç¹û½â°übr¸ñÊ½ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÍ¬Ê±ÓĞsystem.new.dat.brºÍsystem.transfer.list
pause
bin\br2dat.exe -j -d -o system.new.dat system.new.dat.br
bin\sdat2img.exe system.transfer.list system.new.dat system.img
goto home
:unpack_system.img_ext4
echo.
if not exist "system.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo.
rd /s /q system >nul 2>nul
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
md system >nul 2>nul
bin\ctext {0B}ÕıÔÚ¼ì²âµ½µ±Ç°system.img±àÂë¸ñÊ½,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{\n} & bin\simg2img.exe system.img bin\cache\system.ext4 >nul 2>nul
echo.
bin\ctext "{0B} Èç¹û½â°üÊ§°Ü,Çë°ÑÕâÀà¶şÊÖROMµÄsystem.img»òsystem.new.datÃû³Æ¶Ôµ÷ÔÙÖØĞÂ½â°ü»òÇëÇó611193563º½Ä¸Èº´óÉñ¿´Ë¢»ú½Å±¾Ã¨Äå{0F}{\n}"
for /r bin\cache\ %%a in (system.ext4) do (
if %%~za==0 del bin\cache\system.ext4
)
if not exist "bin\cache\system.ext4" bin\ext4extract.exe -v -D system --save-symlinks system.img & goto rom_look_build_system
if exist "bin\cache\system.ext4" bin\ext4extract.exe -v -D system --save-symlinks bin\cache\system.ext4 & goto rom_look_build_system
:unpack_system.img_4Gplus
echo.
if not exist "system.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo.
rd /s /q system >nul 2>nul
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
md system >nul 2>nul
bin\ctext {0B}ÕıÔÚ¼ì²âµ½µ±Ç°system.img±àÂë¸ñÊ½,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{\n} & bin\simg2img.exe system.img bin\cache\system.ext4 >nul 2>nul
echo.
bin\ctext "{0B} Èç¹û½â°üÊ§°Ü,Çë°ÑÕâÀà¶şÊÖROMµÄsystem.img»òsystem.new.datÃû³Æ¶Ôµ÷ÔÙÖØĞÂ½â°ü»òÇëÇó611193563º½Ä¸Èº´óÉñ¿´Ë¢»ú½Å±¾Ã¨Äå{0F}{\n}"
for /r bin\cache\ %%a in (system.ext4) do (
if %%~za==0 del bin\cache\system.ext4
)
if not exist "bin\cache\system.ext4" bin\unpack-ext4fs.exe system.img system & goto rom_look_build_system
if exist "bin\cache\system.ext4" bin\unpack-ext4fs.exe bin\cache\system.ext4 system & goto rom_look_build_system
:unpack_system.img_mount
echo.
if not exist "system.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo.
echo.
rd /s /q system >nul 2>nul
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
md system >nul 2>nul
bin\ctext {0B}ÕıÔÚ¼ì²âµ½µ±Ç°system.img±àÂë¸ñÊ½,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{\n} & bin\simg2img.exe system.img bin\cache\system.ext4 >nul 2>nul
echo.
echo.
echo.
bin\ctext {0E}ÇëÔÚÎÄ¼ş¶Ô±ÈÆ÷BCompare¹ÒÔØ´ò¿ªºó,Ñ¡ÔñĞèÒªÌáÈ¡Ä¿Â¼ºÍÎÄ¼şµ¥»÷Êó±êÓÒ¼ü¡°¸´ÖÆµ½ÎÄ¼ş¼Ğ¡±µ½º½Ä¸Ä¿Â¼ÏÂµÄsystemÎÄ¼ş¼Ğ{\n}
echo.
bin\ctext {0E}ÌáÈ¡Íê±ÏºóÍê±Ï¹Ø±ÕÎÄ¼ş¶Ô±ÈÆ÷BCompare¼´¿ÉÔÚ¼¸ÃëÊ±¼ä×Ô¶¯Ê¶±ğbuildĞÅÏ¢{\n}
echo.
echo.
bin\ctext "{0B} Èç¹û½â°üÊ§°Ü,Çë°ÑÕâÀà¶şÊÖROMµÄsystem.img»òsystem.new.datÃû³Æ¶Ôµ÷ÔÙÖØĞÂ½â°ü»òÇëÇó611193563º½Ä¸Èº´óÉñ¿´Ë¢»ú½Å±¾Ã¨Äå{0F}{\n}"
for /r bin\cache\ %%a in (system.ext4) do (
if %%~za==0 del bin\cache\system.ext4
)
if not exist "bin\cache\system.ext4" bin\Beyond_Compare\BCompare.exe system.img & goto rom_look_build_system
if exist "bin\cache\system.ext4" bin\Beyond_Compare\BCompare.exe bin\cache\system.ext4 & goto rom_look_build_system
:unpack_system.img_4Gno
echo.
if not exist "system.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo.
bin\ctext {0B}" ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´·Ö½âsystem.img£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{\n}"
echo.
bin\ctext "{0B} Èç¹û½â°üÊ§°Ü,Çë°ÑÕâÀà¶şÊÖROMµÄsystem.img»òsystem.new.datÃû³Æ¶Ôµ÷ÔÙÖØĞÂ½â°ü»òÇëÇó611193563º½Ä¸Èº´óÉñ¿´Ë¢»ú½Å±¾Ã¨Äå{0F}{\n}"
rd /s /q system\ >nul 2>nul
bin\Imgextractor.exe system.img system -i
goto rom_look_build_system
:unpack_vendor.img_ext4
bin\sdat2img.exe vendor.transfer.list vendor.new.dat vendor.img
echo.
rd /s /q vendor >nul 2>nul
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
md vendor >nul 2>nul
bin\ctext {0B}ÕıÔÚ¼ì²âµ½µ±Ç°vendor.img±àÂë¸ñÊ½,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{\n} & bin\simg2img.exe vendor.img bin\cache\vendor.ext4 >nul 2>nul
echo.
bin\ctext "{0B} Èç¹û½â°üÊ§°Ü,Çë°ÑÕâÀà¶şÊÖROMµÄvendor.img»òvendor.new.datÃû³Æ¶Ôµ÷ÔÙÖØĞÂ½â°ü»òÇëÇó611193563º½Ä¸Èº´óÉñ¿´Ë¢»ú½Å±¾Ã¨Äå{0F}{\n}"
for /r bin\cache\ %%a in (vendor.ext4) do (
if %%~za==0 del bin\cache\vendor.ext4
)
if not exist "bin\cache\vendor.ext4" bin\ext4extract.exe -v -D vendor --save-symlinks vendor.img & goto rom_look_build_vendor
if exist "bin\cache\vendor.ext4" bin\ext4extract.exe -v -D vendor --save-symlinks bin\cache\vendor.ext4 & goto rom_look_build_vendor
:unpack_vendor.img_4Gplus
bin\sdat2img.exe vendor.transfer.list vendor.new.dat vendor.img
echo.
rd /s /q vendor >nul 2>nul
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
md vendor >nul 2>nul
bin\ctext {0B}ÕıÔÚ¼ì²âµ½µ±Ç°vendor.img±àÂë¸ñÊ½,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{\n} & bin\simg2img.exe vendor.img bin\cache\vendor.ext4 >nul 2>nul
echo.
bin\ctext "{0B} Èç¹û½â°üÊ§°Ü,Çë°ÑÕâÀà¶şÊÖROMµÄvendor.img»òvendor.new.datÃû³Æ¶Ôµ÷ÔÙÖØĞÂ½â°ü»òÇëÇó611193563º½Ä¸Èº´óÉñ¿´Ë¢»ú½Å±¾Ã¨Äå{0F}{\n}"
for /r bin\cache\ %%a in (vendor.ext4) do (
if %%~za==0 del bin\cache\vendor.ext4
)
if not exist "bin\cache\vendor.ext4" bin\unpack-ext4fs.exe vendor.img vendor & goto rom_look_build_vendor
if exist "bin\cache\vendor.ext4" bin\unpack-ext4fs.exe bin\cache\vendor.ext4 vendor & goto rom_look_build_vendor
:unpack_vendor.img_mount
bin\sdat2img.exe vendor.transfer.list vendor.new.dat vendor.img
echo.
rd /s /q vendor >nul 2>nul
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
md vendor >nul 2>nul
bin\ctext {0B}ÕıÔÚ¼ì²âµ½µ±Ç°vendor.img±àÂë¸ñÊ½,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{\n} & bin\simg2img.exe vendor.img bin\cache\vendor.ext4 >nul 2>nul
echo.
echo.
echo.
bin\ctext {0E}ÇëÔÚÎÄ¼ş¶Ô±ÈÆ÷BCompare¹ÒÔØ´ò¿ªºó,Ñ¡ÔñĞèÒªÌáÈ¡Ä¿Â¼ºÍÎÄ¼şµ¥»÷Êó±êÓÒ¼ü¡°¸´ÖÆµ½ÎÄ¼ş¼Ğ¡±µ½º½Ä¸Ä¿Â¼ÏÂµÄvendorÎÄ¼ş¼Ğ{\n}
echo.
bin\ctext {0E}ÌáÈ¡Íê±ÏºóÍê±Ï¹Ø±ÕÎÄ¼ş¶Ô±ÈÆ÷BCompare¼´¿ÉÔÚ¼¸ÃëÊ±¼ä×Ô¶¯Ê¶±ğbuildĞÅÏ¢{\n}
echo.
echo.
bin\ctext "{0B} Èç¹û½â°üÊ§°Ü,Çë°ÑÕâÀà¶şÊÖROMµÄvendor.img»òvendor.new.datÃû³Æ¶Ôµ÷ÔÙÖØĞÂ½â°ü»òÇëÇó611193563º½Ä¸Èº´óÉñ¿´Ë¢»ú½Å±¾Ã¨Äå{0F}{\n}"
for /r bin\cache\ %%a in (vendor.ext4) do (
if %%~za==0 del bin\cache\vendor.ext4
)
if not exist "bin\cache\vendor.ext4" bin\Beyond_Compare\BCompare.exe vendor.img & goto rom_look_build_vendor
if exist "bin\cache\vendor.ext4" bin\Beyond_Compare\BCompare.exe bin\cache\vendor.ext4 & goto rom_look_build_vendor
:unpack_vendor.img_4Gno
bin\sdat2img.exe vendor.transfer.list vendor.new.dat vendor.img
echo.
bin\ctext {0B}" ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´·Ö½âvendor.img£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{\n}"
echo.
bin\ctext "{0B} Èç¹û½â°üÊ§°Ü,Çë°ÑÕâÀà¶şÊÖROMµÄvendor.img»òvendor.new.datÃû³Æ¶Ôµ÷ÔÙÖØĞÂ½â°ü»òÇëÇó611193563º½Ä¸Èº´óÉñ¿´Ë¢»ú½Å±¾Ã¨Äå{0F}{\n}"
rd /s /q vendor\ >nul 2>nul
bin\Imgextractor.exe vendor.img vendor -i
goto rom_look_build_vendor
:unpack_dat_unpack_img_4Gplus
echo.
if not exist "system.new.dat" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.transfer.list ºÍ system.new.dat¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo.
if not exist "system.transfer.list" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.transfer.list ºÍ system.new.dat¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
rd /s /q system >nul 2>nul
del system.img.ext4 >nul 2>nul
del system.img >nul 2>nul
bin\sdat2img.exe system.transfer.list system.new.dat system.img
goto unpack_system.img_4Gplus
:unpack_dat_unpack_img_ext4
echo.
if not exist "system.new.dat" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.transfer.list ºÍ system.new.dat¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo.
if not exist "system.transfer.list" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.transfer.list ºÍ system.new.dat¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
rd /s /q system >nul 2>nul
del system.img.ext4 >nul 2>nul
del system.img >nul 2>nul
bin\sdat2img.exe system.transfer.list system.new.dat system.img
goto unpack_system.img_ext4
:unpack_dat_unpack_img_mount
echo.
if not exist "system.new.dat" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.transfer.list ºÍ system.new.dat¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo.
if not exist "system.transfer.list" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.transfer.list ºÍ system.new.dat¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
rd /s /q system >nul 2>nul
del system.img.ext4 2>nul
del system.img 2>nul
md system
echo.
bin\ctext {0B}" ĞèÒª¼¸·ÖÖÓÊ±¼äÀ´·Ö½âsystem.new.dat   system.transfer.list£¡ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{0F}{\n}"
echo.
bin\sdat2img.exe system.transfer.list system.new.dat system.img
goto unpack_system.img_mount
:unpack_dat_unpack_img_4Gno
echo.
if not exist "system.new.dat" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.transfer.list ºÍ system.new.dat¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo.
if not exist "system.transfer.list" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.transfer.list ºÍ system.new.dat¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
rd /s /q system >nul 2>nul
del system.img.ext4 >nul 2>nul
del system.img >nul 2>nul
bin\sdat2img.exe system.transfer.list system.new.dat system.img
goto unpack_system.img_4Gno
:rom_look_build_system
del system_statfile.txt >nul 2>nul
del system\.journal >nul 2>nul
rd /s /q system\[SYS] 2>nul
rd /s /q bin\cache 2>nul
@echo off
setlocal enabledelayedexpansion
echo.
if not exist "system\build.prop" (
echo   ÕÒ²»µ½system\build.prop´ËÎÄ¼şÎŞ·¨Ê¶±ğbuildĞÅÏ¢£¬ÇëÈ·ÈÏÊÇ·ñ´Ëº½Ä¸Ä¿Â¼ÏÂÓĞÕâ¸öÎÄ¼ş
echo.
pause
goto home
)
) else (
powershell -c "dir system\build.prop|%%{[IO.File]::ReadAllText($_, [Text.Encoding]::UTF8)|out-file ('bin\system_new_'+$_.Name) -encoding Default}"
set BP="bin\system_new_build.prop"
echo --------------ROMĞÅÏ¢---------------
for /f "tokens=1,2 delims==" %%a in ('find /v "#" ^<!BP!') do (
if "%%a"=="ro.build.id" (echo ²úÆ·ID^:%%b) 
if "%%a"=="ro.build.version.sdk" (echo SDK°æ±¾^:%%b) 
if "%%a"=="ro.build.version.release" (echo °²×¿°æ±¾^:%%b) 
if "%%a"=="ro.build.date" (echo ´´½¨ÈÕÆÚ^:%%b) 
if "%%a"=="ro.product.model" (echo ²úÆ·ĞÍºÅ^:%%b) 
if "%%a"=="ro.product.brand" (echo Æ·ÅÆ^:%%b)
if "%%a"=="ro.product.name" (echo Éè±¸Ãû³Æ^:%%b)
if "%%a"=="ro.vendor.product.manufacturer" (echo ÊÖ»ú³§¼Ò^:%%b)
if "%%a"=="ro.product.cpu.abi" (echo CPUÖ¸Áî¼¯^:%%b) 
if "%%a"=="ro.product.locale.language" (echo ÓïÑÔ^:%%b) 
if "%%a"=="ro.hardware" (echo Ó²¼ş^:%%b)
if "%%a"=="telephony.lteOnCdmaDevice" (echo È«ÍøÍ¨»úĞÍ£¨0²»ÊôÓÚ,1ÊôÓÚ£©^:%%b)
if "%%a"=="ro.mediatek.platform" (echo CPUĞ¾Æ¬Æ½Ì¨^:%%b)
if "%%a"=="ro.board.platform" (echo CPUĞÍºÅ^:%%b)
if "%%a"=="dalvik.vm.heapstartsize" (echo ĞéÄâ»ú³õÊ¼^:%%b) 
if "%%a"=="dalvik.vm.heapgrowthlimit" (echo ĞéÄâ»úÔö³¤^:%%b) 
if "%%a"=="dalvik.vm.heapsize" (echo ĞéÄâ»ú´óĞ¡^:%%b)  
if "%%a"=="ro.sf.lcd_density" (echo ÆÁÄ»DPI^:%%b)
if "%%a"=="ro.wifi.channels" (echo WIFIĞÅµÀ^:%%b)
if "%%a"=="ro.sf.gsensorposition" (echo ÖØÁ¦¸ĞÓ¦^:%%b)
if "%%a"=="persist.sys.timezone" (echo Ê±¼äÊ±Çø^:%%b) 
if "%%a"=="ro.sf.hwrotation" (echo ÆÁÄ»·ÅÖÃ·½Ïò£¨0ÕıÏòÆÁÄ»,180µ¹ÖÃÆÁÄ»£©^:%%b) 
if "%%a"=="ro.product.locale" (echo ÓïÑÔ^:%%b)
if "%%a"=="ro.yunos.version" (echo °¢ÀïÔÆ°æ±¾^:%%b)
if "%%a"=="ro.yunos.build.version" (echo °¢ÀïÔÆROM°æ±¾^:%%b)
if "%%a"=="ro.build.display.id" (echo ROM°æ±¾^:%%b)
if "%%a"=="qemu.hw.mainkeys" (echo ĞéÄâ°´¼ü£¨0¿ªÆô,1¹Ø±Õ£©^:%%b)
)
bin\ctext "{0E}  ========================================================================================={\n}"
bin\ctext "{0E}                                         ½â°üÊ¶±ğÍê±Ï! {\n}"
bin\ctext "{0E}  ========================================================================================={0F}{\n}"
pause
del bin\system_new_build.prop >nul 2>nul
goto home
:rom_look_build_vendor
del vendor_statfile.txt >nul 2>nul
del vendor\.journal >nul 2>nul
rd /s /q vendor\[SYS] 2>nul
rd /s /q bin\cache 2>nul
@echo off
setlocal enabledelayedexpansion
echo.
if not exist "vendor\build.prop" (
echo   ÕÒ²»µ½vendor\build.prop´ËÎÄ¼şÎŞ·¨Ê¶±ğbuildĞÅÏ¢£¬ÇëÈ·ÈÏÊÇ·ñ´Ëº½Ä¸Ä¿Â¼ÏÂÓĞÕâ¸öÎÄ¼ş
echo.
pause
goto home
)
) else (
powershell -c "dir vendor\build.prop|%%{[IO.File]::ReadAllText($_, [Text.Encoding]::UTF8)|out-file ('bin\vendor_new_'+$_.Name) -encoding Default}"
set BP="bin\vendor_new_build.prop"
echo --------------ROMĞÅÏ¢---------------
for /f "tokens=1,2 delims==" %%a in ('find /v "#" ^<!BP!') do (
if "%%a"=="ro.vendor.build.date" (echo ´´½¨ÈÕÆÚ^:%%b) 
if "%%a"=="ro.vendor.product.manufacturer" (echo ÊÖ»ú³§¼Ò^:%%b)
if "%%a"=="ro.vendor.product.model" (echo ²úÆ·ĞÍºÅ^:%%b) 
if "%%a"=="ro.vendor.product.brand" (echo Æ·ÅÆ^:%%b)
if "%%a"=="ro.vendor.product.name" (echo Éè±¸Ãû³Æ^:%%b)
if "%%a"=="ro.build.id" (echo ²úÆ·ID^:%%b) 
if "%%a"=="ro.build.version.sdk" (echo SDK°æ±¾^:%%b) 
if "%%a"=="ro.build.version.release" (echo °²×¿°æ±¾^:%%b) 
if "%%a"=="ro.product.cpu.abi" (echo CPUÖ¸Áî¼¯^:%%b) 
if "%%a"=="ro.product.locale.language" (echo ÓïÑÔ^:%%b) 
if "%%a"=="ro.hardware" (echo Ó²¼ş^:%%b)
if "%%a"=="telephony.lteOnCdmaDevice" (echo È«ÍøÍ¨»úĞÍ£¨0²»ÊôÓÚ,1ÊôÓÚ£©^:%%b)
if "%%a"=="ro.mediatek.platform" (echo CPUĞ¾Æ¬Æ½Ì¨^:%%b)
if "%%a"=="ro.board.platform" (echo CPUĞÍºÅ^:%%b)
if "%%a"=="dalvik.vm.heapstartsize" (echo ĞéÄâ»ú³õÊ¼^:%%b) 
if "%%a"=="dalvik.vm.heapgrowthlimit" (echo ĞéÄâ»úÔö³¤^:%%b) 
if "%%a"=="dalvik.vm.heapsize" (echo ĞéÄâ»ú´óĞ¡^:%%b)  
if "%%a"=="ro.sf.lcd_density" (echo ÆÁÄ»DPI^:%%b)
if "%%a"=="ro.wifi.channels" (echo WIFIĞÅµÀ^:%%b)
if "%%a"=="ro.sf.gsensorposition" (echo ÖØÁ¦¸ĞÓ¦^:%%b)
if "%%a"=="persist.sys.timezone" (echo Ê±¼äÊ±Çø^:%%b) 
if "%%a"=="ro.sf.hwrotation" (echo ÆÁÄ»·ÅÖÃ·½Ïò£¨0ÕıÏòÆÁÄ»,180µ¹ÖÃÆÁÄ»£©^:%%b) 
if "%%a"=="ro.product.locale" (echo ÓïÑÔ^:%%b)
if "%%a"=="ro.yunos.version" (echo °¢ÀïÔÆ°æ±¾^:%%b)
if "%%a"=="ro.yunos.build.version" (echo °¢ÀïÔÆROM°æ±¾^:%%b)
if "%%a"=="ro.build.display.id" (echo ROM°æ±¾^:%%b)
if "%%a"=="qemu.hw.mainkeys" (echo ĞéÄâ°´¼ü£¨0¿ªÆô,1¹Ø±Õ£©^:%%b)
)
bin\ctext "{0E}  ========================================================================================={\n}"
bin\ctext "{0E}                                         ½â°üÊ¶±ğÍê±Ï! {\n}"
bin\ctext "{0E}  ========================================================================================={0F}{\n}"
pause
del bin\vendor_new_build.prop >nul 2>nul
goto home
:unpack_dat_to_img
echo.
if not exist "system.transfer.list" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.transfer.list ºÍ system.new.dat¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo.
if not exist "system.new.dat" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚsystem.transfer.list ºÍ system.new.dat¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
del system.img.ext4 2>nul
del system.img 2>nul
bin\sdat2img.exe system.transfer.list system.new.dat system.img
echo.
echo.
echo ×ª»»Íê³É£¡
echo.
)
pause
goto home
:unpack_br_to_systemimg_ext4
echo.
echo.
bin\ctext "{0E}  ÕıÔÚ×ª»»system.new.dat.br×ª»»ËÙ¶È¿ìÂıÈ¡¾öÄãµÄµçÄÔÅäÖÃ...{\n}"
echo.
bin\br2dat.exe -j -d -o system.new.dat system.new.dat.br
goto unpack_dat_unpack_img_ext4
:unpack_br_to_systemimg_mount
echo.
echo.
bin\ctext "{0E}  ÕıÔÚ×ª»»system.new.dat.br×ª»»ËÙ¶È¿ìÂıÈ¡¾öÄãµÄµçÄÔÅäÖÃ...{\n}"
echo.
bin\br2dat.exe -j -d -o system.new.dat system.new.dat.br
goto unpack_dat_unpack_img_mount
:unpack_br_to_systemimg_4Gplus
echo.
echo.
bin\ctext "{0E}  ÕıÔÚ×ª»»system.new.dat.br×ª»»ËÙ¶È¿ìÂıÈ¡¾öÄãµÄµçÄÔÅäÖÃ...{\n}"
echo.
bin\br2dat.exe -j -d -o system.new.dat system.new.dat.br
goto unpack_dat_unpack_img_4Gplus
:unpack_br_to_systemimg_4Gno
echo.
echo.
bin\ctext "{0E}  ÕıÔÚ×ª»»system.new.dat.br×ª»»ËÙ¶È¿ìÂıÈ¡¾öÄãµÄµçÄÔÅäÖÃ...{\n}"
echo.
bin\br2dat.exe -j -d -o system.new.dat system.new.dat.br
goto unpack_dat_unpack_img_4Gno
:unpack_br_to_vendorimg_ext4
echo.
echo.
bin\ctext "{0E}  ÕıÔÚ×ª»»vendor.new.dat.br×ª»»ËÙ¶È¿ìÂıÈ¡¾öÄãµÄµçÄÔÅäÖÃ...{\n}"
echo.
bin\br2dat.exe -j -d -o vendor.new.dat vendor.new.dat.br
goto unpack_vendor.img_ext4
:unpack_br_to_vendorimg_mount
echo.
echo.
bin\ctext "{0E}  ÕıÔÚ×ª»»vendor.new.dat.br×ª»»ËÙ¶È¿ìÂıÈ¡¾öÄãµÄµçÄÔÅäÖÃ...{\n}"
echo.
bin\br2dat.exe -j -d -o vendor.new.dat vendor.new.dat.br
goto unpack_vendor.img_mount
:unpack_br_to_vendorimg_4Gplus
echo.
echo.
bin\ctext "{0E}  ÕıÔÚ×ª»»vendor.new.dat.br×ª»»ËÙ¶È¿ìÂıÈ¡¾öÄãµÄµçÄÔÅäÖÃ...{\n}"
echo.
bin\br2dat.exe -j -d -o vendor.new.dat vendor.new.dat.br
goto unpack_vendor.img_4Gplus
:unpack_br_to_vendorimg_4Gno
echo.
echo.
bin\ctext "{0E}  ÕıÔÚ×ª»»vendor.new.dat.br×ª»»ËÙ¶È¿ìÂıÈ¡¾öÄãµÄµçÄÔÅäÖÃ...{\n}"
echo.
bin\br2dat.exe -j -d -o vendor.new.dat vendor.new.dat.br
goto unpack_vendor.img_4Gno
:unpack_xxx.datbr_ext4
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ÇëÈ·±£ÈÎÒâÃüÃûµÄimg\ext4¸ñÊ½µÄ¾µÏñÎÄ¼şºÍ±¾¹¤¾ßÏàÍ¬µçÄÔÅÌ·û»òÕßÔÚ±¾¹¤¾ßÄ¿Â¼ÏÂ£¬²»Í¬µçÄÔÅÌ·ûÎŞ·¨½â°üÊ¹ÓÃ£¡{\n}"
echo.
bin\ctext {0C}"   ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄxxx.dat\xxx.dat.br\xxx.list¸ñÊ½ÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼¹ÒÔØ½â°ü...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set fold=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set fold=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
md ÈÎÒâdat_br_%fold% >nul 2>nul
set unpackdatbr=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set unpackdatbr=" "%~dp0\*.dat;*.br"`) do %%a
set datbrlist=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set datbrlist=" "%~dp0\*.list"`) do %%a
echo.
bin\ctext {0B}ÕıÔÚ×ª»»·Ö½â,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{0F}{\n}
copy %unpackdatbr% bin\cache\datbr.br >nul 2>nul
copy %datbrlist% bin\cache\datbr.list >nul 2>nul
bin\br2dat.exe -d -o bin\cache\datbr.dat bin\cache\datbr.br
bin\sdat2img.exe bin\cache\datbr.list bin\cache\datbr.dat bin\cache\datbr.img
bin\ext4extract.exe -v -D ÈÎÒâdat_br_%fold% --save-symlinks bin\cache\datbr.img
echo.
bin\ctext {0F}"ÌáÈ¡Íê±Ï£¡ÌáÈ¡ËùµÃÎÄ¼şÔÚ{0D} ÈÎÒâdat_br_%fold% {0F}Ä¿Â¼ÀïÃæ.{0F}{\n}"
echo.
rd /s /q bin\cache >nul 2>nul
pause
goto home
:unpack_xxx.datbr_4Gplus
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ÇëÈ·±£ÈÎÒâÃüÃûµÄimg\ext4¸ñÊ½µÄ¾µÏñÎÄ¼şºÍ±¾¹¤¾ßÏàÍ¬µçÄÔÅÌ·û»òÕßÔÚ±¾¹¤¾ßÄ¿Â¼ÏÂ£¬²»Í¬µçÄÔÅÌ·ûÎŞ·¨½â°üÊ¹ÓÃ£¡{\n}"
echo.
bin\ctext {0C}"   ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄxxx.dat\xxx.dat.br\xxx.list¸ñÊ½ÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼¹ÒÔØ½â°ü...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set folda=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set folda=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
md ÈÎÒâdat_br_%folda% >nul 2>nul
set unpackdatbr4Gplus=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set unpackdatbr4Gplus=" "%~dp0\*.dat;*.br"`) do %%a
set datbrlist4Gplus=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set datbrlist4Gplus=" "%~dp0\*.list"`) do %%a
echo.
bin\ctext {0B}ÕıÔÚ×ª»»·Ö½â,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{0F}{\n}
copy %unpackdatbr4Gplus% bin\cache\datbr.br >nul 2>nul
copy %datbrlist4Gplus% bin\cache\datbr.list >nul 2>nul
bin\br2dat.exe -d -o bin\cache\datbr.dat bin\cache\datbr.br
bin\sdat2img.exe bin\cache\datbr.list bin\cache\datbr.dat bin\cache\datbr.img
bin\unpack-ext4fs.exe bin\cache\datbr.img ÈÎÒâdat_br_%folda%
echo.
bin\ctext {0F}"½â°üÍê±Ï£¡½â°üËùµÃÎÄ¼şÔÚ{0D} ÈÎÒâdat_br_%folda% {0F}Ä¿Â¼ÀïÃæ.{0F}{\n}"
echo.
rd /s /q bin\cache >nul 2>nul
pause
goto home
:unpack_xxx.datbr_mount
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ÇëÈ·±£ÈÎÒâÃüÃûµÄimg\ext4¸ñÊ½µÄ¾µÏñÎÄ¼şºÍ±¾¹¤¾ßÏàÍ¬µçÄÔÅÌ·û»òÕßÔÚ±¾¹¤¾ßÄ¿Â¼ÏÂ£¬²»Í¬µçÄÔÅÌ·ûÎŞ·¨½â°üÊ¹ÓÃ£¡{\n}"
echo.
bin\ctext {0C}"   ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄxxx.dat\xxx.dat.br\xxx.list¸ñÊ½ÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼¹ÒÔØ½â°ü...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set foldb=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set foldb=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
md ÈÎÒâdat_br_%foldb% >nul 2>nul
set unpackdatbrmount=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set unpackdatbrmount=" "%~dp0\*.dat;*.br"`) do %%a
set datbrlistmount=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set datbrlistmount=" "%~dp0\*.list"`) do %%a
echo.
bin\ctext {0B}ÕıÔÚ×ª»»·Ö½â,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{0F}{\n}
copy %unpackdatbrmount% bin\cache\datbr.br >nul 2>nul
copy %datbrlistmount% bin\cache\datbr.list >nul 2>nul
bin\br2dat.exe -d -o bin\cache\datbr.dat bin\cache\datbr.br
bin\sdat2img.exe bin\cache\datbr.list bin\cache\datbr.dat bin\cache\datbr.img
echo.
echo.
echo.
bin\ctext {0E}ÇëÔÚÎÄ¼ş¶Ô±ÈÆ÷BCompare¹ÒÔØ´ò¿ªºó{\n}
echo.
bin\ctext {0E}Ñ¡ÔñĞèÒªÌáÈ¡Ä¿Â¼ºÍÎÄ¼şµ¥»÷Êó±êÓÒ¼ü¡°¸´ÖÆµ½ÎÄ¼ş¼Ğ¡±µ½º½Ä¸Ä¿Â¼ÏÂµÄ{0D} ÈÎÒâimg_ext4_%foldb% {0E}ÎÄ¼ş¼Ğ{\n}
echo.
bin\ctext {0E}ÌáÈ¡Íê±ÏºóÍê±Ï¹Ø±ÕÎÄ¼ş¶Ô±ÈÆ÷BCompare¼´¿É{0F}{\n}
echo.
bin\Beyond_Compare\BCompare.exe bin\cache\datbr.img
echo.
bin\ctext {0F}"ÌáÈ¡Íê±Ï£¡ÌáÈ¡ËùµÃÎÄ¼şÔÚ{0D} ÈÎÒâimg_ext4_%foldb% {0F}Ä¿Â¼ÀïÃæ.{0F}{\n}"
echo.
rd /s /q ÈÎÒâimg_ext4_%foldb%\[SYS] >nul 2>nul
rd /s /q bin\cache >nul 2>nul
pause
goto home
:unpack_xxx.datbr_4Gno
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ÇëÈ·±£ÈÎÒâÃüÃûµÄimg\ext4¸ñÊ½µÄ¾µÏñÎÄ¼şºÍ±¾¹¤¾ßÏàÍ¬µçÄÔÅÌ·û»òÕßÔÚ±¾¹¤¾ßÄ¿Â¼ÏÂ£¬²»Í¬µçÄÔÅÌ·ûÎŞ·¨½â°üÊ¹ÓÃ£¡{\n}"
echo.
bin\ctext {0C}"   ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄxxx.dat\xxx.dat.br\xxx.list¸ñÊ½ÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼¹ÒÔØ½â°ü...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set foldc=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set foldc=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
set unpackdatbr4Gno=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set unpackdatbr4Gno=" "%~dp0\*.dat;*.br"`) do %%a
set datbrlist4Gno=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set datbrlist4Gno=" "%~dp0\*.list"`) do %%a
echo.
bin\ctext {0B}ÕıÔÚ×ª»»·Ö½â,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{0F}{\n}
copy %unpackdatbr4Gno% bin\cache\datbr.br >nul 2>nul
copy %datbrlist4Gno% bin\cache\datbr.list >nul 2>nul
bin\br2dat.exe -d -o bin\cache\datbr.dat bin\cache\datbr.br
bin\sdat2img.exe bin\cache\datbr.list bin\cache\datbr.dat bin\cache\datbr.img
bin\Imgextractor.exe bin\cache\datbr.img ÈÎÒâdat_br_%foldc% -i
echo.
bin\ctext {0F}"½â°üÍê±Ï£¡½â°üËùµÃÎÄ¼şÔÚ{0D} ÈÎÒâdat_br_%foldc% {0F}Ä¿Â¼ÀïÃæ.{0F}{\n}"
echo.
rd /s /q bin\cache >nul 2>nul
pause
goto home
:unpack_xxx.img_ext4
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ÇëÈ·±£ÈÎÒâÃüÃûµÄimg\ext4¸ñÊ½µÄ¾µÏñÎÄ¼şºÍ±¾¹¤¾ßÏàÍ¬µçÄÔÅÌ·û»òÕßÔÚ±¾¹¤¾ßÄ¿Â¼ÏÂ£¬²»Í¬µçÄÔÅÌ·ûÎŞ·¨½â°üÊ¹ÓÃ£¡{\n}"
echo.
bin\ctext {0C}"   ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄxxx.img\xxx.ext4¸ñÊ½ÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼¹ÒÔØ½â°ü...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set folderd=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set folderd=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
echo.
@echo off
set imga=
md ÈÎÒâimg_ext4_%folderd%
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set imga=" "%~dp0\*.img;*.ext4;*.win;*.raw"`) do %%a
bin\ctext {0B}ÕıÔÚ¼ì²âµ½µ±Ç°system.img±àÂë¸ñÊ½,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{0F}{\n} & bin\simg2img.exe %imga% bin\cache\xxximg.ext4 >nul 2>nul
echo.
for /r bin\cache\ %%a in (xxximg.ext4) do (
if %%~za==0 del bin\cache\xxximg.ext4
)
if not exist "bin\cache\xxximg.ext4" bin\ext4extract.exe -v -D ÈÎÒâimg_ext4_%folderd% --save-symlinks %imga%
if exist "bin\cache\xxximg.ext4" bin\ext4extract.exe -v -D ÈÎÒâimg_ext4_%folderd% --save-symlinks bin\cache\xxximg.ext4
rd /s /q bin\cache 2>nul
echo.
bin\ctext {0F}"ÌáÈ¡Íê±Ï£¡ÌáÈ¡ËùµÃÎÄ¼şÔÚ{0D} ÈÎÒâimg_ext4_%folderd% {0F}Ä¿Â¼ÀïÃæ.{0F}{\n}"
echo.
rd /s /q ÈÎÒâimg_ext4_%folderd%\[SYS] >nul 2>nul
pause
goto home
:unpack_xxx.img_4Gplus
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ÇëÈ·±£ÈÎÒâÃüÃûµÄimg\ext4¸ñÊ½µÄ¾µÏñÎÄ¼şºÍ±¾¹¤¾ßÏàÍ¬µçÄÔÅÌ·û»òÕßÔÚ±¾¹¤¾ßÄ¿Â¼ÏÂ£¬²»Í¬µçÄÔÅÌ·ûÎŞ·¨½â°üÊ¹ÓÃ£¡{\n}"
echo.
bin\ctext {0C}"   ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄxxx.img\xxx.ext4¸ñÊ½ÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼¹ÒÔØ½â°ü...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set folderdd=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set folderdd=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
echo.
@echo off
set img4gplus=
md ÈÎÒâimg_ext4_%folderdd%
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set img4gplus=" "%~dp0\*.img;*.ext4;*.raw;*.win"`) do %%a
bin\ctext {0B}ÕıÔÚ¼ì²âµ½µ±Ç°system.img±àÂë¸ñÊ½,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{0F}{\n} & bin\simg2img.exe %img4gplus% bin\cache\xxximg.ext4 >nul 2>nul
echo.
echo.
for /r bin\cache\ %%a in (xxximg.ext4) do (
if %%~za==0 del bin\cache\xxximg.ext4
)
if not exist "bin\cache\xxximg.ext4" bin\unpack-ext4fs.exe %img4gplus% ÈÎÒâimg_ext4_%folderdd%
if exist "bin\cache\xxximg.ext4" bin\unpack-ext4fs.exe bin\cache\xxximg.ext4 ÈÎÒâimg_ext4_%folderdd%
rd /s /q bin\cache 2>nul
echo.
bin\ctext {0F}"½â°üÍê±Ï£¡½â°üËùµÃÎÄ¼şÔÚ{0D} ÈÎÒâimg_ext4_%folderdd% {0F}Ä¿Â¼ÀïÃæ.{0F}{\n}"
echo.
pause
goto home
:unpack_xxx.img_mount
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ÇëÈ·±£ÈÎÒâÃüÃûµÄimg\ext4¸ñÊ½µÄ¾µÏñÎÄ¼şºÍ±¾¹¤¾ßÏàÍ¬µçÄÔÅÌ·û»òÕßÔÚ±¾¹¤¾ßÄ¿Â¼ÏÂ£¬²»Í¬µçÄÔÅÌ·ûÎŞ·¨½â°üÊ¹ÓÃ£¡{\n}"
echo.
bin\ctext {0C}"   ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄxxx.img\xxx.ext4¸ñÊ½ÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼¹ÒÔØ½â°ü...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set folderd=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set folderd=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
echo.
@echo off
set imgh=
md ÈÎÒâimg_ext4_%folderd%
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set imgh=" "%~dp0\*.img;*.ext4;*.raw;*.win"`) do %%a
bin\ctext {0B}ÕıÔÚ¼ì²âµ½µ±Ç°system.img±àÂë¸ñÊ½,ËÙ¶È¿ìÂıÈ¡¾öÓÚÄãµÄµçÄÔÅäÖÃ,ÇëÄÍĞÄµÈ´ı...{0F}{\n} & bin\simg2img.exe %imgh% bin\cache\xxximg.ext4 >nul 2>nul
echo.
echo.
echo.
bin\ctext {0E}ÇëÔÚÎÄ¼ş¶Ô±ÈÆ÷BCompare¹ÒÔØ´ò¿ªºó{\n}
echo.
bin\ctext {0E}Ñ¡ÔñĞèÒªÌáÈ¡Ä¿Â¼ºÍÎÄ¼şµ¥»÷Êó±êÓÒ¼ü¡°¸´ÖÆµ½ÎÄ¼ş¼Ğ¡±µ½º½Ä¸Ä¿Â¼ÏÂµÄ{0D} ÈÎÒâimg_ext4_%folderd% {0E}ÎÄ¼ş¼Ğ{\n}
echo.
bin\ctext {0E}ÌáÈ¡Íê±ÏºóÍê±Ï¹Ø±ÕÎÄ¼ş¶Ô±ÈÆ÷BCompare¼´¿É{0F}{\n}
echo.
for /r bin\cache\ %%a in (xxximg.ext4) do (
if %%~za==0 del bin\cache\xxximg.ext4
)
if not exist "bin\cache\xxximg.ext4" bin\Beyond_Compare\BCompare.exe %imgh%
if exist "bin\cache\xxximg.ext4" bin\Beyond_Compare\BCompare.exe bin\cache\xxximg.ext4
rd /s /q bin\cache 2>nul
echo.
bin\ctext {0F}"ÌáÈ¡Íê±Ï£¡ÌáÈ¡ËùµÃÎÄ¼şÔÚ{0D} ÈÎÒâimg_ext4_%folderd% {0F}Ä¿Â¼ÀïÃæ.{0F}{\n}"
echo.
rd /s /q ÈÎÒâimg_ext4_%folderd%\[SYS] >nul 2>nul
pause
goto home
:unpack_xxx.img_4Gno
echo.
echo.
bin\ctext {0A}" ===================================================================================================================={\n}"
bin\ctext {0E}"   ÇëÈ·±£ÈÎÒâÃüÃûµÄimg\ext4\sin\win¸ñÊ½µÄ¾µÏñÎÄ¼şºÍ±¾¹¤¾ßÏàÍ¬µçÄÔÅÌ·û»òÕßÔÚ±¾¹¤¾ßÄ¿Â¼ÏÂ£¬²»Í¬µçÄÔÅÌ·ûÎŞ·¨½â°üÊ¹ÓÃ£¡{\n}"
echo.
bin\ctext {0C}"   ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄxxx.img\xxx.ext4\xxx.sin\xxx.win¸ñÊ½ÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼½â°ü...{\n}"
bin\ctext {0A}" ===================================================================================================================={0F}{\n}"
set imgg=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set imgg=" "%~dp0\*.img;*.ext4;*.win;*.raw"`) do %%a
bin\Imgextractor.exe %imgg% -i
echo.
bin\ctext {0F}"·Ö½âÍê±Ï£¡·Ö½âËùµÃÎÄ¼ş¸úËæÔ­xxx.img\xxx.ext4\xxx.sin\xxx.winÏàÍ¬Ä¿Â¼ÏÂ..{0F}{\n}"
echo.
pause
goto home
:home_adb_fastboot
cls
bin\ctext {0A}" **********************************************************************************************************************{\n}"
bin\ctext {0B}" ÒÔÏÂ¹¦ÄÜÇëÈ·¶¨ÊÇ·ñ´ò¿ªÁË¿ª·¢ÕßÑ¡Ïî - USBµ÷ÊÔºÍOEM½âËø£¬²¢°²×°ºÃÇı¶¯ÇÒÁôÒâÊÖ»úÆÁÄ»ÉÏ¹´ÉÏ¡°ÈİĞíUSBµ÷ÊÔ¡±ÌáÊ¾²ÅÄÜÕı³£Ê¹ÓÃ!{\n}"
bin\ctext {0B}" Èç¹û¹¤¾ß²»ÏÔÊ¾Éè±¸ĞòºÅ¿É³¢ÊÔÖØÆôÊÖ»ú»òÑ¡Ôñ(µçÄÔ°²×°ADB\fastbootÇı¶¯)ÒÔÏÂÊÇÒÑÁ¬½Óadb»òfastbootÉè±¸ĞòºÅÁĞ±í£º{\n}"
echo.
bin\ctext {0E}" Èç¹ûÏÂÃæadb»òfastbootÉè±¸ĞòºÅÏÔÊ¾ÀàËÆABCDEFG123 unauthorized(unauthorize´ú±íÊÖ»ú¶ËÎ´ÊÚÈ¨¸øµçÄÔ,ÎŞ·¨Õı³£Ê¹ÓÃÒÔÏÂ¹¦ÄÜ!{0C}{\n}"
bin\adb devices & bin\fastboot devices
bin\ctext {0A}" ÇëÑ¡ÔñÏÂÃæÑ¡Ïî:{\n}"                                                                                             
echo  **********************************************************************************************************************
echo.
bin\ctext "  {0E}0.»Øµ½¹¤¾ßÊ×Ò³                                      5.ADBÁ¬½ÓÔÚrecovery×´Ì¬ÏÂ½ØÍ¼µ½µçÄÔ{\n}"
echo   1.ADB´òÓ¡logcatÊµÊ±µ÷ÊÔÈÕÖ¾                         6.ADBÁ¬½ÓÊÖ»ú¿ª»ú×´Ì¬ÏÂ½ØÍ¼µ½µçÄÔ
echo   2.ADB´òÓ¡logcat»º´æÈÕÖ¾                             7.ADBÁ¬½ÓÆÁÄ»Â¼Ïñ(Êä³ömp4¸ñÊ½)
echo   3.ADBÁ¬½ÓÊÖ»ú×Ô¶¯ÖØÆôÏµÍ³                           8.ADB²é¿´ÊÖ»úÆÁÄ»·Ö±æÂÊ
echo   4.ADBÁ¬½ÓÊÖ»ú×Ô¶¯ÖØÆôµ½recoveryÄ£Ê½                 9.ADBÍÆËÍapk°²×°µ½ÊÖ»ú¡¾apkÃû³ÆÖ»ÄÜÊı×Ö»òÕßÓ¢ÎÄ,ÖĞÎÄÃûÎŞ·¨°²×°¡¿
bin\ctext {0D}{\n}
echo  10.recovery×´Ì¬ÏÂADB SideloadÄ£Ê½ÈÎÒâÃüÃû.zip¸ñÊ½¿¨Ë¢°üË¢»ú
echo  11.½øÈërecovery×Ô¶¯¿¨Ë¢¡¾recĞè×ÔĞĞË«Çå,´Ó¿¨Ë¢°üMETA-INF\com\google\android\update-binaryÌáÈ¡³öÀ´·Åµ½±¾¹¤¾ßÄ¿Â¼ÏÂ¡¿
echo  12.fastbootÄ£Ê½¸ü»»recovery¡¾Çë°ÑrecoveryÃüÃûÎªrecovery.img²¢·ÅÖÃÔÚ±¾¹¤¾ßÄ¿Â¼ÏÂ,ÈİĞíÊÖ»ú´ı»ú×´Ì¬ÏÂÔËĞĞ¡¿
echo  13.´ò¿ªADB¿ØÖÆÌ¨adb shellÄ£Ê½¡¾ĞèÒªÊÖ¶¯ÊäÈë¸÷ÖÖÃüÁîÊµÏÖADB¸÷ÖÖ¹¦ÄÜ¡¿
echo  14.´ò¿ªADB\fastboot¿ØÖÆÌ¨ÊÖ¶¯Ä£Ê½¡¾ĞèÒªÊÖ¶¯ÊäÈë¸÷ÖÖÃüÁîÊµÏÖADB\fastboot¸÷ÖÖ¹¦ÄÜ¡¿
bin\ctext {0B}{\n}
echo  15.µçÄÔ°²×°ADB\fastbootÇı¶¯                         16.´ò¿ªADBÎÄ¼ş¹ÜÀíÆ÷                  17.Éú³É¹Ù·½Ô­³§recovery.img
echo.
bin\ctext "{02} 18.ADB²é¿´CPUĞÍºÅĞÅÏ¢ {05} 19.ADB²é¿´ÊÖ»ú·ÖÇø´óĞ¡ {06} 20.ADB²é¿´ÊÖ»ú·ÖÇø×ÜÈİÁ¿ {08} 21.ADB²é¿´ÊÖ»ú¹ÒÔØÇøÖ· {03} 22.ADB²é¿´ÊÖ»ú¹ÒÔØ{\n}" 
bin\ctext {0F}{\n}
set /p webz=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webz%"=="0" goto home
if "%webz%"=="1" goto Print_logcat_time
if "%webz%"=="2" goto Print_logcat_cache
if "%webz%"=="3" goto adb_reboot_android
if "%webz%"=="4" goto adb_reboot_recovery
if "%webz%"=="5" goto recovery_Screenshot
if "%webz%"=="6" goto android_screenshot
if "%webz%"=="7" goto ScreenVideo
if "%webz%"=="8" goto adb_look_phone_screen_size 
if "%webz%"=="9" goto adb_install_apk
if "%webz%"=="10" goto adb_sideload
if "%webz%"=="11" goto adb_flash_zip
if "%webz%"=="12" goto fastboot_install_recovery
if "%webz%"=="13" goto open_adb_fastboot_shell
if "%webz%"=="14" goto open_adb_fastboot_Manual
if "%webz%"=="15" goto adb_driver_installer
if "%webz%"=="16" goto open_AdbFileExplorer
if "%webz%"=="17" goto adb_official_recovery
if "%webz%"=="18" goto adb_look_cpu
if "%webz%"=="19" goto adb_look_System_size
if "%webz%"=="20" goto adb_look_System_partitions
if "%webz%"=="21" goto adb_look_mounts
if "%webz%"=="22" goto adb_look_System_mount
goto home_adb_fastboot
:adb_official_recovery
if not exist "boot.img" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½systemÎÄ¼ş¼Ğ£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚboot.img{0F}{\n}"
echo.
echo.
echo.
pause
goto home_adb_fastboot
)
) else (
echo.
if not exist "recovery-from-boot.p" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½recovery-from-boot.p£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚrecovery-from-boot.p{0F}{\n}"
echo.
echo.
echo.
pause
goto home_adb_fastboot
)
) else (
echo.
if not exist "recovery-resource.dat" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½recovery-resource.dat£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚrecovery-resource.dat{0F}{\n}"
echo.
echo.
echo.
pause
goto home_adb_fastboot
)
) else (
echo.
if not exist "install-recovery.sh" (
echo.
echo.
bin\ctext "{0C}      Ã»ÕÒµ½install-recovery.sh£¬ÇëÈ·ÈÏº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚinstall-recovery.sh{0F}{\n}"
echo.
echo.
echo.
pause
goto home_adb_fastboot
)
) else (
echo.
echo.
bin\ctext "{0E}      ĞèÒªÊÖ»ú´ò¿ªÉèÖÃ-¿ª·¢ÕßÑ¡Ïî-USBµ÷ÊÔ£¬²ÅÄÜË³ÀûÉú³É¹Ù·½recovery.img{\n}"
echo.
bin\ctext "{0C}      Çë°ÑÒÔÏÂÂ·¾¶¹Ù·½ÎÄ¼şÌáÈ¡³öÀ´·ÅÔÚº½Ä¸¸ùÄ¿Â¼ÏÂ{\n}"
bin\ctext "{0B}      boot.img{\n}"
bin\ctext "{0B}      system\recovery-from-boot.p{\n}"
bin\ctext "{0B}      system\etc\recovery-resource.dat{\n}"
bin\ctext "{0B}      system\bin\install-recovery.sh{0F}{\n}"
echo.
echo.
copy boot.img recovery.img >nul 2>nul
pause
ping 127.1 -n 2 >nul
bin\rec_sh.exe -i %cd%\install-recovery.sh -b -o %cd%\Recovery-Merge.sh
set /p Recovery_Merge=<Recovery-Merge.sh
del Recovery-Merge.sh
del recovery.img
fsutil file createnew recovery.img 0 >nul 2>nul
bin\adb devices
bin\adb push boot.img /data/local/tmp/
bin\adb push recovery.img /data/local/tmp/
bin\adb push recovery-from-boot.p /data/local/tmp/
bin\adb push recovery-resource.dat /data/local/tmp/
bin\adb shell %Recovery_Merge%
bin\adb pull /data/local/tmp/recovery.img recovery.img
bin\adb shell rm -f /data/local/tmp/boot.img
bin\adb shell rm -f /data/local/tmp/recovery.img
bin\adb shell rm -f /data/local/tmp/recovery-from-boot.p
bin\adb shell rm -f /data/local/tmp/recovery-resource.dat
echo.
bin\ctext "{0C}          Éú³É¹Ù·½recovery.imgÔÚº½Ä¸¸úÄ¿Â¼ÏÂ£¡{0F}{\n}"
echo.
)
pause
goto home_adb_fastboot
:open_adb_fastboot_shell
cls
echo.
bin\ctext {0A}  ÏÖÔÚ¿ÉÒÔÖ±½ÓÊäÈë¸÷ÖÖadb»òfastbootÃüÁîÀ´ÊµÏÖ¶ÔÓ¦¹¦ÄÜ£¬ÏÂÃæÊÇ²Î¿¼Ñù°å£º{\n}
echo.
bin\ctext {0E}" ÊÖ»úSD¿¨·¢ËÍµ½±¾¹¤¾ßÄ¿Â¼ÏÂ:adb pull /sdcard/1.mp3 1.mp3" "    {0f}ÁĞ¾ÙÒÑÁ¬½ÓµÄfastbootÉè±¸£º  fastboot devices{\n}"
bin\ctext {0E}" ±¾¹¤¾ßÄ¿Â¼ÏÂ·¢ËÍµ½ÊÖ»úSD¿¨:adb push 1.mp3 /sdcard/1.mp3" "    {0f}Ë¢Èëboot.img£º              fastboot flash boot boot.img{\n}"
bin\ctext {0E}" ÁĞ¾ÙÒÑÁ¬½ÓµÄadbÉè±¸£º      adb devices" "                     {0f}½âËøbootloader(Ë×³Æ½âBLËø)£ºfastboot oem unlock{\n}"
bin\ctext {0E}" ½øÈëadbÔËĞĞ»·¾³£º          adb shell" "                       {0f}ÖØÆôÊÖ»ú:                   fastboot reboot{\n}"
bin\ctext {0E}" ²é¿´adbÃüÁî°ïÖú£º          adb help" "                        {0f}²é¿´fastbootÃüÁî°ïÖú£º      fastboot help{\n}"
echo.
bin\ctext {0D}ÇëÈ·¶¨ÊÇ·ñ´ò¿ªÁË¿ª·¢ÕßÑ¡Ïî - USBµ÷ÊÔºÍOEM½âËøºÍÑ¡Ôñ±¾¹¤¾ß¡¾µçÄÔ°²×°ADB\fastbootÇı¶¯¡¿½â¾ö{\n}
bin\ctext {0D}²¢°²×°ºÃÇı¶¯ÇÒÁôÒâÊÖ»úÆÁÄ»ÉÏ¹´ÉÏ¡°ÈİĞíUSBµ÷ÊÔ¡±ÌáÊ¾,ĞèÒªÓĞadb»òfastbootÉè±¸ĞòºÅ²ÅÄÜ½øĞĞÒÔÏÂadb»òfastboot²Ù×÷{\n}
echo.
bin\ctext  {0B}  ÒÑÁ¬½Óadb»òfastbootÉè±¸ĞòºÅÁĞ±í£º{0C}{\n}
bin\adb devices & bin\fastboot devices
bin\ctext {0A} ÊäÈëexit¼´¿É·µ»Øadb\fastboot¿ØÖÆÌ¨Ö÷Ò³Ãæ£¨±¸×¢:´úÂëÇÃÈëÓĞsu£¨ÏÔÊ¾root£©ĞèÊäÈëÁ½´Îexit½«·µ»Øadb\fastboot¿ØÖÆÌ¨Ö÷Ò³Ãæ£©{\n}
echo.
start bin\adb_help.txt
bin\adb shell
echo °´ÏÂÈÎÒâ¼ü»á×Ô¶¯¹Ø±Õ ¡°shellÄ£Ê½adb\fastboot¿ØÖÆÌ¨¡± ºÍadb_help.txt¼ÇÊÂ±¾²¢»Øµ½¹¤¾ßÊ×Ò³£¡
echo.
pause
taskkill /FI "WINDOWTITLE eq adb_help.txt*"
goto home_adb_fastboot
:open_adb_fastboot_Manual
cls
echo.
bin\ctext {0A}  ÏÖÔÚ¿ÉÒÔÖ±½ÓÊäÈë¸÷ÖÖadb»òfastbootÃüÁîÀ´ÊµÏÖ¶ÔÓ¦¹¦ÄÜ£¬ÏÂÃæÊÇ²Î¿¼Ñù°å£º{\n}
echo.
bin\ctext {0E}" ÊÖ»úSD¿¨·¢ËÍµ½±¾¹¤¾ßÄ¿Â¼ÏÂ:adb pull /sdcard/1.mp3 1.mp3" "    {0f}ÁĞ¾ÙÒÑÁ¬½ÓµÄfastbootÉè±¸£º  fastboot devices{\n}"
bin\ctext {0E}" ±¾¹¤¾ßÄ¿Â¼ÏÂ·¢ËÍµ½ÊÖ»úSD¿¨:adb push 1.mp3 /sdcard/1.mp3" "    {0f}Ë¢Èëboot.img£º              fastboot flash boot boot.img{\n}"
bin\ctext {0E}" ÁĞ¾ÙÒÑÁ¬½ÓµÄadbÉè±¸£º      adb devices" "                     {0f}½âËøbootloader(Ë×³Æ½âBLËø)£ºfastboot oem unlock{\n}"
bin\ctext {0E}" ½øÈëadbÔËĞĞ»·¾³£º          adb shell" "                       {0f}ÖØÆôÊÖ»ú:                   fastboot reboot{\n}"
bin\ctext {0E}" ²é¿´adbÃüÁî°ïÖú£º          adb help" "                        {0f}²é¿´fastbootÃüÁî°ïÖú£º      fastboot help{\n}"
echo.
bin\ctext {0D}ÇëÈ·¶¨ÊÇ·ñ´ò¿ªÁË¿ª·¢ÕßÑ¡Ïî - USBµ÷ÊÔºÍOEM½âËøºÍÑ¡Ôñ±¾¹¤¾ß¡¾µçÄÔ°²×°ADB\fastbootÇı¶¯¡¿½â¾ö{\n}
bin\ctext {0D}²¢°²×°ºÃÇı¶¯ÇÒÁôÒâÊÖ»úÆÁÄ»ÉÏ¹´ÉÏ¡°ÈİĞíUSBµ÷ÊÔ¡±ÌáÊ¾,ĞèÒªÓĞadb»òfastbootÉè±¸ĞòºÅ²ÅÄÜ½øĞĞÒÔÏÂadb»òfastboot²Ù×÷{\n}
echo.
bin\ctext {0E}Èç¹û²Ù×÷ÖĞ³öÏÖ{0F}'adb' ²»ÊÇÄÚ²¿»òÍâ²¿ÃüÁî,Ò²²»ÊÇ¿ÉÔËĞĞµÄ³ÌĞò»òÅú´¦ÀíÎÄ¼ş.{0E}ÇëÑ¡Ôñ±¾¹¤¾ß¡¾µçÄÔ°²×°ADB\fastbootÇı¶¯¡¿½â¾ö{\n}
echo.
bin\ctext {0B}  ÒÑÁ¬½Óadb»òfastbootÉè±¸ĞòºÅÁĞ±í£º{0C}{\n}
bin\adb devices & bin\fastboot devices
bin\ctext {0A} ÊäÈëexit¼´¿É·µ»Øadb\fastboot¿ØÖÆÌ¨Ö÷Ò³Ãæ£¨±¸×¢:´úÂëÇÃÈëÓĞsu£¨ÏÔÊ¾root£©ĞèÊäÈëÈı´Îexit½«·µ»Øadb\fastboot¿ØÖÆÌ¨Ö÷Ò³Ãæ£©{\n}
echo.
start bin\adb_help.txt
@cmd /k
echo.
echo °´ÏÂÈÎÒâ¼ü»á×Ô¶¯¹Ø±Õ ¡°ÊÖ¶¯Ä£Ê½adb\fastboot¿ØÖÆÌ¨¡± ºÍadb_help.txt¼ÇÊÂ±¾²¢»Øµ½¹¤¾ßÊ×Ò³£¡
echo.
pause
taskkill /FI "WINDOWTITLE eq adb_help.txt*"
goto home_adb_fastboot
:adb_reboot_recovery
bin\ctext "{0B}ÕıÔÚÊ¹ÓÃadbÁ¬½ÓÖØÆôµ½recoveryÄ£Ê½... {07}{\n}"
bin\adb reboot recovery
pause
goto home_adb_fastboot
:adb_reboot_android
bin\ctext "{0E}ÕıÔÚÊ¹ÓÃadbÁ¬½ÓÕıÔÚÖØÆôÊÖ»ú... {07}{\n}"
bin\adb reboot
pause
goto home_adb_fastboot
:fastboot_install_recovery
echo.
echo.     ËøÁËbootloader£¨Ë×³ÆËøBL£©µÄÊÖ»úÇëÏÈ½âËø£¬·ñÔòÎŞ·¨Ë¢ÈëµÚÈı·½recovery£¡
echo.
pause
echo.
if not exist "recovery.img" (
echo.
echo.
bin\ctext "{0C}      Çë¼ì²éº½Ä¸Ä¿Â¼ÏÂÊÇ·ñ´æÔÚrecovery.img¡£{0F}{\n}"
echo.
echo.
echo.
pause
goto home_adb_fastboot
)
) else (
taskkill /f /im adb.exe >nul 2>nul
taskkill /f /im tadb.exe >nul 2>nul
taskkill /f /im kwAdb.exe >nul 2>nul
taskkill /f /im aapt.exe >nul 2>nul
taskkill /f /im adb.exe >nul 2>nul
taskkill /f /im shuame_helper.exe >nul 2>nul
taskkill /f /im romaster_daemon.exe >nul 2>nul
taskkill /f /fi "imagename eq wandoujia*" >nul 2>nul
taskkill /f /im "AndroidInterface.exe" >nul 2>nul
taskkill /f /im "Android PC Suite.exe" >nul 2>nul
taskkill /f /im "360MobileMgr.exe" >nul 2>nul
taskkill /f /im "qitu_adb.exe" >nul 2>nul
echo.
bin\adb devices
echo. --- ·¢ÏÖadbÉè±¸
echo.     ÉÔºóÊÖ»ú½«»á½øÈëfastbootÄ£Ê½
echo.
bin\adb reboot bootloader
bin\fastboot devices
ping -n 1 127.1 >nul 2>nul
echo. --- ·¢ÏÖfastbootÉè±¸
echo.     ÉÔºóÊÖ»ú½«»á½øÈëfastbootÄ£Ê½
echo.
bin\ctext "{0D}  ====================={\n}"
bin\ctext "{0D}   ×Ô¶¯Ë¢Ğ´recovery... {\n}"
bin\ctext "{0D}  ====================={0F}{\n}"
bin\ctext {0F}{\n}
bin\fastboot flash recovery recovery.img
echo.
echo.
echo. Èç¹ûÒÔÉÏ³öÏÖ¡°... OKAY¡±×ÖÑùÁ½´ÎÔò±íÊ¾Ë¢Èë³É¹¦£¬ÊÖ»ú½«ÖØÆôµ½recovery...
echo.
bin\fastboot flash recovery recovery.img >nul 2>nul
pause
echo.
bin\fastboot oem reboot-recovery
)
goto home_adb_fastboot
:adb_look_phone_screen_size
echo.
echo.
echo.
bin\ctext {0B}ÒÔÏÂÊÇµ±Ç°ÊÖ»úµÄÆÁÄ»·Ö±æÂÊ{0E}
echo.
bin\adb shell wm size
bin\ctext {0F}
echo.
pause
goto home_adb_fastboot
:adb_look_cpu
bin\adb shell cat /proc/cpuinfo
echo.
pause
goto home_adb_fastboot
:adb_look_System_size
bin\adb shell df
echo.
pause
goto home_adb_fastboot
:adb_look_mounts
bin\adb shell cat /proc/mounts
echo.
pause
goto home_adb_fastboot
:adb_look_System_partitions
bin\adb shell cat /proc/partitions
echo.
pause
goto home_adb_fastboot
:adb_look_System_mount
bin\adb shell ls -l
echo.
pause
goto home_adb_fastboot
:recovery_Screenshot
bin\adb push bin/fb2png /tmp/ >nul
bin\adb shell chmod 755 /tmp/fb2png >nul
for /f "delims=" %%b in ('wmic OS Get localdatetime  ^| find "."') do set "dt=%%b"
set "timestampa=%dt:~8,6%"
set "YYYYa=%dt:~0,4%"
set "MMa=%dt:~4,2%"
set "DDa=%dt:~6,2%"
set "aimg=%DD%_%timestampa%"	
set "afolder=recovery½ØÍ¼_%YYYYa%-%MMa%-%DDa%"
set "afile=recovery½ØÍ¼_%aimg%.png"
if not exist %afolder% md %afolder% >nul
set "ascreenshot=%afolder%\%afile%"
echo( 
bin\adb shell "/tmp/fb2png /tmp/fbdump.png > /tmp/info; head -n 20 /tmp/info | tail -n 13; rm -f /tmp/info"
bin\ctext "{0B}¸´ÖÆ½ØÍ¼µ½µçÄÔ{07}{\n}"
bin\adb pull /tmp/fbdump.png %ascreenshot%
bin\adb shell rm -f /tmp/fbdump.png >nul
echo(
bin\ctext "½ØÍ¼³É¹¦! {0E}%afile% {07}ÔÚÕâ¸ö{0E}%afolder% {07}ÎÄ¼ş¼ĞÀïÃæ.{\n}"
echo.
echo 1.ÇëÈ·¶¨ÊÇ·ñ´ò¿ªÁË¿ª·¢ÕßÑ¡Ïî - USBµ÷ÊÔºÍOEM½âËø²¢°²×°ºÃÇı¶¯ÇÒÁôÒâÊÖ»úÆÁÄ»ÉÏ¹´ÉÏ¡°ÈİĞíUSBµ÷ÊÔ¡±ÌáÊ¾²ÅÄÜÕı³£Ê¹ÓÃ!
echo.
echo 2.Èç¹ûÃ»ÕÒµ½½ØÍ¼µÄÍ¼Æ¬£¬ÇëÖØÆôÊÖ»ú»òÑ¡Ôñ±¾¹¤¾ß¡¾µçÄÔ°²×°ADB\fastbootÇı¶¯¡¿½â¾ö¡£
echo.
pause
goto home_adb_fastboot
:android_screenshot
bin\adb shell mkdir -p /sdcard/Screenshots >nul 2>nul
for /f "delims=" %%d in ('wmic OS Get localdatetime  ^| find "."') do set "dt=%%d"
set "timestampb=%dt:~8,6%"
set "YYYYb=%dt:~0,4%"
set "MMb=%dt:~4,2%"
set "DDb=%dt:~6,2%"
set "bimg=%YYYYb%.%MMb%.%DDb%_%timestampb%"	
set "bfolder=¿ª»ú×´Ì¬ÏÂ½ØÍ¼_%YYYYb%-%MMb%-%DDb%"
set "bfile=¿ª»ú×´Ì¬ÏÂ½ØÍ¼_%bimg%.png"
if not exist %bfolder% md %bfolder% >nul 2>nul
set "bscreenshot=%bfolder%\%bfile%"
echo( 
bin\adb shell screencap -p /sdcard/Screenshots/screenos.png >nul 2>nul
bin\ctext "{0E}¸´ÖÆ½ØÍ¼µ½µçÄÔ{07}{\n}"
bin\adb pull /sdcard/Screenshots/screenos.png %bscreenshot% >nul 2>nul
bin\adb shell rm -f /sdcard/Screenshots/screenos.png >nul 2>nul
echo(
bin\ctext "½ØÍ¼³É¹¦! {0E}%bfile% {07}ÔÚÕâ¸ö{0E}%bfolder% {07}ÎÄ¼ş¼ĞÀïÃæ.{\n}"
echo.
echo 1.ÇëÈ·¶¨ÊÇ·ñ´ò¿ªÁË¿ª·¢ÕßÑ¡Ïî - USBµ÷ÊÔºÍOEM½âËø²¢°²×°ºÃÇı¶¯ÇÒÁôÒâÊÖ»úÆÁÄ»ÉÏ¹´ÉÏ¡°ÈİĞíUSBµ÷ÊÔ¡±ÌáÊ¾²ÅÄÜÕı³£Ê¹ÓÃ!
echo.
echo 2.Èç¹ûÃ»ÕÒµ½½ØÍ¼µÄÍ¼Æ¬£¬ÇëÖØÆôÊÖ»ú»òÑ¡Ôñ±¾¹¤¾ß¡¾µçÄÔ°²×°ADB/fastbootÇı¶¯¡¿½â¾ö¡£
echo.
pause
goto home_adb_fastboot
:ScreenVideo
for /f "delims=" %%d in ('wmic OS Get localdatetime  ^| find "."') do set "dt=%%d"
set "timestampc=%dt:~8,6%"
set "YYYYc=%dt:~0,4%"
set "MMc=%dt:~4,2%"
set "DDc=%dt:~6,2%"
set "cimg=%YYYYc%.%MMc%.%DDc%_%timestampc%"	
set "cfolder=ÆÁÄ»Â¼ÖÆ_%YYYYc%-%MMc%-%DDc%"
set "cfile=ÆÁÄ»Â¼ÖÆ_%cimg%.mp4"
if not exist %cfolder% md %cfolder% >nul 2>nul
set "video=%cfolder%\%cfile%"
echo( 
echo.
bin\ctext "{0B} ÊÖ»úÆÁÄ»ÕıÔÚÂ¼ÏñÖĞ...{\n}"
echo.
echo n|start /max /wait cmd /c "mode 110,20& bin\ctext {0B}½áÊøÆÁÄ»ÊÓÆµÂ¼ÖÆ,ÇëÖ±½Ó¹Ø±Õ´Ë´°¿Ú¼´¿É×Ô¶¯±£´æÆÁÄ»Â¼ÖÆµÄÊÓÆµµ½º½Ä¸µ±Ç°Ä¿Â¼!²¿·ÖÊÖ»úÓĞ×î³¤Èı·ÖÖÓÂ¼ÖÆÊ±¼äÏŞÖÆ¡£{0F} & bin\adb shell screenrecord --verbose /sdcard/screenrecord.mp4"
ping 127.1 -n 3 >nul
bin\ctext "{0E} ÆÁÄ»Â¼ÏñÂ¼ÖÆÊ±¼äÔ½³¤ÎÄ¼şÔ½´ó,¸´ÖÆËÙ¶È¿ìÂıÈ¡¾öÓÚÄãÆÁÄ»Â¼ÏñÊ±¼äµÄ³¤¶Ì£¡{\n}"
bin\ctext "{0E} ÕıÔÚ¸´ÖÆÆÁÄ»Â¼Ïñmp4µ½µçÄÔ,ÇëÄÍĞÄµÈ´ı...{07}{\n}"
bin\adb pull /sdcard/screenrecord.mp4 %video% >nul 2>nul
bin\adb shell rm -f /sdcard/screenrecord.mp4 >nul 2>nul
echo(
bin\ctext "ÆÁÄ»Â¼ÏñÊÓÆµmp4³É¹¦! {0E}%cfile% {07}ÔÚÕâ¸ö{0E}%cfolder% {07}ÎÄ¼ş¼ĞÀïÃæ.{\n}"
echo.
echo 1.ÇëÈ·¶¨ÊÇ·ñ´ò¿ªÁË¿ª·¢ÕßÑ¡Ïî - USBµ÷ÊÔºÍOEM½âËø²¢°²×°ºÃÇı¶¯ÇÒÁôÒâÊÖ»úÆÁÄ»ÉÏ¹´ÉÏ¡°ÈİĞíUSBµ÷ÊÔ¡±ÌáÊ¾²ÅÄÜÕı³£Ê¹ÓÃ!
echo.
echo 2.Èç¹ûÃ»ÕÒµ½ÆÁÄ»Â¼ÖÆµÄÊÓÆµÎÄ¼ş£¬ÇëÖØÆôÊÖ»ú»òÑ¡Ôñ±¾¹¤¾ß¡¾µçÄÔ°²×°ADB/fastbootÇı¶¯¡¿½â¾ö¡£
echo.
pause
goto home_adb_fastboot
:adb_sideload
echo.
bin\ctext {0C}ÇëÈ·±£ÄãµÄÊÖ»úÄÚÖÃ´æ´¢ÓĞ×ã¹»ÈİÁ¿´æ·Å¿¨Ë¢°ü,·ñÔòÄÚ´æ²»×ã½«ÎŞ·¨½øĞĞadb sideloadÄ£Ê½¿¨Ë¢£¡{0F}{\n}
echo.
pause
echo.
echo ÔÚrecoveryÀïÃæ´ò¿ªadb sideloadÄ£Ê½¼´¿É£¡ÊÇ·ñĞèÒªË«Çå×ÔĞĞ¾ö¶¨£¡
echo.
bin\ctext {0E}ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄzip¸ñÊ½µÄ¿¨Ë¢°üºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼ÍÆËÍ...{0F}{\n}
echo.
echo ÕıÔÚÍÆËÍ¿¨Ë¢°üµ½ÊÖ»ú£¬ÇëÉÔºó...
echo.
set rom=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set rom=" "%~dp0\*.zip"`) do %%a
bin\adb sideload %rom%
echo ÍÆËÍË¢»ú°üÍê±Ï£¡ÇëÖØÆôÊÖ»ú...
echo.
pause
goto home_adb_fastboot
:adb_install_apk
echo.
bin\ctext "{0D}  ==================================================================={\n}"
echo   Çë¼ì²éÊÇ·ñ´ò¿ª°²È«-Î´ÖªÀ´Ô´ºÍ¿ª·¢ÕßÑ¡Ïî-USBµ÷ÊÔºÍOEM½âËø £¡
echo.
echo   ²¢°²×°ºÃÇı¶¯²¢ÁôÒâÊÖ»úÆÁÄ»ÉÏ¹´ÉÏ£¨ÈİĞíUSBµ÷ÊÔ£©ÌáÊ¾²ÅÄÜÕı³£Ê¹ÓÃ!£¡
echo.
echo   »òÕßÑ¡Ôñ±¾¹¤¾ß¡¾µçÄÔ°²×°ADB\fastbootÇı¶¯¡¿½â¾ö 
bin\ctext "{0D}  ==================================================================={0F}{\n}"
echo.
bin\ctext {0E}apkÃû³ÆÖ»ÄÜÊı×Ö»òÕßÓ¢ÎÄ,ÖĞÎÄÃû³ÆÎŞ·¨°²×°{\n}
echo.
echo.
bin\ctext {0C}ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄapkÈí¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼ÍÆËÍ°²×°Èí¼şµ½ÊÖ»úÉÏ...{0F}{\n}
echo.
set apk=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set apk=" "%~dp0\*.apk"`) do %%a
bin\adb install -r %apk%
goto home_adb_fastboot
:adb_flash_zip
if not exist "update-binary" (
echo.
echo.
bin\ctext "{0C}      È±ÉÙupdate-binary¿¨Ë¢×é¼ş,ÇëÂíÉÏ¼ì²é±¾¹¤¾ßÄ¿Â¼ÏÂÊÇ·ñ´æÔÚ¶ÔÓ¦CPUĞÍºÅupdate-binaryË¢»ú×é¼ş¡£{0F}{\n}"
echo.
bin\ctext "{0C}      ´Ó¿¨Ë¢°üÌáÈ¡META-INF\com\google\android\update-binary¿¨Ë¢×é¼ş·Åµ½±¾¹¤¾ßÄ¿Â¼ÏÂ¡£{0F}{\n}"
echo.
echo.
pause
goto home_adb_fastboot
)
) else (
echo.
bin\ctext {0C}ÇëÈ·±£ÄãµÄÊÖ»úÄÚÖÃ´æ´¢ÓĞ×ã¹»ÈİÁ¿´æ·Å¿¨Ë¢°ü,·ñÔòÄÚ´æ²»×ã½«ÎŞ·¨½øĞĞrecovery¿¨Ë¢£¡{0F}{\n}
echo.
pause
bin\adb reboot recovery
@echo off
for /l %%i in (20,-1,0) do (
cls
echo.
bin\ctext {0E}½øÈërecovery½çÃæµ¹Êı»¹Ê£{0F} %%i {0E}ÃëÊ±¼ä£¬ÕıÔÚË¢Èëupdate-binaryË¢»ú×é¼ş...{0F}{\n}
ping 127.1 -n 2 >nul
)
bin\adb push update-binary /tmp/update-binary
bin\adb shell chmod 0777 /tmp/update-binary
echo.
echo.
bin\ctext {0C}³É¹¦Ë¢Èë¶ÔÓ¦CPUĞÍºÅupdate-binaryË¢»ú×é¼ş½«ÏÔÊ¾ÓĞ[100%]×ÖÑù£¡{0F}{\n}
echo.
bin\ctext {0C}Ë¢ÈëÊ§°Ü½«ÏÔÊ¾ÓĞNo such file or directory×ÖÑù£¬Çë¼ì²é±¾¹¤¾ßÄ¿Â¼ÏÂÊÇ·ñ´æÔÚ¶ÔÓ¦CPUĞÍºÅupdate-binaryË¢»ú×é¼ş¡£{0F}{\n}
echo.
echo.
bin\ctext {0B}ÇëÔÚµ¯´°Ñ¡ÔñÈÎÒâÃüÃûµÄzip¸ñÊ½µÄ¿¨Ë¢°üºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼ÍÆËÍ...{0F}{\n}
echo.
bin\ctext {0B}Çë×ÔĞĞÔÚrecovery½çÃæ×ÔĞĞ¾ö¶¨ÊÇ·ñĞèÒªË«Çå²Ù×÷£¬ÕıÔÚÍÆËÍ¿¨Ë¢°üµ½ÊÖ»ú£¬ÇëÉÔºó...{0F}{\n}
set roma=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set roma=" "%~dp0\*.zip"`) do %%a
bin\adb push %roma% /sdcard/flashrom.zip
bin\adb shell "/tmp/update-binary" 2 2 /sdcard/flashrom.zip
bin\adb shell rm -f /sdcard/flashrom.zip >nul 2>nul
echo Ë¢»ú³É¹¦!°´ÏÂÈÎÒâ¼üÊÖ»ú½«ÖØÆô...
bin\adb shell rm -f /sdcard/flashrom.zip >nul 2>nul
)
pause
bin\adb reboot 
goto home_adb_fastboot
:adb_driver_installer
bin\adb kill-server
bin\ctext {0A}{\n}
echo   #################################################
echo   #                                               #
echo   #            usbµ÷ÊÔÇı¶¯ v1.4.3 °æ±¾            #
echo   #                                               #
echo   #  °²×¿adb fastboot°æ±¾ 1.0.39£¨°²×¿8.1 Oreo£©  #
echo   #                                               #
echo   #      Google usb Çı¶¯°æ±¾ 11.0.0000.00000      #
echo   #                                               #
echo   #################################################
bin\ctext {0F}{\n}
:adb_s
echo(
echo ÕıÔÚ°²×° adb ºÍfastboot ... (ËùÓĞÓÃ»§)
echo(
bin\adb kill-server > NUL 2>&1
if exist %windir%\adb.exe DEL %windir%\adb.exe /f /q
if exist %windir%\AdbWinApi.dll DEL %windir%\AdbWinApi.dll /f /q
if exist %windir%\AdbWinUsbApi.dll DEL %windir%\AdbWinUsbApi.dll /f /q
if exist %windir%\fastboot.exe DEL %windir%\fastboot.exe /f /q
if exist %windir%\libwinpthread-1.dll DEL %windir%\libwinpthread-1.dll /f /q
xcopy bin\adb.exe %systemdrive%\adb\ /y /q /h >nul 2>nul
xcopy bin\AdbWinApi.dll %systemdrive%\adb\ /y /q /h >nul 2>nul
xcopy bin\AdbWinUsbApi.dll %systemdrive%\adb\ /y /q /h >nul 2>nul
xcopy bin\fastboot.exe %systemdrive%\adb\ /y /q /h >nul 2>nul
xcopy bin\libwinpthread-1.dll %systemdrive%\adb\ /y /q /h >nul 2>nul
:path_s
echo %path% > bin\path.tmp
ver > nul
find "%systemdrive%\adb" bin\path.tmp > nul 2>&1
if %errorlevel% lss 1 goto driver
ver | find "5.1" > nul 2>&1
if %errorlevel% lss 1 bin\driver\SETX.exe path "%path%;%systemdrive%\adb" /m
setx path "%path%;%systemdrive%\adb" /m
goto driver
:driver
if %processor_architecture%==x86 (goto x86) else (goto x64)
:x64
echo(
echo ÕıÔÚ°²×° 64Î» Éè±¸Çı¶¯ ...
echo Çë²»Òª¹Ø±Õ´°¿Ú ...
start /wait bin\driver\DPInst_x64.exe /f
goto finish
:x86
echo(
echo ÕıÔÚ°²×° 32Î» Éè±¸Çı¶¯ ...
echo Çë²»Òª¹Ø±Õ´°¿Ú ...
start /wait bin\driver\DPInst_x86.exe /f
goto finish
:finish
echo(
bin\ctext {0C} adb ºÍ fastboot»·¾³ÅäÖÃ°²×°Íê³É£¡ Çë¹Ø±Õº½Ä¸ÖØĞÂ´ò¿ª¼´¿ÉÉúĞ§£¡{0F}{\n}
ping localhost -n 2 >NUL
del /s /q bin\path.tmp >nul 2>nul
pause
goto home_adb_fastboot
:java8_home
cls
bin\ctext {0A}{\n}
echo  *********************************************************************************
echo.
echo.         ÌáĞÑ£ºÇë°²×°java8_v1.8.0_172Íê±Ïºó£¬Á¢¼´ÅäÖÃjava\adb»·¾³±äÁ¿!
echo. 
echo. *********************************************************************************
bin\ctext {0E}{\n}
echo   1.°²×°java8_v1.8.0_172ÔËĞĞ»·¾³ (°²×°Íêjava8_v1.8.0_172Á¢¼´ÅäÖÃjava\adb»·¾³±äÁ¿)
bin\ctext {0D}{\n}
echo   2.ÅäÖÃjava\adb»·¾³±äÁ¿ (ÅäÖÃÍê±Ïºó½«»áÑéÖ¤»·¾³±äÁ¿ÊÇ·ñÍêÕûÕıÈ·)
bin\ctext {0B}{\n}
echo   3.¸üĞÂ²é¿´java×îĞÂ°æ±¾
bin\ctext {0C}{\n}
echo   4.°²×°Net_Framework_4.7
bin\ctext {0A}{\n}
echo   0.»Øµ½¹¤¾ßÊ×Ò³
bin\ctext {0F}{\n}
echo.
set /p webaa=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webaa%"=="1" goto install_java8
if "%webaa%"=="2" goto java_adb_peizhi_Manual
if "%webaa%"=="3" goto update_java8
if "%webaa%"=="4" goto install_Net_Framework_4.7
if "%webaa%"=="0" goto home
goto java8_home
:install_java8
echo.
echo ½¨ÒéÄ¬ÈÏ°²×°µ½CÅÌ·½±ã×Ô¶¯ÅäÖÃjava»·¾³±äÁ¿£¬Ò²¿ÉÒÔ×Ô¶¨Òå°²×°Â·¾¶µ«ĞèÒªÊÖ¶¯ÅäÖÃjava»·¾³±äÁ¿£¡
echo.
echo ÉÔºó½«´ò¿ªjava8°²×°³ÌĞò£¡
echo.
start bin\java8.exe
pause
goto java8_home
:java_adb_peizhi_Manual
echo.
echo  java»·¾³ÅäÖÃĞèÒªµçÄÔ¹ÜÀíÔ±ÕË»§´ò¿ª²ÅÄÜÊ¹ÓÃ£¡
echo.
echo  ÕıÔÚÈ«×Ô¶¯ÅäÖÃjava»·¾³! 
@set path=%path%;%systemroot%;%systemroot%\system32; 
@reg add "HKLM\system\controlset001\control\session manager\environment" /v JAVA_HOME /t reg_sz /d "%cd%" /f 
@reg add "HKLM\system\controlset001\control\session manager\environment" /v PATH /t reg_expand_sz /d ".;%%JAVA_HOME%%\bin;%path%" /f 
@reg add "HKLM\system\controlset001\control\session manager\environment" /v CLASSPATH /t reg_sz /d "%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar;." /f 
pause
echo.
echo ÈçÍ¨¹ıĞ£Ñé½«ÕâÑùÏÔÊ¾,Èç¹ûÏÔÊ¾²»ÊÇÒÔÏÂÀàËÆĞÅÏ¢´ú±íjava»·¾³ÅäÖÃ²»Õı³£,ÇëÑ¡ÔñÊÖ¶¯Éè¶¨java»·¾³ÅäÖÃ£¡
echo.
bin\ctext {0C}java version "1.8.0_172"{0F}{\n}
bin\ctext {0C}Java(TM) SE Runtime Environment (build 1.8.0_172-b11){0F}{\n}
bin\ctext {0C}Java HotSpot(TM) Client VM (build 25.172-b11, mixed mode, sharing){0F}{\n}
echo.
echo Èç¹ûºÍÉÏÃæºÍÏÂÃæÏÔÊ¾µÄĞÅÏ¢À×Í¬±íÊ¾java»·¾³ÅäÖÃÕı³££¡
echo.
java -version
echo.
echo.
bin\ctext {0A}{\n}
echo  ************************************
bin\ctext {0E}{\n}
echo   1.³É¹¦ÅäÖÃjava»·¾³£¬²»ĞèÒªÊÖ¶¯ÅäÖÃ
bin\ctext {0C}{\n}
echo   2.Ã»³É¹¦ÅäÖÃjava»·¾³£¬½øĞĞÊÖ¶¯ÅäÖÃ
bin\ctext {0A}{\n}
echo. ************************************
bin\ctext {0F}{\n}
echo.
set /p webbb=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webbb%"=="1" goto home
if "%webbb%"=="2" goto java_adb_peizhi_Manual2
goto java_adb_peizhi_Manual
:java_adb_peizhi_Manual2
start bin\java_adb.exe
pause
echo.
echo ÈçÍ¨¹ıĞ£Ñé½«ÕâÑùÏÔÊ¾,Èç¹ûÏÔÊ¾²»ÊÇÒÔÏÂÀàËÆĞÅÏ¢´ú±íjava»·¾³ÅäÖÃ²»Õı³£,ÇëÑ¡ÔñÊÖ¶¯Éè¶¨java»·¾³ÅäÖÃ£¡
echo.
bin\ctext {0C}java version "1.8.0_172"{0F}{\n}
bin\ctext {0C}Java(TM) SE Runtime Environment (build 1.8.0_172-b11){0F}{\n}
bin\ctext {0C}Java HotSpot(TM) Client VM (build 25.172-b11, mixed mode, sharing){0F}{\n}
echo.
echo °²×°Íê±Ïºó°´ÏÂÈÎÒâ¼üÀ´Ğ£Ñéjava»·¾³ÅäÖÃÊÇ·ñÕı³££¡Èç¹ûºÍÉÏÃæÏÔÊ¾À×Í¬±íÊ¾java»·¾³ÅäÖÃÕı³££¡
echo.
echo.
java -version
pause
goto home
:update_java8
start http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
goto home
:open_SP_Flash_Tool_home
cls
bin\ctext {0A}{\n}
echo  *************************************************************************************************
echo.
echo. ÌáĞÑ£º´ËÏßË¢Èí¼şÖ»ÊÊºÏMTKĞ¾Æ¬µÄÊÖ»úÏßË¢£¡
echo.
echo. ÎŞ·¨ÏßË¢ÇëÏÈ°²×°ÏßË¢Çı¶¯,ÓÉÓÚ¸÷¼ÒÆ·ÅÆÏßË¢Çı¶¯ÓĞÇø±ğ,Çë×ÔĞĞÍøÉÏËÑË÷,±¾¹¤¾ßÖ»Ìá¹©¹«°æÏßË¢Çı¶¯°²×°!
echo. 
echo. *************************************************************************************************
bin\ctext {0E}{\n}
echo   1.´ò¿ªMTKÏßË¢¹¤¾ßSP_Flash_Tool(ÖĞÎÄ°æ)
bin\ctext {0E}{\n}
echo   2.°²×°MTK¹«°æÏßË¢Çı¶¯
bin\ctext {0D}{\n}
echo   3.´ò¿ª¸ßÍ¨9008ÏßË¢¹¤¾ßQFIL
bin\ctext {0D}{\n}
if "%webcc%"=="5" goto update_SP_Flash_Tool
if "%webcc%"=="0" goto home
goto open_SP_Flash_Tool_home
:open_SP_Flash_Tool
echo.
bin\ctext {0C}ÏßË¢SP_Flash_Tool¹¤¾ßÉèÖÃÖĞÎÄ·½·¨£º´ò¿ªÈí¼ş×óÉÏ·½Ñ¡Ïî£¬ÒÀ´ÎÑ¡ÔñOptions-General-Language-¼òÌåÖĞÎÄ{0F}{\n}
bin\ctext {0C}ÕıÔÚ´ò¿ªMTKÏßË¢¹¤¾ßSP_Flash_Tool£¬ÇëÉÔºó...{0F}{\n}
echo.
start bin\SP_Flash_Tool_exe_Windows\flash_tool.exe
pause
goto open_SP_Flash_Tool_home
:install_BrushDrive
echo.
bin\ctext {0C}´ËÎÄ¼ş¼ĞÏÂÎªMTKĞ¾Æ¬¹«°æÏßË¢Çı¶¯£¬×ÔĞĞÑ¡Ôñ°²×°£¬ÄÄĞ©¹ÜÓÃ°²×°ÄÄĞ©¡£{0F}{\n}
echo.
start bin\MTK_Sp_Flash_Tools_Driver\
pause
goto open_SP_Flash_Tool_home
:qualcomm_QFIL
echo.
bin\ctext {0C}ÕıÔÚ´ò¿ª¸ßÍ¨9008ÏßË¢¹¤¾ßQFIL£¬ÇëÉÔºó...{0F}{\n}
echo.
start bin\SP_Flash_Tool_exe_Windows\QFIL.exe
pause
goto open_SP_Flash_Tool_home
:qualcomm_Diag_QD_Loader
echo.
bin\ctext {0C}ÕıÔÚ°²×°¸ßÍ¨¹«°æ9008ÏßË¢Çı¶¯£¬ÇëÉÔºó...{0F}{\n}
echo.
start bin\Qualcomm_Diag_QD_Loader_2016_driver.exe
pause
goto open_SP_Flash_Tool_home
:update_SP_Flash_Tool
echo.
bin\ctext {0C}ÕıÔÚ´ò¿ªspflashtool¹ÙÍøºÍneedrom¸üĞÂ£¬ÇëÏÂÔØ×îĞÂ°æ±¾£¬±£³Ö¶ÔMTKĞÂCPUµÄ¼æÈİĞÔ......{0F}{\n}
bin\ctext {0C}ÏßË¢SP_Flash_Tool¹¤¾ßÉèÖÃÖĞÎÄ·½·¨£º´ò¿ªÈí¼ş×óÉÏ·½Ñ¡Ïî£¬ÒÀ´ÎÑ¡ÔñOptions-General-Language-¼òÌåÖĞÎÄ{0F}{\n}
echo.
start http://www.needrom.com/category/gapps-tools-tuto/tools/
start http://spflashtool.org/
pause
goto open_SP_Flash_Tool_home
:install_notepad
cls
bin\ctext {0A}{\n}
echo  *************************************************************************************************
echo.
echo.                             ÎØĞ»£º¹Ù·½notepad++¶ÔÈí¼şµÄ¸üĞÂ£¡
echo. 
echo. *************************************************************************************************
bin\ctext {0E}{\n}
echo   1.Á¢¼´°²×°notepad++ÎÄ±¾±à¼­Æ÷
bin\ctext {0D}{\n}
echo   2.²é¿´ĞÂ°ænotepad++ÎÄ±¾±à¼­Æ÷
bin\ctext {0A}{\n}
echo   0.»Øµ½¹¤¾ßÊ×Ò³
bin\ctext {0F}{\n}
echo.
set /p webdd=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webdd%"=="1" goto install_notepad
if "%webdd%"=="2" goto update_notepad
if "%webdd%"=="0" goto home
goto install_notepad
:install_notepad
echo.
bin\ctext {0C}ÕıÔÚ´ò¿ªnotepad++°²×°³ÌĞò£¬ÇëÉÔºò...£¡{0F}{\n}
echo.
start bin\notepad.exe
pause
goto home
:update_notepad
echo.
echo ÕıÔÚ´ò¿ªnotepad¹ÙÍø......
echo.
start https://notepad-plus-plus.org/zh/
goto home
:rootkernel
echo.
bin\ctext "{0E}    ÇëÔÚµ¯´°Ñ¡Ôñboot.img\recovery.imgÎÄ¼şºó£¬ÓÒÏÂ½ÇÎ»ÖÃµãÑ¡¡°´ò¿ª¡±Ñ¡Ïî¼´¿É¿ªÊ¼Ê¶±ğkernelÄÚºË°æ±¾...{0F}{\n}"
echo.
set kernelversion=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set kernelversion=" "%~dp0\*img"`) do %%a
copy %kernelversion% bin\rootkernel\boot.img >nul 2>nul
echo.
bin\ctext {0E} Çë²é¿´ÄÚºËkernel°æ±¾ĞÅÏ¢Íê±Ïºó°´ÏÂÈÎÒâ¼ü»Øµ½º½Ä¸Ê×Ò³²¢×Ô¶¯ÇåÀíÊ¶±ğ¹ı³ÌÖĞ²ĞÁôµÄÎÄ¼ş{0F}{\n}
echo.
start bin\rootkernel\ÍÏ×§ÄÚºËRECµ½ÕâÀï.bat
pause
rd /s /q bin\rootkernel\ramdisk >nul 2>nul
del bin\rootkernel\kernel >nul 2>nul
del bin\rootkernel\rd.gz >nul 2>nul
del bin\rootkernel\boot.img >nul 2>nul
goto home
:odex_merge
echo.
echo.
echo.
echo.
echo.
bin\ctext {0B}¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª{0C}{\n}
bin\ctext {0C}   1.Ê¹ÓÃº½Ä¸°æsystemÈ«¾ÖODEXºÏ²¢¹¤¾ß{\n}
echo.
bin\ctext {0A}   2.Ê¹ÓÃSVADeodexerForArt.exeºÍFulmicsDeodexer.exe(°²×¿5.0-7.1.2){\n}
echo.
bin\ctext {0E}   3.µ½XDAÍøÕ¾²é¿´SVADeodexerForArtºÍFulmicsDeodexerĞÂ°æ{\n}
bin\ctext {0B}¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª¡ª{0F}{\n}
echo.
set /p webee=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webee%"=="1" goto carrier_odextools
if "%webee%"=="2" goto SVADeodexerForArt_FulmicsDeodexer
if "%webee%"=="3" goto update_odex
goto odex_merge
:carrier_odextools
start bin\AIHGT.bat
goto home
:SVADeodexerForArt_FulmicsDeodexer
echo.
echo.
echo.
bin\ctext {0E} µçÄÔĞèÒª°²×°ÓĞjava_8ÔËĞĞ»·¾³ºÍNet_Framework_4.7¿ò¼ÜÖ§³Ö,·ñÔòÎŞ·¨¹¤×÷!{0F}{\n}
echo.
bin\ctext {0E} ÇëÑ¡ÔñSVADeodexerForArt.exe(°²×¿5.0-7.1.2)FulmicsDeodexer.exe(°²×¿5.0-7.1.2){\n}
bin\ctext {0E} ÕâÁ½¸öODEXºÏ²¢¹¤¾ßÀ´½øĞĞODEXºÏ²¢!{0F}{\n}
echo.
start bin\odex_merge\
pause
goto home
:update_odex
start https://forum.xda-developers.com/galaxy-s5/general/tool-deodex-tool-android-l-t2972025 & start https://forum.xda-developers.com/android/software-hacking/tooll-03-12-fulmics-deodexer-1-0-t3512081
goto home
:open_Compare
echo.
echo ÕıÔÚ´ò¿ªÎÄ¼ş¶Ô±ÈÆ÷£¬ÇëÉÔºò...
echo.
start bin\Beyond_Compare\BCompare.exe
pause
goto home
:install_Apkdb
cls
bin\ctext {0A}{\n}
echo  *************************************************************************************************
echo.
echo.                 ÎØĞ»£º µ­À¶Ë¹Óî-µãµÎ¿Æ¼¼Ô­×÷Õß¶ÔApkdb·´±àÒë¹¤¾ßÈí¼şµÄ¸üĞÂ£¡
echo. 
echo. *************************************************************************************************
bin\ctext {0E}{\n}
echo   1.Á¢¼´°²×°Apkdb·´±àÒë¹¤¾ß£¨½¨Òé°²×°Íê±Ï½Ó×Å°²×°°²×°java8_v1.8.0_172ÔËĞĞ»·¾³£©
bin\ctext {0D}{\n}
echo   2.²é¿´ĞÂ°æApkdb·´±àÒë¹¤¾ß
bin\ctext {0B}{\n}
echo   3.°²×°java8_v1.8.0_172ÔËĞĞ»·¾³ (°²×°Íêjava8_v1.8.0_172Á¢¼´ÅäÖÃjava\adb»·¾³±äÁ¿)
bin\ctext {0C}{\n}
echo   4.ÅäÖÃjava\adb»·¾³±äÁ¿ (ÅäÖÃÍê±Ïºó½«»áÑéÖ¤»·¾³±äÁ¿ÊÇ·ñÍêÕûÕıÈ·)
bin\ctext {0A}{\n}
echo   5.¸üĞÂ²é¿´java×îĞÂ°æ±¾
bin\ctext {0F}{\n}
echo   0.»Øµ½¹¤¾ßÊ×Ò³
bin\ctext {0F}{\n}
echo.
set /p webff=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webff%"=="1" goto install_apkdb
if "%webff%"=="2" goto apkdb_update
if "%webff%"=="3" goto install_java8
if "%webff%"=="4" goto java_adb_peizhi_Manual
if "%webff%"=="5" goto update_java8
if "%webff%"=="0" goto home
goto install_Apkdb
:apkdb_update
echo.
echo ÕıÔÚ´ò¿ªApkdb·´±àÒë¹¤¾ß¹ÙÍøÏÂÔØµØÖ·£¬ÇëÉÔºó......
echo.
start http://idoog.me/?p=2933
pause
goto home
:install_apkdb
echo.
bin\ctext {0C}ÕıÔÚ´ò¿ªApkdb·´±àÒë³ÌĞò£¬ÇëÉÔºò...£¡{\n}
echo.
start bin\Apkdb.exe
bin\ctext {0A}½¨Òé°²×°Íê±Ï½Ó×Å°²×°°²×°java8_v1.8.0_172ÔËĞĞ»·¾³{0F}{\n}
pause
goto home
:open_AdbFileExplorer
echo.
echo ´Ë¹¦ÄÜĞèÒªÊÖ»úµ±Ç°ÏµÍ³Ö§³Ösystem\xbin\busybox×é¼ş²ÅÄÜÊ¹ÓÃ¡£
echo ÕıÔÚ´ò¿ªADBÎÄ¼ş¹ÜÀíÆ÷...
echo.
start bin\AdbFileExplorer.exe
pause
goto home_adb_fastboot
:Print_logcat_time
set foldery=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set foldery=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
md ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾_%foldery%
bin\adb logcat -t 10000 -v time > ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾_%foldery%\¼àÊÓÏµÍ³ÔËĞĞÈÕÖ¾.log
bin\adb logcat *:F -t 10000 -v time > ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾_%foldery%\·ÖÀàÈÕÖ¾-ÑÏÖØ´íÎófatal.log
bin\adb logcat *:E -t 10000 -v time > ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾_%foldery%\·ÖÀàÈÕÖ¾-ÆÕÍ¨´íÎóerror.log
bin\adb logcat *:W -t 10000 -v time > ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾_%foldery%\·ÖÀàÈÕÖ¾-¾¯¸æwarning.log
bin\adb logcat *:I -t 10000 -v time > ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾_%foldery%\·ÖÀàÈÕÖ¾-ĞÅÏ¢info.log
bin\adb logcat *:D -t 10000 -v time > ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾_%foldery%\·ÖÀàÈÕÖ¾-µ÷ÊÔdebug.log
bin\adb logcat *:V -t 10000 -v time > ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾_%foldery%\·ÖÀàÈÕÖ¾-Ã÷Ï¸verbose.log
bin\adb logcat -b radio -t 10000 -v time > ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾_%foldery%\´òÓ¡ĞÅºÅ»ù´øÔËĞĞÏà¹ØÈÕÖ¾.log
bin\adb logcat -b main -t 10000 -v time > ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾_%foldery%\´òÓ¡ÔËĞĞÓ¦ÓÃ³ÌĞòÈÕÖ¾.log
bin\adb logcat -b events -t 10000 -v time > ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾_%foldery%\´òÓ¡ÏµÍ³ÊÂ¼şÈÕÖ¾.log
bin\ctext {0C}{\n}
echo ³É¹¦´òÓ¡ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾£¡ÇëÔÚ¹¤¾ß¸ùÄ¿Â¼²éÕÒ´ø¡°ÊµÊ±µ÷ÊÔlogcat·ÖÎöÈÕÖ¾_xxÊ±¼äxxÈÕÆÚ¡±µÄÎÄ¼ş¼Ğ£¡
bin\ctext {0F}{\n}
echo androidÊä³öµÄÃ¿Ò»ÌõÈÕÖ¾¶¼ÓĞÒ»¸ö±ê¼ÇºÍÓÅÏÈ¼¶ÓëÆä¹ØÁª¡£
echo ÓÅÏÈ¼¶ÊÇÏÂÃæµÄ×Ö·û£¬Ë³ĞòÊÇ´ÓµÍµ½¸ß£º
echo V ¡ª Ã÷Ï¸ verbose(×îµÍÓÅÏÈ¼¶)
echo D ¡ª µ÷ÊÔ debug
echo I ¡ª ĞÅÏ¢ info
echo W ¡ª ¾¯¸æ warning
echo E ¡ª ´íÎó error
echo F ¡ª ÑÏÖØ´íÎó fatal
echo S ¡ª ÎŞ¼ÇÔØ silent
pause
goto home
:Print_logcat_cache
set folderw=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set folderw=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
md »º´ælogcat·ÖÎöÈÕÖ¾_%folderw%
md »º´ælogcat·ÖÎöÈÕÖ¾_%folderw%\tombstones
bin\adb bugreport > »º´ælogcat·ÖÎöÈÕÖ¾_%folderw%\»º´æÈÕÖ¾-bug±¨¸æ.log
bin\adb shell dmesg > »º´ælogcat·ÖÎöÈÕÖ¾_%folderw%\»º´æÈÕÖ¾-ÄÚºËkernelÓëÓ²¼şÇı¶¯¹ØÁª.log
bin\adb shell dumpsys > »º´ælogcat·ÖÎöÈÕÖ¾_%folderw%\»º´æÈÕÖ¾-ÏµÍ³service·şÎñ×´Ì¬.log
bin\adb shell dumpstate > »º´ælogcat·ÖÎöÈÕÖ¾_%folderw%\»º´æÈÕÖ¾-ÏµÍ³×´Ì¬ĞÅÏ¢.log
bin\adb pull /data/anr/traces.txt »º´ælogcat·ÖÎöÈÕÖ¾_%folderw%\±¨±í·şÎñÆ÷web·şÎñµÄ¸ú×ÙÈÕÖ¾.log
bin\adb pull /data/tombstones %folderw%\tombstones
bin\ctext {0C}{\n}
echo ³É¹¦´òÓ¡»º´ælogcat·ÖÎöÈÕÖ¾£¡ÇëÔÚ¹¤¾ß¸ùÄ¿Â¼²éÕÒ´ø¡°»º´ælogcat·ÖÎöÈÕÖ¾_xxÊ±¼äxxÈÕÆÚ¡±µÄÎÄ¼ş¼Ğ£¡
bin\ctext {0F}{\n}
echo androidÊä³öµÄÃ¿Ò»ÌõÈÕÖ¾¶¼ÓĞÒ»¸ö±ê¼ÇºÍÓÅÏÈ¼¶ÓëÆä¹ØÁª¡£
echo ÓÅÏÈ¼¶ÊÇÏÂÃæµÄ×Ö·û£¬Ë³ĞòÊÇ´ÓµÍµ½¸ß£º
echo V ¡ª Ã÷Ï¸ verbose(×îµÍÓÅÏÈ¼¶)
echo D ¡ª µ÷ÊÔ debug
echo I ¡ª ĞÅÏ¢ info
echo W ¡ª ¾¯¸æ warning
echo E ¡ª ´íÎó error
echo F ¡ª ÑÏÖØ´íÎó fatal
echo S ¡ª ÎŞ¼ÇÔØ silent
pause
goto home
:pc_home
cls
bin\ctext {0A}{\n}
echo  *****************************************************
echo. 
echo.    µçÄÔÒ»¼ü¿ìËÙÖØÆô¡¢µçÄÔËø¶¨¡¢µçÄÔ¶¨Ê±¹Ø»úµÈ¹¦ÄÜ£¡
echo. 
echo. *****************************************************
bin\ctext {0E}{\n}
echo   1.µçÄÔ¿ìËÙÖØÆô
bin\ctext {0D}{\n}
echo   2.µçÄÔ¿ìËÙËø¶¨
bin\ctext {0B}{\n}
echo   3.µçÄÔ¶¨Ê±¹Ø»ú
bin\ctext {0A}{\n}
echo   0.»Øµ½¹¤¾ßÊ×Ò³
bin\ctext {0F}{\n}
echo.
set /p webgg=-^-^> ÊäÈëÊı×ÖÑ¡Ôñ¶ÔÓ¦µÄ²Ù×÷:
if "%webgg%"=="1" goto restart
if "%webgg%"=="2" goto lock
if "%webgg%"=="3" goto time_off_pc
if "%webgg%"=="0" goto home
goto pc_home
:restart
shutdown -r -t 0
goto home
:lock
rundll32.exe user32.dll,LockWorkStation
goto home
:time_off_pc
echo ÇëÖ¸¶¨24Ğ¡Ê±ÖÆÊ½Ê±¼ä,ÔÚÓ¢ÎÄ×´Ì¬ÏÂÊäÈë¸ñÊ½Îª¡¾Ğ¡Ê±:·ÖÖÓ¡¿
echo  ÀıÈç:  00:00  »ò  19:30
echo ========================================
set shutdowntime=
set /p shutdowntime=¶¨Ê±:
schtasks /create /sc once /tn ¶¨Ê±¹Ø»ú /tr "shutdown.exe -s -hybrid -t 10" -st "%shutdowntime%:00"
if not errorlevel 1 goto ok
echo %shutdowntime% ²»ÊÇ±ê×¼µÄÊ±¼ä¸ñÊ½,ÇëÖØĞÂÊäÈë
echo.
goto home
:update_CarrierClassTools
bin\ctext {0A}{\n}
echo  ***********************************************************
echo.    ¹Ø×¢ÎÒµÄĞÂÀËÎ¢²©£¬ËæÊ±²é¿´º½Ä¸¹¤¾ß×îĞÂ°æ±¾£¡
echo.
echo     ¹Ø×¢º½Ä¸¹¤¾ß¹Ù·½QQÈº£º611193563
echo.
echo.    º½Ä¸¹¤¾ßÖ§¸¶±¦Î¢ĞÅ¶şÎ¬ÂëÉ¨Ãè´ò¿ªµÄÍ¼Æ¬¾èÔù£¬ÇëÎÒºÈÒ»±­¿§·È£¡
echo. ***********************************************************
bin\ctext {0F}{\n}
start bin\º½Ä¸¹¤¾ßÖ§¸¶±¦Î¢ĞÅ¶şÎ¬Âë¾èÔù.png & start http://shang.qq.com/wpa/qunwpa?idkey=8da3fa12ed1d48b24b52efa1a6e60f641806b08be93edac5e549a3d1617f3c70 & start http://weibo.com/jooks
pause
goto home
:exit
del bin\AIHGT 2>nul
taskkill /f /im adb.exe >nul 2>nul
taskkill /f /im tadb.exe >nul 2>nul
taskkill /f /im kwAdb.exe >nul 2>nul
taskkill /f /im aapt.exe >nul 2>nul
taskkill /f /im javaw.exe >nul 2>nul
taskkill /f /im shuame_helper.exe >nul 2>nul
taskkill /f /im ShuameDaemon.exe >nul 2>nul
taskkill /f /im romaster_daemon.exe >nul 2>nul
taskkill /f /im BCompare.exe >nul 2>nul
taskkill /f /im SVADeodexerForArt.exe >nul 2>nul
taskkill /f /im flash_tool.exe >nul 2>nul
taskkill /f /im adb_installer.exe >nul 2>nul
taskkill /f /im AdbFileExplorer.exe >nul 2>nul
taskkill /f /im ext2simg.exe >nul 2>nul
taskkill /f /im fastboot.exe >nul 2>nul
taskkill /f /im FileSplitter.exe >nul 2>nul
taskkill /f /im java_adb.exe >nul 2>nul
taskkill /f /im java8.exe >nul 2>nul
taskkill /f /im make_ext4fs.exe >nul 2>nul
taskkill /f /im notepad.exe >nul 2>nul
taskkill /f /im img2dat.exe >nul 2>nul
taskkill /f /im simg2img.exe >nul 2>nul
taskkill /f /im 7z.exe >nul 2>nul
taskkill /f /im ApkTool.exe >nul 2>nul
taskkill /f /im FulmicsDeodexer.exe >nul 2>nul
taskkill /f /im 7za.exe >nul 2>nul
taskkill /f /im file_contexts_tool.exe >nul 2>nul
taskkill /f /im file_contexts_oreo.exe >nul 2>nul
taskkill /f /im FileToOpen.exe >nul 2>nul
taskkill /f /im huawei_unpack_tools.exe >nul 2>nul
taskkill /f /im Imgextractor.exe >nul 2>nul
taskkill /f /im inifile.exe >nul 2>nul
taskkill /f /im NDP47-KB3186497-x86-x64-AllOS-ENU.exe >nul 2>nul
taskkill /f /im nhrt.exe >nul 2>nul
taskkill /f /im nircmdc.exe >nul 2>nul
taskkill /f /im notepad.exe >nul 2>nul
taskkill /f /im sdat2img.exe >nul 2>nul
taskkill /f /im sfk.exe >nul 2>nul
taskkill /f /im simg2sdat.exe >nul 2>nul
taskkill /f /im strings.exe >nul 2>nul
taskkill /f /im zip.exe >nul 2>nul
taskkill /f /im java.exe >nul 2>nul
taskkill /f /im unpack-ext4fs.exe >nul 2>nul
taskkill /f /im ext4extract.exe >nul 2>nul
taskkill /f /fi "imagename eq wandoujia*" >nul 2>nul
taskkill /f /im "AndroidInterface.exe" >nul 2>nul
taskkill /f /im "Android PC Suite.exe" >nul 2>nul
taskkill /f /im "360MobileMgr.exe" >nul 2>nul
taskkill /f /im "qitu_adb.exe" >nul 2>nul
taskkill /f /im "sparseimg2scatterwith.exe" >nul 2>nul
taskkill /f /im "Apkdb.exe" >nul 2>nul
taskkill /f /im "bootimg.exe" >nul 2>nul
taskkill /f /im "br2dat.exe" >nul 2>nul
taskkill /f /im "busybox.exe" >nul 2>nul
taskkill /f /im "cecho.exe" >nul 2>nul
taskkill /f /im "chmod.exe" >nul 2>nul
taskkill /f /im "CPB_Editor_V6.3.exe" >nul 2>nul
taskkill /f /im "ctext.exe" >nul 2>nul
taskkill /f /im "findfile.exe" >nul 2>nul
taskkill /f /im "Qualcomm_Diag_QD_Loader_2016_driver.exe" >nul 2>nul
taskkill /f /im "ozip2zip.exe" >nul 2>nul
taskkill /f /im "rec_sh.exe" >nul 2>nul
taskkill /f /im "sparse2img.exe" >nul 2>nul
taskkill /f /im "unpack-ext4fs.exe" >nul 2>nul
taskkill /f /im "vdexExtractor.exe" >nul 2>nul
for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
if exist %%a:\ (
del /f /s /q "%%a:\$recycle.bin\*.*" >nul 2>nul
)
)
del /f /s /q "%systemdrive%\recycled\*.*" >nul 2>nul
@echo off
attrib %userprofile%\AppData\Local\Temp\* -s -r -a -h /d /s
attrib %userprofile%\local settingstemp\* -s -r -a -h /d /s
attrib %userprofile%\Local Settings\Temp\* -s -r -a -h /d /s
del /f /s /q "%userprofile%local settingstemp\*"
del /f /s /q "%userprofile%\Local Settings\Temp\*
for /r %userprofile%AppDataLocalTemp %%a in (*) do del /f /s /q "%%a"
del "%tmp%\*" /s /q /f
FOR /d %%p IN ("%tmp%\*") DO rmdir "%%p" /s /q
echo CreateObject("Shell.Application").ToggleDesktop>%Temp%\F5.vbs
echo CreateObject("WScript.Shell").SendKeys "{F5}">>%Temp%\F5.vbs
cscript /nologo %Temp%\F5.vbs
exit
