@ECHO OFF
IF NOT "%XDev%"=="" SET PATH=%XDev%\WinDev\Bin\MinGW\bin
CD ..\Obj48

SET StripDll=-nostartfiles DllMain.o -Wl,-e_DllMain@12
SET CC=gcc.exe -I..\C -m32 -s -Os -g0 -fvisibility=hidden -finline-small-functions -fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables -Wl,--gc-sections

%CC% -fPIC MyDynLinkDemo.c MyRes1.c MyRes2.c MyDynLinkMain.c Log.c Kernel.c ..\C\SYSTEM.c
IF errorlevel 1 PAUSE

:: Kernel
%CC% %StripDll% -fPIC MyRes1.o -static-libgcc -shared -o MyRes1.dll
IF errorlevel 1 PAUSE

:: Math
::%CC% %StripDll% -fPIC MyRes2.o -static-libgcc -shared -o MyRes2.dll CPfront.a
::IF errorlevel 1 PAUSE

:: Strings
::%CC% %StripDll% -fPIC MyDynLinkDemo.o -static-libgcc -shared -o MyDynLinkDemo.dll CPfront.a
::IF errorlevel 1 PAUSE

::FOR %%i IN (*.dll) DO MOVE /Y %%i ..\System\Code >NUL
