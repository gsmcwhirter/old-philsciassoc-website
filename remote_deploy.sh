#!/bin/sh

mkdir generator/target/
mkdir generator/output/
cp -r css/ generator/target/
cp -r images/ generator/target/
cp -r javascript/ generator/target/
cp -r files/ generator/target/

rm generator.tgz

tar czf generator.tgz generator/

scp generator.tgz hallofkv@hallofkvasir.org:~/www/

#rm -r generator/target/css
#rm -r generator/target/images
#rm -r generator/target/javascript
#rm -r generator/target/files
