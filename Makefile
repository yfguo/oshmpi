LIBRARY = libshmem.a
HEADERS = shmem.h 
SOURCES = shmem.c 
OBJECTS = $(SOURCES:.c=.o)
TESTS   = hello.x etext.x
MACCRAP = $(TESTS:.x=.x.dSYM)

CC      = mpicc
CFLAGS  = -g -O0 -std=c99 -Wall -I.
LDFLAGS = $(CFLAGS) $(LIBRARY)

all: $(LIBRARY) $(TESTS)

$(LIBRARY): $(OBJECTS) 
	$(AR) $(ARFLAGS) $(LIBRARY) $(OBJECTS)

# Makefile dependency ensures code is recompiled when flags change
%.x: %.c $(LIBRARY) shmem.h Makefile
	$(CC) $(CFLAGS)    $< $(LDFLAGS) -o $@

# Makefile dependency ensures code is recompiled when flags change
%.o: %.c %.h Makefile
	$(CC) $(CFLAGS) -c $<            -o $@

clean:
	-rm -f  $(OBJECTS)
	-rm -f  $(TESTS)
	-rm -fr $(MACCRAP)

realclean: clean
	-rm -f  $(LIBRARY)

