allFiles= Makefile commands.c handler.c main.c utils.c commands.h handler.h utils.h mMyclock.sh myclock.sh

starter:  commands.c handler.c main.c utils.c commands.h handler.h utils.h
	gcc -Wall commands.c handler.c main.c utils.c -o sh-clone

run: sh-clone
	sh-clone

clean:
	rm *~ out.* *.o sh-clone
