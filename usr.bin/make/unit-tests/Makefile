# $NetBSD: Makefile,v 1.155 2020/09/29 18:16:24 rillig Exp $
#
# Unit tests for make(1)
#
# The main targets are:
#
# all:
#	run all the tests
# test:
#	run 'all', and compare to expected results
# accept:
#	move generated output to expected results
#
# Settable variables
#
# TEST_MAKE
#	The make program to be tested.
#
#
# Adding a test case
#
# Each feature should get its own set of tests in its own suitably
# named makefile (*.mk), with its own set of expected results (*.exp),
# and it should be added to the TESTS list.
#
# Any added files must also be added to src/distrib/sets/lists/tests/mi.
# To do that, just run "make sync-mi" in this directory.
#
# A few *.mk files are helper files for other tests (such as include-sub.mk)
# and are thus not added to TESTS.  Such files must be ignored in
# src/tests/usr.bin/make/t_make.sh.
#

# Each test is in a sub-makefile.
# Keep the list sorted.
# Any test that is commented out must be ignored in
# src/tests/usr.bin/make/t_make.sh as well.
TESTS+=		archive
TESTS+=		archive-suffix
TESTS+=		cmd-interrupt
TESTS+=		cmdline
TESTS+=		comment
TESTS+=		cond-cmp-numeric
TESTS+=		cond-cmp-numeric-eq
TESTS+=		cond-cmp-numeric-ge
TESTS+=		cond-cmp-numeric-gt
TESTS+=		cond-cmp-numeric-le
TESTS+=		cond-cmp-numeric-lt
TESTS+=		cond-cmp-numeric-ne
TESTS+=		cond-cmp-string
TESTS+=		cond-cmp-unary
TESTS+=		cond-func
TESTS+=		cond-func-commands
TESTS+=		cond-func-defined
TESTS+=		cond-func-empty
TESTS+=		cond-func-exists
TESTS+=		cond-func-make
TESTS+=		cond-func-target
TESTS+=		cond-late
TESTS+=		cond-op
TESTS+=		cond-op-and
TESTS+=		cond-op-not
TESTS+=		cond-op-or
TESTS+=		cond-op-parentheses
TESTS+=		cond-short
TESTS+=		cond-token-number
TESTS+=		cond-token-plain
TESTS+=		cond-token-string
TESTS+=		cond-token-var
TESTS+=		cond-undef-lint
TESTS+=		cond1
TESTS+=		cond2
TESTS+=		counter
TESTS+=		counter-append
TESTS+=		dep
TESTS+=		dep-colon
TESTS+=		dep-colon-bug-cross-file
TESTS+=		dep-double-colon
TESTS+=		dep-exclam
TESTS+=		dep-none
TESTS+=		dep-var
TESTS+=		dep-wildcards
TESTS+=		depsrc
TESTS+=		depsrc-exec
TESTS+=		depsrc-ignore
TESTS+=		depsrc-made
TESTS+=		depsrc-make
TESTS+=		depsrc-meta
TESTS+=		depsrc-nometa
TESTS+=		depsrc-nometa_cmp
TESTS+=		depsrc-nopath
TESTS+=		depsrc-notmain
TESTS+=		depsrc-optional
TESTS+=		depsrc-phony
TESTS+=		depsrc-precious
TESTS+=		depsrc-recursive
TESTS+=		depsrc-silent
TESTS+=		depsrc-use
TESTS+=		depsrc-usebefore
TESTS+=		depsrc-usebefore-double-colon
TESTS+=		depsrc-wait
TESTS+=		deptgt
TESTS+=		deptgt-begin
TESTS+=		deptgt-default
TESTS+=		deptgt-delete_on_error
TESTS+=		deptgt-end
TESTS+=		deptgt-end-jobs
TESTS+=		deptgt-error
TESTS+=		deptgt-ignore
TESTS+=		deptgt-interrupt
TESTS+=		deptgt-main
TESTS+=		deptgt-makeflags
TESTS+=		deptgt-no_parallel
TESTS+=		deptgt-nopath
TESTS+=		deptgt-notparallel
TESTS+=		deptgt-objdir
TESTS+=		deptgt-order
TESTS+=		deptgt-path
TESTS+=		deptgt-path-suffix
TESTS+=		deptgt-phony
TESTS+=		deptgt-precious
TESTS+=		deptgt-shell
TESTS+=		deptgt-silent
TESTS+=		deptgt-stale
TESTS+=		deptgt-suffixes
TESTS+=		dir
TESTS+=		dir-expand-path
TESTS+=		directive
TESTS+=		directive-dinclude
TESTS+=		directive-elif
TESTS+=		directive-elifdef
TESTS+=		directive-elifmake
TESTS+=		directive-elifndef
TESTS+=		directive-elifnmake
TESTS+=		directive-else
TESTS+=		directive-endif
TESTS+=		directive-error
TESTS+=		directive-export
TESTS+=		directive-export-env
TESTS+=		directive-export-literal
TESTS+=		directive-for
TESTS+=		directive-for-generating-endif
TESTS+=		directive-hyphen-include
TESTS+=		directive-if
TESTS+=		directive-ifdef
TESTS+=		directive-ifmake
TESTS+=		directive-ifndef
TESTS+=		directive-ifnmake
TESTS+=		directive-include
TESTS+=		directive-include-fatal
TESTS+=		directive-info
TESTS+=		directive-sinclude
TESTS+=		directive-undef
TESTS+=		directive-unexport
TESTS+=		directive-unexport-env
TESTS+=		directive-warning
TESTS+=		directives
TESTS+=		dollar
TESTS+=		doterror
TESTS+=		dotwait
TESTS+=		envfirst
TESTS+=		error
TESTS+=		# escape	# broken by reverting POSIX changes
TESTS+=		export
TESTS+=		export-all
TESTS+=		export-env
TESTS+=		export-variants
TESTS+=		forloop
TESTS+=		forsubst
TESTS+=		impsrc
TESTS+=		include-main
TESTS+=		job-output-long-lines
TESTS+=		lint
TESTS+=		make-exported
TESTS+=		misc
TESTS+=		moderrs
TESTS+=		modmatch
TESTS+=		modmisc
TESTS+=		modts
TESTS+=		modword
TESTS+=		opt
TESTS+=		opt-backwards
TESTS+=		opt-chdir
TESTS+=		opt-debug
TESTS+=		opt-debug-all
TESTS+=		opt-debug-archive
TESTS+=		opt-debug-curdir
TESTS+=		opt-debug-cond
TESTS+=		opt-debug-dir
TESTS+=		opt-debug-errors
TESTS+=		opt-debug-file
TESTS+=		opt-debug-for
TESTS+=		opt-debug-graph1
TESTS+=		opt-debug-graph2
TESTS+=		opt-debug-graph3
TESTS+=		opt-debug-hash
TESTS+=		opt-debug-jobs
TESTS+=		opt-debug-lint
TESTS+=		opt-debug-loud
TESTS+=		opt-debug-meta
TESTS+=		opt-debug-making
TESTS+=		opt-debug-no-rm
TESTS+=		opt-debug-parse
TESTS+=		opt-debug-suff
TESTS+=		opt-debug-targets
TESTS+=		opt-debug-varraw
TESTS+=		opt-debug-var
TESTS+=		opt-debug-x-trace
TESTS+=		opt-define
TESTS+=		opt-env
TESTS+=		opt-file
TESTS+=		opt-ignore
TESTS+=		opt-include-dir
TESTS+=		opt-jobs
TESTS+=		opt-jobs-internal
TESTS+=		opt-keep-going
TESTS+=		opt-m-include-dir
TESTS+=		opt-no-action
TESTS+=		opt-no-action-at-all
TESTS+=		opt-query
TESTS+=		opt-raw
TESTS+=		opt-silent
TESTS+=		opt-touch
TESTS+=		opt-tracefile
TESTS+=		opt-var-expanded
TESTS+=		opt-var-literal
TESTS+=		opt-warnings-as-errors
TESTS+=		opt-where-am-i
TESTS+=		opt-x-reduce-exported
TESTS+=		order
TESTS+=		phony-end
TESTS+=		posix
TESTS+=		# posix1	# broken by reverting POSIX changes
TESTS+=		qequals
TESTS+=		recursive
TESTS+=		sh
TESTS+=		sh-dots
TESTS+=		sh-jobs
TESTS+=		sh-jobs-error
TESTS+=		sh-leading-at
TESTS+=		sh-leading-hyphen
TESTS+=		sh-leading-plus
TESTS+=		sh-meta-chars
TESTS+=		sh-multi-line
TESTS+=		sh-single-line
TESTS+=		# suffixes	# runs into an endless loop (try -dA)
TESTS+=		suff-rebuild
TESTS+=		sunshcmd
TESTS+=		sysv
TESTS+=		ternary
TESTS+=		unexport
TESTS+=		unexport-env
TESTS+=		use-inference
TESTS+=		var-class
TESTS+=		var-class-cmdline
TESTS+=		var-class-env
TESTS+=		var-class-global
TESTS+=		var-class-local
TESTS+=		var-class-local-legacy
TESTS+=		var-op
TESTS+=		var-op-append
TESTS+=		var-op-assign
TESTS+=		var-op-default
TESTS+=		var-op-expand
TESTS+=		var-op-shell
TESTS+=		varcmd
TESTS+=		vardebug
TESTS+=		varfind
TESTS+=		varmisc
TESTS+=		varmod
TESTS+=		varmod-assign
TESTS+=		varmod-defined
TESTS+=		varmod-edge
TESTS+=		varmod-exclam-shell
TESTS+=		varmod-extension
TESTS+=		varmod-gmtime
TESTS+=		varmod-hash
TESTS+=		varmod-head
TESTS+=		varmod-ifelse
TESTS+=		varmod-l-name-to-value
TESTS+=		varmod-localtime
TESTS+=		varmod-loop
TESTS+=		varmod-match
TESTS+=		varmod-match-escape
TESTS+=		varmod-no-match
TESTS+=		varmod-order
TESTS+=		varmod-order-reverse
TESTS+=		varmod-order-shuffle
TESTS+=		varmod-path
TESTS+=		varmod-quote
TESTS+=		varmod-quote-dollar
TESTS+=		varmod-range
TESTS+=		varmod-remember
TESTS+=		varmod-root
TESTS+=		varmod-select-words
TESTS+=		varmod-shell
TESTS+=		varmod-subst
TESTS+=		varmod-subst-regex
TESTS+=		varmod-sysv
TESTS+=		varmod-tail
TESTS+=		varmod-to-abs
TESTS+=		varmod-to-lower
TESTS+=		varmod-to-many-words
TESTS+=		varmod-to-one-word
TESTS+=		varmod-to-separator
TESTS+=		varmod-to-upper
TESTS+=		varmod-undefined
TESTS+=		varmod-unique
TESTS+=		varname
TESTS+=		varname-dollar
TESTS+=		varname-dot-alltargets
TESTS+=		varname-dot-curdir
TESTS+=		varname-dot-includes
TESTS+=		varname-dot-includedfromdir
TESTS+=		varname-dot-includedfromfile
TESTS+=		varname-dot-libs
TESTS+=		varname-dot-make-dependfile
TESTS+=		varname-dot-make-expand_variables
TESTS+=		varname-dot-make-exported
TESTS+=		varname-dot-make-jobs
TESTS+=		varname-dot-make-jobs-prefix
TESTS+=		varname-dot-make-level
TESTS+=		varname-dot-make-makefile_preference
TESTS+=		varname-dot-make-makefiles
TESTS+=		varname-dot-make-meta-bailiwick
TESTS+=		varname-dot-make-meta-created
TESTS+=		varname-dot-make-meta-files
TESTS+=		varname-dot-make-meta-ignore_filter
TESTS+=		varname-dot-make-meta-ignore_paths
TESTS+=		varname-dot-make-meta-ignore_patterns
TESTS+=		varname-dot-make-meta-prefix
TESTS+=		varname-dot-make-mode
TESTS+=		varname-dot-make-path_filemon
TESTS+=		varname-dot-make-pid
TESTS+=		varname-dot-make-ppid
TESTS+=		varname-dot-make-save_dollars
TESTS+=		varname-dot-makeoverrides
TESTS+=		varname-dot-newline
TESTS+=		varname-dot-objdir
TESTS+=		varname-dot-parsedir
TESTS+=		varname-dot-parsefile
TESTS+=		varname-dot-path
TESTS+=		varname-dot-shell
TESTS+=		varname-dot-targets
TESTS+=		varname-empty
TESTS+=		varname-make
TESTS+=		varname-make_print_var_on_error
TESTS+=		varname-makefile
TESTS+=		varname-makeflags
TESTS+=		varname-pwd
TESTS+=		varname-vpath
TESTS+=		varparse-dynamic
TESTS+=		varparse-undef-partial
TESTS+=		varquote
TESTS+=		varshell

