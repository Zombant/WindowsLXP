build:
	g++ -o window_manager.o window_manager.cpp frame.cpp bar.cpp image.cpp main.cpp -lX11 -lImlib2

run:
	make build
	Xephyr :100 -ac -br -screen 800x600 ./window_manager.o

clean:
	rm window_manager.o
