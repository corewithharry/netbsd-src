# $NetBSD: cond-func.mk,v 1.3 2020/09/27 21:35:16 rillig Exp $
#
# Tests for those parts of the functions in .if conditions that are common
# among several functions.
#
# The below test uses the function defined(...) since it has no side-effects,
# the other functions (except empty(...)) would work equally well.

DEF=			defined
${:UA B}=		variable name with spaces
${:UVAR(value)}=	variable name with parentheses
${:UVAR{value}}=	variable name with braces

.if !defined(DEF)
.error
.endif

# Horizontal whitespace (space tab) after the opening parenthesis is ignored.
.if !defined( 	DEF)
.error
.endif

# Horizontal whitespace (space tab) before the closing parenthesis is ignored.
.if !defined(DEF 	)
.error
.endif

# The argument of a function must not directly contain whitespace.
.if !defined(A B)
.error
.endif

# If necessary, the whitespace can be generated by a variable expression.
.if !defined(${:UA B})
.error
.endif

# Characters that could be mistaken for operators must not appear directly
# in a function argument.  As with whitespace, these can be generated
# indirectly.
#
# It's not entirely clear why these characters are forbidden.
# The most plausible reason seems to be typo detection.
.if !defined(A&B)
.error
.endif
.if !defined(A|B)
.error
.endif

# Even parentheses may appear in variable names.
# They must be balanced though.
.if !defined(VAR(value))
.error
.endif

# Braces do not have any special meaning when parsing arguments.
.if !defined(VAR{value})
.error
.endif

# There may be spaces around the operators and parentheses, and even
# inside the parentheses.  The spaces inside the parentheses are not
# allowed for the empty() function (see cond-func-empty.mk), therefore
# they are typically omitted for the other functions as well.
.if ! defined ( DEF )
.  error
.endif

all:
	@:;
