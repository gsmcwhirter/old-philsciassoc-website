#!/bin/sh

mkdir generator/target/
mkdir generator/output/

cp -r css/ generator/target/
cp -r images/ generator/target/
cp -r javascript/ generator/target/
cp -r files/ generator/target/
cp -r journal generator/target/
cp -r psawomenscaucus generator/target/
cp -r archives generator/target/

sudo rm -r /var/www/generator

sudo cp -r generator/ /var/www/
sudo chmod -R 0777 /var/www/generator/output
sudo chmod -R 0777 /var/www/generator/target

rm -r generator/target/css
rm -r generator/target/images
rm -r generator/target/javascript
rm -r generator/target/files
