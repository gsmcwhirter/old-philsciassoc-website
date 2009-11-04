#!/bin/sh

#cd www
#rm -rf generator/
#tar xzf generator.tgz
cd ~/sites/PhilSci
git pull
./remote_deploy.sh
perl -pi -w -e 's!^define\("GENERATOR_ENVIRONMENT","local"\)!define\("GENERATOR_ENVIRONMENT","development"\)!g' generator/generator.php
/usr/bin/env php generator/generator.php testing
