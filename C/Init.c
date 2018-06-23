#include <stdio.h>
#include "SYSTEM.h"
#include "Kernel.h"
#include "_windows.h"

//int main (int argc, char **argv) {


int WINAPI WinMain1
(
HINSTANCE hInstance,		// ���������� �������� ���������� ����
HINSTANCE hPrevInstance,		// ���������� ����������� ���������� ���� 
LPSTR lpCmdLine,			// ��������� �� ��������� ������
int nCmdShow 			// ���������� ��������� ���� 
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
HINSTANCE hInstance,		// ���������� �������� ���������� ����
HINSTANCE hPrevInstance,		// ���������� ����������� ���������� ���� 
LPSTR lpCmdLine,			// ��������� �� ��������� ������
int nCmdShow 			// ���������� ��������� ���� 
) {

	Kernel_LoadMod(L"MyMod1", 6);

	return 0;
}
