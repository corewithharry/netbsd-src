# $NetBSD: Makefile,v 1.8 2020/06/21 13:59:56 lukem Exp $

USE_ATF_LIBTOOLS=	yes

.include <bsd.init.mk>

TESTSDIR=	${TESTSBASE}/atf/tools
ATFFILE=	yes
KYUAFILE=	yes

.PATH:		${SRCDIR}/tools

PROGS=
.for prog in	bad_metadata_helper \
		process_helpers
PROGS+=		${prog}
SRCS.${prog}=	${prog}.c
MAN.${prog}=	# defined
BINDIR.${prog}=	${TESTSDIR}
.endfor

TESTS_C=	expect_helpers \
		several_tcs_helper \
		zero_tcs_helper

TESTS_CXX=
.for test in	\
		application_test \
		atffile_test \
		auto_array_test \
		config_file_test \
		config_test \
		fail_helper \
		env_test \
		expand_test \
		fs_test \
		io_test \
		misc_helpers \
		parser_test \
		pass_helper \
		process_test \
		reader_test \
		requirements_test \
		signals_test \
		test_program_test \
		text_test \
		ui_test \
		user_test
TESTS_CXX+=	${test}
SRCS.${test}=	${test}.cpp
.endfor

TESTS_SH=	atf-config_test \
		atf-report_test \
		atf-run_test \

.include <bsd.test.mk>
