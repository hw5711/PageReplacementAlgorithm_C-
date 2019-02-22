#!/bin/bash

rm simdata.txt

for ((i = 1; i < 31; i++)); do
   g++ main.cpp -o main
    ./main $i >simdata.txt

   cp simdata.txt ./data/simdata-$i.txt
   echo " sim-$i.txt finished "

done

echo " test finished "
