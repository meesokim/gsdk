# Generated automatically from Makefile.in by configure.
#
# S51 sim.src/Makefile
#
# (c) Drotos Daniel, Talker Bt. 1997,99
#

STARTYEAR	= 1997

SHELL		= /bin/sh
CXX		= g++
CPP		= @CPP@
CXXCPP		= g++ -E
RANLIB		= ranlib
INSTALL		= /usr/bin/install -c

PRJDIR		= ..

DEFS            = $(subs -DHAVE_CONFIG_H,,-DHAVE_CONFIG_H)
CPPFLAGS        =  -I. -I$(PRJDIR) \
		  -I$(PRJDIR)/cmd.src -I$(PRJDIR)/gui.src
CFLAGS          =  -Wall
CXXFLAGS        =  -Wall
M_OR_MM         = -MM

prefix          = /mnt/c/retro/msys64/home/anson/gbdk2/gbdk/build/Linux_x86_64/gbdk
exec_prefix     = ${prefix}
bindir          = ${exec_prefix}/bin
libdir          = ${exec_prefix}/lib
datadir         = ${prefix}/share
includedir      = ${prefix}/include
mandir          = ${prefix}/man
man1dir         = $(mandir)/man1
man2dir         = $(mandir)/man2
infodir         = ${prefix}/info
srcdir          = .

OBJECTS         = app.o sim.o itsrc.o brk.o option.o arg.o stack.o \
		  guiobj.o uc.o hw.o mem.o


# Compiling entire program or any subproject
# ------------------------------------------
all: checkconf sim_lib

test_mem_speed: $(PRJDIR)/libsim.a $(PRJDIR)/libutil.a test_mem_speed.o
	$(CC) -o $@ test_mem_speed.o -L$(PRJDIR) -lsim -lutil

sim.src: all


# Compiling and installing everything and runing test
# ---------------------------------------------------
install: all installdirs


# Deleting all the installed files
# --------------------------------
uninstall:


# Performing self-test
# --------------------
check:


# Performing installation test
# ----------------------------
installcheck:


# Creating installation directories
# ---------------------------------
installdirs:


test: test_mem_speed

# Creating dependencies
# ---------------------
dep: main.dep

Makefile.dep: *.cc *.h
	$(CXXCPP) $(CPPFLAGS) $(M_OR_MM) *.cc >Makefile.dep

include Makefile.dep
include clean.mk

#parser.cc: parser.y

#plex.cc: plex.l

# My rules
# --------

sim_lib: $(PRJDIR)/libsim.a

$(PRJDIR)/libsim.a: $(OBJECTS)
	$(AR) -rcu $*.a $(OBJECTS)
	$(RANLIB) $*.a

.cc.o:
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -c $< -o $@

.y.cc:
	rm -f $*.cc $*.h
	$(YACC) -d $<
	mv y.tab.c $*.cc
	mv y.tab.h $*.h

.l.cc:
	rm -f $*.cc
	$(LEX) -t $< >$*.cc


# Remaking configuration
# ----------------------
checkconf:
	@if [ -f $(PRJDIR)/devel ]; then\
	  $(MAKE) -f conf.mk srcdir="$(srcdir)" PRJDIR="$(PRJDIR)" freshconf;\
	fi

# End of sim.src/Makefile