# Additional environment variables for some of the tests.
# The base environment is -i PATH="$PATH".
ENV.envfirst=		FROM_ENV=value-from-env
ENV.varmisc=		FROM_ENV=env
ENV.varmisc+=		FROM_ENV_BEFORE=env
ENV.varmisc+=		FROM_ENV_AFTER=env

# Override make flags for some of the tests; default is -k.
# If possible, write ".MAKEFLAGS: -dv" in the test .mk file instead of
# settings FLAGS.test=-dv here, since that is closer to the test code.
FLAGS.cond-func-make=	via-cmdline
FLAGS.directive-ifmake=	first second
FLAGS.doterror=		# none
FLAGS.envfirst=		-e
FLAGS.export=		# none
FLAGS.opt-ignore=	-i
FLAGS.opt-keep-going=	-k
FLAGS.opt-no-action=	-n
FLAGS.opt-query=	-q
FLAGS.opt-var-expanded=	-v VAR -v VALUE
FLAGS.opt-var-literal=	-V VAR -V VALUE
FLAGS.opt-warnings-as-errors= -W
FLAGS.order=		-j1
FLAGS.recursive=	-dL
FLAGS.sh-leading-plus=	-n
FLAGS.vardebug=		-k -dv FROM_CMDLINE=
FLAGS.varmod-match-escape= -dv
FLAGS.varname-dot-shell= -dpv
FLAGS.varname-empty=	-dv '$${:U}=cmdline-u' '=cmline-plain'

