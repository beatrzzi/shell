#!/bin/sh 
set -ax
rundir=/...
dia=1
mm=8
mm=0$mm
yyyy=2016
if [ $dia -lt 10 ] ; then
dia=0$dia
fi
while [ $dia -le 31 ]; do
	mkdir $rundir/$yyyy$mm$dia || exit 8
	dia=`expr $dia \+ 1`
	if [ $dia -lt 10 ] ; then
	dia=0$dia
	fi
done
exit 0
