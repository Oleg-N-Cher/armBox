@SET Debug=-g

@ECHO OFF
IF NOT "%XDev%"=="" SET PATH=%XDev%\WinDev\Bin\MinGW\bin;%PATH%
SET PATH=d:\WIN32APP\Dev\MinGW-w64\i686-7.2.0-win32-dwarf-rt_v5-rev1\mingw32\bin;%PATH%
CD ..\Obj48

IF "%Debug%"=="" SET Debug=-s -Os
SET StripDll=-nostartfiles ..\C\DllMain.c -Wl,-e_DllMain@12
SET StripExe=-nostartfiles ..\C\ExeMain.c -Wl,-e__WinMain
SET CC=gcc.exe -I..\C -m32 %Debug% -fvisibility=hidden -fno-exceptions -ffunction-sections -Wl,--gc-sections
SET AR=ar.exe -rc CPfront.a
::IF EXIST CPfront.a DEL CPfront.a

:: Kernel
::%CC% -c ..\C\SYSTEM.c Types.c Kernel.c Files.c HostFiles.c BbCmdLine.c BbConsole.c BbDirectories.c
::IF errorlevel 1 PAUSE
::%AR% SYSTEM.o Types.o Files.o HostFiles.o BbCmdLine.o BbConsole.o BbDirectories.o Kernel.o

:: Main
%CC% %StripExe% PrivTestSend.c -o ..\PrivTestSend.exe CPfront.a
IF errorlevel 1 PAUSE

..\PrivTestSend.exe
PAUSE