# Some tests need extra postprocessing.
SED_CMDS.job-output-long-lines= \
	${:D Job separators on their own line are ok. } \
	-e '/^--- job-[ab] ---$$/d' \
	${:D Plain output lines are ok as well. } \
	${:D They may come in multiples of 1024 or as 10000. } \
	-e '/^aa*$$/d' \
	-e '/^bb*$$/d' \
	${:D The following lines should rather not occur since the job } \
	${:D marker should always be at the beginning of the line. } \
	-e '/^aa*--- job-b ---$$/d' \
	-e '/^bb*--- job-a ---$$/d'
SED_CMDS.opt-debug-graph1= \
			-e 's,${.CURDIR},CURDIR,'
SED_CMDS.opt-debug-graph1+= \
			-e '/Global Variables:/,/Suffixes:/d'
SED_CMDS.sh-dots=	-e 's,^.*\.\.\.:.*,<normalized: ...: not found>,'
SED_CMDS.varmod-subst-regex+= \
			-e 's,\(Regex compilation error:\).*,\1 (details omitted),'
SED_CMDS.varmod-edge+=	-e 's, line [0-9]*:, line omitted:,'
SED_CMDS.varshell+=	-e 's,^${.SHELL:T}: ,,'
SED_CMDS.varshell+=	-e '/command/s,No such.*,not found,'
SED_CMDS.varname-dot-parsedir=	-e '/in some cases/ s,^make: "[^"]*,make: "<normalized>,'
SED_CMDS.varname-dot-parsefile=	-e '/in some cases/ s,^make: "[^"]*,make: "<normalized>,'
SED_CMDS.varname-dot-shell=	-e 's, = /.*, = (details omitted),'
SED_CMDS.varname-dot-shell+=	-e 's,"/[^"]*","(details omitted)",'
SED_CMDS.varname-dot-shell+=	-e 's,\[/[^]]*\],[(details omitted)],'

