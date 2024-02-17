 ## @file makefile
 ## @author Jacqueline Bybee
 ## @date 2024-01-16
 ## @brief makefile for the make toolkit
 ## 
 ## makes a more effiecent way to run mutliple files at a time
 ##


CC=g++
CFLAGS=-g -Wall -Wextra
##compiles while outputing any errors and/or warnings

employee: Employee.o main.o Officer.o Supervisor.o
	$(CC) $(CFLAGS) -o employee Employee.o main.o Officer.o Supervisor.o

Employee.o: Employee.cpp Employee.h 
	$(CC) $(CFLAGS) -c Employee.cpp
## Employee object
main.o: main.cpp
	$(CC) $(CFLAGS) -c main.cpp
## Main object
Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp
## Officer object
Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp
## Supervisor object
clean:
	rm -f *.o employee *~
## Removes all objects and autosaves. forces so that an error doesnt appear if a ~ file doesnt exist.
