#!/bin/sh

basepath=~/public_html/generator
targetpath=$basepath/target
outputpath=$basepath/output
sourcepath=~/sites/PhilSci

mkdir $basepath
mkdir $targetpath
mkdir $outputpath
cp -r $sourcepath/css/ $targetpath
cp -r $sourcepath/images/ $targetpath
cp -r $sourcepath/javascript/ $targetpath
cp -r $sourcepath/files/ $targetpath
cp -r $sourcepath/journal/ $targetpath
cp -r $sourcepath/psawomenscaucus $targetpath
cp -r $sourcepath/archives $targetpath

#rm generator.tgz
#
#tar czf generator.tgz generator/
#
#scp generator.tgz hallofkv@hallofkvasir.org:~/www/
#
#rm -r generator/target/css
#rm -r generator/target/images
#rm -r generator/target/javascript
#rm -r generator/target/files
