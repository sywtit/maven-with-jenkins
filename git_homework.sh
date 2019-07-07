#!/bin/sh

mkdir git_homework_201720768
cd git_homework_201720768
git init

echo "start the assignment in master branch and the commit message is 1" >> index
git add index
git commit -m "1"

git checkout -b test
echo "make the test branch and the commit message is 5" >> index
git add index
git commit -m "5"

echo "in test branch second insert and the commit ms is 6" >> index
git add index
git commit -m "6"

git checkout -b urgent-fix
echo "make the urgent-fix branch and the commit message is 9" >> index
git add index
git commit -m "9"

echo "in urgent-fix branch second insert and the commit ms is 10" >> index
git add index
git commit -m "10"

git checkout test
echo "in test branch third insert and the commit ms is 7" >> index
git add index
git commit -m "7"

git merge urgent-fix
sed '/^<<<\|^===\|^>>>/d' index > tmp
cp tmp index
git add index
git commit -m "8"

git checkout master
echo "in master branch second insert and commit ms is 2" >> index
git add index
git commit -m "2"

echo "in master branch third insert and commit ms is 3" >> index
git add index
git commit -m "3"

git merge test
sed '/^<<<\|^===\|^>>>/d' index > tmp
cp tmp index
git add index
git commit -m "4"

git log --decorate --oneline --graph

