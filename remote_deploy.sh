#!/bin/sh

basepath=$HOME/public_html/generator
targetpath=$basepath/target
sourcepath=$HOME/sites/PhilSci

if [ ! -d $basepath ]
then
	mkdir $basepath
fi

if [ ! -d $targetpath ]
then
	mkdir $targetpath
fi

cp -r $sourcepath/css/ $targetpath
cp -r $sourcepath/images/ $targetpath
cp -r $sourcepath/javascript/ $targetpath
cp -r $sourcepath/files/ $targetpath
cp -r $sourcepath/journal/ $targetpath
cp -r $sourcepath/psawomenscaucus $targetpath
cp -r $sourcepath/archives $targetpath
