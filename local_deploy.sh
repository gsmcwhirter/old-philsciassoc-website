#!/bin/sh

cp -r css/ generator/target/
cp -r images/ generator/target/
cp -r javascript/ generator/target/
cp -r files/ generator/target/

sudo rm -r /var/www/generator

sudo cp -r generator/ /var/www/
sudo chmod -R 0777 /var/www/generator/output
sudo chmod -R 0777 /var/www/generator/target

rm -r generator/target/css
rm -r generator/target/images
rm -r generator/target/javascript
rm -r generator/target/files
