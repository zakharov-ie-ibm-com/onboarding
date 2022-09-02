#!/bin/bash

cloudctl=$HOME/bin/cloudctl
ctl=/usr/local/bin/cloudctl

#take the latest version 
casefile=$(find . -name ibm-tnc-orchest*| sort | tail -n 1)
sudo cp $cloudctl $ctl

out=$HOME/case/outputdir

mkdir -p $out

$ctl case save --case $casefile --outputdir $out --tolerance 1 

tar xvfz $casefile
