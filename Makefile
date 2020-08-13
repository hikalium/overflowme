
.FORCE : 

CFLAGS=-Wall -Wpedantic -fno-stack-protector -g -O0

e4 : e4.c .FORCE
	$(CC) $(CFLAGS) -o $@ e4.c
	
e16 : e16.c .FORCE
	$(CC) $(CFLAGS) -o $@ e16.c

overflowme%.bin : overflowme.c Makefile
	$(CC) $(CFLAGS) -D "OVERFLOWME_SIZE=$(subst .bin,,$(subst overflowme,,$@))" -o $@ overflowme.c

run: .FORCE
	uname -a
	${CC} --version
	./genrun.sh
