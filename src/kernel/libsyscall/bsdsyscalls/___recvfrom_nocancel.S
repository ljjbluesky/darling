#define __SYSCALL_32BIT_ARG_BYTES 24
#include "SYS.h"

#ifndef SYS_recvfrom_nocancel
#error "SYS_recvfrom_nocancel not defined. The header files libsyscall is building against do not match syscalls.master."
#endif

#if defined(__i386__) || defined(__x86_64__)
__SYSCALL2(___recvfrom_nocancel, recvfrom_nocancel, 6, cerror_nocancel)
#endif

#if defined(__i386__)
	.globl	_recvfrom$NOCANCEL$UNIX2003
	.set	_recvfrom$NOCANCEL$UNIX2003, ___recvfrom_nocancel
#endif

#if defined(__x86_64__)
	.globl	_recvfrom$NOCANCEL
	.set	_recvfrom$NOCANCEL, ___recvfrom_nocancel
#endif

