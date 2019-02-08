src = $(wildcard *.c)
obj = $(src:.c=.o)

objects = X32Reaper X32Tap

all: $(objects)

$(objects): %: %.c 
	gcc -o $@ $^ X32lib/X32lib.o -lm

.PHONY: clean

clean: 
	rm -f $(obj) $(objects)

