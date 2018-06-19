@ECHO OFF
IF NOT "%XDev%"=="" SET PATH=%XDev%\WinDev\Bin\MinGW\bin
CD ..\Obj48

SET StripDll=-nostartfiles DllMain.o -Wl,-e_DllMain@12
SET CC=gcc.exe -I..\C -m32 -s -Os -g0 -fvisibility=hidden -finline-small-functions -fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables -Wl,--gc-sections

%CC% -fPIC -c ..\C\DllMain.c Kernel.c Math.c Strings.c
IF errorlevel 1 PAUSE

:: Kernel
%CC% %StripDll% -fPIC Kernel.o Kernel.def -static-libgcc -shared -o Kernel.dll CPfront.a
IF errorlevel 1 PAUSE

:: Math
%CC% %StripDll% -fPIC Math.o Math.def -static-libgcc -shared -o Math.dll CPfront.a
IF errorlevel 1 PAUSE

:: Strings
%CC% %StripDll% -fPIC Strings.o -static-libgcc -shared -o Strings.dll CPfront.a
IF errorlevel 1 PAUSE

FOR %%i IN (*.dll) DO MOVE /Y %%i ..\System\Code >NUL
