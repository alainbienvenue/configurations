#!/bin/bash

projects=$(find . -maxdepth 2 -type d -name .git | xargs -L 1 -I name dirname name)

for i in ${projects[@]}; do
   cd $i
   git remote update &
   cd ..
done
wait

for i in ${projects[@]}; do
   cd $i
   echo -e "\033[0;32m--------------------------------------------------"
   echo -e "\033[0;97m $i \033[0m"
   git status -sb
   git stash list
   cd ..
done
