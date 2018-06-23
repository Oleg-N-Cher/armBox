#include <stdio.h>
#include "SYSTEM.h"
#include "Kernel.h"
#include "_windows.h"

//int main (int argc, char **argv) {


int WINAPI WinMain1
(
HINSTANCE hInstance,		// дескриптор текущего экземпл€ра окна
HINSTANCE hPrevInstance,		// дескриптор предыдущего экземпл€ра окна 
LPSTR lpCmdLine,			// указатель на командную строку
int nCmdShow 			// показывает состо€ние окна 
) {

	HMODULE hLib;
	int (*pFunction)(void);
	double (*pDunction)(void);

	hLib = LoadLibrary("MyMod1.dll");
	if (hLib!=0) printf("MyMod1.dll ok\n");

	pFunction = (void*)GetProcAddress(hLib, "MyMod1_Do");
	if (pFunction!=0) printf("MyMod1_Do found\n"); else printf("MyMod1_Do not found\n");

	printf("%d\n", (int)pFunction());

	hLib = LoadLibrary("..\\System\\Code\\Math.dll");
	if (hLib!=0) printf("Math.dll ok\n");

	pDunction = (void*)GetProcAddress(hLib, "Math_Pi");
	if (pDunction!=0) printf("Math_Pi found\n"); else printf("Math_Pi not found\n");

	printf("%.24g", pDunction());

	return 0;
}

int WINAPI WinMain
(
HINSTANCE hInstance,		// дескриптор текущего экземпл€ра окна
HINSTANCE hPrevInstance,		// дескриптор предыдущего экземпл€ра окна 
LPSTR lpCmdLine,			// указатель на командную строку
int nCmdShow 			// показывает состо€ние окна 
) {

	Kernel_LoadMod(L"MyMod1", 6);

	return 0;
}
