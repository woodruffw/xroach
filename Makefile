PROG = xroach
OBJS = xroach.o

CFLAGS = -std=c99
CPPFLAGS = -Ibitmaps
LDFLAGS = -lX11 -lm

all: $(OBJS)
	$(CC) $(CFLAGS) $(CPPFLAGS) $(OBJS) -o $(PROG) $(LDFLAGS)

.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJS) $(PROG)
