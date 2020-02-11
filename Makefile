.PHONY: all clean
.PHONY: build run

all: build run

build:
	docker build -t vespucci .

run:
	docker run --rm -i -t --name vespucci vespucci

clean:
	docker kill vespucci
	docker rmi vespucci
