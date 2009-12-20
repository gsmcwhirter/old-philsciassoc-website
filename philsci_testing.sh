#!/bin/sh

cd $HOME/sites/PhilSci
git checkout generator/generator.php
git checkout remote_deploy.sh
git pull
perl -pi -w -e 's!^basepath=\$HOME/public_html/generator!basepath=\$HOME/domains/philsci.org/web/public!g' remote_deploy.sh
perl -pi -w -e 's!^targetpath=\$basepath/target!targetpath=\$basepath/staging!g' remote_deploy.sh
perl -pi -w -e 's!^sourcepath=\$HOME/sites/PhilSci!sourcepath=\$HOME/dev/PhilSci!g' remote_deploy.sh
./remote_deploy.sh
perl -pi -w -e 's!^define\("GENERATOR_ENVIRONMENT","local"\)!define\("GENERATOR_ENVIRONMENT","development"\)!g' generator/generator.php
/usr/bin/env php generator/generator.php testing
