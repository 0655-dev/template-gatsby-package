#!/usr/bin/env bash

#
# abort on error
set -e

rm -rf ./dist && mkdir ./dist;

cp ./package-bootstrap.sh ./dist/;

(cd ./dist && ./package-bootstrap.sh && CI='' make test);

rm -rf ./dist;