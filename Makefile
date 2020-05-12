include base.mk

#-------------------------------------------------------------------------------
#
# Custom Overrides
#
# https://stackoverflow.com/a/49804748

#PROJECT = project
#APP = app
.DEFAULT_GOAL=commit-push
#install: pip-install
#serve: django-serve

# Makefile generated by imake - do not edit!

 EXTRA_INCLUDES = -I./fishmaps -I/opt/X11/include
LOCAL_LIBRARIES = $(XLIB)
        DEPLIBS = $(DEPXLIB)
  SYS_LIBRARIES = -lImlib2 -lm
   MANSRCSUFFIX = 1x

           SRCS = xfish.c medcut.c
           OBJS = xfish.o medcut.o


# ComplexProgramTarget(xfishtank)

xfishy.h: makeh
	./makeh fishmaps/?*.h > xfishy.h

xfish.o: xfishy.h

xfish:
	gcc -c $(SRCS) $(EXTRA_INCLUDES)
	gcc $(OBJS) $(SYS_LIBRARIES) $(LOCAL_LIBRARIES) -o xfish

install:: install.man

hello:
	gcc hello.c -o hello

x: xfish

clean: 
	-rm xfish hello *.o
