src = $(wildcard *.c)
obj = $(src:.c=.o)

LDFLAGS=
CFLAGS=-O0 -g3 -Wall -c -fmessage-length=0

%.o: %.c 
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

X32lib.o: $(obj)
	$(AR) rcs $@ $^



.PHONY: clean

clean: 
	rm -f $(obj) X32lib.o

