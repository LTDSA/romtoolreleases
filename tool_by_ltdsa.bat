author:pengfei@www.cn-dos.net
�?
cls�?
cls
@echo off
if %UserName%==Administrator (goto AIHGT_home) else (goto Administrator)
:Administrator
echo.
bin\ctext {0B}����Administrator����Ա�˻�ÿ�ν�����ִ���ʾ��ROMTool������Administrator����Ա�˻���¼{\n}
echo.
bin\ctext {0C}������Կ���ʱʹ��Administrator����Ա�˻������ٲ���Ҫ�ķ���������{0F}{\n}
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
echo       �ر���л��@AIHGT
echo.
echo  ==========================
bin\ctext  {0A} ��ѡ������ѡ��:{0C}�����棺{0F}��ɫ{0C}ѡ��Ϊ�ɷ����ֽ���ѡ���{\n}
bin\ctext "{0E} 01{0D}\{0F}1.{0E}�ֽ�boot.img{\n}"
bin\ctext "{0E} 02{0D}\{0F}2.{0E}�ϳ�boot.img{\n}"
bin\ctext "{0E} 03{0D}\{0F}3.{0E}�ֽ�recovery.img{\n}"
bin\ctext "{0E} 04{0D}\{0F}4.{0E}�ϳ�recovery.img{\n}"
bin\ctext "{0E} 5.file_contexts.bin��file_contextsת�� {\n}"
bin\ctext " 55.�ֽ�\�ϳ�ramdisk��ramdisk.gz{\n}"
bin\ctext " 555.����system\vendor���νӽű�{\n}"
bin\ctext {0D}{\n}
bin\ctext "{05} 06{0D}\6\{07}66{0D}\{0F}666{0D}.�ֽ�system.new.dat.br{\n}"
bin\ctext "{05} 07{0D}\7\{07}77{0D}\{0F}777{0D}.�ֽ�vendor.new.dat.br{\n}"
bin\ctext "{05} 08{0D}\8\{07}88{0D}\{0F}888{0D}.�ֽ�system.new.dat{\n}"
bin\ctext "{05} 09{0D}\9\{07}99{0D}\{0F}999{0D}.�ֽ�system.img{\n} 
bin\ctext "{05}010{0D}\10\{07}100{0D}\{0F}101{0D}.�ֽ���������.img\.ext4\.win\.raw��ʽ����{\n}"
bin\ctext "{05} 011{0D}\11\{07}111{0D}\{0F}112{0D}.�ֽ���������xxx.dat\xxx.dat.br{\n}"
bin\ctext "{05} 12\{0F}122{0D}.system.imgת����system.new.dat{\n}"
bin\ctext "{05} 13.system.new.dat\system.new.dat.brת����system.img
bin\ctext {02}{\n} 
echo.
echo  14.��system�ļ��д����system.new.dat
echo  15.��systemĿ¼�����system.img(�ں���ȡfile_contexts)
echo  16.sparse image(imgѹ����ʽ)ת����ext4 image(����img��ʽ)
echo  17.ext4 image(����img��ʽ)ת����sparse image(imgѹ����ʽ)  
bin\ctext {0B}{\n}
echo  18.adb\fastboot���ܴ�ȫ��adb\fastboot����̨
bin\ctext {0C}{\n}
echo  19.java8��Net���4.7��װ
bin\ctext "{0C} 20.�ı��༭����װ
echo  21.���Է����빤��Apkdb��װ
bin\ctext "{0C} 22.apk\zip��ˢ������
echo  23.odex\vdex�ϲ���׿5.0-��׿8.1(��java����)
bin\ctext "{0C} 24.��mtk��ˢspFlash\��ͨ9008����(������){\n}"
echo  25.���ļ��Ա���
bin\ctext "{0C} 26.���Զ�ʱ�ػ�\����\����{\n}"
echo  27.boot\recovery�Զ�����ֲ\�Զ���ֲ
bin\ctext "{0A} 28.��������\��ʽ����ʹ��{0C}{\n}"
echo  29\299.system��vendor\build.prop��Ϣ���
bin\ctext "{0C} 30.zip��ˢ��ǩ��{0E}\300.apk��װ��ǩ��{\n}"
bin\ctext "{0C} 333.������ʱ�ļ�������{\n}"
bin\ctext "{0C} 123.�ر�ROMTool���н������������վ{\n}"
bin\ctext {0F}{\n}
set /p web=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
bin\ctext "{0E}  1.system�����������ν�{\n}"
bin\ctext "{0E}  2.vendor�����������ν�{\n}"
bin\ctext "{0B} ========================{0F}{\n}"
echo.
set /p websymlink=-^-^> ��������ѡ���Ӧ�Ĳ���:
if "%websymlink%"=="1" goto make_symlinks_system
if "%websymlink%"=="2" goto make_symlinks_vendor
goto make_symlinks
:make_symlinks_system
del ����system���ν�symlinks.txt >nul 2>nul
echo.
echo.
bin\ctext "{0E}    �����������ν�symlinks�ű������Ժ�...{\n}"
echo.
setlocal enabledelayedexpansion
set busybox=bin\busybox.exe
if not exist "����system���ν�symlinks.txt" for /f "delims=" %%a in ('bin\findfile.exe /system -type l ^| !busybox! sed "s/AIHGT//"') do (
for /f "delims=" %%b in ('!busybox! readlink %%a') do echo symlink("%%b", "%%a";;;| !busybox! sed "s/;;;/);/">>����system���ν�symlinks.txt
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
bin\ctext {0C}     ���ν�ʶ����ɣ��򿪣�����system���ν�symlinks.txt���鿴. {0F}{\n}
echo.
echo.
pause
start ����system���ν�symlinks.txt
goto home
:make_symlinks_vendor
del ����vendor���ν�symlinks.txt >nul 2>nul
echo.
echo.
bin\ctext "{0E}    �����������ν�symlinks�ű������Ժ�...{\n}"
echo.
setlocal enabledelayedexpansion
set busybox=bin\busybox.exe
if not exist "����vendor���ν�symlinks.txt" for /f "delims=" %%a in ('bin\findfile.exe /vendor -type l ^| !busybox! sed "s/AIHGT//"') do (
for /f "delims=" %%b in ('!busybox! readlink %%a') do echo symlink("%%b", "%%a";;;| !busybox! sed "s/;;;/);/">>����vendor���ν�symlinks.txt
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
bin\ctext {0C}     ���ν�ʶ����ɣ��򿪣�����vendor���ν�symlinks.txt���鿴. {0F}{\n}
echo.
echo.
pause
start ����vendor���ν�symlinks.txt
goto home
:rawprogram_unsparse
echo.
bin\ctext "{0E}    ���ȫ����ͨ��ˢ���ֶξ�����ں�ĸ��ǰĿ¼��{\n}"
echo.
bin\ctext "{0E}    ���ڵ���ѡ��rawprogram_unsparse.xml����xml��ͨ��ˢ�ı��ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ�ϲ�...{\n}"
bin\ctext {0C}{\n}
echo     1.system
echo     2.userdata
echo     3.cache
echo     4.�Զ��������������
bin\ctext {0F}{\n}
set /p weba= ��ѡ����Ҫ�ϲ��ľ��������:
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
bin\ctext "{0C}      system.img�ϲ���ɣ�{0F}{\n}"
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
bin\ctext "{0C}      userdata.img�ϲ���ɣ�{0F}{\n}"
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
bin\ctext "{0C}      cache.img�ϲ���ɣ�{0F}{\n}"
echo.
pause
goto home
:rawprogram_unsparse_custom
echo.
echo.
echo.
bin\ctext "{0E}������������ƣ������������������˶�����Ű���Enter�س���ȷ�ϣ�{0F}{\n}"
echo.
echo.
set /p partition=������Ҫ�ϲ��ķ������ƣ�Ӣ��Сд״̬���룩��
echo.
set rawprogramcustom=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set rawprogramcustom=" "%~dp0\*.xml"`) do %%a
bin\sparseimg2scatterwith.exe %rawprogramcustom% %partition%
ren %partition%.raw %partition%.img >nul 2>nul
echo.
echo.
bin\ctext "{0C}     %partition%�����ϲ���ɣ�{0F}{\n}"
echo.
pause
goto home
:encryption_zip
echo.
bin\ctext "{0E}    ���ڵ���ѡ������������xxx.apk\xxx.zip��ˢ���ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ����...{0F}{\n}"
echo.
set zipencryption=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set zipencryption=" "%~dp0\*.apk;*.zip"`) do %%a
bin\jre\bin\java -jar bin\ZipCenOp.jar e %zipencryption%
echo.
echo.
bin\ctext "{0C}      �ɹ����ܣ�{0F}{\n}"
echo.
pause
goto home
:decrypt_zip
echo.
bin\ctext "{0E}    ���ڵ���ѡ������������xxx.apk\xxx.zip��ˢ���ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ����...{0F}{\n}"
echo.
set zipdecrypt=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set zipdecrypt=" "%~dp0\*.apk;*.zip"`) do %%a
bin\jre\bin\java -jar bin\ZipCenOp.jar r %zipdecrypt%
echo.
echo.
bin\ctext "{0C}      �ɹ����ܣ�{0F}{\n}"
echo.
pause
goto home
:sign_zip
echo.
bin\ctext "{0E}    ���ڵ���ѡ������������xxx.zip��ʽ�Ŀ�ˢ���ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼǩ��...{0F}{\n}"
echo.
set zips=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set zips=" "%~dp0\*.zip"`) do %%a
bin\jre\bin\java -jar bin\signapk.jar bin\testkey.x509.pem bin\testkey.pk8 %zips% %zips%_signed.zip
echo.
bin\ctext "{0C}      �ɹ�ǩ����ˢ����{0F}{\n}"
echo.
pause
goto home
:sign_apk
echo.
bin\ctext "{0E}    ���ڵ���ѡ������������xxx.zpk��ʽ�ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼǩ��...{0F}{\n}"
echo.
set apksign=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set apksign=" "%~dp0\*.apk"`) do %%a
bin\jre\bin\java -jar bin\signapk.jar bin\testkey.x509.pem bin\testkey.pk8 %apksign% %apksign%_signed.apk
echo.
bin\ctext "{0C}      �ɹ�ǩ��apk��{0F}{\n}"
echo.
pause
goto home
:others_unpack_repack
cls
bin\ctext "{0A} ==========================================================================={\n}"
echo.  
echo.                         ������ѡ����Ҫ�Ĺ��ܣ�
echo. 
echo  ===========================================================================
bin\ctext {0E}{\n}
echo   1.�ֶ�dat�ϲ�\�ָ��
bin\ctext {0D}{\n}
echo   2.��Ϊupdate.app������ߣ���Ҫ������Net_Framework_4.7���֧�֣�
bin\ctext "{0B}{\n}"
echo   3.ozipת��zip��ʽ
bin\ctext "{0C}{\n}"
echo   4.cpb��ʽ����ʹ��
bin\ctext "{0A}{\n}"
echo   5.moto��system.img_sparsechunk�ֶθ�ʽ�ϲ�
bin\ctext "{0E}{\n}"
echo   6.qsb��ʽ���
bin\ctext "{0D}{\n}"
echo   7.��ͨ��ˢ���ֶξ���ϲ�
bin\ctext "{0B}{\n}"
echo   8.��װNet_Framework_4.7
bin\ctext {0C}{\n}
echo   9.�鿴�ں�kernel�汾��Ϣ
bin\ctext {0A}{\n}
echo  10.����LOGO��һ������
echo.
bin\ctext "{0E} 0.�ص�������ҳ{\n}"
bin\ctext {0F}{\n}
set /p webb=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
if not exist system.img_sparsechunk* (bin\ctext "{0E}����system.img_sparsechunk�ֶξ����Ƿ���ڣ�{0F}" & echo. & echo. & pause & goto others_unpack_repack)
echo.
echo.
bin\ctext "{0D} ���ںϲ�����system.img �����ļ��У����Ժ�...{0F}"
(for %%a in (system.img_sparsechunk*) do %wf%bin\sparse2img.exe %%a system.img ) 
echo.
echo.
if exist system.img (bin\ctext "{0E} �ϲ�system.img�ɹ���{0F}" & echo. & echo. & pause & goto home)
:cpb
start bin\CPB_Editor_V6.3.exe
goto home
:LogoBuilder1.6
start bin\LogoBuilder1.6\LogoBuilder.exe
echo.
bin\ctext "{0D}  =================================================================================={\n}"
bin\ctext "{0D}   �˹����ʺ�����logo.bin������һ���������з���һ���̶��Ĺ���Ŀ¼�������鿴���������logo����ͼƬ�������ļ���{\n}"
bin\ctext "{0D}  =================================================================================={0F}{\n}"
echo.
pause
goto home
:open_FileSplitter
start bin\FileSplitter.exe
echo.
bin\ctext "{0D}  =================================================================================={\n}"
bin\ctext "{0D}   �˹����ʺ�system.new.dat1   system.new.dat2   ...�ȵ���һ��ֶ�dat��ʽ�ָ�\�ϲ���{\n}"
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
bin\ctext "{0E}    ���ڵ���ѡ��Ϊ��UPDATE.APP�ļ������½�λ�õ�ѡ���򿪡�ѡ��Զ������{0C}EMUI_ROM{0E}�ļ�������...{0F}{\n}"
echo.
echo.
echo    ��Ҫ������ʱ����������ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
set hwapp=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set hwapp=" "%~dp0\*.app"`) do %%a
bin\HuaweiUpdateExtractor\HuaweiUpdateExtractor.exe extract %hwapp% EMUI_ROM
echo.
echo.
echo.
bin\ctext "{0B}    �����ϣ������{0C}EMUI_ROM{0B}�ļ�������{0F}{\n}"
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
bin\ctext {0E}"   ���ڵ�������ѡ��ozip��ʽ�ļ������½�λ�õ�ѡ���򿪡�ѡ��Զ�ozipת����zip��ʽ��{\n}"
bin\ctext {0A}" ===================================================================================={0F}{\n}"
set ozip=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set ozip=" "%~dp0\*.ozip"`) do %%a
bin\ozip2zip.exe %ozip%
echo.
bin\ctext {0B}"     ת����ϣ�{0F}{\n}"
echo.
pause
goto home
:install_Net_Framework_4.7
start bin\Win10��װ.net4.6ʧ�ܵĽ������.doc & bin\NDP47-KB3186497-x86-x64-AllOS-ENU.exe
goto home
:home_systemimg
cls
if not exist bin\�Զ����ֽ��趨��ɾ1 goto custom_size1_img
if not exist bin\�Զ����ֽ��趨��ɾ2 goto custom_size2_img
if not exist bin\�Զ����ֽ��趨��ɾ3 goto custom_size3_img
if not exist bin\�Զ����ֽ��趨��ɾ4 goto custom_size4_img
if not exist bin\�Զ����ֽ��趨��ɾ5 goto custom_size5_img
if not exist bin\�Զ����ֽ��趨��ɾ6 goto custom_size6_img
if not exist bin\�Զ����С�趨��ɾ1 goto custom_size1_img
if not exist bin\�Զ����С�趨��ɾ2 goto custom_size2_img
if not exist bin\�Զ����С�趨��ɾ3 goto custom_size3_img
if not exist bin\�Զ����С�趨��ɾ4 goto custom_size4_img
if not exist bin\�Զ����С�趨��ɾ5 goto custom_size5_img
if not exist bin\�Զ����С�趨��ɾ6 goto custom_size6_img
for /f %%a in (bin\�Զ����ֽ��趨��ɾ1) do (set system_size1=%%a)
for /f %%a in (bin\�Զ����ֽ��趨��ɾ2) do (set system_size2=%%a)
for /f %%a in (bin\�Զ����ֽ��趨��ɾ3) do (set system_size3=%%a)
for /f %%a in (bin\�Զ����ֽ��趨��ɾ4) do (set system_size4=%%a)
for /f %%a in (bin\�Զ����ֽ��趨��ɾ5) do (set system_size5=%%a)
for /f %%a in (bin\�Զ����ֽ��趨��ɾ6) do (set system_size6=%%a)
for /f %%a in (bin\�Զ����С�趨��ɾ1) do (set system_sizeG1=%%a)
for /f %%a in (bin\�Զ����С�趨��ɾ2) do (set system_sizeG2=%%a)
for /f %%a in (bin\�Զ����С�趨��ɾ3) do (set system_sizeG3=%%a)
for /f %%a in (bin\�Զ����С�趨��ɾ4) do (set system_sizeG4=%%a)
for /f %%a in (bin\�Զ����С�趨��ɾ5) do (set system_sizeG5=%%a)
for /f %%a in (bin\�Զ����С�趨��ɾ6) do (set system_sizeG6=%%a)
bin\ctext "{0A} ==============================================================================================={\n}"
echo  ʹ��������¹�������ں���ȡinitrd\file_contexts��ramdisk\file_contexts,ʶ��systemΪ����Ŀ¼�� 
echo. 
echo  ������Լ����͵Ĺٷ�system�����ֽڴ�Сѡ������ѡ��:
echo  ===============================================================================================
bin\ctext {0E}{\n}
echo  1.����� %system_sizeG1%G (%system_size1% �ֽ�) ��С��system.img
echo  2.����� %system_sizeG2%G (%system_size2% �ֽ�) ��С��system.img
echo  3.����� %system_sizeG3%G (%system_size3% �ֽ�) ��С��system.img
bin\ctext {0D}{\n}
echo  4.����� %system_sizeG4%G (%system_size4% �ֽ�) ��С��system.img
echo  5.����� %system_sizeG5%G (%system_size5% �ֽ�) ��С��system.img
echo  6.����� %system_sizeG6%G (%system_size6% �ֽ�) ��С��system.img
bin\ctext {0B}{\n}
echo  7.�Զ�����system.img��С
echo  8.�Զ���������������������Сext4���루������ʽ����img����
echo  9.�鿴�Լ����͹ٷ�system����������С�����Լ����͹ٷ�system.img����sparse image(imgѹ����ʽ)�����ļ����Ƶ�������Ŀ¼��
bin\ctext {0C}{\n}
echo  10.���ݹٷ�system����������С�����������ROM��system�ļ�������system.img
echo     ǰ��:�����Լ����͹ٷ�system.img����sparse image(imgѹ����ʽ)�����ļ����Ƶ�������Ŀ¼��
echo.
bin\ctext "{0A} 11.�����趨��ҳ��1-6ȫ��ѡ��������С{\n}"
bin\ctext "{0A} 12.�����趨��ҳ��1-6����ѡ��������С{\n}"
bin\ctext "{0A}  0.�ص�������ҳ{\n}"
bin\ctext {0F}{\n}
echo ���ѣ����Ϲ�������ں���ȡinitrd\file_contexts��ramdisk\file_contexts,ʶ��systemΪ����Ŀ¼��
echo.
set /p webc=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
attrib -r -h bin\�Զ����ֽ��趨��ɾ1 >nul 2>nul
attrib -r -h bin\�Զ����ֽ��趨��ɾ2 >nul 2>nul
attrib -r -h bin\�Զ����ֽ��趨��ɾ3 >nul 2>nul
attrib -r -h bin\�Զ����ֽ��趨��ɾ4 >nul 2>nul
attrib -r -h bin\�Զ����ֽ��趨��ɾ5 >nul 2>nul
attrib -r -h bin\�Զ����ֽ��趨��ɾ6 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ1 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ2 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ3 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ4 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ5 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ6 >nul 2>nul
del bin\�Զ����ֽ��趨��ɾ1
del bin\�Զ����ֽ��趨��ɾ2
del bin\�Զ����ֽ��趨��ɾ3
del bin\�Զ����ֽ��趨��ɾ4
del bin\�Զ����ֽ��趨��ɾ5
del bin\�Զ����ֽ��趨��ɾ6
del bin\�Զ����С�趨��ɾ1
del bin\�Զ����С�趨��ɾ2
del bin\�Զ����С�趨��ɾ3
del bin\�Զ����С�趨��ɾ4
del bin\�Զ����С�趨��ɾ5
del bin\�Զ����С�趨��ɾ6
goto home_systemimg
:custom_settings_size_img2
echo.
echo.
echo.
bin\ctext "{0B}====================================={\n}"
bin\ctext "{0A}        1.ѡ��1��������С�趨{\n}"
bin\ctext "{0A}        2.ѡ��2��������С�趨{\n}"
echo.
bin\ctext "{0E}        3.ѡ��3��������С�趨{\n}"
bin\ctext "{0E}        4.ѡ��4��������С�趨{\n}"
echo.
bin\ctext "{0D}        5.ѡ��5��������С�趨{\n}"
bin\ctext "{0D}        6.ѡ��6��������С�趨{\n}"
bin\ctext "{0B}====================================={0F}{\n}"
echo.
set /p systemzize=-^-^> ��������Ҫ�����趨��ѡ��:
if "%systemzize%"=="1" goto custom_size_img1
if "%systemzize%"=="2" goto custom_size_img2
if "%systemzize%"=="3" goto custom_size_img3
if "%systemzize%"=="4" goto custom_size_img4
if "%systemzize%"=="5" goto custom_size_img5
if "%systemzize%"=="6" goto custom_size_img6
goto custom_settings_size_img2
:custom_size_img1
attrib -r -h bin\�Զ����С�趨��ɾ1 >nul 2>nul
del bin\�Զ����С�趨��ɾ1
goto custom_size1_img
:custom_size_img2
attrib -r -h bin\�Զ����С�趨��ɾ2 >nul 2>nul
del bin\�Զ����С�趨��ɾ2
goto custom_size2_img
:custom_size_img3
attrib -r -h bin\�Զ����С�趨��ɾ3 >nul 2>nul
del bin\�Զ����С�趨��ɾ3
goto custom_size3_img
:custom_size_img4
attrib -r -h bin\�Զ����С�趨��ɾ4 >nul 2>nul
del bin\�Զ����С�趨��ɾ4
goto custom_size4_img
:custom_size_img5
attrib -r -h bin\�Զ����С�趨��ɾ5 >nul 2>nul
del bin\�Զ����С�趨��ɾ5
goto custom_size5_img
:custom_size_img6
attrib -r -h bin\�Զ����С�趨��ɾ6 >nul 2>nul
del bin\�Զ����С�趨��ɾ6
goto custom_size6_img
:custom_size1_img
attrib -r -h bin\�Զ����ֽ��趨��ɾ1 >nul 2>nul
bin\ctext "{0C}������ѡ��1�����ֽڴ�С�������������֣����������趨:{\n}"
set /p system_imgsize1=
echo %system_imgsize1%>bin\�Զ����ֽ��趨��ɾ1
attrib +r +h bin\�Զ����ֽ��趨��ɾ1 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ1 >nul 2>nul
bin\ctext "{0C}������ѡ��1����G��������������,����1.00   2.50   3.25�����������趨:{\n}"
set /p system_imgsizeG1=
echo %system_imgsizeG1%>bin\�Զ����С�趨��ɾ1
attrib +r +h bin\�Զ����С�趨��ɾ1 >nul 2>nul
goto home_systemimg
:custom_size2_img
attrib -r -h bin\�Զ����ֽ��趨��ɾ2 >nul 2>nul
bin\ctext "{0C}������ѡ��2�����ֽڴ�С�������������֣����������趨:{\n}"
set /p system_imgsize2=
echo %system_imgsize2%>bin\�Զ����ֽ��趨��ɾ2
attrib +r +h bin\�Զ����ֽ��趨��ɾ2 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ2 >nul 2>nul
bin\ctext "{0C}������ѡ��1����G��������������,����1.00   2.50   3.25�����������趨:{\n}"
set /p system_imgsizeG2=
echo %system_imgsizeG2%>bin\�Զ����С�趨��ɾ2
attrib +r +h bin\�Զ����С�趨��ɾ2 >nul 2>nul
goto home_systemimg
:custom_size3_img
attrib -r -h bin\�Զ����ֽ��趨��ɾ3 >nul 2>nul
bin\ctext "{0C}������ѡ��3�����ֽڴ�С�������������֣����������趨:{\n}"
set /p system_imgsize3=
echo %system_imgsize3%>bin\�Զ����ֽ��趨��ɾ3
attrib +r +h bin\�Զ����ֽ��趨��ɾ3 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ3 >nul 2>nul
bin\ctext "{0C}������ѡ��1����G��������������,����1.00   2.50   3.25�����������趨:{\n}"
set /p system_imgsizeG3=
echo %system_imgsizeG3%>bin\�Զ����С�趨��ɾ3
attrib +r +h bin\�Զ����С�趨��ɾ3 >nul 2>nul
goto home_systemimg
:custom_size4_img
attrib -r -h bin\�Զ����ֽ��趨��ɾ4 >nul 2>nul
bin\ctext "{0C}������ѡ��4�����ֽڴ�С�������������֣����������趨:{\n}"
set /p system_imgsize4=
echo %system_imgsize4%>bin\�Զ����ֽ��趨��ɾ4
attrib +r +h bin\�Զ����ֽ��趨��ɾ4 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ4 >nul 2>nul
bin\ctext "{0C}������ѡ��1����G��������������,����1.00   2.50   3.25�����������趨:{\n}"
set /p system_imgsizeG4=
echo %system_imgsizeG4%>bin\�Զ����С�趨��ɾ4
attrib +r +h bin\�Զ����С�趨��ɾ4 >nul 2>nul
goto home_systemimg
:custom_size5_img
attrib -r -h bin\�Զ����ֽ��趨��ɾ5 >nul 2>nul
bin\ctext "{0C}������ѡ��5�����ֽڴ�С�������������֣����������趨:{\n}"
set /p system_imgsize5=
echo %system_imgsize5%>bin\�Զ����ֽ��趨��ɾ5
attrib +r +h bin\�Զ����ֽ��趨��ɾ5 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ5 >nul 2>nul
bin\ctext "{0C}������ѡ��1����G��������������,����1.00   2.50   3.25�����������趨:{\n}"
set /p system_imgsizeG5=
echo %system_imgsizeG5%>bin\�Զ����С�趨��ɾ5
attrib +r +h bin\�Զ����С�趨��ɾ5 >nul 2>nul
goto home_systemimg
:custom_size6_img
attrib -r -h bin\�Զ����ֽ��趨��ɾ6 >nul 2>nul
bin\ctext "{0C}������ѡ��6�����ֽڴ�С�������������֣����������趨:{\n}"
set /p system_imgsize6=
echo %system_imgsize6%>bin\�Զ����ֽ��趨��ɾ6
attrib +r +h bin\�Զ����ֽ��趨��ɾ6 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ6 >nul 2>nul
bin\ctext "{0C}������ѡ��1����G��������������,����1.00   2.50   3.25�����������趨:{\n}"
set /p system_imgsizeG6=
echo %system_imgsizeG6%>bin\�Զ����С�趨��ɾ6
attrib +r +h bin\�Զ����С�趨��ɾ6 >nul 2>nul
goto home_systemimg
:make_img
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      û�ҵ�system\build.prop����ȷ�Ϻ�ĸĿ¼���Ƿ�������{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�system�ļ��У���ȷ�Ϻ�ĸĿ¼���Ƿ����system�ļ��е������ԡ�{0F}{\n}"
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
bin\ctext "{0C}      ȱ��file_contexts�������,�����ں���ȡinitrd\file_contexts�����õ�������Ŀ¼��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else
echo.
echo �����ĵȴ������ڴ������system.img  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
echo.��ͨ����ҳ��ѡ��11�������趨��ҳ��1-6ѡ��������С
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %1 -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ���������־���֣�����file_contexts�����ͻ  ��{0F}{\n}" & echo. & pause & goto home_systemimg & else
goto home
:custom_arbitrarily_img
echo.
bin\ctext "{0E}��������ķ���������Ҫfile_contexts��Ӧ�ı������Ĵ���֧�֣������������������˶�����Ű���Enter�س���ȷ�ϣ�{0F}{\n}"
echo.
echo.
set /p arbitrarily=������Ҫ����ķ������ƣ�Ӣ��Сд״̬���룩��
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
bin\ctext "{0E}  1.��׿5.0 - ��׿7.1.2{\n}"
bin\ctext "{0E}  2.��׿8.0{\n}"
bin\ctext "{0B} ====================={0F}{\n}"
echo.
set /p webe=-^-^> ��������ѡ���Ӧ�Ĳ���:
if "%webe%"=="1" bin\file_contexts_tool.exe file_contexts.bin -o file_contexts -e >nul 2>nul & goto custom_arbitrarily_img_start
if "%webe%"=="2" bin\file_contexts_oreo.exe -o file_contexts file_contexts.bin >nul 2>nul & goto custom_arbitrarily_img_start
goto custom_arbitrarily_img_bin
:custom_arbitrarily_img_start
echo.
if not exist "file_contexts" (
echo.
echo.
bin\ctext "{0C}      ȱ��file_contexts�������,�����ں���ȡinitrd\file_contexts�����õ�������Ŀ¼��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else (
bin\ctext {0F}{\n}
if not exist bin\�Զ����С����������AI�˹����ܼ�������ɾ goto custom_arbitrarily_size_img
for /f %%a in (bin\�Զ����С����������AI�˹����ܼ�������ɾ) do (set arbitrarily_size=%%a)
bin\ctext "{0F}     �ϴδ����������С�ֽ���:{0C}%arbitrarily_size%{\n}"
echo.
bin\ctext "{0B} ================================================{\n}"
bin\ctext "{0E}  1.ʹ���ϴα����������С�ֽ�{0C}%arbitrarily_size%{0E}���д��{\n}"
bin\ctext "{0E}  2.�½�������С�ֽڴ��{\n}"
bin\ctext "{0B} ================================================{0F}{\n}"
echo.
set /p webf=-^-^> ��������ѡ���Ӧ�Ĳ���:
if "%webf%"=="1" goto custom_arbitrarily_size_start
if "%webf%"=="2" goto custom_arbitrarily_size_img
goto custom_arbitrarily_img_start
:custom_arbitrarily_size_start
echo.
echo �����ĵȴ������ڴ������ext4�����img���� ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
del %arbitrarily%.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %arbitrarily_size% -a %arbitrarily% %arbitrarily%.img %arbitrarily%
)
echo.
if not exist "%arbitrarily%" bin\ctext "{0C}      ��ĸĿ¼�ڲ����� %arbitrarily% ���Ŀ¼,�޷����д����{0F}{\n}" & echo. & pause & goto home_systemimg & else
goto home
:custom_arbitrarily_size_img
attrib -r -h bin\�Զ����С����������AI�˹����ܼ�������ɾ >nul 2>nul
bin\ctext "�������Լ�����{0C}%arbitrarily%����{0F}�����ֽڴ�С:{\n}"
set /p arbitrarily_size=
echo %arbitrarily_size%>bin\�Զ����С����������AI�˹����ܼ�������ɾ
attrib +r +h bin\�Զ����С����������AI�˹����ܼ�������ɾ >nul 2>nul
echo.
echo �����ĵȴ������ڴ������ext4�����img���� ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
del %arbitrarily%.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %arbitrarily_size% -a %arbitrarily% %arbitrarily%.img %arbitrarily%
echo.
if not exist "%arbitrarily%" bin\ctext "{0C}      ��ĸĿ¼�ڲ����� %arbitrarily% ���Ŀ¼,�޷����д����{0F}{\n}" & echo. & pause & goto home_systemimg & else
goto home
:custom_system_img
if exist "file_contexts" goto custom_system_img_start
if not exist "file_contexts" goto custom_system_img_bin
:custom_system_img_bin
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      û�ҵ�system\build.prop����ȷ�Ϻ�ĸĿ¼���Ƿ�������{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�system�ļ��У���ȷ�Ϻ�ĸĿ¼���Ƿ����system�ļ��е������ԡ�{0F}{\n}"
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
bin\ctext "{0C}      ȱ��file_contexts�������,�����ں���ȡinitrd\file_contexts�����õ�������Ŀ¼��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else (
echo.
bin\ctext {0F}{\n}
if not exist bin\�Զ����С���AI�˹����ܼ�������ɾ goto custom_size_img
for /f %%a in (bin\�Զ����С���AI�˹����ܼ�������ɾ) do (set system_size=%%a)
bin\ctext "{0F}     �ϴδ����������С�ֽ���:{0C}%system_size%{\n}"
echo.
bin\ctext "{0B} ================================================{\n}"
bin\ctext "{0E}  1.ʹ���ϴα����������С�ֽ�{0C}%system_size%{0E}���д��{\n}"
bin\ctext "{0E}  2.�½�������С�ֽڴ��{\n}"
bin\ctext "{0B} ================================================{0F}{\n}"
echo.
set /p webh=-^-^> ��������ѡ���Ӧ�Ĳ���:
if "%webh%"=="1" goto custom_system_size_start
if "%webh%"=="2" goto custom_size_img
goto custom_system_img_start
:custom_system_size_start
echo.
echo �����ĵȴ������ڴ������system.img  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %system_size% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ���������־���֣�����file_contexts�����ͻ  ��{0F}{\n}" & echo. & pause & goto home_systemimg & else
)
goto home
:custom_size_img
attrib -r -h bin\�Զ����С���AI�˹����ܼ�������ɾ >nul 2>nul
bin\ctext "�������Լ�����{0C}�ٷ�system����{0F}�����ֽڴ�С:{\n}"
set /p system_size=
echo %system_size%>bin\�Զ����С���AI�˹����ܼ�������ɾ
attrib +r +h bin\�Զ����С���AI�˹����ܼ�������ɾ >nul 2>nul
echo.
echo �����ĵȴ������ڴ������system.img  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %system_size% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ���������־���֣�����file_contexts�����ͻ  ��{0F}{\n}" & echo. & pause & goto home_systemimg & else
goto home
:look_systemimg_size
if not exist "system.img" (
echo.
echo.
bin\ctext "{0C}      û�ҵ��ٷ�system.img��sparse image(imgѹ����ʽ)������ȷ�Ϻ�ĸĿ¼���Ƿ���ڹٷ�system.img��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else (
echo.
echo.
echo.����ת���ٷ�system.img���Ժ���鿴system_ext4.img���ļ������Լ��ɲ鿴�����ֽڴ�С
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
bin\simg2img.exe system.img system_ext4.img
echo.
@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a-d /b system_ext4.img') do (
bin\ctext "%%i:�ٷ�system�����ֽ�������С={0C}%%~zi{0F}�ֽ�.{\n}"
echo.
bin\ctext "{0C} ����鿴�ٷ���0�ֽ�˵���Ѿ���ext4 image(����img��ʽ)���ǹٷ�system.img��sparse image(imgѹ����ʽ)�������ļ���{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�system\build.prop����ȷ�Ϻ�ĸĿ¼���Ƿ�������{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ��ٷ�system.img��sparse image��imgѹ����ʽ��������ȷ�Ϻ�ĸĿ¼���Ƿ���ڹٷ�system.img��{0F}{\n}"
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
bin\ctext "{0C}      ȱ��file_contexts�������,�����ں���ȡinitrd\file_contexts�����õ�������Ŀ¼��{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�system�ļ��У���ȷ�Ϻ�ĸĿ¼���Ƿ����system�ļ��е������ԡ�{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemimg
)
) else (
echo.
echo.����ת���ٷ�system.img���Ժ���鿴system_ext4.img���ļ������Լ��ɲ鿴�����ֽڴ�С
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
bin\simg2img.exe system.img system_ext4.img
echo.
@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a-d /b system_ext4.img') do (
bin\ctext "%%i:�ٷ�system�����ֽ�������С={0C}%%~zi{0F}�ֽ�.{\n}"
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
echo �����ĵȴ������ڴ������system.img  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
echo.��ͨ����ҳ��ѡ��11�������趨��ҳ��1-6ѡ��������С
del system_ext4.img 2>nul
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %ext4imgsizea% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ���������־���֣�����file_contexts�����ͻ  ��{0F}{\n}" & echo. & pause & goto home_systemimg & else
)
goto home
:home_systemdat
cls
if not exist bin\�Զ����ֽ��趨��ɾ1 goto custom_size1_img
if not exist bin\�Զ����ֽ��趨��ɾ2 goto custom_size2_img
if not exist bin\�Զ����ֽ��趨��ɾ3 goto custom_size3_img
if not exist bin\�Զ����ֽ��趨��ɾ4 goto custom_size4_img
if not exist bin\�Զ����ֽ��趨��ɾ5 goto custom_size5_img
if not exist bin\�Զ����ֽ��趨��ɾ6 goto custom_size6_img
if not exist bin\�Զ����С�趨��ɾ1 goto custom_size1_img
if not exist bin\�Զ����С�趨��ɾ2 goto custom_size2_img
if not exist bin\�Զ����С�趨��ɾ3 goto custom_size3_img
if not exist bin\�Զ����С�趨��ɾ4 goto custom_size4_img
if not exist bin\�Զ����С�趨��ɾ5 goto custom_size5_img
if not exist bin\�Զ����С�趨��ɾ6 goto custom_size6_img
for /f %%a in (bin\�Զ����ֽ��趨��ɾ1) do (set system_size1=%%a)
for /f %%a in (bin\�Զ����ֽ��趨��ɾ2) do (set system_size2=%%a)
for /f %%a in (bin\�Զ����ֽ��趨��ɾ3) do (set system_size3=%%a)
for /f %%a in (bin\�Զ����ֽ��趨��ɾ4) do (set system_size4=%%a)
for /f %%a in (bin\�Զ����ֽ��趨��ɾ5) do (set system_size5=%%a)
for /f %%a in (bin\�Զ����ֽ��趨��ɾ6) do (set system_size6=%%a)
for /f %%a in (bin\�Զ����С�趨��ɾ1) do (set system_sizeG1=%%a)
for /f %%a in (bin\�Զ����С�趨��ɾ2) do (set system_sizeG2=%%a)
for /f %%a in (bin\�Զ����С�趨��ɾ3) do (set system_sizeG3=%%a)
for /f %%a in (bin\�Զ����С�趨��ɾ4) do (set system_sizeG4=%%a)
for /f %%a in (bin\�Զ����С�趨��ɾ5) do (set system_sizeG5=%%a)
for /f %%a in (bin\�Զ����С�趨��ɾ6) do (set system_sizeG6=%%a)
bin\ctext "{0A} ====================================================================================================={\n}"
echo.    ʹ��������¹�������ں���ȡinitrd\file_contexts��ramdisk\file_contexts,ʶ��systemΪ����Ŀ¼��
echo.
echo.              ֱ�Ӵ�system�ļ��д����system.new.dat��system.transfer.list         
echo. =====================================================================================================
bin\ctext  {0A} ������Լ����͵Ĺٷ�system�����ֽڴ�Сѡ������ѡ��:{0C}�����棺{0F}��ɫ{0C}ѡ��Ϊ�ɷ������ѡ���{\n}
bin\ctext {0E}{\n}
bin\ctext "{0E}  1\{0F}11{0E}.����� %system_sizeG1%G (%system_size1% �ֽ�) ��С��system.img���ٴ�����system.new.dat��system.transfer.list{\n}"
bin\ctext "{0E}  2\{0F}22{0E}.����� %system_sizeG2%G (%system_size2% �ֽ�) ��С��system.img���ٴ�����system.new.dat��system.transfer.list{\n}"
bin\ctext "{0E}  3\{0F}33{0E}.����� %system_sizeG3%G (%system_size3% �ֽ�) ��С��system.img���ٴ�����system.new.dat��system.transfer.list{\n}"
bin\ctext {0D}{\n}
bin\ctext "{0D}  4\{0F}44{0D}.����� %system_sizeG4%G (%system_size4% �ֽ�) ��С��system.img���ٴ�����system.new.dat��system.transfer.list{\n}"
bin\ctext "{0D}  5\{0F}55{0D}.����� %system_sizeG5%G (%system_size5% �ֽ�) ��С��system.img���ٴ�����system.new.dat��system.transfer.list{\n}"
bin\ctext "{0D}  6\{0F}66{0D}.����� %system_sizeG6%G (%system_size6% �ֽ�) ��С��system.img���ٴ�����system.new.dat��system.transfer.list{\n}"
bin\ctext {0B} {\n}
bin\ctext "{0B}  7\{0F}77{0B}.�Զ�����system.img�ֽ�������С�����ٴ�����system.new.dat��system.transfer.list{\n}"
echo      8.�鿴�ٷ�system����������С����ȡ�ٷ�system.new.dat��system.transfer.list���Ƶ�������Ŀ¼��
bin\ctext {0C}{\n}
bin\ctext "{0C}  9\{0F}99{0C}.���ݹٷ�system����������С�����������ROM��systemĿ¼����system.new.dat��system.transfer.list{\n}"
bin\ctext "{0C}       ǰ��:����ȡ�ٷ�system.new.dat��system.transfer.list���Ƶ�������Ŀ¼��{\n}"
bin\ctext {0A}{\n}
echo     10.�����趨��ҳ��1-6ȫ��ѡ��������С
echo    100.�����趨��ҳ��1-6����ѡ��������С
echo      0.�ص�������ҳ
bin\ctext {0F}{\n}
echo ���ѣ����Ϲ�������ں���ȡinitrd\file_contexts��ramdisk\file_contexts,ʶ��systemΪ����Ŀ¼��
echo.
set /p webj=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
attrib -r -h bin\�Զ����ֽ��趨��ɾ1 >nul 2>nul
attrib -r -h bin\�Զ����ֽ��趨��ɾ2 >nul 2>nul
attrib -r -h bin\�Զ����ֽ��趨��ɾ3 >nul 2>nul
attrib -r -h bin\�Զ����ֽ��趨��ɾ4 >nul 2>nul
attrib -r -h bin\�Զ����ֽ��趨��ɾ5 >nul 2>nul
attrib -r -h bin\�Զ����ֽ��趨��ɾ6 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ1 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ2 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ3 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ4 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ5 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ6 >nul 2>nul
del bin\�Զ����ֽ��趨��ɾ1
del bin\�Զ����ֽ��趨��ɾ2
del bin\�Զ����ֽ��趨��ɾ3
del bin\�Զ����ֽ��趨��ɾ4
del bin\�Զ����ֽ��趨��ɾ5
del bin\�Զ����ֽ��趨��ɾ6
del bin\�Զ����С�趨��ɾ1
del bin\�Զ����С�趨��ɾ2
del bin\�Զ����С�趨��ɾ3
del bin\�Զ����С�趨��ɾ4
del bin\�Զ����С�趨��ɾ5
del bin\�Զ����С�趨��ɾ6
goto home_systemdat
:custom_settings_size_dat2
echo.
echo.
echo.
bin\ctext "{0B}====================================={\n}"
bin\ctext "{0A}        1.ѡ��1��������С�趨{\n}"
bin\ctext "{0A}        2.ѡ��2��������С�趨{\n}"
echo.
bin\ctext "{0E}        3.ѡ��3��������С�趨{\n}"
bin\ctext "{0E}        4.ѡ��4��������С�趨{\n}"
echo.
bin\ctext "{0D}        5.ѡ��5��������С�趨{\n}"
bin\ctext "{0D}        6.ѡ��6��������С�趨{\n}"
bin\ctext "{0B}====================================={0F}{\n}"
echo.
set /p systemzize=-^-^> ��������Ҫ�����趨��ѡ��:
if "%systemzize%"=="1" goto custom_size_dat1
if "%systemzize%"=="2" goto custom_size_dat2
if "%systemzize%"=="3" goto custom_size_dat3
if "%systemzize%"=="4" goto custom_size_dat4
if "%systemzize%"=="5" goto custom_size_dat5
if "%systemzize%"=="6" goto custom_size_dat6
goto custom_settings_size_dat2
:custom_size_dat1
attrib -r -h bin\�Զ����С�趨��ɾ1 >nul 2>nul
del bin\�Զ����С�趨��ɾ1
goto custom_size1_dat
:custom_size_dat2
attrib -r -h bin\�Զ����С�趨��ɾ2 >nul 2>nul
del bin\�Զ����С�趨��ɾ2
goto custom_size2_dat
:custom_size_dat3
attrib -r -h bin\�Զ����С�趨��ɾ3 >nul 2>nul
del bin\�Զ����С�趨��ɾ3
goto custom_size3_dat
:custom_size_dat4
attrib -r -h bin\�Զ����С�趨��ɾ4 >nul 2>nul
del bin\�Զ����С�趨��ɾ4
goto custom_size4_dat
:custom_size_dat5
attrib -r -h bin\�Զ����С�趨��ɾ5 >nul 2>nul
del bin\�Զ����С�趨��ɾ5
goto custom_size5_dat
:custom_size_dat6
attrib -r -h bin\�Զ����С�趨��ɾ6 >nul 2>nul
del bin\�Զ����С�趨��ɾ6
goto custom_size6_dat
:custom_size1_dat
attrib -r -h bin\�Զ����ֽ��趨��ɾ1 >nul 2>nul
bin\ctext "{0C}������ѡ��1�����ֽڴ�С�������������֣����������趨:{\n}"
set /p system_imgsize1=
echo %system_imgsize1%>bin\�Զ����ֽ��趨��ɾ1
attrib +r +h bin\�Զ����ֽ��趨��ɾ1 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ1 >nul 2>nul
bin\ctext "{0C}������ѡ��1����G��������������,����1.00   2.50   3.25�����������趨:{\n}"
set /p system_imgsizeG1=
echo %system_imgsizeG1%>bin\�Զ����С�趨��ɾ1
attrib +r +h bin\�Զ����С�趨��ɾ1 >nul 2>nul
goto home_systemdat
:custom_size2_dat
attrib -r -h bin\�Զ����ֽ��趨��ɾ2 >nul 2>nul
bin\ctext "{0C}������ѡ��2�����ֽڴ�С�������������֣����������趨:{\n}"
set /p system_imgsize2=
echo %system_imgsize2%>bin\�Զ����ֽ��趨��ɾ2
attrib +r +h bin\�Զ����ֽ��趨��ɾ2 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ2 >nul 2>nul
bin\ctext "{0C}������ѡ��1����G��������������,����1.00   2.50   3.25�����������趨:{\n}"
set /p system_imgsizeG2=
echo %system_imgsizeG2%>bin\�Զ����С�趨��ɾ2
attrib +r +h bin\�Զ����С�趨��ɾ2 >nul 2>nul
goto home_systemdat
:custom_size3_dat
attrib -r -h bin\�Զ����ֽ��趨��ɾ3 >nul 2>nul
bin\ctext "{0C}������ѡ��3�����ֽڴ�С�������������֣����������趨:{\n}"
set /p system_imgsize3=
echo %system_imgsize3%>bin\�Զ����ֽ��趨��ɾ3
attrib +r +h bin\�Զ����ֽ��趨��ɾ3 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ3 >nul 2>nul
bin\ctext "{0C}������ѡ��1����G��������������,����1.00   2.50   3.25�����������趨:{\n}"
set /p system_imgsizeG3=
echo %system_imgsizeG3%>bin\�Զ����С�趨��ɾ3
attrib +r +h bin\�Զ����С�趨��ɾ3 >nul 2>nul
goto home_systemdat
:custom_size4_dat
attrib -r -h bin\�Զ����ֽ��趨��ɾ4 >nul 2>nul
bin\ctext "{0C}������ѡ��4�����ֽڴ�С�������������֣����������趨:{\n}"
set /p system_imgsize4=
echo %system_imgsize4%>bin\�Զ����ֽ��趨��ɾ4
attrib +r +h bin\�Զ����ֽ��趨��ɾ4 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ4 >nul 2>nul
bin\ctext "{0C}������ѡ��1����G��������������,����1.00   2.50   3.25�����������趨:{\n}"
set /p system_imgsizeG4=
echo %system_imgsizeG4%>bin\�Զ����С�趨��ɾ4
attrib +r +h bin\�Զ����С�趨��ɾ4 >nul 2>nul
goto home_systemdat
:custom_size5_dat
attrib -r -h bin\�Զ����ֽ��趨��ɾ5 >nul 2>nul
bin\ctext "{0C}������ѡ��5�����ֽڴ�С�������������֣����������趨:{\n}"
set /p system_imgsize5=
echo %system_imgsize5%>bin\�Զ����ֽ��趨��ɾ5
attrib +r +h bin\�Զ����ֽ��趨��ɾ5 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ5 >nul 2>nul
bin\ctext "{0C}������ѡ��1����G��������������,����1.00   2.50   3.25�����������趨:{\n}"
set /p system_imgsizeG5=
echo %system_imgsizeG5%>bin\�Զ����С�趨��ɾ5
attrib +r +h bin\�Զ����С�趨��ɾ5 >nul 2>nul
goto home_systemdat
:custom_size6_dat
attrib -r -h bin\�Զ����ֽ��趨��ɾ6 >nul 2>nul
bin\ctext "{0C}������ѡ��6�����ֽڴ�С�������������֣����������趨:{\n}"
set /p system_imgsize6=
echo %system_imgsize6%>bin\�Զ����ֽ��趨��ɾ6
attrib +r +h bin\�Զ����ֽ��趨��ɾ6 >nul 2>nul
attrib -r -h bin\�Զ����С�趨��ɾ6 >nul 2>nul
bin\ctext "{0C}������ѡ��1����G��������������,����1.00   2.50   3.25�����������趨:{\n}"
set /p system_imgsizeG6=
echo %system_imgsizeG6%>bin\�Զ����С�趨��ɾ6
attrib +r +h bin\�Զ����С�趨��ɾ6 >nul 2>nul
goto home_systemdat
:make_dat
if exist "file_contexts" goto make_dat_start
if not exist "file_contexts" goto make_dat_bin
:make_dat_bin
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      û�ҵ�system\build.prop����ȷ�Ϻ�ĸĿ¼���Ƿ�������{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�system�ļ��У���ȷ�Ϻ�ĸĿ¼���Ƿ����system�ļ��е������ԡ�{0F}{\n}"
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
bin\ctext "{0C}      ȱ��file_contexts�������,�����ں���ȡinitrd\file_contexts�����õ�������Ŀ¼��{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)  else (
echo.
echo �����ĵȴ������ڴ������system.img  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
echo.��ͨ����ҳ��ѡ��10�������趨��ҳ��1-6ѡ��������С
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %1 -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ���������־���֣�����file_contexts�����ͻ  ��{0F}{\n}" & echo. & pause & goto home_systemdat & else
)
echo.
if not exist "system.img" (
echo.
bin\ctext "{0C}      û�ҵ�system.img����ȷ�Ϻ�ĸĿ¼���Ƿ����system.img��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
echo.
echo �����ĵȴ������ڴ������system.new.dat��system.transfer.list  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
echo ������ͣ��ת����... & bin\ext2simg system.img bin\cache\system_simg.img >nul 2>nul
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
bin\ctext "{0C}      û�ҵ�system\build.prop����ȷ�Ϻ�ĸĿ¼���Ƿ�������{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�system�ļ��У���ȷ�Ϻ�ĸĿ¼���Ƿ����system�ļ��е������ԡ�{0F}{\n}"
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
bin\ctext "{0C}      ȱ��file_contexts�������,�����ں���ȡinitrd\file_contexts�����õ�������Ŀ¼��{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
bin\ctext {0F}{\n}
if not exist bin\�Զ����С���AI�˹����ܼ�������ɾ goto custom_size_dat
for /f %%a in (bin\�Զ����С���AI�˹����ܼ�������ɾ) do (set dat_size=%%a)
bin\ctext "{0F}     �ϴδ����������С�ֽ���:{0C}%dat_size%{\n}"
echo.
bin\ctext "{0B} ================================================{\n}"
bin\ctext "{0E}  1.ʹ���ϴα����������С�ֽ�{0C}%dat_size%{0E}���д��{\n}"
bin\ctext "{0E}  2.�½�������С�ֽڴ��{\n}"
bin\ctext "{0B} ================================================{0F}{\n}"
echo.
set /p webm=-^-^> ��������ѡ���Ӧ�Ĳ���:
if "%webm%"=="1" goto custom_dat_size_start
if "%webm%"=="2" goto custom_size_dat
goto custom_system_dat_start
:custom_dat_size_start
echo.
echo �����ĵȴ������ڴ������system.img  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %dat_size% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ���������־���֣�����file_contexts�����ͻ  ��{0F}{\n}" & echo. & pause & goto home_systemdat & else
)
goto makedat
:custom_size_dat
attrib -r -h bin\�Զ����С����������AI�˹����ܼ�������ɾ >nul 2>nul
bin\ctext "�������Լ�����{0C}�ٷ�system����{0F}�����ֽڴ�С:{\n}"
set /p dat_size=
echo %dat_size%>bin\�Զ����С���AI�˹����ܼ�������ɾ
attrib +r +h bin\�Զ����С����������AI�˹����ܼ�������ɾ >nul 2>nul
echo.
echo �����ĵȴ������ڴ������system.img  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %dat_size% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ���������־���֣�����file_contexts�����ͻ  ��{0F}{\n}" & echo. & pause & goto home_systemdat & else
goto makedat
:looking_systemdat_size
if not exist "system.new.dat" (
echo.
echo.
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ���ڹٷ�system.new.dat��system.transfer.list��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ���ڹٷ�system.new.dat��system.transfer.list��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
echo.����ת���ٷ�system.new.dat��system.transfer.list
echo.�Ժ���鿴system.img.ext4���ļ������Լ��ɲ鿴�����ֽڴ�С
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
del system.img.ext4 2>nul
bin\sdat2img.exe system.transfer.list system.new.dat system.img.ext4
echo.
@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a-d /b system.img.ext4') do (
bin\ctext "%%i:�ٷ�system�����ֽ�������С={0C}%%~zi{0F}�ֽ�.{\n}"
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
bin\ctext "{0C}      û�ҵ�system\build.prop����ȷ�Ϻ�ĸĿ¼���Ƿ�������{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ���ڹٷ�system.new.dat��system.transfer.list��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ���ڹٷ�system.new.dat��system.transfer.list��{0F}{\n}"
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
bin\ctext "{0C}      ȱ��file_contexts�������,�����ں���ȡinitrd\file_contexts�����õ�������Ŀ¼��{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�system�ļ��У���ȷ�Ϻ�ĸĿ¼���Ƿ����system�ļ��������ԡ�{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
echo.����ת���ٷ�system.new.dat��system.transfer.list
echo.�Ժ���鿴system.img.ext4���ļ������Լ��ɲ鿴�����ֽڴ�С
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
del system.img.ext4 2>nul
bin\sdat2img.exe system.transfer.list system.new.dat system.img.ext4
echo.
@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a-d /b system.img.ext4') do (
bin\ctext "%%i:�ٷ�system�����ֽ�������С={0C}%%~zi{0F}�ֽ�.{\n}"
set ext4imgage2sizec=%%~zi
)
echo.
echo.
echo �����ĵȴ������ڴ������system.img  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
del system.img.ext4 2>nul
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %ext4imgage2sizec% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ���������־���֣�����file_contexts�����ͻ  ��{0F}{\n}" & echo. & pause & goto home_systemdat & else
)
goto makedat
:make_dat2
if exist "file_contexts" goto make_dat2_start
if not exist "file_contexts" goto make_dat2_bin
:make_dat2_bin
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      û�ҵ�system\build.prop����ȷ�Ϻ�ĸĿ¼���Ƿ�������{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�system�ļ��У���ȷ�Ϻ�ĸĿ¼���Ƿ����system�ļ��е������ԡ�{0F}{\n}"
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
bin\ctext "{0C}      ȱ��file_contexts�������,�����ں���ȡinitrd\file_contexts�����õ�������Ŀ¼��{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)  else (
echo.
echo �����ĵȴ������ڴ������system.img  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %2 -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ���������־���֣�����file_contexts�����ͻ  ��{0F}{\n}" & echo. & pause & goto home_systemdat & else
)
goto makedat2
:makedat
if not exist "system.img" (
echo.
echo.
bin\ctext "{0C}      û�ҵ�system.img����ȷ�Ϻ�ĸĿ¼���Ƿ����system.img��{0F}{\n}"
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
echo ������ͣ��ת����... & bin\ext2simg system.img bin\cache\system_simg.img >nul 2>nul
if exist "bin\cache\system_simg.img" goto makesdat_img
if not exist "bin\cache\system_simg.img" goto makesdat_simg
)
goto home
:makedat2
if not exist "system.img" (
echo.
echo.
bin\ctext "{0C}      û�ҵ�system.img����ȷ�Ϻ�ĸĿ¼���Ƿ����system.img��{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo.
echo.
echo �����ĵȴ������ڴ������system.new.dat��system.transfer.list  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
echo ������ͣ��ת����... & bin\ext2simg system.img bin\cache\system_simg.img >nul 2>nul
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
bin\ctext "{0C}      û�ҵ�system\build.prop����ȷ�Ϻ�ĸĿ¼���Ƿ�������{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�system�ļ��У���ȷ�Ϻ�ĸĿ¼���Ƿ����system�ļ��е������ԡ�{0F}{\n}"
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
bin\ctext "{0C}      ȱ��file_contexts�������,�����ں���ȡinitrd\file_contexts�����õ�������Ŀ¼��{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
bin\ctext {0F}{\n}
if not exist bin\�Զ����С���AI�˹����ܼ�������ɾ goto custom_size_dat2
for /f %%a in (bin\�Զ����С���AI�˹����ܼ�������ɾ) do (set dat2_size=%%a)
bin\ctext "{0F}     �ϴδ����������С�ֽ���:{0C}%dat2_size%{\n}"
echo.
bin\ctext "{0B} ================================================{\n}"
bin\ctext "{0E}  1.ʹ���ϴα����������С�ֽ�{0C}%dat2_size%{0E}���д��{\n}"
bin\ctext "{0E}  2.�½�������С�ֽڴ��{\n}"
bin\ctext "{0B} ================================================{0F}{\n}"
echo.
set /p webq=-^-^> ��������ѡ���Ӧ�Ĳ���:
if "%webq%"=="1" goto custom_dat2_size_start
if "%webq%"=="2" goto custom_size_dat2
goto custom_system_dat2_start
:custom_dat2_size_start
echo.
echo �����ĵȴ������ڴ������system.img  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %dat2_size% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ���������־���֣�����file_contexts�����ͻ  ��{0F}{\n}" & echo. & pause & goto home_systemdat & else
)
goto makedat2
:custom_size_dat2
attrib -r -h bin\�Զ����С���AI�˹����ܼ�������ɾ >nul 2>nul
bin\ctext "�������Լ�����{0C}�ٷ�system����{0F}�����ֽڴ�С:{\n}"
set /p dat2_size=
echo %dat2_size%>bin\�Զ����С���AI�˹����ܼ�������ɾ
attrib +r +h bin\�Զ����С���AI�˹����ܼ�������ɾ >nul 2>nul
echo.
echo �����ĵȴ������ڴ������system.img  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %dat2_size% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ���������־���֣�����file_contexts�����ͻ  ��{0F}{\n}" & echo. & pause & goto home_systemdat & else
goto makedat2
:looking_system_size_to_make_new_dat2
if exist "file_contexts" goto looking_system_size_to_make_new_dat2_start
if not exist "file_contexts" goto looking_system_size_to_make_new_dat2_bin
:looking_system_size_to_make_new_dat2_bin
if not exist "system\build.prop" (
echo.
echo.
bin\ctext "{0C}      û�ҵ�system\build.prop����ȷ�Ϻ�ĸĿ¼���Ƿ�������{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ���ڹٷ�system.new.dat��system.transfer.list��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ���ڹٷ�system.new.dat��system.transfer.list��{0F}{\n}"
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
bin\ctext "{0C}      ȱ��file_contexts�������,�����ں���ȡinitrd\file_contexts�����õ�������Ŀ¼��{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�system�ļ��У���ȷ�Ϻ�ĸĿ¼���Ƿ����system�ļ��������ԡ�{0F}{\n}"
echo.
echo.
pause
goto home_systemdat
)
) else (
echo.
echo.����ת���ٷ�system.new.dat��system.transfer.list
echo.�Ժ���鿴system.img.ext4���ļ������Լ��ɲ鿴�����ֽڴ�С
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
echo.
del system.img.ext4 2>nul
bin\sdat2img.exe system.transfer.list system.new.dat system.img.ext4
echo.
@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /a-d /b system.img.ext4') do (
bin\ctext "%%i:�ٷ�system�����ֽ�������С={0C}%%~zi{0F}�ֽ�.{\n}"
set ext4imgage2sizee=%%~zi
)
echo.
echo.
echo �����ĵȴ������ڴ������system.img  ...
echo.
echo ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...
del system.img.ext4 2>nul
del system.img 2>nul
bin\make_ext4fs.exe -T -1 -S file_contexts -l %ext4imgage2sizee% -a /system system.img system
echo.
if not exist "system.img" bin\ctext "{0C}   ���������־���֣�����file_contexts�����ͻ  ��{0F}{\n}" & echo. & pause & goto home_systemdat & else
)
goto makedat2
:Clear_home
cls
bin\ctext "{0A} =================================================================={\n}"
echo                         ��ѡ������һ������ʽ
echo  ==================================================================
echo.
echo   1.������ʱ�ں�\rec�����ļ�
bin\ctext {0D}{\n}
echo   2.�������е��ļ����ļ���(���ã�ֻ�����Խ��������)
bin\ctext {0A}{\n}
echo   0.�ص�������ҳ
bin\ctext {0F}{\n}
echo.
set /p webs=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
rd /s /q �ٷ��ں� 2>nul
rd /s /q Ҫ��ֲ�ں� 2>nul
rd /s /q �ɹ���ֲ���ں� 2>nul
rd /s /q �ٷ�recovery 2>nul
rd /s /q Ҫ��ֲrecovery 2>nul
rd /s /q �ɹ���ֲrecovery 2>nul
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
echo     ��ѡ������Ҫ�Ĺ���ѡ�
echo  =============================
bin\ctext {0E}{\n}
echo   1.file_contexts.binת��Ϊfile_contexts
bin\ctext {0B}{\n}
echo   2.file_contextsת��Ϊfile_contexts.bin
bin\ctext {0C}{\n}
echo   0.���ع�����ҳ
bin\ctext {0F}{\n}
set /p webt=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
bin\ctext "{0C}    û�ҵ�file_contexts.bin�ļ������file_contexts.bin�ŵ�������Ŀ¼��!{0F}{\n}"
echo.
echo.
pause
goto home
)
) else (
echo.
echo.
bin\ctext "{0B} ======================={\n}"
bin\ctext "{0E}  1.��׿7.0 - ��׿7.1.2{\n}"
bin\ctext "{0E}  2.��׿8.0{\n}"
bin\ctext "{0B} ======================={0F}{\n}"
echo.
set /p webu=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
bin\ctext "{0C}    û�ҵ�file_contexts�ļ������file_contexts�ŵ�������Ŀ¼��!{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����boot.img��{0F}{\n}"
echo.
echo.
pause
goto home
)
) else (
echo.
bin\ctext {0E} ���ڽ���ں� boot.img   ...{0F}{\n}
echo.
rd /s /q bin\split_img >nul 2>nul
rd /s /q bin\ramdisk >nul 2>nul
del bin\boot.img >nul 2>nul
copy boot.img bin\boot.img >nul 2>nul
del boot---old.img >nul 2>nul
ren boot.img boot---old.img >nul 2>nul
start bin\�ں�rec�ֽ�.bat boot.img >nul 2>nul
)
goto home
:unpack_recovery_new
echo.
if not exist "recovery.img" (
echo.
echo.
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����recovery.img��{0F}{\n}"
echo.
echo.
pause
goto home
)
) else (
echo.
bin\ctext {0E} ���ڽ�� recovery.img   ...{0F}{\n}
echo.
rd /s /q bin\split_img >nul 2>nul
rd /s /q bin\ramdisk >nul 2>nul
del bin\recovery.img >nul 2>nul
copy recovery.img bin\recovery.img >nul 2>nul
del recovery---old.img >nul 2>nul
ren recovery.img recovery---old.img >nul 2>nul
start bin\�ں�rec�ֽ�.bat recovery.img >nul 2>nul
)
goto home
:make_bootimg_new
echo.
echo.
echo.
bin\ctext {0E}{\n}
echo  **********************************************************************
echo. 
echo.                   �����boot.img�İ�׿�汾���д����
echo. 
echo. **********************************************************************
bin\ctext {0B}{\n}
echo   1.��׿5.0 - ��׿6.0.1���boot.img
bin\ctext {0D}{\n}
echo   2.��׿7.0 - ��׿7.1.2���boot.img
bin\ctext {0F}{\n}
echo.
set /p webv=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
start bin\����ں�.bat >nul 2>nul
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
start bin\����ں�.bat >nul 2>nul
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
echo.                �����recovery.img�İ�׿�汾���д����
echo. 
echo. **********************************************************************
bin\ctext {0B}{\n}
echo   1.��׿5.0 - ��׿6.0.1���recovery.img
bin\ctext {0D}{\n}
echo   2.��׿7.0 - ��׿7.1.2���recovery.img
bin\ctext {0F}{\n}
echo.
set /p webw=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
start bin\���recovery.bat >nul 2>nul
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
start bin\���recovery.bat >nul 2>nul
del ramdisk.cpio.gz >nul 2>nul
del ramdisk.cpio.gz.tmp >nul 2>nul
goto home
:unpack_bootimg
echo.
if not exist "boot.img" (
echo.
echo.
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����boot.img��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����recovery.img��{0F}{\n}"
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
echo     ��ѡ������Ҫ�Ĺ���ѡ�
echo  =============================
bin\ctext {0E}{\n}
echo   1.�ֽ�ramdisk��ramdisk.gz
bin\ctext {0B}{\n}
echo   2.���Ϊramdisk
bin\ctext {0A}{\n}
echo   3.���Ϊramdisk.gz
bin\ctext {0C}{\n}
echo   0.���ع�����ҳ
bin\ctext {0F}{\n}
set /p webx=-^-^> ��������ѡ���Ӧ�Ĳ���:
if "%webx%"=="1" goto unpack_ramdisk
if "%webx%"=="2" goto make_ramdisk
if "%webx%"=="3" goto make_ramdisk.gz
if "%webx%"=="0" goto home
goto make_ramdisk_home
:unpack_ramdisk
echo.
echo.
bin\ctext "{0C} ���麽ĸĿ¼���Ƿ����ramdisk��ramdisk.gz{0F}{\n}"
echo.
bin\ctext "{0B} �ں�ĸĿ¼��ͬʱ����ramdisk��ramdisk.gz��ramdisk�����ֽ⣬Ĭ��ֻ�ֽ�ramdisk.gz{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����initrd�ļ��С�{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo ���Ե����ڴ�initrd�ļ��д��Ϊramdisk...
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����initrd�ļ��С�{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo ���Ե����ڴ�initrd�ļ��д��Ϊramdisk.gz...
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
echo  boot.img/recovery.img�Զ�����ֲ���һֱ����Enter��Ĭ��Ϊ�Զ���ֲ 
echo ==================================================================
echo.
echo   1.�Զ���ֲboot.img
bin\ctext {0D}{\n}
echo   2.�Զ���ֲrecovery.img
bin\ctext {0B}{\n}
echo   3.�Զ�����ֲboot.img
bin\ctext {0C}{\n}
echo   4.�Զ�����ֲrecovery.img
bin\ctext {0A}{\n}
echo   0.�ص�������ҳ
bin\ctext {0F}{\n}
echo.
set /p weby=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
md �ٷ��ں� >nul 2>nul
md Ҫ��ֲ�ں� >nul 2>nul
echo.
bin\ctext "{0D} ========================================{\n}"
echo  ���ٷ�ROM��boot.img�ŵ�"�ٷ��ں�"�ļ���
echo  ��Ҫ��ֲROM��boot.img�ŵ�"Ҫ��ֲ�ں�"�ļ���
bin\ctext "{0D} ========================================{0F}{\n}"
pause
echo.
if not exist "�ٷ��ں�\boot.img" (
echo.
echo.
bin\ctext "{0C}      �����·�����Ƿ���� �ٷ��ں�\boot.img��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
echo.
if not exist "Ҫ��ֲ�ں�\boot.img" (
echo.
echo.
bin\ctext "{0C}      �����·�����Ƿ���� Ҫ��ֲ�ں�\boot.img��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
copy �ٷ��ں�\boot.img >nul 2>nul
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
copy Ҫ��ֲ�ں�\boot.img >nul 2>nul
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
md �ɹ���ֲ���ں� >nul 2>nul
ren boot-new.img boot.img
del �ɹ���ֲ���ں�\boot.img >nul 2>nul
move boot.img �ɹ���ֲ���ں� >nul 2>nul
del boot-old.img >nul 2>nul
bin\ctext "{0B} ============================================================{\n}"
echo  �ɹ�һ����ֲboot.img�ںˣ��뵽"�ɹ���ֲ���ں�"�ļ�������ȡ
bin\ctext "{0B} ============================================================{0F}{\n}"
start �ɹ���ֲ���ں�\
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
md �ٷ�recovery >nul 2>nul
md Ҫ��ֲrecovery >nul 2>nul
echo.
bin\ctext "{0D} ==================================================={\n}"
echo  ���ٷ�ROM�е�recovery.img�ŵ�"�ٷ�recovery"�ļ���
echo  ��Ҫ��ֲ��recovery.img�ŵ�"Ҫ��ֲrecovery"�ļ���
bin\ctext "{0D} ==================================================={0F}{\n}"
pause
echo.
if not exist "Ҫ��ֲrecovery\recovery.img" (
echo.
echo.
bin\ctext "{0C}      �����·�����Ƿ���� Ҫ��ֲrecovery\recovery.img��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
echo.
if not exist "�ٷ�recovery\recovery.img" (
echo.
echo.
bin\ctext "{0C}      �����·�����Ƿ���� �ٷ�recovery\recovery.img��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
copy �ٷ�recovery\recovery.img >nul 2>nul
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
copy Ҫ��ֲrecovery\recovery.img >nul 2>nul
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
md �ɹ���ֲrecovery >nul 2>nul
ren boot-new.img recovery.img
del �ɹ���ֲrecovery\recovery.img >nul 2>nul
move recovery.img �ɹ���ֲrecovery >nul 2>nul
del boot-old.img >nul 2>nul
bin\ctext "{0B} =========================================================={\n}"
echo  �ɹ�һ����ֲrecovery���뵽"�ɹ���ֲrecovery"�ļ�������ȡ
bin\ctext "{0B} =========================================================={0F}{\n}"
start �ɹ���ֲrecovery\
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
md �ٷ��ں� >nul 2>nul
md Ҫ��ֲ�ں� >nul 2>nul
echo.
bin\ctext "{0D} ========================================{\n}"
echo  ���ٷ�ROM��boot.img�ŵ�"�ٷ��ں�"�ļ���
echo  ��Ҫ��ֲROM��boot.img�ŵ�"Ҫ��ֲ�ں�"�ļ���
bin\ctext "{0D} ========================================{0F}{\n}"
pause
echo.
if not exist "Ҫ��ֲ�ں�\boot.img" (
echo.
echo.
bin\ctext "{0C}      �����·�����Ƿ���� Ҫ��ֲ�ں�\boot.img��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
echo.
if not exist "�ٷ��ں�\boot.img" (
echo.
echo.
bin\ctext "{0C}      �����·�����Ƿ���� �ٷ��ں�\boot.img��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
copy �ٷ��ں�\boot.img boot.img >nul 2>nul
bin\bootimg.exe --unpack-bootimg
ping -n 1 127.1 >nul 2>nul
if exist "file_contexts.bin" goto custom_kernel_porting_file_contexts.bin
if exist "file_contexts" goto custom_kernel_porting_file_contexts
:custom_kernel_porting_file_contexts.bin
bin\file_contexts_tool.exe initrd\file_contexts.bin -o initrd\file_contexts -e >nul 2>nul
del �ٷ��ں�\kernel.gz >nul 2>nul
del �ٷ��ں�\kernel >nul 2>nul
del �ٷ��ں�\ramdisk.gz >nul 2>nul
del �ٷ��ں�\ramdisk >nul 2>nul
del �ٷ��ں�\cpiolist.txt >nul 2>nul
del �ٷ��ں�\bootinfo.txt >nul 2>nul
rd /s /q �ٷ��ں�\initrd >nul 2>nul
move kernel.gz �ٷ��ں�\ >nul 2>nul
move kernel �ٷ��ں�\ >nul 2>nul
move ramdisk.gz �ٷ��ں�\ >nul 2>nul
move ramdisk �ٷ��ں�\ >nul 2>nul
move cpiolist.txt �ٷ��ں�\ >nul 2>nul
move bootinfo.txt �ٷ��ں�\ >nul 2>nul
move initrd �ٷ��ں�\ >nul 2>nul
move dt.img �ٷ��ں�\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
copy Ҫ��ֲ�ں�\boot.img boot.img >nul 2>nul
echo.
bin\bootimg.exe --unpack-bootimg
ping -n 1 127.1 >nul 2>nul
bin\file_contexts_tool.exe initrd\file_contexts.bin -o initrd\file_contexts -e >nul 2>nul
del Ҫ��ֲ�ں�\kernel.gz >nul 2>nul
del Ҫ��ֲ�ں�\kernel >nul 2>nul
del Ҫ��ֲ�ں�\ramdisk.gz >nul 2>nul
del Ҫ��ֲ�ں�\ramdisk >nul 2>nul
del Ҫ��ֲ�ں�\cpiolist.txt >nul 2>nul
del Ҫ��ֲ�ں�\bootinfo.txt >nul 2>nul
rd /s /q Ҫ��ֲ�ں�\initrd >nul 2>nul
move kernel.gz Ҫ��ֲ�ں�\ >nul 2>nul
move kernel Ҫ��ֲ�ں�\ >nul 2>nul
move ramdisk.gz Ҫ��ֲ�ں�\ >nul 2>nul
move ramdisk Ҫ��ֲ�ں�\ >nul 2>nul
move cpiolist.txt Ҫ��ֲ�ں�\ >nul 2>nul
move bootinfo.txt Ҫ��ֲ�ں�\ >nul 2>nul
move initrd Ҫ��ֲ�ں�\ >nul 2>nul
move dt.img Ҫ��ֲ�ں�\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
start bin\Beyond_Compare\BCompare.exe
bin\ctext "{0E} ============================================================{\n}"
echo  ���ڴ��ļ��Ա���������ֲ��������... 
echo.
echo  ������ں˽⿪�������ļ��󣬰����������ʼ����ں�boot.img
bin\ctext "{0E} ============================================================{0F}{\n}"
pause
del Ҫ��ֲ�ں�\initrd\file_contexts.bin >nul 2>nul
bin\file_contexts_tool.exe Ҫ��ֲ�ں�\initrd\file_contexts -o Ҫ��ֲ�ں�\initrd\file_contexts.bin >nul 2>nul
del Ҫ��ֲ�ں�\initrd\file_contexts >nul 2>nul
del �ٷ��ں�\initrd\file_contexts.bin >nul 2>nul
bin\file_contexts_tool.exe �ٷ��ں�\initrd\file_contexts -o �ٷ��ں�\initrd\file_contexts.bin >nul 2>nul
del �ٷ��ں�\initrd\file_contexts >nul 2>nul
move �ٷ��ں�\kernel.gz kernel.gz >nul 2>nul
move �ٷ��ں�\kernel kernel >nul 2>nul
move Ҫ��ֲ�ں�\ramdisk.gz ramdisk.gz >nul 2>nul
move Ҫ��ֲ�ں�\ramdisk ramdisk >nul 2>nul
move Ҫ��ֲ�ں�\cpiolist.txt cpiolist.txt >nul 2>nul
move Ҫ��ֲ�ں�\bootinfo.txt bootinfo.txt >nul 2>nul
xcopy /e Ҫ��ֲ�ں�\initrd\* initrd\* >nul 2>nul
move Ҫ��ֲ�ں�\dt.img dt.img >nul 2>nul
ping -n 1 127.1 >nul 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
echo.
bin\bootimg.exe --repack-bootimg
ren boot-new.img boot.img
del �ɹ���ֲ���ں�\boot.img >nul 2>nul
md �ɹ���ֲ���ں� >nul 2>nul
move boot.img �ɹ���ֲ���ں�\ >nul 2>nul
del �ٷ��ں�\ramdisk.gz >nul 2>nul
del �ٷ��ں�\ramdisk >nul 2>nul
del �ٷ��ں�\cpiolist.txt >nul 2>nul
del �ٷ��ں�\bootinfo.txt >nul 2>nul
rd /s /q �ٷ��ں�\initrd >nul 2>nul
del Ҫ��ֲ�ں�\kernel.gz >nul 2>nul
del Ҫ��ֲ�ں�\kernel >nul 2>nul
rd /s /q Ҫ��ֲ�ں�\initrd >nul 2>nul
bin\ctext "{0B} ============================================================{\n}"
echo  �ɹ�һ����ֲboot.img�ںˣ��뵽"�ɹ���ֲ���ں�"�ļ�������ȡ
bin\ctext "{0B} ============================================================{0F}{\n}"
start �ɹ���ֲ���ں�\
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
)
pause
goto home
:custom_kernel_porting_file_contexts
del �ٷ��ں�\kernel.gz >nul 2>nul
del �ٷ��ں�\kernel >nul 2>nul
del �ٷ��ں�\ramdisk.gz >nul 2>nul
del �ٷ��ں�\ramdisk >nul 2>nul
del �ٷ��ں�\cpiolist.txt >nul 2>nul
del �ٷ��ں�\bootinfo.txt >nul 2>nul
rd /s /q �ٷ��ں�\initrd >nul 2>nul
move kernel.gz �ٷ��ں�\ >nul 2>nul
move kernel �ٷ��ں�\ >nul 2>nul
move ramdisk.gz �ٷ��ں�\ >nul 2>nul
move ramdisk �ٷ��ں�\ >nul 2>nul
move cpiolist.txt �ٷ��ں�\ >nul 2>nul
move bootinfo.txt �ٷ��ں�\ >nul 2>nul
move initrd �ٷ��ں�\ >nul 2>nul
move dt.img �ٷ��ں�\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
copy Ҫ��ֲ�ں�\boot.img boot.img >nul 2>nul
echo.
bin\bootimg.exe --unpack-bootimg
ping -n 1 127.1 >nul 2>nul
del Ҫ��ֲ�ں�\kernel.gz >nul 2>nul
del Ҫ��ֲ�ں�\kernel >nul 2>nul
del Ҫ��ֲ�ں�\ramdisk.gz >nul 2>nul
del Ҫ��ֲ�ں�\ramdisk >nul 2>nul
del Ҫ��ֲ�ں�\cpiolist.txt >nul 2>nul
del Ҫ��ֲ�ں�\bootinfo.txt >nul 2>nul
rd /s /q Ҫ��ֲ�ں�\initrd >nul 2>nul
move kernel.gz Ҫ��ֲ�ں�\ >nul 2>nul
move kernel Ҫ��ֲ�ں�\ >nul 2>nul
move ramdisk.gz Ҫ��ֲ�ں�\ >nul 2>nul
move ramdisk Ҫ��ֲ�ں�\ >nul 2>nul
move cpiolist.txt Ҫ��ֲ�ں�\ >nul 2>nul
move bootinfo.txt Ҫ��ֲ�ں�\ >nul 2>nul
move initrd Ҫ��ֲ�ں�\ >nul 2>nul
move dt.img Ҫ��ֲ�ں�\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
start bin\Beyond_Compare\BCompare.exe
bin\ctext "{0E} ============================================================{\n}"
echo  ���ڴ��ļ��Ա���������ֲ��������... 
echo.
echo  ������ں˽⿪�������ļ��󣬰����������ʼ����ں�boot.img
bin\ctext "{0E} ============================================================{0F}{\n}"
pause
move �ٷ��ں�\kernel.gz kernel.gz >nul 2>nul
move �ٷ��ں�\kernel kernel >nul 2>nul
move Ҫ��ֲ�ں�\ramdisk.gz ramdisk.gz >nul 2>nul
move Ҫ��ֲ�ں�\ramdisk ramdisk >nul 2>nul
move Ҫ��ֲ�ں�\cpiolist.txt cpiolist.txt >nul 2>nul
move Ҫ��ֲ�ں�\bootinfo.txt bootinfo.txt >nul 2>nul
xcopy /e Ҫ��ֲ�ں�\initrd\* initrd\* >nul 2>nul
move Ҫ��ֲ�ں�\dt.img dt.img >nul 2>nul
ping -n 1 127.1 >nul 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
echo.
bin\bootimg.exe --repack-bootimg
ren boot-new.img boot.img
del �ɹ���ֲ���ں�\boot.img >nul 2>nul
md �ɹ���ֲ���ں� >nul 2>nul
move boot.img �ɹ���ֲ���ں�\ >nul 2>nul
del �ٷ��ں�\ramdisk.gz >nul 2>nul
del �ٷ��ں�\ramdisk >nul 2>nul
del �ٷ��ں�\cpiolist.txt >nul 2>nul
del �ٷ��ں�\bootinfo.txt >nul 2>nul
rd /s /q �ٷ��ں�\initrd >nul 2>nul
del Ҫ��ֲ�ں�\kernel.gz >nul 2>nul
del Ҫ��ֲ�ں�\kernel >nul 2>nul
rd /s /q Ҫ��ֲ�ں�\initrd >nul 2>nul
bin\ctext "{0B} ============================================================{\n}"
echo  �ɹ�һ����ֲboot.img�ںˣ��뵽"�ɹ���ֲ���ں�"�ļ�������ȡ
bin\ctext "{0B} ============================================================{0F}{\n}"
start �ɹ���ֲ���ں�\
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
md �ٷ�recovery >nul 2>nul
md Ҫ��ֲrecovery >nul 2>nul
bin\ctext "{0D} ==================================================={\n}"
echo  ���ٷ�ROM�е�recovery.img�ŵ�"�ٷ�recovery"�ļ���
echo  ��Ҫ��ֲ��recovery.img�ŵ�"Ҫ��ֲrecovery"�ļ���
bin\ctext "{0D} ==================================================={0F}{\n}"
pause
echo.
if not exist "�ٷ�recovery\recovery.img" (
echo.
echo.
bin\ctext "{0C}      �����·�����Ƿ���� �ٷ�recovery\recovery.img��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
echo.
if not exist "Ҫ��ֲrecovery\recovery.img" (
echo.
echo.
bin\ctext "{0C}      �����·�����Ƿ���� Ҫ��ֲrecovery\recovery.img��{0F}{\n}"
echo.
echo.
echo.
pause
goto home_auto_custom_recovery_kernel_porting
)
) else (
copy �ٷ�recovery\recovery.img recovery.img >nul 2>nul
ren recovery.img boot.img
bin\bootimg.exe --unpack-bootimg
ping -n 1 127.1 >nul 2>nul
if exist "file_contexts.bin" goto custom_recovery_porting_file_contexts.bin
if exist "file_contexts" goto custom_recovery_porting_file_contexts
:custom_recovery_porting_file_contexts.bin
bin\file_contexts_tool.exe initrd\file_contexts.bin -o initrd\file_contexts -e >nul 2>nul
rd /s /q �ٷ�recovery\kernel.gz >nul 2>nul
rd /s /q �ٷ�recovery\kernel >nul 2>nul
rd /s /q �ٷ�recovery\ramdisk.gz >nul 2>nul
rd /s /q �ٷ�recovery\ramdisk >nul 2>nul
rd /s /q �ٷ�recovery\cpiolist.txt >nul 2>nul
rd /s /q �ٷ�recovery\bootinfo.txt >nul 2>nul
rd /s /q �ٷ�recovery\initrd >nul 2>nul
move kernel.gz �ٷ�recovery\ >nul 2>nul
move kernel �ٷ�recovery\ >nul 2>nul
move ramdisk.gz �ٷ�recovery\ >nul 2>nul
move ramdisk �ٷ�recovery\ >nul 2>nul
move cpiolist.txt �ٷ�recovery\ >nul 2>nul
move bootinfo.txt �ٷ�recovery\ >nul 2>nul
move initrd �ٷ�recovery\ >nul 2>nul
move dt.img �ٷ�recovery\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
copy Ҫ��ֲrecovery\recovery.img recovery.img >nul 2>nul
ren recovery.img boot.img
echo.
bin\bootimg.exe --unpack-bootimg
ping -n 1 127.1 >nul 2>nul
bin\file_contexts_tool.exe initrd\file_contexts.bin -o initrd\file_contexts -e >nul 2>nul
rd /s /q Ҫ��ֲrecovery\kernel.gz >nul 2>nul
rd /s /q Ҫ��ֲrecovery\kernel >nul 2>nul
rd /s /q Ҫ��ֲrecovery\ramdisk.gz >nul 2>nul
rd /s /q Ҫ��ֲrecovery\ramdisk >nul 2>nul
rd /s /q Ҫ��ֲrecovery\cpiolist.txt >nul 2>nul
rd /s /q Ҫ��ֲrecovery\bootinfo.txt >nul 2>nul
rd /s /q Ҫ��ֲrecovery\initrd >nul 2>nul
move kernel.gz Ҫ��ֲrecovery\ >nul 2>nul
move kernel Ҫ��ֲrecovery\ >nul 2>nul
move ramdisk.gz Ҫ��ֲrecovery\ >nul 2>nul
move ramdisk Ҫ��ֲrecovery\ >nul 2>nul
move cpiolist.txt Ҫ��ֲrecovery\ >nul 2>nul
move bootinfo.txt Ҫ��ֲrecovery\ >nul 2>nul
move initrd Ҫ��ֲrecovery\ >nul 2>nul
move dt.img Ҫ��ֲrecovery\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
start bin\Beyond_Compare\BCompare.exe
bin\ctext "{0D} ================================================================{\n}"
echo  ���ڴ��ļ��Ա���������ֲ��������...  
echo.
echo  �����recovery�⿪�������ļ��󣬰����������ʼ���recovery.img
bin\ctext "{0D} ================================================================{0F}{\n}"
pause
del Ҫ��ֲrecovery\initrd\file_contexts.bin >nul 2>nul
bin\file_contexts_tool.exe Ҫ��ֲrecovery\initrd\file_contexts -o Ҫ��ֲrecovery\initrd\file_contexts.bin >nul 2>nul
del Ҫ��ֲrecovery\initrd\file_contexts >nul 2>nul
del �ٷ�recovery\initrd\file_contexts.bin >nul 2>nul
bin\file_contexts_tool.exe �ٷ�recovery\initrd\file_contexts -o �ٷ�recovery\initrd\file_contexts.bin >nul 2>nul
del �ٷ�recovery\initrd\file_contexts >nul 2>nul
move �ٷ�recovery\kernel.gz kernel.gz >nul 2>nul
move �ٷ�recovery\kernel kernel >nul 2>nul
move Ҫ��ֲrecovery\ramdisk.gz ramdisk.gz >nul 2>nul
move Ҫ��ֲrecovery\ramdisk ramdisk >nul 2>nul
move Ҫ��ֲrecovery\cpiolist.txt cpiolist.txt >nul 2>nul
move Ҫ��ֲrecovery\bootinfo.txt bootinfo.txt >nul 2>nul
xcopy /e Ҫ��ֲrecovery\initrd\* initrd\* >nul 2>nul
move Ҫ��ֲrecovery\dt.img dt.img >nul 2>nul
ping -n 1 127.1 >nul 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
echo.
bin\bootimg.exe --repack-bootimg
ren boot-new.img recovery.img
del �ɹ���ֲrecovery\recovery.img >nul 2>nul
md �ɹ���ֲrecovery >nul 2>nul
move recovery.img �ɹ���ֲrecovery\ >nul 2>nul
del �ٷ�recovery\ramdisk.gz >nul 2>nul
del �ٷ�recovery\ramdisk >nul 2>nul
del �ٷ�recovery\cpiolist.txt >nul 2>nul
del �ٷ�recovery\bootinfo.txt >nul 2>nul
rd /s /q �ٷ�recovery\initrd >nul 2>nul
del Ҫ��ֲrecovery\kernel.gz >nul 2>nul
del Ҫ��ֲrecovery\kernel >nul 2>nul
rd /s /q Ҫ��ֲrecovery\initrd >nul 2>nul
bin\ctext "{0B} =========================================================={\n}"
echo  �ɹ�һ����ֲrecovery���뵽"�ɹ���ֲrecovery"�ļ�������ȡ 
bin\ctext "{0B} =========================================================={0F}{\n}"
start �ɹ���ֲrecovery\
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
)
pause
goto home
:custom_recovery_porting_file_contexts
rd /s /q �ٷ�recovery\kernel.gz >nul 2>nul
rd /s /q �ٷ�recovery\kernel >nul 2>nul
rd /s /q �ٷ�recovery\ramdisk.gz >nul 2>nul
rd /s /q �ٷ�recovery\ramdisk >nul 2>nul
rd /s /q �ٷ�recovery\cpiolist.txt >nul 2>nul
rd /s /q �ٷ�recovery\bootinfo.txt >nul 2>nul
rd /s /q �ٷ�recovery\initrd >nul 2>nul
move kernel.gz �ٷ�recovery\ >nul 2>nul
move kernel �ٷ�recovery\ >nul 2>nul
move ramdisk.gz �ٷ�recovery\ >nul 2>nul
move ramdisk �ٷ�recovery\ >nul 2>nul
move cpiolist.txt �ٷ�recovery\ >nul 2>nul
move bootinfo.txt �ٷ�recovery\ >nul 2>nul
move initrd �ٷ�recovery\ >nul 2>nul
move dt.img �ٷ�recovery\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
copy Ҫ��ֲrecovery\recovery.img recovery.img >nul 2>nul
ren recovery.img boot.img
echo.
bin\bootimg.exe --unpack-bootimg
ping -n 1 127.1 >nul 2>nul
rd /s /q Ҫ��ֲrecovery\kernel.gz >nul 2>nul
rd /s /q Ҫ��ֲrecovery\kernel >nul 2>nul
rd /s /q Ҫ��ֲrecovery\ramdisk.gz >nul 2>nul
rd /s /q Ҫ��ֲrecovery\ramdisk >nul 2>nul
rd /s /q Ҫ��ֲrecovery\cpiolist.txt >nul 2>nul
rd /s /q Ҫ��ֲrecovery\bootinfo.txt >nul 2>nul
rd /s /q Ҫ��ֲrecovery\initrd >nul 2>nul
move kernel.gz Ҫ��ֲrecovery\ >nul 2>nul
move kernel Ҫ��ֲrecovery\ >nul 2>nul
move ramdisk.gz Ҫ��ֲrecovery\ >nul 2>nul
move ramdisk Ҫ��ֲrecovery\ >nul 2>nul
move cpiolist.txt Ҫ��ֲrecovery\ >nul 2>nul
move bootinfo.txt Ҫ��ֲrecovery\ >nul 2>nul
move initrd Ҫ��ֲrecovery\ >nul 2>nul
move dt.img Ҫ��ֲrecovery\ >nul 2>nul
del boot.img
del boot-old.img
ping -n 1 127.1 >nul 2>nul
start bin\Beyond_Compare\BCompare.exe
bin\ctext "{0D} ================================================================{\n}"
echo  ���ڴ��ļ��Ա���������ֲ��������...  
echo.
echo  �����recovery�⿪�������ļ��󣬰����������ʼ���recovery.img
bin\ctext "{0D} ================================================================{0F}{\n}"
pause
move �ٷ�recovery\kernel.gz kernel.gz >nul 2>nul
move �ٷ�recovery\kernel kernel >nul 2>nul
move Ҫ��ֲrecovery\ramdisk.gz ramdisk.gz >nul 2>nul
move Ҫ��ֲrecovery\ramdisk ramdisk >nul 2>nul
move Ҫ��ֲrecovery\cpiolist.txt cpiolist.txt >nul 2>nul
move Ҫ��ֲrecovery\bootinfo.txt bootinfo.txt >nul 2>nul
xcopy /e Ҫ��ֲrecovery\initrd\* initrd\* >nul 2>nul
move Ҫ��ֲrecovery\dt.img dt.img >nul 2>nul
ping -n 1 127.1 >nul 2>nul
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
del boot-new.img 2>nul
del boot.img.tmp 2>nul
del boot_old.img 2>nul
echo.
bin\bootimg.exe --repack-bootimg
ren boot-new.img recovery.img
del �ɹ���ֲrecovery\recovery.img >nul 2>nul
md �ɹ���ֲrecovery >nul 2>nul
move recovery.img �ɹ���ֲrecovery\ >nul 2>nul
del �ٷ�recovery\ramdisk.gz >nul 2>nul
del �ٷ�recovery\ramdisk >nul 2>nul
del �ٷ�recovery\cpiolist.txt >nul 2>nul
del �ٷ�recovery\bootinfo.txt >nul 2>nul
rd /s /q �ٷ�recovery\initrd >nul 2>nul
del Ҫ��ֲrecovery\kernel.gz >nul 2>nul
del Ҫ��ֲrecovery\kernel >nul 2>nul
rd /s /q Ҫ��ֲrecovery\initrd >nul 2>nul
bin\ctext "{0B} =========================================================={\n}"
echo  �ɹ�һ����ֲrecovery���뵽"�ɹ���ֲrecovery"�ļ�������ȡ 
bin\ctext "{0B} =========================================================={0F}{\n}"
start �ɹ���ֲrecovery\
del ramdisk.cpio.gz 2>nul
del ramdisk.cpio.gz.tmp 2>nul
)
pause
goto home
:simg2img
echo.
echo.
bin\ctext {0A}" ===================================================================================================================={\n}"
bin\ctext {0E}"   ��ȷ������������ext4��ʽ��img�����ļ��ͱ�������ͬ�����̷������ڱ�����Ŀ¼�£���ͬ�����̷��޷�ת��ʹ�ã�{\n}"
echo.
bin\ctext {0C}"   ���ڵ���ѡ������������ext4��ʽ��img�����ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼת��{\n}"
echo.
bin\ctext {0B}"   ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...{\n}"
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
bin\ctext {0F}"ת����ϣ�ת�������ļ�Ϊ{0D} %afolder%.ext4.img {0F}{\n}"
pause
goto home
:img2simg
echo.
echo.
bin\ctext {0A}" ===================================================================================================================={\n}"
bin\ctext {0E}"   ��ȷ������������simg��ʽ��img�����ļ��ͱ�������ͬ�����̷������ڱ�����Ŀ¼�£���ͬ�����̷��޷�ת��ʹ�ã�{\n}"
echo.
bin\ctext {0C}"   ���ڵ���ѡ������������simg��ʽ��img�����ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼת��{\n}"
echo.
bin\ctext {0B}"   ��Ҫ������ʱ�������ɣ��ٶȿ���ȡ������ĵ������ã������ĵȴ�...{\n}"
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
bin\ctext {0F}"ת����ϣ�ת�������ļ�Ϊ{0D} %folderb%.simg.img {0F}{\n}"
pause
goto home
:systemdatbr_to_systemimg
bin\ctext {0F}"������dat��ʽ��ȷ�Ϻ�ĸĿ¼��ͬʱ��system.new.dat��system.transfer.list  {0F}{\n}"
echo.
bin\ctext {0F}"������br��ʽ��ȷ�Ϻ�ĸĿ¼��ͬʱ��system.new.dat.br��system.transfer.list
pause
bin\br2dat.exe -j -d -o system.new.dat system.new.dat.br
bin\sdat2img.exe system.transfer.list system.new.dat system.img
goto home
:unpack_system.img_ext4
echo.
if not exist "system.img" (
echo.
echo.
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.img��{0F}{\n}"
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
bin\ctext {0B}���ڼ�⵽��ǰsystem.img�����ʽ,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{\n} & bin\simg2img.exe system.img bin\cache\system.ext4 >nul 2>nul
echo.
bin\ctext "{0B} ������ʧ��,����������ROM��system.img��system.new.dat���ƶԵ������½��������611193563��ĸȺ����ˢ���ű�è��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.img��{0F}{\n}"
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
bin\ctext {0B}���ڼ�⵽��ǰsystem.img�����ʽ,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{\n} & bin\simg2img.exe system.img bin\cache\system.ext4 >nul 2>nul
echo.
bin\ctext "{0B} ������ʧ��,����������ROM��system.img��system.new.dat���ƶԵ������½��������611193563��ĸȺ����ˢ���ű�è��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.img��{0F}{\n}"
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
bin\ctext {0B}���ڼ�⵽��ǰsystem.img�����ʽ,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{\n} & bin\simg2img.exe system.img bin\cache\system.ext4 >nul 2>nul
echo.
echo.
echo.
bin\ctext {0E}�����ļ��Ա���BCompare���ش򿪺�,ѡ����Ҫ��ȡĿ¼���ļ���������Ҽ������Ƶ��ļ��С�����ĸĿ¼�µ�system�ļ���{\n}
echo.
bin\ctext {0E}��ȡ��Ϻ���Ϲر��ļ��Ա���BCompare�����ڼ���ʱ���Զ�ʶ��build��Ϣ{\n}
echo.
echo.
bin\ctext "{0B} ������ʧ��,����������ROM��system.img��system.new.dat���ƶԵ������½��������611193563��ĸȺ����ˢ���ű�è��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.img��{0F}{\n}"
echo.
echo.
echo.
pause
goto home
)
) else (
echo.
bin\ctext {0B}" ��Ҫ������ʱ�����ֽ�system.img���ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{\n}"
echo.
bin\ctext "{0B} ������ʧ��,����������ROM��system.img��system.new.dat���ƶԵ������½��������611193563��ĸȺ����ˢ���ű�è��{0F}{\n}"
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
bin\ctext {0B}���ڼ�⵽��ǰvendor.img�����ʽ,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{\n} & bin\simg2img.exe vendor.img bin\cache\vendor.ext4 >nul 2>nul
echo.
bin\ctext "{0B} ������ʧ��,����������ROM��vendor.img��vendor.new.dat���ƶԵ������½��������611193563��ĸȺ����ˢ���ű�è��{0F}{\n}"
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
bin\ctext {0B}���ڼ�⵽��ǰvendor.img�����ʽ,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{\n} & bin\simg2img.exe vendor.img bin\cache\vendor.ext4 >nul 2>nul
echo.
bin\ctext "{0B} ������ʧ��,����������ROM��vendor.img��vendor.new.dat���ƶԵ������½��������611193563��ĸȺ����ˢ���ű�è��{0F}{\n}"
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
bin\ctext {0B}���ڼ�⵽��ǰvendor.img�����ʽ,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{\n} & bin\simg2img.exe vendor.img bin\cache\vendor.ext4 >nul 2>nul
echo.
echo.
echo.
bin\ctext {0E}�����ļ��Ա���BCompare���ش򿪺�,ѡ����Ҫ��ȡĿ¼���ļ���������Ҽ������Ƶ��ļ��С�����ĸĿ¼�µ�vendor�ļ���{\n}
echo.
bin\ctext {0E}��ȡ��Ϻ���Ϲر��ļ��Ա���BCompare�����ڼ���ʱ���Զ�ʶ��build��Ϣ{\n}
echo.
echo.
bin\ctext "{0B} ������ʧ��,����������ROM��vendor.img��vendor.new.dat���ƶԵ������½��������611193563��ĸȺ����ˢ���ű�è��{0F}{\n}"
for /r bin\cache\ %%a in (vendor.ext4) do (
if %%~za==0 del bin\cache\vendor.ext4
)
if not exist "bin\cache\vendor.ext4" bin\Beyond_Compare\BCompare.exe vendor.img & goto rom_look_build_vendor
if exist "bin\cache\vendor.ext4" bin\Beyond_Compare\BCompare.exe bin\cache\vendor.ext4 & goto rom_look_build_vendor
:unpack_vendor.img_4Gno
bin\sdat2img.exe vendor.transfer.list vendor.new.dat vendor.img
echo.
bin\ctext {0B}" ��Ҫ������ʱ�����ֽ�vendor.img���ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{\n}"
echo.
bin\ctext "{0B} ������ʧ��,����������ROM��vendor.img��vendor.new.dat���ƶԵ������½��������611193563��ĸȺ����ˢ���ű�è��{0F}{\n}"
rd /s /q vendor\ >nul 2>nul
bin\Imgextractor.exe vendor.img vendor -i
goto rom_look_build_vendor
:unpack_dat_unpack_img_4Gplus
echo.
if not exist "system.new.dat" (
echo.
echo.
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.transfer.list �� system.new.dat��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.transfer.list �� system.new.dat��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.transfer.list �� system.new.dat��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.transfer.list �� system.new.dat��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.transfer.list �� system.new.dat��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.transfer.list �� system.new.dat��{0F}{\n}"
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
bin\ctext {0B}" ��Ҫ������ʱ�����ֽ�system.new.dat   system.transfer.list���ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{0F}{\n}"
echo.
bin\sdat2img.exe system.transfer.list system.new.dat system.img
goto unpack_system.img_mount
:unpack_dat_unpack_img_4Gno
echo.
if not exist "system.new.dat" (
echo.
echo.
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.transfer.list �� system.new.dat��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.transfer.list �� system.new.dat��{0F}{\n}"
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
echo   �Ҳ���system\build.prop���ļ��޷�ʶ��build��Ϣ����ȷ���Ƿ�˺�ĸĿ¼��������ļ�
echo.
pause
goto home
)
) else (
powershell -c "dir system\build.prop|%%{[IO.File]::ReadAllText($_, [Text.Encoding]::UTF8)|out-file ('bin\system_new_'+$_.Name) -encoding Default}"
set BP="bin\system_new_build.prop"
echo --------------ROM��Ϣ---------------
for /f "tokens=1,2 delims==" %%a in ('find /v "#" ^<!BP!') do (
if "%%a"=="ro.build.id" (echo ��ƷID^:%%b) 
if "%%a"=="ro.build.version.sdk" (echo SDK�汾^:%%b) 
if "%%a"=="ro.build.version.release" (echo ��׿�汾^:%%b) 
if "%%a"=="ro.build.date" (echo ��������^:%%b) 
if "%%a"=="ro.product.model" (echo ��Ʒ�ͺ�^:%%b) 
if "%%a"=="ro.product.brand" (echo Ʒ��^:%%b)
if "%%a"=="ro.product.name" (echo �豸����^:%%b)
if "%%a"=="ro.vendor.product.manufacturer" (echo �ֻ�����^:%%b)
if "%%a"=="ro.product.cpu.abi" (echo CPUָ�^:%%b) 
if "%%a"=="ro.product.locale.language" (echo ����^:%%b) 
if "%%a"=="ro.hardware" (echo Ӳ��^:%%b)
if "%%a"=="telephony.lteOnCdmaDevice" (echo ȫ��ͨ���ͣ�0������,1���ڣ�^:%%b)
if "%%a"=="ro.mediatek.platform" (echo CPUоƬƽ̨^:%%b)
if "%%a"=="ro.board.platform" (echo CPU�ͺ�^:%%b)
if "%%a"=="dalvik.vm.heapstartsize" (echo �������ʼ^:%%b) 
if "%%a"=="dalvik.vm.heapgrowthlimit" (echo ���������^:%%b) 
if "%%a"=="dalvik.vm.heapsize" (echo �������С^:%%b)  
if "%%a"=="ro.sf.lcd_density" (echo ��ĻDPI^:%%b)
if "%%a"=="ro.wifi.channels" (echo WIFI�ŵ�^:%%b)
if "%%a"=="ro.sf.gsensorposition" (echo ������Ӧ^:%%b)
if "%%a"=="persist.sys.timezone" (echo ʱ��ʱ��^:%%b) 
if "%%a"=="ro.sf.hwrotation" (echo ��Ļ���÷���0������Ļ,180������Ļ��^:%%b) 
if "%%a"=="ro.product.locale" (echo ����^:%%b)
if "%%a"=="ro.yunos.version" (echo �����ư汾^:%%b)
if "%%a"=="ro.yunos.build.version" (echo ������ROM�汾^:%%b)
if "%%a"=="ro.build.display.id" (echo ROM�汾^:%%b)
if "%%a"=="qemu.hw.mainkeys" (echo ���ⰴ����0����,1�رգ�^:%%b)
)
bin\ctext "{0E}  ========================================================================================={\n}"
bin\ctext "{0E}                                         ���ʶ�����! {\n}"
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
echo   �Ҳ���vendor\build.prop���ļ��޷�ʶ��build��Ϣ����ȷ���Ƿ�˺�ĸĿ¼��������ļ�
echo.
pause
goto home
)
) else (
powershell -c "dir vendor\build.prop|%%{[IO.File]::ReadAllText($_, [Text.Encoding]::UTF8)|out-file ('bin\vendor_new_'+$_.Name) -encoding Default}"
set BP="bin\vendor_new_build.prop"
echo --------------ROM��Ϣ---------------
for /f "tokens=1,2 delims==" %%a in ('find /v "#" ^<!BP!') do (
if "%%a"=="ro.vendor.build.date" (echo ��������^:%%b) 
if "%%a"=="ro.vendor.product.manufacturer" (echo �ֻ�����^:%%b)
if "%%a"=="ro.vendor.product.model" (echo ��Ʒ�ͺ�^:%%b) 
if "%%a"=="ro.vendor.product.brand" (echo Ʒ��^:%%b)
if "%%a"=="ro.vendor.product.name" (echo �豸����^:%%b)
if "%%a"=="ro.build.id" (echo ��ƷID^:%%b) 
if "%%a"=="ro.build.version.sdk" (echo SDK�汾^:%%b) 
if "%%a"=="ro.build.version.release" (echo ��׿�汾^:%%b) 
if "%%a"=="ro.product.cpu.abi" (echo CPUָ�^:%%b) 
if "%%a"=="ro.product.locale.language" (echo ����^:%%b) 
if "%%a"=="ro.hardware" (echo Ӳ��^:%%b)
if "%%a"=="telephony.lteOnCdmaDevice" (echo ȫ��ͨ���ͣ�0������,1���ڣ�^:%%b)
if "%%a"=="ro.mediatek.platform" (echo CPUоƬƽ̨^:%%b)
if "%%a"=="ro.board.platform" (echo CPU�ͺ�^:%%b)
if "%%a"=="dalvik.vm.heapstartsize" (echo �������ʼ^:%%b) 
if "%%a"=="dalvik.vm.heapgrowthlimit" (echo ���������^:%%b) 
if "%%a"=="dalvik.vm.heapsize" (echo �������С^:%%b)  
if "%%a"=="ro.sf.lcd_density" (echo ��ĻDPI^:%%b)
if "%%a"=="ro.wifi.channels" (echo WIFI�ŵ�^:%%b)
if "%%a"=="ro.sf.gsensorposition" (echo ������Ӧ^:%%b)
if "%%a"=="persist.sys.timezone" (echo ʱ��ʱ��^:%%b) 
if "%%a"=="ro.sf.hwrotation" (echo ��Ļ���÷���0������Ļ,180������Ļ��^:%%b) 
if "%%a"=="ro.product.locale" (echo ����^:%%b)
if "%%a"=="ro.yunos.version" (echo �����ư汾^:%%b)
if "%%a"=="ro.yunos.build.version" (echo ������ROM�汾^:%%b)
if "%%a"=="ro.build.display.id" (echo ROM�汾^:%%b)
if "%%a"=="qemu.hw.mainkeys" (echo ���ⰴ����0����,1�رգ�^:%%b)
)
bin\ctext "{0E}  ========================================================================================={\n}"
bin\ctext "{0E}                                         ���ʶ�����! {\n}"
bin\ctext "{0E}  ========================================================================================={0F}{\n}"
pause
del bin\vendor_new_build.prop >nul 2>nul
goto home
:unpack_dat_to_img
echo.
if not exist "system.transfer.list" (
echo.
echo.
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.transfer.list �� system.new.dat��{0F}{\n}"
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
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����system.transfer.list �� system.new.dat��{0F}{\n}"
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
echo ת����ɣ�
echo.
)
pause
goto home
:unpack_br_to_systemimg_ext4
echo.
echo.
bin\ctext "{0E}  ����ת��system.new.dat.brת���ٶȿ���ȡ����ĵ�������...{\n}"
echo.
bin\br2dat.exe -j -d -o system.new.dat system.new.dat.br
goto unpack_dat_unpack_img_ext4
:unpack_br_to_systemimg_mount
echo.
echo.
bin\ctext "{0E}  ����ת��system.new.dat.brת���ٶȿ���ȡ����ĵ�������...{\n}"
echo.
bin\br2dat.exe -j -d -o system.new.dat system.new.dat.br
goto unpack_dat_unpack_img_mount
:unpack_br_to_systemimg_4Gplus
echo.
echo.
bin\ctext "{0E}  ����ת��system.new.dat.brת���ٶȿ���ȡ����ĵ�������...{\n}"
echo.
bin\br2dat.exe -j -d -o system.new.dat system.new.dat.br
goto unpack_dat_unpack_img_4Gplus
:unpack_br_to_systemimg_4Gno
echo.
echo.
bin\ctext "{0E}  ����ת��system.new.dat.brת���ٶȿ���ȡ����ĵ�������...{\n}"
echo.
bin\br2dat.exe -j -d -o system.new.dat system.new.dat.br
goto unpack_dat_unpack_img_4Gno
:unpack_br_to_vendorimg_ext4
echo.
echo.
bin\ctext "{0E}  ����ת��vendor.new.dat.brת���ٶȿ���ȡ����ĵ�������...{\n}"
echo.
bin\br2dat.exe -j -d -o vendor.new.dat vendor.new.dat.br
goto unpack_vendor.img_ext4
:unpack_br_to_vendorimg_mount
echo.
echo.
bin\ctext "{0E}  ����ת��vendor.new.dat.brת���ٶȿ���ȡ����ĵ�������...{\n}"
echo.
bin\br2dat.exe -j -d -o vendor.new.dat vendor.new.dat.br
goto unpack_vendor.img_mount
:unpack_br_to_vendorimg_4Gplus
echo.
echo.
bin\ctext "{0E}  ����ת��vendor.new.dat.brת���ٶȿ���ȡ����ĵ�������...{\n}"
echo.
bin\br2dat.exe -j -d -o vendor.new.dat vendor.new.dat.br
goto unpack_vendor.img_4Gplus
:unpack_br_to_vendorimg_4Gno
echo.
echo.
bin\ctext "{0E}  ����ת��vendor.new.dat.brת���ٶȿ���ȡ����ĵ�������...{\n}"
echo.
bin\br2dat.exe -j -d -o vendor.new.dat vendor.new.dat.br
goto unpack_vendor.img_4Gno
:unpack_xxx.datbr_ext4
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ��ȷ������������img\ext4��ʽ�ľ����ļ��ͱ�������ͬ�����̷������ڱ�����Ŀ¼�£���ͬ�����̷��޷����ʹ�ã�{\n}"
echo.
bin\ctext {0C}"   ���ڵ���ѡ������������xxx.dat\xxx.dat.br\xxx.list��ʽ�ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ���ؽ��...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set fold=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set fold=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
md ����dat_br_%fold% >nul 2>nul
set unpackdatbr=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set unpackdatbr=" "%~dp0\*.dat;*.br"`) do %%a
set datbrlist=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set datbrlist=" "%~dp0\*.list"`) do %%a
echo.
bin\ctext {0B}����ת���ֽ�,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{0F}{\n}
copy %unpackdatbr% bin\cache\datbr.br >nul 2>nul
copy %datbrlist% bin\cache\datbr.list >nul 2>nul
bin\br2dat.exe -d -o bin\cache\datbr.dat bin\cache\datbr.br
bin\sdat2img.exe bin\cache\datbr.list bin\cache\datbr.dat bin\cache\datbr.img
bin\ext4extract.exe -v -D ����dat_br_%fold% --save-symlinks bin\cache\datbr.img
echo.
bin\ctext {0F}"��ȡ��ϣ���ȡ�����ļ���{0D} ����dat_br_%fold% {0F}Ŀ¼����.{0F}{\n}"
echo.
rd /s /q bin\cache >nul 2>nul
pause
goto home
:unpack_xxx.datbr_4Gplus
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ��ȷ������������img\ext4��ʽ�ľ����ļ��ͱ�������ͬ�����̷������ڱ�����Ŀ¼�£���ͬ�����̷��޷����ʹ�ã�{\n}"
echo.
bin\ctext {0C}"   ���ڵ���ѡ������������xxx.dat\xxx.dat.br\xxx.list��ʽ�ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ���ؽ��...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set folda=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set folda=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
md ����dat_br_%folda% >nul 2>nul
set unpackdatbr4Gplus=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set unpackdatbr4Gplus=" "%~dp0\*.dat;*.br"`) do %%a
set datbrlist4Gplus=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set datbrlist4Gplus=" "%~dp0\*.list"`) do %%a
echo.
bin\ctext {0B}����ת���ֽ�,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{0F}{\n}
copy %unpackdatbr4Gplus% bin\cache\datbr.br >nul 2>nul
copy %datbrlist4Gplus% bin\cache\datbr.list >nul 2>nul
bin\br2dat.exe -d -o bin\cache\datbr.dat bin\cache\datbr.br
bin\sdat2img.exe bin\cache\datbr.list bin\cache\datbr.dat bin\cache\datbr.img
bin\unpack-ext4fs.exe bin\cache\datbr.img ����dat_br_%folda%
echo.
bin\ctext {0F}"�����ϣ���������ļ���{0D} ����dat_br_%folda% {0F}Ŀ¼����.{0F}{\n}"
echo.
rd /s /q bin\cache >nul 2>nul
pause
goto home
:unpack_xxx.datbr_mount
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ��ȷ������������img\ext4��ʽ�ľ����ļ��ͱ�������ͬ�����̷������ڱ�����Ŀ¼�£���ͬ�����̷��޷����ʹ�ã�{\n}"
echo.
bin\ctext {0C}"   ���ڵ���ѡ������������xxx.dat\xxx.dat.br\xxx.list��ʽ�ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ���ؽ��...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set foldb=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set foldb=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
md ����dat_br_%foldb% >nul 2>nul
set unpackdatbrmount=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set unpackdatbrmount=" "%~dp0\*.dat;*.br"`) do %%a
set datbrlistmount=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set datbrlistmount=" "%~dp0\*.list"`) do %%a
echo.
bin\ctext {0B}����ת���ֽ�,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{0F}{\n}
copy %unpackdatbrmount% bin\cache\datbr.br >nul 2>nul
copy %datbrlistmount% bin\cache\datbr.list >nul 2>nul
bin\br2dat.exe -d -o bin\cache\datbr.dat bin\cache\datbr.br
bin\sdat2img.exe bin\cache\datbr.list bin\cache\datbr.dat bin\cache\datbr.img
echo.
echo.
echo.
bin\ctext {0E}�����ļ��Ա���BCompare���ش򿪺�{\n}
echo.
bin\ctext {0E}ѡ����Ҫ��ȡĿ¼���ļ���������Ҽ������Ƶ��ļ��С�����ĸĿ¼�µ�{0D} ����img_ext4_%foldb% {0E}�ļ���{\n}
echo.
bin\ctext {0E}��ȡ��Ϻ���Ϲر��ļ��Ա���BCompare����{0F}{\n}
echo.
bin\Beyond_Compare\BCompare.exe bin\cache\datbr.img
echo.
bin\ctext {0F}"��ȡ��ϣ���ȡ�����ļ���{0D} ����img_ext4_%foldb% {0F}Ŀ¼����.{0F}{\n}"
echo.
rd /s /q ����img_ext4_%foldb%\[SYS] >nul 2>nul
rd /s /q bin\cache >nul 2>nul
pause
goto home
:unpack_xxx.datbr_4Gno
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ��ȷ������������img\ext4��ʽ�ľ����ļ��ͱ�������ͬ�����̷������ڱ�����Ŀ¼�£���ͬ�����̷��޷����ʹ�ã�{\n}"
echo.
bin\ctext {0C}"   ���ڵ���ѡ������������xxx.dat\xxx.dat.br\xxx.list��ʽ�ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ���ؽ��...{\n}"
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
bin\ctext {0B}����ת���ֽ�,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{0F}{\n}
copy %unpackdatbr4Gno% bin\cache\datbr.br >nul 2>nul
copy %datbrlist4Gno% bin\cache\datbr.list >nul 2>nul
bin\br2dat.exe -d -o bin\cache\datbr.dat bin\cache\datbr.br
bin\sdat2img.exe bin\cache\datbr.list bin\cache\datbr.dat bin\cache\datbr.img
bin\Imgextractor.exe bin\cache\datbr.img ����dat_br_%foldc% -i
echo.
bin\ctext {0F}"�����ϣ���������ļ���{0D} ����dat_br_%foldc% {0F}Ŀ¼����.{0F}{\n}"
echo.
rd /s /q bin\cache >nul 2>nul
pause
goto home
:unpack_xxx.img_ext4
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ��ȷ������������img\ext4��ʽ�ľ����ļ��ͱ�������ͬ�����̷������ڱ�����Ŀ¼�£���ͬ�����̷��޷����ʹ�ã�{\n}"
echo.
bin\ctext {0C}"   ���ڵ���ѡ������������xxx.img\xxx.ext4��ʽ�ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ���ؽ��...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set folderd=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set folderd=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
echo.
@echo off
set imga=
md ����img_ext4_%folderd%
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set imga=" "%~dp0\*.img;*.ext4;*.win;*.raw"`) do %%a
bin\ctext {0B}���ڼ�⵽��ǰsystem.img�����ʽ,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{0F}{\n} & bin\simg2img.exe %imga% bin\cache\xxximg.ext4 >nul 2>nul
echo.
for /r bin\cache\ %%a in (xxximg.ext4) do (
if %%~za==0 del bin\cache\xxximg.ext4
)
if not exist "bin\cache\xxximg.ext4" bin\ext4extract.exe -v -D ����img_ext4_%folderd% --save-symlinks %imga%
if exist "bin\cache\xxximg.ext4" bin\ext4extract.exe -v -D ����img_ext4_%folderd% --save-symlinks bin\cache\xxximg.ext4
rd /s /q bin\cache 2>nul
echo.
bin\ctext {0F}"��ȡ��ϣ���ȡ�����ļ���{0D} ����img_ext4_%folderd% {0F}Ŀ¼����.{0F}{\n}"
echo.
rd /s /q ����img_ext4_%folderd%\[SYS] >nul 2>nul
pause
goto home
:unpack_xxx.img_4Gplus
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ��ȷ������������img\ext4��ʽ�ľ����ļ��ͱ�������ͬ�����̷������ڱ�����Ŀ¼�£���ͬ�����̷��޷����ʹ�ã�{\n}"
echo.
bin\ctext {0C}"   ���ڵ���ѡ������������xxx.img\xxx.ext4��ʽ�ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ���ؽ��...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set folderdd=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set folderdd=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
echo.
@echo off
set img4gplus=
md ����img_ext4_%folderdd%
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set img4gplus=" "%~dp0\*.img;*.ext4;*.raw;*.win"`) do %%a
bin\ctext {0B}���ڼ�⵽��ǰsystem.img�����ʽ,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{0F}{\n} & bin\simg2img.exe %img4gplus% bin\cache\xxximg.ext4 >nul 2>nul
echo.
echo.
for /r bin\cache\ %%a in (xxximg.ext4) do (
if %%~za==0 del bin\cache\xxximg.ext4
)
if not exist "bin\cache\xxximg.ext4" bin\unpack-ext4fs.exe %img4gplus% ����img_ext4_%folderdd%
if exist "bin\cache\xxximg.ext4" bin\unpack-ext4fs.exe bin\cache\xxximg.ext4 ����img_ext4_%folderdd%
rd /s /q bin\cache 2>nul
echo.
bin\ctext {0F}"�����ϣ���������ļ���{0D} ����img_ext4_%folderdd% {0F}Ŀ¼����.{0F}{\n}"
echo.
pause
goto home
:unpack_xxx.img_mount
echo.
echo.
bin\ctext {0A}" ==========================================================================================================={\n}"
bin\ctext {0E}"   ��ȷ������������img\ext4��ʽ�ľ����ļ��ͱ�������ͬ�����̷������ڱ�����Ŀ¼�£���ͬ�����̷��޷����ʹ�ã�{\n}"
echo.
bin\ctext {0C}"   ���ڵ���ѡ������������xxx.img\xxx.ext4��ʽ�ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ���ؽ��...{\n}"
bin\ctext {0A}" ==========================================================================================================={0F}{\n}"
set folderd=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set folderd=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
echo.
@echo off
set imgh=
md ����img_ext4_%folderd%
rd /s /q bin\cache >nul 2>nul
md bin\cache >nul 2>nul
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set imgh=" "%~dp0\*.img;*.ext4;*.raw;*.win"`) do %%a
bin\ctext {0B}���ڼ�⵽��ǰsystem.img�����ʽ,�ٶȿ���ȡ������ĵ�������,�����ĵȴ�...{0F}{\n} & bin\simg2img.exe %imgh% bin\cache\xxximg.ext4 >nul 2>nul
echo.
echo.
echo.
bin\ctext {0E}�����ļ��Ա���BCompare���ش򿪺�{\n}
echo.
bin\ctext {0E}ѡ����Ҫ��ȡĿ¼���ļ���������Ҽ������Ƶ��ļ��С�����ĸĿ¼�µ�{0D} ����img_ext4_%folderd% {0E}�ļ���{\n}
echo.
bin\ctext {0E}��ȡ��Ϻ���Ϲر��ļ��Ա���BCompare����{0F}{\n}
echo.
for /r bin\cache\ %%a in (xxximg.ext4) do (
if %%~za==0 del bin\cache\xxximg.ext4
)
if not exist "bin\cache\xxximg.ext4" bin\Beyond_Compare\BCompare.exe %imgh%
if exist "bin\cache\xxximg.ext4" bin\Beyond_Compare\BCompare.exe bin\cache\xxximg.ext4
rd /s /q bin\cache 2>nul
echo.
bin\ctext {0F}"��ȡ��ϣ���ȡ�����ļ���{0D} ����img_ext4_%folderd% {0F}Ŀ¼����.{0F}{\n}"
echo.
rd /s /q ����img_ext4_%folderd%\[SYS] >nul 2>nul
pause
goto home
:unpack_xxx.img_4Gno
echo.
echo.
bin\ctext {0A}" ===================================================================================================================={\n}"
bin\ctext {0E}"   ��ȷ������������img\ext4\sin\win��ʽ�ľ����ļ��ͱ�������ͬ�����̷������ڱ�����Ŀ¼�£���ͬ�����̷��޷����ʹ�ã�{\n}"
echo.
bin\ctext {0C}"   ���ڵ���ѡ������������xxx.img\xxx.ext4\xxx.sin\xxx.win��ʽ�ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ���...{\n}"
bin\ctext {0A}" ===================================================================================================================={0F}{\n}"
set imgg=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set imgg=" "%~dp0\*.img;*.ext4;*.win;*.raw"`) do %%a
bin\Imgextractor.exe %imgg% -i
echo.
bin\ctext {0F}"�ֽ���ϣ��ֽ������ļ�����ԭxxx.img\xxx.ext4\xxx.sin\xxx.win��ͬĿ¼��..{0F}{\n}"
echo.
pause
goto home
:home_adb_fastboot
cls
bin\ctext {0A}" **********************************************************************************************************************{\n}"
bin\ctext {0B}" ���¹�����ȷ���Ƿ���˿�����ѡ�� - USB���Ժ�OEM����������װ�������������ֻ���Ļ�Ϲ��ϡ�����USB���ԡ���ʾ��������ʹ��!{\n}"
bin\ctext {0B}" ������߲���ʾ�豸��ſɳ��������ֻ���ѡ��(���԰�װADB\fastboot����)������������adb��fastboot�豸����б�{\n}"
echo.
bin\ctext {0E}" �������adb��fastboot�豸�����ʾ����ABCDEFG123 unauthorized(unauthorize�����ֻ���δ��Ȩ������,�޷�����ʹ�����¹���!{0C}{\n}"
bin\adb devices & bin\fastboot devices
bin\ctext {0A}" ��ѡ������ѡ��:{\n}"                                                                                             
echo  **********************************************************************************************************************
echo.
bin\ctext "  {0E}0.�ص�������ҳ                                      5.ADB������recovery״̬�½�ͼ������{\n}"
echo   1.ADB��ӡlogcatʵʱ������־                         6.ADB�����ֻ�����״̬�½�ͼ������
echo   2.ADB��ӡlogcat������־                             7.ADB������Ļ¼��(���mp4��ʽ)
echo   3.ADB�����ֻ��Զ�����ϵͳ                           8.ADB�鿴�ֻ���Ļ�ֱ���
echo   4.ADB�����ֻ��Զ�������recoveryģʽ                 9.ADB����apk��װ���ֻ���apk����ֻ�����ֻ���Ӣ��,�������޷���װ��
bin\ctext {0D}{\n}
echo  10.recovery״̬��ADB Sideloadģʽ��������.zip��ʽ��ˢ��ˢ��
echo  11.����recovery�Զ���ˢ��rec������˫��,�ӿ�ˢ��META-INF\com\google\android\update-binary��ȡ�����ŵ�������Ŀ¼�¡�
echo  12.fastbootģʽ����recovery�����recovery����Ϊrecovery.img�������ڱ�����Ŀ¼��,�����ֻ�����״̬�����С�
echo  13.��ADB����̨adb shellģʽ����Ҫ�ֶ������������ʵ��ADB���ֹ��ܡ�
echo  14.��ADB\fastboot����̨�ֶ�ģʽ����Ҫ�ֶ������������ʵ��ADB\fastboot���ֹ��ܡ�
bin\ctext {0B}{\n}
echo  15.���԰�װADB\fastboot����                         16.��ADB�ļ�������                  17.���ɹٷ�ԭ��recovery.img
echo.
bin\ctext "{02} 18.ADB�鿴CPU�ͺ���Ϣ {05} 19.ADB�鿴�ֻ�������С {06} 20.ADB�鿴�ֻ����������� {08} 21.ADB�鿴�ֻ�������ַ {03} 22.ADB�鿴�ֻ�����{\n}" 
bin\ctext {0F}{\n}
set /p webz=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
bin\ctext "{0C}      û�ҵ�system�ļ��У���ȷ�Ϻ�ĸĿ¼���Ƿ����boot.img{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�recovery-from-boot.p����ȷ�Ϻ�ĸĿ¼���Ƿ����recovery-from-boot.p{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�recovery-resource.dat����ȷ�Ϻ�ĸĿ¼���Ƿ����recovery-resource.dat{0F}{\n}"
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
bin\ctext "{0C}      û�ҵ�install-recovery.sh����ȷ�Ϻ�ĸĿ¼���Ƿ����install-recovery.sh{0F}{\n}"
echo.
echo.
echo.
pause
goto home_adb_fastboot
)
) else (
echo.
echo.
bin\ctext "{0E}      ��Ҫ�ֻ�������-������ѡ��-USB���ԣ�����˳�����ɹٷ�recovery.img{\n}"
echo.
bin\ctext "{0C}      �������·���ٷ��ļ���ȡ�������ں�ĸ��Ŀ¼��{\n}"
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
bin\ctext "{0C}          ���ɹٷ�recovery.img�ں�ĸ��Ŀ¼�£�{0F}{\n}"
echo.
)
pause
goto home_adb_fastboot
:open_adb_fastboot_shell
cls
echo.
bin\ctext {0A}  ���ڿ���ֱ���������adb��fastboot������ʵ�ֶ�Ӧ���ܣ������ǲο����壺{\n}
echo.
bin\ctext {0E}" �ֻ�SD�����͵�������Ŀ¼��:adb pull /sdcard/1.mp3 1.mp3" "    {0f}�о������ӵ�fastboot�豸��  fastboot devices{\n}"
bin\ctext {0E}" ������Ŀ¼�·��͵��ֻ�SD��:adb push 1.mp3 /sdcard/1.mp3" "    {0f}ˢ��boot.img��              fastboot flash boot boot.img{\n}"
bin\ctext {0E}" �о������ӵ�adb�豸��      adb devices" "                     {0f}����bootloader(�׳ƽ�BL��)��fastboot oem unlock{\n}"
bin\ctext {0E}" ����adb���л�����          adb shell" "                       {0f}�����ֻ�:                   fastboot reboot{\n}"
bin\ctext {0E}" �鿴adb���������          adb help" "                        {0f}�鿴fastboot���������      fastboot help{\n}"
echo.
bin\ctext {0D}��ȷ���Ƿ���˿�����ѡ�� - USB���Ժ�OEM������ѡ�񱾹��ߡ����԰�װADB\fastboot���������{\n}
bin\ctext {0D}����װ�������������ֻ���Ļ�Ϲ��ϡ�����USB���ԡ���ʾ,��Ҫ��adb��fastboot�豸��Ų��ܽ�������adb��fastboot����{\n}
echo.
bin\ctext  {0B}  ������adb��fastboot�豸����б�{0C}{\n}
bin\adb devices & bin\fastboot devices
bin\ctext {0A} ����exit���ɷ���adb\fastboot����̨��ҳ�棨��ע:����������su����ʾroot������������exit������adb\fastboot����̨��ҳ�棩{\n}
echo.
start bin\adb_help.txt
bin\adb shell
echo ������������Զ��ر� ��shellģʽadb\fastboot����̨�� ��adb_help.txt���±����ص�������ҳ��
echo.
pause
taskkill /FI "WINDOWTITLE eq adb_help.txt*"
goto home_adb_fastboot
:open_adb_fastboot_Manual
cls
echo.
bin\ctext {0A}  ���ڿ���ֱ���������adb��fastboot������ʵ�ֶ�Ӧ���ܣ������ǲο����壺{\n}
echo.
bin\ctext {0E}" �ֻ�SD�����͵�������Ŀ¼��:adb pull /sdcard/1.mp3 1.mp3" "    {0f}�о������ӵ�fastboot�豸��  fastboot devices{\n}"
bin\ctext {0E}" ������Ŀ¼�·��͵��ֻ�SD��:adb push 1.mp3 /sdcard/1.mp3" "    {0f}ˢ��boot.img��              fastboot flash boot boot.img{\n}"
bin\ctext {0E}" �о������ӵ�adb�豸��      adb devices" "                     {0f}����bootloader(�׳ƽ�BL��)��fastboot oem unlock{\n}"
bin\ctext {0E}" ����adb���л�����          adb shell" "                       {0f}�����ֻ�:                   fastboot reboot{\n}"
bin\ctext {0E}" �鿴adb���������          adb help" "                        {0f}�鿴fastboot���������      fastboot help{\n}"
echo.
bin\ctext {0D}��ȷ���Ƿ���˿�����ѡ�� - USB���Ժ�OEM������ѡ�񱾹��ߡ����԰�װADB\fastboot���������{\n}
bin\ctext {0D}����װ�������������ֻ���Ļ�Ϲ��ϡ�����USB���ԡ���ʾ,��Ҫ��adb��fastboot�豸��Ų��ܽ�������adb��fastboot����{\n}
echo.
bin\ctext {0E}��������г���{0F}'adb' �����ڲ����ⲿ����,Ҳ���ǿ����еĳ�����������ļ�.{0E}��ѡ�񱾹��ߡ����԰�װADB\fastboot���������{\n}
echo.
bin\ctext {0B}  ������adb��fastboot�豸����б�{0C}{\n}
bin\adb devices & bin\fastboot devices
bin\ctext {0A} ����exit���ɷ���adb\fastboot����̨��ҳ�棨��ע:����������su����ʾroot������������exit������adb\fastboot����̨��ҳ�棩{\n}
echo.
start bin\adb_help.txt
@cmd /k
echo.
echo ������������Զ��ر� ���ֶ�ģʽadb\fastboot����̨�� ��adb_help.txt���±����ص�������ҳ��
echo.
pause
taskkill /FI "WINDOWTITLE eq adb_help.txt*"
goto home_adb_fastboot
:adb_reboot_recovery
bin\ctext "{0B}����ʹ��adb����������recoveryģʽ... {07}{\n}"
bin\adb reboot recovery
pause
goto home_adb_fastboot
:adb_reboot_android
bin\ctext "{0E}����ʹ��adb�������������ֻ�... {07}{\n}"
bin\adb reboot
pause
goto home_adb_fastboot
:fastboot_install_recovery
echo.
echo.     ����bootloader���׳���BL�����ֻ����Ƚ����������޷�ˢ�������recovery��
echo.
pause
echo.
if not exist "recovery.img" (
echo.
echo.
bin\ctext "{0C}      ���麽ĸĿ¼���Ƿ����recovery.img��{0F}{\n}"
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
echo. --- ����adb�豸
echo.     �Ժ��ֻ��������fastbootģʽ
echo.
bin\adb reboot bootloader
bin\fastboot devices
ping -n 1 127.1 >nul 2>nul
echo. --- ����fastboot�豸
echo.     �Ժ��ֻ��������fastbootģʽ
echo.
bin\ctext "{0D}  ====================={\n}"
bin\ctext "{0D}   �Զ�ˢдrecovery... {\n}"
bin\ctext "{0D}  ====================={0F}{\n}"
bin\ctext {0F}{\n}
bin\fastboot flash recovery recovery.img
echo.
echo.
echo. ������ϳ��֡�... OKAY�������������ʾˢ��ɹ����ֻ���������recovery...
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
bin\ctext {0B}�����ǵ�ǰ�ֻ�����Ļ�ֱ���{0E}
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
set "afolder=recovery��ͼ_%YYYYa%-%MMa%-%DDa%"
set "afile=recovery��ͼ_%aimg%.png"
if not exist %afolder% md %afolder% >nul
set "ascreenshot=%afolder%\%afile%"
echo( 
bin\adb shell "/tmp/fb2png /tmp/fbdump.png > /tmp/info; head -n 20 /tmp/info | tail -n 13; rm -f /tmp/info"
bin\ctext "{0B}���ƽ�ͼ������{07}{\n}"
bin\adb pull /tmp/fbdump.png %ascreenshot%
bin\adb shell rm -f /tmp/fbdump.png >nul
echo(
bin\ctext "��ͼ�ɹ�! {0E}%afile% {07}�����{0E}%afolder% {07}�ļ�������.{\n}"
echo.
echo 1.��ȷ���Ƿ���˿�����ѡ�� - USB���Ժ�OEM��������װ�������������ֻ���Ļ�Ϲ��ϡ�����USB���ԡ���ʾ��������ʹ��!
echo.
echo 2.���û�ҵ���ͼ��ͼƬ���������ֻ���ѡ�񱾹��ߡ����԰�װADB\fastboot�����������
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
set "bfolder=����״̬�½�ͼ_%YYYYb%-%MMb%-%DDb%"
set "bfile=����״̬�½�ͼ_%bimg%.png"
if not exist %bfolder% md %bfolder% >nul 2>nul
set "bscreenshot=%bfolder%\%bfile%"
echo( 
bin\adb shell screencap -p /sdcard/Screenshots/screenos.png >nul 2>nul
bin\ctext "{0E}���ƽ�ͼ������{07}{\n}"
bin\adb pull /sdcard/Screenshots/screenos.png %bscreenshot% >nul 2>nul
bin\adb shell rm -f /sdcard/Screenshots/screenos.png >nul 2>nul
echo(
bin\ctext "��ͼ�ɹ�! {0E}%bfile% {07}�����{0E}%bfolder% {07}�ļ�������.{\n}"
echo.
echo 1.��ȷ���Ƿ���˿�����ѡ�� - USB���Ժ�OEM��������װ�������������ֻ���Ļ�Ϲ��ϡ�����USB���ԡ���ʾ��������ʹ��!
echo.
echo 2.���û�ҵ���ͼ��ͼƬ���������ֻ���ѡ�񱾹��ߡ����԰�װADB/fastboot�����������
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
set "cfolder=��Ļ¼��_%YYYYc%-%MMc%-%DDc%"
set "cfile=��Ļ¼��_%cimg%.mp4"
if not exist %cfolder% md %cfolder% >nul 2>nul
set "video=%cfolder%\%cfile%"
echo( 
echo.
bin\ctext "{0B} �ֻ���Ļ����¼����...{\n}"
echo.
echo n|start /max /wait cmd /c "mode 110,20& bin\ctext {0B}������Ļ��Ƶ¼��,��ֱ�ӹرմ˴��ڼ����Զ�������Ļ¼�Ƶ���Ƶ����ĸ��ǰĿ¼!�����ֻ����������¼��ʱ�����ơ�{0F} & bin\adb shell screenrecord --verbose /sdcard/screenrecord.mp4"
ping 127.1 -n 3 >nul
bin\ctext "{0E} ��Ļ¼��¼��ʱ��Խ���ļ�Խ��,�����ٶȿ���ȡ��������Ļ¼��ʱ��ĳ��̣�{\n}"
bin\ctext "{0E} ���ڸ�����Ļ¼��mp4������,�����ĵȴ�...{07}{\n}"
bin\adb pull /sdcard/screenrecord.mp4 %video% >nul 2>nul
bin\adb shell rm -f /sdcard/screenrecord.mp4 >nul 2>nul
echo(
bin\ctext "��Ļ¼����Ƶmp4�ɹ�! {0E}%cfile% {07}�����{0E}%cfolder% {07}�ļ�������.{\n}"
echo.
echo 1.��ȷ���Ƿ���˿�����ѡ�� - USB���Ժ�OEM��������װ�������������ֻ���Ļ�Ϲ��ϡ�����USB���ԡ���ʾ��������ʹ��!
echo.
echo 2.���û�ҵ���Ļ¼�Ƶ���Ƶ�ļ����������ֻ���ѡ�񱾹��ߡ����԰�װADB/fastboot�����������
echo.
pause
goto home_adb_fastboot
:adb_sideload
echo.
bin\ctext {0C}��ȷ������ֻ����ô洢���㹻������ſ�ˢ��,�����ڴ治�㽫�޷�����adb sideloadģʽ��ˢ��{0F}{\n}
echo.
pause
echo.
echo ��recovery�����adb sideloadģʽ���ɣ��Ƿ���Ҫ˫�����о�����
echo.
bin\ctext {0E}���ڵ���ѡ������������zip��ʽ�Ŀ�ˢ�������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ����...{0F}{\n}
echo.
echo �������Ϳ�ˢ�����ֻ������Ժ�...
echo.
set rom=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set rom=" "%~dp0\*.zip"`) do %%a
bin\adb sideload %rom%
echo ����ˢ������ϣ��������ֻ�...
echo.
pause
goto home_adb_fastboot
:adb_install_apk
echo.
bin\ctext "{0D}  ==================================================================={\n}"
echo   �����Ƿ�򿪰�ȫ-δ֪��Դ�Ϳ�����ѡ��-USB���Ժ�OEM���� ��
echo.
echo   ����װ�������������ֻ���Ļ�Ϲ��ϣ�����USB���ԣ���ʾ��������ʹ��!��
echo.
echo   ����ѡ�񱾹��ߡ����԰�װADB\fastboot��������� 
bin\ctext "{0D}  ==================================================================={0F}{\n}"
echo.
bin\ctext {0E}apk����ֻ�����ֻ���Ӣ��,���������޷���װ{\n}
echo.
echo.
bin\ctext {0C}���ڵ���ѡ������������apk��������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ���Ͱ�װ������ֻ���...{0F}{\n}
echo.
set apk=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set apk=" "%~dp0\*.apk"`) do %%a
bin\adb install -r %apk%
goto home_adb_fastboot
:adb_flash_zip
if not exist "update-binary" (
echo.
echo.
bin\ctext "{0C}      ȱ��update-binary��ˢ���,�����ϼ�鱾����Ŀ¼���Ƿ���ڶ�ӦCPU�ͺ�update-binaryˢ�������{0F}{\n}"
echo.
bin\ctext "{0C}      �ӿ�ˢ����ȡMETA-INF\com\google\android\update-binary��ˢ����ŵ�������Ŀ¼�¡�{0F}{\n}"
echo.
echo.
pause
goto home_adb_fastboot
)
) else (
echo.
bin\ctext {0C}��ȷ������ֻ����ô洢���㹻������ſ�ˢ��,�����ڴ治�㽫�޷�����recovery��ˢ��{0F}{\n}
echo.
pause
bin\adb reboot recovery
@echo off
for /l %%i in (20,-1,0) do (
cls
echo.
bin\ctext {0E}����recovery���浹����ʣ{0F} %%i {0E}��ʱ�䣬����ˢ��update-binaryˢ�����...{0F}{\n}
ping 127.1 -n 2 >nul
)
bin\adb push update-binary /tmp/update-binary
bin\adb shell chmod 0777 /tmp/update-binary
echo.
echo.
bin\ctext {0C}�ɹ�ˢ���ӦCPU�ͺ�update-binaryˢ���������ʾ��[100%]������{0F}{\n}
echo.
bin\ctext {0C}ˢ��ʧ�ܽ���ʾ��No such file or directory���������鱾����Ŀ¼���Ƿ���ڶ�ӦCPU�ͺ�update-binaryˢ�������{0F}{\n}
echo.
echo.
bin\ctext {0B}���ڵ���ѡ������������zip��ʽ�Ŀ�ˢ�������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼ����...{0F}{\n}
echo.
bin\ctext {0B}��������recovery�������о����Ƿ���Ҫ˫��������������Ϳ�ˢ�����ֻ������Ժ�...{0F}{\n}
set roma=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set roma=" "%~dp0\*.zip"`) do %%a
bin\adb push %roma% /sdcard/flashrom.zip
bin\adb shell "/tmp/update-binary" 2 2 /sdcard/flashrom.zip
bin\adb shell rm -f /sdcard/flashrom.zip >nul 2>nul
echo ˢ���ɹ�!����������ֻ�������...
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
echo   #            usb�������� v1.4.3 �汾            #
echo   #                                               #
echo   #  ��׿adb fastboot�汾 1.0.39����׿8.1 Oreo��  #
echo   #                                               #
echo   #      Google usb �����汾 11.0.0000.00000      #
echo   #                                               #
echo   #################################################
bin\ctext {0F}{\n}
:adb_s
echo(
echo ���ڰ�װ adb ��fastboot ... (�����û�)
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
echo ���ڰ�װ 64λ �豸���� ...
echo �벻Ҫ�رմ��� ...
start /wait bin\driver\DPInst_x64.exe /f
goto finish
:x86
echo(
echo ���ڰ�װ 32λ �豸���� ...
echo �벻Ҫ�رմ��� ...
start /wait bin\driver\DPInst_x86.exe /f
goto finish
:finish
echo(
bin\ctext {0C} adb �� fastboot�������ð�װ��ɣ� ��رպ�ĸ���´򿪼�����Ч��{0F}{\n}
ping localhost -n 2 >NUL
del /s /q bin\path.tmp >nul 2>nul
pause
goto home_adb_fastboot
:java8_home
cls
bin\ctext {0A}{\n}
echo  *********************************************************************************
echo.
echo.         ���ѣ��밲װjava8_v1.8.0_172��Ϻ���������java\adb��������!
echo. 
echo. *********************************************************************************
bin\ctext {0E}{\n}
echo   1.��װjava8_v1.8.0_172���л��� (��װ��java8_v1.8.0_172��������java\adb��������)
bin\ctext {0D}{\n}
echo   2.����java\adb�������� (������Ϻ󽫻���֤���������Ƿ�������ȷ)
bin\ctext {0B}{\n}
echo   3.���²鿴java���°汾
bin\ctext {0C}{\n}
echo   4.��װNet_Framework_4.7
bin\ctext {0A}{\n}
echo   0.�ص�������ҳ
bin\ctext {0F}{\n}
echo.
set /p webaa=-^-^> ��������ѡ���Ӧ�Ĳ���:
if "%webaa%"=="1" goto install_java8
if "%webaa%"=="2" goto java_adb_peizhi_Manual
if "%webaa%"=="3" goto update_java8
if "%webaa%"=="4" goto install_Net_Framework_4.7
if "%webaa%"=="0" goto home
goto java8_home
:install_java8
echo.
echo ����Ĭ�ϰ�װ��C�̷����Զ�����java����������Ҳ�����Զ��尲װ·������Ҫ�ֶ�����java����������
echo.
echo �Ժ󽫴�java8��װ����
echo.
start bin\java8.exe
pause
goto java8_home
:java_adb_peizhi_Manual
echo.
echo  java����������Ҫ���Թ���Ա�˻��򿪲���ʹ�ã�
echo.
echo  ����ȫ�Զ�����java����! 
@set path=%path%;%systemroot%;%systemroot%\system32; 
@reg add "HKLM\system\controlset001\control\session manager\environment" /v JAVA_HOME /t reg_sz /d "%cd%" /f 
@reg add "HKLM\system\controlset001\control\session manager\environment" /v PATH /t reg_expand_sz /d ".;%%JAVA_HOME%%\bin;%path%" /f 
@reg add "HKLM\system\controlset001\control\session manager\environment" /v CLASSPATH /t reg_sz /d "%%JAVA_HOME%%\lib\dt.jar;%%JAVA_HOME%%\lib\tools.jar;." /f 
pause
echo.
echo ��ͨ��У�齫������ʾ,�����ʾ��������������Ϣ����java�������ò�����,��ѡ���ֶ��趨java�������ã�
echo.
bin\ctext {0C}java version "1.8.0_172"{0F}{\n}
bin\ctext {0C}Java(TM) SE Runtime Environment (build 1.8.0_172-b11){0F}{\n}
bin\ctext {0C}Java HotSpot(TM) Client VM (build 25.172-b11, mixed mode, sharing){0F}{\n}
echo.
echo ����������������ʾ����Ϣ��ͬ��ʾjava��������������
echo.
java -version
echo.
echo.
bin\ctext {0A}{\n}
echo  ************************************
bin\ctext {0E}{\n}
echo   1.�ɹ�����java����������Ҫ�ֶ�����
bin\ctext {0C}{\n}
echo   2.û�ɹ�����java�����������ֶ�����
bin\ctext {0A}{\n}
echo. ************************************
bin\ctext {0F}{\n}
echo.
set /p webbb=-^-^> ��������ѡ���Ӧ�Ĳ���:
if "%webbb%"=="1" goto home
if "%webbb%"=="2" goto java_adb_peizhi_Manual2
goto java_adb_peizhi_Manual
:java_adb_peizhi_Manual2
start bin\java_adb.exe
pause
echo.
echo ��ͨ��У�齫������ʾ,�����ʾ��������������Ϣ����java�������ò�����,��ѡ���ֶ��趨java�������ã�
echo.
bin\ctext {0C}java version "1.8.0_172"{0F}{\n}
bin\ctext {0C}Java(TM) SE Runtime Environment (build 1.8.0_172-b11){0F}{\n}
bin\ctext {0C}Java HotSpot(TM) Client VM (build 25.172-b11, mixed mode, sharing){0F}{\n}
echo.
echo ��װ��Ϻ����������У��java���������Ƿ������������������ʾ��ͬ��ʾjava��������������
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
echo. ���ѣ�����ˢ���ֻ�ʺ�MTKоƬ���ֻ���ˢ��
echo.
echo. �޷���ˢ���Ȱ�װ��ˢ����,���ڸ���Ʒ����ˢ����������,��������������,������ֻ�ṩ������ˢ������װ!
echo. 
echo. *************************************************************************************************
bin\ctext {0E}{\n}
echo   1.��MTK��ˢ����SP_Flash_Tool(���İ�)
bin\ctext {0E}{\n}
echo   2.��װMTK������ˢ����
bin\ctext {0D}{\n}
echo   3.�򿪸�ͨ9008��ˢ����QFIL
bin\ctext {0D}{\n}
if "%webcc%"=="5" goto update_SP_Flash_Tool
if "%webcc%"=="0" goto home
goto open_SP_Flash_Tool_home
:open_SP_Flash_Tool
echo.
bin\ctext {0C}��ˢSP_Flash_Tool�����������ķ�������������Ϸ�ѡ�����ѡ��Options-General-Language-��������{0F}{\n}
bin\ctext {0C}���ڴ�MTK��ˢ����SP_Flash_Tool�����Ժ�...{0F}{\n}
echo.
start bin\SP_Flash_Tool_exe_Windows\flash_tool.exe
pause
goto open_SP_Flash_Tool_home
:install_BrushDrive
echo.
bin\ctext {0C}���ļ�����ΪMTKоƬ������ˢ����������ѡ��װ����Щ���ð�װ��Щ��{0F}{\n}
echo.
start bin\MTK_Sp_Flash_Tools_Driver\
pause
goto open_SP_Flash_Tool_home
:qualcomm_QFIL
echo.
bin\ctext {0C}���ڴ򿪸�ͨ9008��ˢ����QFIL�����Ժ�...{0F}{\n}
echo.
start bin\SP_Flash_Tool_exe_Windows\QFIL.exe
pause
goto open_SP_Flash_Tool_home
:qualcomm_Diag_QD_Loader
echo.
bin\ctext {0C}���ڰ�װ��ͨ����9008��ˢ���������Ժ�...{0F}{\n}
echo.
start bin\Qualcomm_Diag_QD_Loader_2016_driver.exe
pause
goto open_SP_Flash_Tool_home
:update_SP_Flash_Tool
echo.
bin\ctext {0C}���ڴ�spflashtool������needrom���£����������°汾�����ֶ�MTK��CPU�ļ�����......{0F}{\n}
bin\ctext {0C}��ˢSP_Flash_Tool�����������ķ�������������Ϸ�ѡ�����ѡ��Options-General-Language-��������{0F}{\n}
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
echo.                             ��л���ٷ�notepad++������ĸ��£�
echo. 
echo. *************************************************************************************************
bin\ctext {0E}{\n}
echo   1.������װnotepad++�ı��༭��
bin\ctext {0D}{\n}
echo   2.�鿴�°�notepad++�ı��༭��
bin\ctext {0A}{\n}
echo   0.�ص�������ҳ
bin\ctext {0F}{\n}
echo.
set /p webdd=-^-^> ��������ѡ���Ӧ�Ĳ���:
if "%webdd%"=="1" goto install_notepad
if "%webdd%"=="2" goto update_notepad
if "%webdd%"=="0" goto home
goto install_notepad
:install_notepad
echo.
bin\ctext {0C}���ڴ�notepad++��װ�������Ժ�...��{0F}{\n}
echo.
start bin\notepad.exe
pause
goto home
:update_notepad
echo.
echo ���ڴ�notepad����......
echo.
start https://notepad-plus-plus.org/zh/
goto home
:rootkernel
echo.
bin\ctext "{0E}    ���ڵ���ѡ��boot.img\recovery.img�ļ������½�λ�õ�ѡ���򿪡�ѡ��ɿ�ʼʶ��kernel�ں˰汾...{0F}{\n}"
echo.
set kernelversion=
for /f "usebackq delims=" %%a in (`bin\FileToOpen "set kernelversion=" "%~dp0\*img"`) do %%a
copy %kernelversion% bin\rootkernel\boot.img >nul 2>nul
echo.
bin\ctext {0E} ��鿴�ں�kernel�汾��Ϣ��Ϻ���������ص���ĸ��ҳ���Զ�����ʶ������в������ļ�{0F}{\n}
echo.
start bin\rootkernel\��ק�ں�REC������.bat
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
bin\ctext {0B}��������������������������������������������������������������������{0C}{\n}
bin\ctext {0C}   1.ʹ�ú�ĸ��systemȫ��ODEX�ϲ�����{\n}
echo.
bin\ctext {0A}   2.ʹ��SVADeodexerForArt.exe��FulmicsDeodexer.exe(��׿5.0-7.1.2){\n}
echo.
bin\ctext {0E}   3.��XDA��վ�鿴SVADeodexerForArt��FulmicsDeodexer�°�{\n}
bin\ctext {0B}��������������������������������������������������������������������{0F}{\n}
echo.
set /p webee=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
bin\ctext {0E} ������Ҫ��װ��java_8���л�����Net_Framework_4.7���֧��,�����޷�����!{0F}{\n}
echo.
bin\ctext {0E} ��ѡ��SVADeodexerForArt.exe(��׿5.0-7.1.2)FulmicsDeodexer.exe(��׿5.0-7.1.2){\n}
bin\ctext {0E} ������ODEX�ϲ�����������ODEX�ϲ�!{0F}{\n}
echo.
start bin\odex_merge\
pause
goto home
:update_odex
start https://forum.xda-developers.com/galaxy-s5/general/tool-deodex-tool-android-l-t2972025 & start https://forum.xda-developers.com/android/software-hacking/tooll-03-12-fulmics-deodexer-1-0-t3512081
goto home
:open_Compare
echo.
echo ���ڴ��ļ��Ա��������Ժ�...
echo.
start bin\Beyond_Compare\BCompare.exe
pause
goto home
:install_Apkdb
cls
bin\ctext {0A}{\n}
echo  *************************************************************************************************
echo.
echo.                 ��л�� ����˹��-��οƼ�ԭ���߶�Apkdb�����빤������ĸ��£�
echo. 
echo. *************************************************************************************************
bin\ctext {0E}{\n}
echo   1.������װApkdb�����빤�ߣ����鰲װ��Ͻ��Ű�װ��װjava8_v1.8.0_172���л�����
bin\ctext {0D}{\n}
echo   2.�鿴�°�Apkdb�����빤��
bin\ctext {0B}{\n}
echo   3.��װjava8_v1.8.0_172���л��� (��װ��java8_v1.8.0_172��������java\adb��������)
bin\ctext {0C}{\n}
echo   4.����java\adb�������� (������Ϻ󽫻���֤���������Ƿ�������ȷ)
bin\ctext {0A}{\n}
echo   5.���²鿴java���°汾
bin\ctext {0F}{\n}
echo   0.�ص�������ҳ
bin\ctext {0F}{\n}
echo.
set /p webff=-^-^> ��������ѡ���Ӧ�Ĳ���:
if "%webff%"=="1" goto install_apkdb
if "%webff%"=="2" goto apkdb_update
if "%webff%"=="3" goto install_java8
if "%webff%"=="4" goto java_adb_peizhi_Manual
if "%webff%"=="5" goto update_java8
if "%webff%"=="0" goto home
goto install_Apkdb
:apkdb_update
echo.
echo ���ڴ�Apkdb�����빤�߹������ص�ַ�����Ժ�......
echo.
start http://idoog.me/?p=2933
pause
goto home
:install_apkdb
echo.
bin\ctext {0C}���ڴ�Apkdb������������Ժ�...��{\n}
echo.
start bin\Apkdb.exe
bin\ctext {0A}���鰲װ��Ͻ��Ű�װ��װjava8_v1.8.0_172���л���{0F}{\n}
pause
goto home
:open_AdbFileExplorer
echo.
echo �˹�����Ҫ�ֻ���ǰϵͳ֧��system\xbin\busybox�������ʹ�á�
echo ���ڴ�ADB�ļ�������...
echo.
start bin\AdbFileExplorer.exe
pause
goto home_adb_fastboot
:Print_logcat_time
set foldery=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set foldery=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
md ʵʱ����logcat������־_%foldery%
bin\adb logcat -t 10000 -v time > ʵʱ����logcat������־_%foldery%\����ϵͳ������־.log
bin\adb logcat *:F -t 10000 -v time > ʵʱ����logcat������־_%foldery%\������־-���ش���fatal.log
bin\adb logcat *:E -t 10000 -v time > ʵʱ����logcat������־_%foldery%\������־-��ͨ����error.log
bin\adb logcat *:W -t 10000 -v time > ʵʱ����logcat������־_%foldery%\������־-����warning.log
bin\adb logcat *:I -t 10000 -v time > ʵʱ����logcat������־_%foldery%\������־-��Ϣinfo.log
bin\adb logcat *:D -t 10000 -v time > ʵʱ����logcat������־_%foldery%\������־-����debug.log
bin\adb logcat *:V -t 10000 -v time > ʵʱ����logcat������־_%foldery%\������־-��ϸverbose.log
bin\adb logcat -b radio -t 10000 -v time > ʵʱ����logcat������־_%foldery%\��ӡ�źŻ������������־.log
bin\adb logcat -b main -t 10000 -v time > ʵʱ����logcat������־_%foldery%\��ӡ����Ӧ�ó�����־.log
bin\adb logcat -b events -t 10000 -v time > ʵʱ����logcat������־_%foldery%\��ӡϵͳ�¼���־.log
bin\ctext {0C}{\n}
echo �ɹ���ӡʵʱ����logcat������־�����ڹ��߸�Ŀ¼���Ҵ���ʵʱ����logcat������־_xxʱ��xx���ڡ����ļ��У�
bin\ctext {0F}{\n}
echo android�����ÿһ����־����һ����Ǻ����ȼ����������
echo ���ȼ���������ַ���˳���Ǵӵ͵��ߣ�
echo V �� ��ϸ verbose(������ȼ�)
echo D �� ���� debug
echo I �� ��Ϣ info
echo W �� ���� warning
echo E �� ���� error
echo F �� ���ش��� fatal
echo S �� �޼��� silent
pause
goto home
:Print_logcat_cache
set folderw=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
if "%time:~0,1%" == " " (
set folderw=%date:~0,4%%date:~5,2%%date:~8,2%_%time:~1,1%%time:~3,2%%time:~6,2%
)
md ����logcat������־_%folderw%
md ����logcat������־_%folderw%\tombstones
bin\adb bugreport > ����logcat������־_%folderw%\������־-bug����.log
bin\adb shell dmesg > ����logcat������־_%folderw%\������־-�ں�kernel��Ӳ����������.log
bin\adb shell dumpsys > ����logcat������־_%folderw%\������־-ϵͳservice����״̬.log
bin\adb shell dumpstate > ����logcat������־_%folderw%\������־-ϵͳ״̬��Ϣ.log
bin\adb pull /data/anr/traces.txt ����logcat������־_%folderw%\���������web����ĸ�����־.log
bin\adb pull /data/tombstones %folderw%\tombstones
bin\ctext {0C}{\n}
echo �ɹ���ӡ����logcat������־�����ڹ��߸�Ŀ¼���Ҵ�������logcat������־_xxʱ��xx���ڡ����ļ��У�
bin\ctext {0F}{\n}
echo android�����ÿһ����־����һ����Ǻ����ȼ����������
echo ���ȼ���������ַ���˳���Ǵӵ͵��ߣ�
echo V �� ��ϸ verbose(������ȼ�)
echo D �� ���� debug
echo I �� ��Ϣ info
echo W �� ���� warning
echo E �� ���� error
echo F �� ���ش��� fatal
echo S �� �޼��� silent
pause
goto home
:pc_home
cls
bin\ctext {0A}{\n}
echo  *****************************************************
echo. 
echo.    ����һ�������������������������Զ�ʱ�ػ��ȹ��ܣ�
echo. 
echo. *****************************************************
bin\ctext {0E}{\n}
echo   1.���Կ�������
bin\ctext {0D}{\n}
echo   2.���Կ�������
bin\ctext {0B}{\n}
echo   3.���Զ�ʱ�ػ�
bin\ctext {0A}{\n}
echo   0.�ص�������ҳ
bin\ctext {0F}{\n}
echo.
set /p webgg=-^-^> ��������ѡ���Ӧ�Ĳ���:
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
echo ��ָ��24Сʱ��ʽʱ��,��Ӣ��״̬�������ʽΪ��Сʱ:���ӡ�
echo  ����:  00:00  ��  19:30
echo ========================================
set shutdowntime=
set /p shutdowntime=��ʱ:
schtasks /create /sc once /tn ��ʱ�ػ� /tr "shutdown.exe -s -hybrid -t 10" -st "%shutdowntime%:00"
if not errorlevel 1 goto ok
echo %shutdowntime% ���Ǳ�׼��ʱ���ʽ,����������
echo.
goto home
:update_CarrierClassTools
bin\ctext {0A}{\n}
echo  ***********************************************************
echo.    ��ע�ҵ�����΢������ʱ�鿴��ĸ�������°汾��
echo.
echo     ��ע��ĸ���߹ٷ�QQȺ��611193563
echo.
echo.    ��ĸ����֧����΢�Ŷ�ά��ɨ��򿪵�ͼƬ���������Һ�һ�����ȣ�
echo. ***********************************************************
bin\ctext {0F}{\n}
start bin\��ĸ����֧����΢�Ŷ�ά�����.png & start http://shang.qq.com/wpa/qunwpa?idkey=8da3fa12ed1d48b24b52efa1a6e60f641806b08be93edac5e549a3d1617f3c70 & start http://weibo.com/jooks
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
