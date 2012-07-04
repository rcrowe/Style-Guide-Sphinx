# Vocab Express Doc Makefile
#
# Typical usage:
#    make clean && make build

# You can set these variables from the command line.
TYPE = dirhtml


.PHONY: help clean build

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  clean      Clear out existing built documentation"
	@echo "  build      Build documentation"

clean:
	cd style-guide && make clean && cd ../

build:
	cd style-guide && make $(TYPE) && cd ../
