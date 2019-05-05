@SET Debug=-g

@ECHO OFF
IF NOT "%XDev%"=="" SET PATH=%XDev%\WinDev\Bin\MinGW\bin
CD ..\Obj48

IF "%Debug%"=="" SET Debug=-s -Os
SET StripDll=-nostartfiles ..\C\DllMain.c -Wl,-e_DllMain@12
SET StripExe=-nostartfiles ..\C\ExeMain.c -Wl,-e__WinMain
SET LibReloc=%XDev%\WinDev\Bin\MinGW\i686-w64-mingw32\lib\libmingw32.a
SET CC=gcc.exe -fPIC -I..\C -m32 %Debug% -fvisibility=hidden -fno-exceptions -ffunction-sections -Wl,--gc-sections
SET AR=ar.exe -rc CPfront.a
IF EXIST CPfront.a DEL CPfront.a

:: Kernel
%CC% -c ..\C\SYSTEM.c Types.c Kernel.c StdLog.c Math.c Strings.c Files.c
IF errorlevel 1 PAUSE
%AR% SYSTEM.o Types.o Kernel.o StdLog.o Math.o Strings.o Files.o

:: Init
%CC% %StripExe% ..\C\Init.c -I. armBox.def -o ..\armBox_.exe -Wl,--out-implib,armBox.a CPfront.a
IF errorlevel 1 PAUSE

:: Math
%CC% %StripDll% Math.o armBox.a -static-libgcc -shared -o Math.dll -Wl,--out-implib,Math.a
IF errorlevel 1 PAUSE

:: Strings
%CC% %StripDll% Strings.o Math.a armBox.a -static-libgcc -shared -o Strings.dll -Wl,--out-implib,Strings.a
IF errorlevel 1 PAUSE

:: Files
%CC% %StripDll% Files.o armBox.a -static-libgcc -shared -o Files.dll -Wl,--out-implib,Files.a
IF errorlevel 1 PAUSE

FOR %%i IN (*.dll) DO MOVE /Y %%i ..\System\Code >NUL
