#!/bin/sh
BASEDIR=$(dirname "$0")
dpkg-deb --build $BASEDIR