# Some tests need an additional round of postprocessing.
POSTPROC.deptgt-suffixes= \
			${TOOL_SED} -n -e '/^\#\*\*\* Suffixes/,/^\#\*/p'
POSTPROC.vardebug=	${TOOL_SED} -n -e '/:RELEVANT = yes/,/:RELEVANT = no/p'
POSTPROC.varmod-match-escape= ${TOOL_SED} -n -e '/^Pattern/p'
POSTPROC.varname=	${TOOL_SED} -n -e '/^MAGIC/p' -e '/^ORDER_/p'
POSTPROC.varname-dot-shell= \
			awk '/\.SHELL/ || /^ParseReadLine/'
POSTPROC.varname-empty=	${TOOL_SED} -n -e '/^Var_Set/p' -e '/^out:/p'

# Some tests reuse other tests, which makes them unnecessarily fragile.
export-all.rawout: export.mk
unexport.rawout: export.mk
unexport-env.rawout: export.mk

# End of the configuration section.

.MAIN: all

UNIT_TESTS:=	${.PARSEDIR}
.PATH: ${UNIT_TESTS}

.if ${USE_ABSOLUTE_TESTNAMES:Uno} == yes
OUTFILES=	${TESTS:@test@${.CURDIR:tA}/${test}.out@}
.else
OUTFILES=	${TESTS:=.out}
.endif

