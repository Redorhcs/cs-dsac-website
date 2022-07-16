#!/bin/bash
cd ..
git pull
cd scripts
sh fix_yale_file.sh
cd ..
bundle exec jekyll serve
cp -r _site/* /home/httpd/html/zoo/dsac
echo "done"
