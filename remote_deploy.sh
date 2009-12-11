#!/bin/sh

basepath=~/public_html/generator
targetpath=$basepath/target
sourcepath=~/sites/PhilSci

mkdir $basepath
mkdir $targetpath
cp -r $sourcepath/css/ $targetpath
cp -r $sourcepath/images/ $targetpath
cp -r $sourcepath/javascript/ $targetpath
cp -r $sourcepath/files/ $targetpath
cp -r $sourcepath/journal/ $targetpath
cp -r $sourcepath/psawomenscaucus $targetpath
cp -r $sourcepath/archives $targetpath
