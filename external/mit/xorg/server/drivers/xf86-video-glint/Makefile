#	$NetBSD: Makefile,v 1.15 2018/12/31 12:13:50 mrg Exp $

DRIVER=		xf86-video-glint
DRIVER_NAME=	glint_drv

SRCS=		glint_dga.c glint_driver.c glint_shadow.c
SRCS+=		IBMramdac.c pm2_accel.c pm2_common.c pm2_dac.c pm2_exa.c
SRCS+=		pm2ramdac.c pm2v_dac.c pm2_video.c pm2vramdac.c pm3_accel.c
SRCS+=		pm3_dac.c pm3_exa.c pm3_video.c pm_accel.c pm_dac.c 
SRCS+=		sx_accel.c TIramdac.c tx_accel.c tx_dac.c
MAN=		glint.4

.if ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "sparc"
CPPFLAGS+=	-DSPARC_MMIO_IS_BE
.endif

.if ${MACHINE_ARCH} == "powerpc"
CPPFLAGS+=	-DPPC_MMIO_IS_BE
.endif

CPPFLAGS+=	-DHAVE_CONFIG_H -I${X11SRCDIR.${DRIVER}}/../include
CPPFLAGS+=	-I${DESTDIR}${X11INCDIR}/X11
CPPFLAGS+=	-I${DESTDIR}${X11INCDIR}/libdrm

COPTS.glint_driver.c=	-Wno-error	# XXX xf86dgastr.h, deprecated

CWARNFLAGS.clang+=	-Wno-format

.include "../Makefile.xf86-driver"
