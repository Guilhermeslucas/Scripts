#!/bin/bash

threads=('powergraph.py' 'graph_csv.py')
size=$(echo ${#threads[@]})
size=$(echo "$size-1" | bc)

for i in $(seq 0 $size); do
    for pid in $(pgrep -f ${threads[i]}); do
        kill $pid
    done
done
