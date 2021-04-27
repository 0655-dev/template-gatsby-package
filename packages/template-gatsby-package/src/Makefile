# WARNING: this package is a controlled file generated from a template
# do not try to make changes in here, they will be overwritten

ROOT=.
SCRIPTS=./package-scripts

##
##
##	MAKEFILE COMMANDS
##	-----------------
##

default: help

##	make help 	- display the help
##
help:
	@ grep "^##.*" ./Makefile


##
##
##	SETUP
##	-----------------
##

##	make setup 	- setup package
##
setup: install init

##	make install 	- install dependencies for the package
##
install:
	@ $(SCRIPTS)/package-install.sh

##	make init 	- init package from template
##
init: install
	@ $(ROOT)/package-init.sh


##
##
##	BUILD
##	-----------------
##

##	make build 	- build the src and the docs
##
build: setup
	@ $(SCRIPTS)/package-build.sh

##	make clean 	- remove build artifacts from package
##
clean:
	@ $(SCRIPTS)/package-clean.sh

##	make develop 	- run the gatsby dev server
##
develop:
	@ $(SCRIPTS)/package-develop.sh


##
##
##	TEST
##	-----------------
##

##	make test-typescript 	- run the typescript test cases
##
test-typescript: setup
	@ $(SCRIPTS)/package-test-typescript.sh

##	make test-eslint 	- run the eslint test cases
##
test-eslint: setup
	@ $(SCRIPTS)/package-test-eslint.sh

##	make test 	- run all tests
##
test: \
	test-typescript \
	test-eslint

##
##
##	PUBLISH
##	-----------------
##

##	make publish-check 	- dry run publish - show what files will be published
##
publish-check: setup build
	@ $(SCRIPTS)/package-check-publish.sh

##	make publish 	- publish the package
##
publish: setup build
	@ $(SCRIPTS)/package-publish.sh

##
