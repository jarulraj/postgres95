#-------------------------------------------------------------------------
#
# Makefile.inc--
#    Makefile for bin/psql
#
# Copyright (c) 1994, Regents of the University of California
#
#
# IDENTIFICATION
#    $Header: /usr/local/cvsroot/postgres95/src/bin/psql/Makefile,v 1.4.2.3 1996/08/20 04:02:01 scrappy Exp $
#
#-------------------------------------------------------------------------

PROG= psql

MKDIR=	../../mk
include $(MKDIR)/postgres.mk
include ../Makefile.global

#
#USE_READLINE is set in Makefile.global
# 

ifeq ($(USE_READLINE), true)
   CFLAGS += $(READLINE_INCDIR) $(HISTORY_INCDIR)

# if you are using an older readline that uses #include "readline.h" instead
# of #include <readline/readline.h>,
# uncomment this
# CFLAGS += -DOLD_READLINE

   LIBCURSES=	-lcurses 
   LD_ADD += $(READLINE_LIB) $(HISTORY_LIB) $(LIBCURSES)

   ifeq ($(PORTNAME), ultrix4)
   LD_ADD += -ltermcap
   else
   ifeq ($(PORTNAME), sparc)
   LD_ADD += -ltermcap
   else
   ifeq ($(PORTNAME), linux)
   LD_ADD += -ltermcap
   else
   ifeq ($(PORTNAME), next)
   LD_ADD += -ltermcap
   else
   ifeq ($(PORTNAME), bsdi)
   LD_ADD += -ltermcap
   else
   ifeq ($(PORTNAME), bsdi_2_1)
   LD_ADD += -ltermcap
   else
   ifeq ($(PORTNAME), BSD44_derived)
   LD_ADD += -ltermcap
   endif
   endif
   endif
   endif
   endif
   endif
   endif
else
   CFLAGS += -DNOREADLINE
endif

SRCS= psql.c stringutils.c 

ifneq ($(USE_READLINE), true)
SRCS+= rlstubs.c
endif

include $(MKDIR)/postgres.prog.mk




