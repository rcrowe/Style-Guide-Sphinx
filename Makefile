# Vocab Express Doc Makefile
#
# Typical usage:
#    make clean && make build

# You can set these variables from the command line.
TYPE = dirhtml
REPO = master

.PHONY: help clean build

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  clean      Clear out existing built documentation"
	@echo "  build      Build documentation"
	@echo "  update     Update the GIT repo"

clean:
	cd index && make clean && cd ../
	cd style-guide && make clean && cd ../

build:
	cd index && make $(TYPE) && cd ../
	cd style-guide && make $(TYPE) && cd ../

update:
	git reset --hard HEAD
	git pull origin $(REPO)
