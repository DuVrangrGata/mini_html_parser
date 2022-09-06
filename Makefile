.PHONY: clean builddir


build/example.o: example/src/example.cpp
	g++ -c -Iinclude example/src/example.cpp -o build/example.o

build/test.o: example/src/test.cpp
	g++ -c -Iinclude example/src/test.cpp -o build/test.o

build/example: build/example.o build/test.o
	g++ -o build/example build/example.o build/test.o

clean:
	rm -r -f build

builddir: 
	mkdir -p build
