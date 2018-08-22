#ifndef LibC__h
#define LibC__h

#include <dirent.h>
#include <fcntl.h>
#include <iconv.h>
#include <locale.h>
#include <signal.h>
#include <setjmp.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>
#include "SYSTEM.h"


#if (__SIZEOF_POINTER__ == 8) || defined (_LP64) || defined(__LP64__) || defined(_WIN64)
#  ifdef _WIN64
	typedef long long PtrVoid;
#  else
	typedef long PtrVoid;
#  endif
#else
#  ifdef __OpenBSD__
	typedef long PtrVoid;
#  else
	typedef int PtrVoid;
#  endif
#endif

typedef SHORTCHAR *PtrSTR;
typedef CHAR *PtrLSTR;
typedef PtrSTR *StrArray;
typedef int HANDLE;
typedef FILE *PtrFILE;
typedef DIR *PtrDIR;

#define tmDesc struct tm
typedef struct timespec timespec_t;
typedef struct sigaction sigaction_t;
typedef struct stat stat_t;
typedef struct dirent Dirent;


#endif
