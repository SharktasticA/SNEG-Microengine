CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

SNEG-Microengine: main.cpp
	g++ $(CFLAGS) -o SNEG-Microengine main.cpp $(LDFLAGS)

.PHONY: test clean

test: SNEG-Microengine
	./SNEG-Microengine

clean:
	rm -f SNEG-Microengine