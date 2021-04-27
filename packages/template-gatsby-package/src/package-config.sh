#!/usr/bin/env bash

# WARNING: this package is a controlled file generated from a template
# do not try to make changes in here, they will be overwritten

# if you want to make changes to the package config, edit the config extras file instead

# the current directory is assumed to be the package root by all scripts
PACKAGE_ROOT=.
PACKAGE_NAME=package
PACKAGE_CONFIG=$PACKAGE_ROOT/package-config.sh
PACKAGE_EXTRAS=$PACKAGE_ROOT/package-config.extras.sh


PACKAGE_SRC=$PACKAGE_ROOT/src
PACKAGE_DIST=$PACKAGE_ROOT/dist

PACKAGE_SCRIPTS=$PACKAGE_ROOT/package-scripts
PACKAGE_SOURCE_MAP=$PACKAGE_ROOT/.sourcemap


PACKAGE_USE_ESLINT=true	# this flag is used to enable or disable eslint testing
PACKAGE_ESLINTRC=$PACKAGE_ROOT/.eslintrc.js

source $PACKAGE_EXTRAS