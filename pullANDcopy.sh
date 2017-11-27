#!/bin/bash
# Simple script that pulls data from git and copies it to the project directory 

echo "git pull"
echo ""
git pull 
echo ""

echo "remove content of ../project "
rm -r ../project/* 
cp -r project/* ../project/
echo "copied project/* into ../project/"
echo ""

echo "remove content of ../prototype"
rm -r ../prototype/* 
cp -r prototype/* ../prototype/
echo "copied prototype/* into ../prototype/"
echo ""

echo "remove content of ../finalSystem"
rm -r ../finalSystem/* 
cp -r finalSystem/* ../finalSystem/
echo "copied finalSystem/* into ../finalSystem/"
echo ""
echo "DONE"