all: ${OUTFILES}

CLEANFILES=		*.rawout *.out *.status *.tmp *.core *.tmp
CLEANFILES+=		obj*.[och] lib*.a	# posix1.mk
CLEANFILES+=		issue* .[ab]*		# suffixes.mk
CLEANDIRS=		dir dummy		# posix1.mk

clean:
	rm -f ${CLEANFILES}
	rm -rf ${CLEANDIRS}

TEST_MAKE?=	${.MAKE}
TOOL_SED?=	sed

# ensure consistent results from sort(1)
LC_ALL=		C
LANG=		C
.export LANG LC_ALL

MAKE_TEST_ENV?=	MALLOC_OPTIONS="JA"	# for jemalloc

# Each test is run in a sub-make, to keep the tests for interfering with
# each other, and because they use different environment variables and
# command line options.
.SUFFIXES: .mk .rawout .out
.mk.rawout:
	@${_MKMSG_TEST:Uecho '#      test '} ${.PREFIX}
	@set -eu; \
	cd ${.OBJDIR}; \
	env -i PATH="$$PATH" ${MAKE_TEST_ENV} ${ENV.${.PREFIX:T}} \
	  ${TEST_MAKE} \
	    -r -C ${.CURDIR} -f ${.IMPSRC} \
	    ${FLAGS.${.PREFIX:T}:U-k} \
	    > ${.TARGET}.tmp 2>&1 \
	&& status=$$? || status=$$?; \
	echo $$status > ${.TARGET:R}.status
	@mv ${.TARGET}.tmp ${.TARGET}

# Postprocess the test output so that the results can be compared.
#
# always pretend .MAKE was called 'make'
_SED_CMDS+=	-e 's,^${TEST_MAKE:T:S,.,\\.,g}[][0-9]*:,make:,'
_SED_CMDS+=	-e 's,${TEST_MAKE:S,.,\\.,g},make,'
# replace anything after 'stopped in' with unit-tests
_SED_CMDS+=	-e '/stopped/s, /.*, unit-tests,'
# strip ${.CURDIR}/ from the output
_SED_CMDS+=	-e 's,${.CURDIR:S,.,\\.,g}/,,g'
_SED_CMDS+=	-e 's,${UNIT_TESTS:S,.,\\.,g}/,,g'

.rawout.out:
	@${TOOL_SED} ${_SED_CMDS} ${SED_CMDS.${.PREFIX:T}} \
	  < ${.IMPSRC} > ${.TARGET}.tmp1
	@${POSTPROC.${.PREFIX:T}:Ucat} < ${.TARGET}.tmp1 > ${.TARGET}.tmp2
	@rm ${.TARGET}.tmp1
	@echo "exit status `cat ${.TARGET:R}.status`" >> ${.TARGET}.tmp2
	@mv ${.TARGET}.tmp2 ${.TARGET}

# Compare all output files
test:	${OUTFILES} .PHONY
	@failed= ; \
	for test in ${TESTS}; do \
	  diff -u ${UNIT_TESTS}/$${test}.exp $${test}.out \
	  || failed="$${failed}$${failed:+ }$${test}" ; \
	done ; \
	if [ -n "$${failed}" ]; then \
	  echo "Failed tests: $${failed}" ; false ; \
	else \
	  echo "All tests passed" ; \
	fi

accept:
	@for test in ${TESTS}; do \
	  cmp -s ${UNIT_TESTS}/$${test}.exp $${test}.out \
	  || { echo "Replacing $${test}.exp" ; \
	       cp $${test}.out ${UNIT_TESTS}/$${test}.exp ; } \
	done

# Note: only works for adding tests.
# To remove a test, the $$mi file must be edited manually.
sync-mi:
	@set -eu;							\
	cd "${MAKEFILE:tA:H}/../../..";					\
	mi="distrib/sets/lists/tests/mi";				\
	cvs update "$$mi";						\
	testsdir="usr.bin/make/unit-tests";				\
	fmt="./usr/tests/$$testsdir/%s\ttests-usr.bin-tests\tcompattestfile,atf\\n"; \
	(cd "$$testsdir" && ls *.exp *.mk) | xargs printf "$$fmt" >> "$$mi"; \
	distrib/sets/fmt-list "$$mi";					\
	cvs diff "$$mi" || true

.if exists(${TEST_MAKE})
${TESTS:=.rawout}: ${TEST_MAKE} ${.PARSEDIR}/Makefile
.endif

.-include <bsd.obj.mk>
