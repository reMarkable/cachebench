CFILES=$(wildcard *.c)
ASMFILES=$(wildcard *.S)
OBJECTS=$(patsubst %.c, %.o, $(CFILES)) $(patsubst %.S, %.o, $(ASMFILES))
EXECUTABLE=cachebench

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

clean:
	rm -f $(EXECUTABLE) $(OBJECTS)
