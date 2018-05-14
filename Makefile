include /usr/local/etc/PcapPlusPlus.mk

all:
	g++ $(PCAPPP_INCLUDES) -g -std=c++11 -o main.o -c main.cpp
	g++ $(PCAPPP_LIBS_DIR) -g -static-libstdc++ -o qmetadataburst main.o $(PCAPPP_LIBS)

clean:
	rm main.o
	rm qmetadataburst
