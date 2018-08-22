@SET Debug=-g

@ECHO OFF
IF NOT "%XDev%"=="" SET PATH=%XDev%\WinDev\Bin\MinGW\bin
CD ..\Obj48

IF "%Debug%"=="" SET Debug=-s -Os
SET StripDll=-nostartfiles ..\C\DllMain.c -Wl,-e_DllMain@12
SET StripExe=-nostartfiles ..\C\ExeMain.c -Wl,-e__WinMain
SET LibReloc=%XDev%\WinDev\Bin\MinGW\i686-w64-mingw32\lib\libmingw32.a
SET CC=gcc.exe -fPIC -I..\C -m32 %Debug% -fvisibility=hidden -finline-small-functions -fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables -ffunction-sections -Wl,--gc-sections
SET AR=ar.exe -rc CPfront.a
::IF EXIST CPfront.a DEL CPfront.a

%CC% -c HostFiles.c

:: HostFiles
%CC% %StripDll% HostFiles.o armBox.a Files.a -static-libgcc -shared -o HostFiles.dll -Wl,--out-implib,HostFiles.a
IF errorlevel 1 PAUSE

FOR %%i IN (*.dll) DO MOVE /Y %%i ..\Host\Code >NUL
