#!/bin/sh

#BASEDIR=$(dirname "$0")
#echo "$BASEDIR"
#cd $BASEDIR
#
#for ARG in "$@"; do
#	case "$ARG" in
#		--bin=*)
#			ARG_PATH=${ARG#*=}
#			;;
#	esac
#done

make -f Makefile_PARburn clean
make -f Makefile_PARburn

