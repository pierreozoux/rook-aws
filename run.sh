#!/bin/bash -eux

#fio ./eval.fio --minimal --output-format=terse --output=results.csv
fio ./eval.fio --minimal
fio2gnuplot -t rook-bw -b -g -p '*_bw*'
fio2gnuplot -t rook-iops -i -g -p '*_iops*'
python -m SimpleHTTPServer 8000
