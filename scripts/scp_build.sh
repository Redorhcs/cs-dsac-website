#!/bin/bash
cd ..
git pull
cd scripts
sh fix_yale_file.sh
echo "config file rebuilt"
cd ..
echo "building"
jekyll build
echo "hostname check"
hostname >> hst.txt
if grep -Fxq "yale" hst.txt
then
	echo "yale server detected, locally copying"
	cp -r _site/* /home/httpd/html/zoo/dsac
else
	echo "remote build detected, scp'ing"
	scp -r _site/* rts49@node.zoo.cs.yale.edu:/home/httpd/html/zoo/dsac
fi
echo "done"
