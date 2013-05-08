all: helloWorld

helloWorld.o: helloWorld.cc
	g++ -c helloWorld.cc

helloWorld: helloWorld.o
	g++ helloWorld.o -o helloWorld

clean:
	rm *.o *.h  *.cc~ helloWorld

refresh:
	touch *.cc

reClean: refresh clean