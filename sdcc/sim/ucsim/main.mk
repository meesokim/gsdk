#
# S51 main.mk
#
# (c) Drotos Daniel, Talker Bt. 1997,99
#

STARTYEAR	= 1997

SHELL		= /bin/sh
CXX		= g++
#CPP		= @CPP@
CXXCPP		= g++ -E
RANLIB		= ranlib
INSTALL		= /usr/bin/install -c

PRJDIR		= .
SIMDIR		= sim.src

DEFS            = $(subs -DHAVE_CONFIG_H,,-DHAVE_CONFIG_H)
# FIXME: -Imcs51 must be removed!!!
CPPFLAGS        =  -I$(PRJDIR) -I$(PRJDIR)/$(SIMDIR)
CFLAGS          =  -I$(PRJDIR) -Wall
CXXFLAGS        =  -I$(PRJDIR) -Wall
M_OR_MM         = -MM

LIB_LIST	= sim cmd sim util
UCSIM_LIBS	= $(patsubst %,-l%,$(LIB_LIST))
UCSIM_LIB_FILES	= $(patsubst %,lib%.a,$(LIB_LIST))
LIBS		= -lnsl 

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

OBJECTS         = pobj.o globals.o utils.o
SOURCES		= $(patsubst %.o,%.cc,$(OBJECTS))
UCSIM_OBJECTS	= ucsim.o
UCSIM_SOURCES	= $(patsubst %.o,%.cc,$(UCSIM_OBJECTS))
ALL_SOURCES	= $(SOURCES) $(UCSIM_SOURCES)


# Compiling entire program or any subproject
# ------------------------------------------
all: checkconf libs

libs: libutil.a

main_app: checkconf ucsim_app

# Compiling and installing everything and runing test
# ---------------------------------------------------
install: all installdirs


# Deleting all the installed files
# --------------------------------
uninstall:
	rm -f $(bindir)/s51
	rm -f $(bindir)/savr
	rm -f $(bindir)/serialview
	rm -f $(bindir)/portmon


# Performing self-test
# --------------------
check:


# Performing installation test
# ----------------------------
installcheck:


# Creating installation directories
# ---------------------------------
installdirs:


# Creating dependencies
# ---------------------
dep: main.dep

main.dep: $(ALL_SOURCES) *.h
	$(CXXCPP) $(CPPFLAGS) $(M_OR_MM) $(ALL_SOURCES) >main.dep

include main.dep
include clean.mk

#parser.cc: parser.y

#plex.cc: plex.l

# My rules
# --------
libutil.a: $(OBJECTS)
	$(AR) -rcu $*.a $(OBJECTS)
	$(RANLIB) $*.a

ucsim_app: libs ucsim

ucsim: $(UCSIM_OBJECTS) $(UCSIM_LIB_FILES)
	$(CXX) $(CXXFLAGS) -o $@ $< -L$(PRJDIR) $(UCSIM_LIBS) $(LIBS)

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
	@if [ -f devel ]; then\
	  echo "MAIN.MK checkconf";\
	  $(MAKE) -f conf.mk srcdir="$(srcdir)" freshconf;\
	fi

# End of main_in.mk/main.mk
