#!/usr/bin/env bash

# WARNING: this package is a controlled file generated from a template
# do not try to make changes in here, they will be overwritten

#
# turn this on to debug script
# set -x

#
# abort on error
# https://sipb.mit.edu/doc/safe-shell/
set -euf -o pipefail

# import other vars from the package config
PACKAGE_ROOT=.
PACKAGE_CONFIG=$PACKAGE_ROOT/package-config.sh
source $PACKAGE_CONFIG

SCRIPT_START=`date +%s`

echo ""
echo "[INFO] starting package build for $PACKAGE_NAME";

if [ -z "$PACKAGE_SRC" ]; then echo "[ERROR] PACKAGE_SRC var is not set"; exit 1; fi
if [ -z "$PACKAGE_DIST" ]; then echo "[ERROR] PACKAGE_DIST var is not set"; exit 1; fi
if [ -z "$PACKAGE_SCRIPTS" ]; then echo "[ERROR] PACKAGE_SCRIPTS var is not set"; exit 1; fi

GATSBY_OUTPUT_DIR=$PACKAGE_ROOT/public

echo "[info] starting gatsby dev server"
pnpx gatsby develop

# rm -rf $PACKAGE_DIST
# mv $GATSBY_OUTPUT_DIR $PACKAGE_DIST

# SCRIPT_END=`date +%s`
# SCRIPT_RUNTIME=$((SCRIPT_END-SCRIPT_START))
# echo "[INFO] build for $PACKAGE_NAME finished in ${SCRIPT_RUNTIME}s"
# echo ""
