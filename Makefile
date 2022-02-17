.PHONY=all clean

# Force make to run targets sequentially
.NOTPARALLEL:

# Directory containing this makefile. Includes trailing /
MAKEFILE_PATH=$(dir $(realpath $(firstword $(MAKEFILE_LIST))))

# Set default shell as bash
SHELL:=/bin/bash

all: python2-test python3-test

deps:
	$(info Run setup)
	./setup.bash

python2-test:
	$(info ### Test with Python2)
	python2 ./mem-test.py

python3-test:
	$(info ### Test with Python3)
	python3 ./mem-test.py
