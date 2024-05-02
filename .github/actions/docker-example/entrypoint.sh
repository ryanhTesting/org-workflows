#!/bin/sh -l

echo "Hello $1"
time=$(date)
ls -al
echo "time=$time" >> $GITHUB_OUTPUT

