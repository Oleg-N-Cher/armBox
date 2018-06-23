#ifndef LibC__h
#define LibC__h

//#include <sys/mman.h> -- mmap
#include <signal.h>
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


typedef
	SHORTCHAR *PtrSTR;

typedef
	PtrSTR *StrArray;

typedef
	INTEGER sigjmp_buf[39];


#define mmap(addr, length, prot, flags, fd, offset) 0
#define munmap(addr, length) 0


typedef
	int sigset_t;

#define sigemptyset(mask) 0
#define sigaddset(mask, i) 0
#define sigprocmask(i, mask, omask) 0
#define  __sigsetjmp(ctx, i) 0

#endif
