#!/bin/sh -l

echo "Hello $1"
time=$(date)
ls -al
cat /text.txt
echo "time=$time" >> $GITHUB_OUTPUT

