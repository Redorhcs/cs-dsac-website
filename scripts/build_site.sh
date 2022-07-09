#!/bin/bash
cd ..
git pull
sh scripts/fix_yale_file.sh
bundle exec jekyll serve
cp -r _site/* /home/httpd/html/zoo/dsac
echo "done"
