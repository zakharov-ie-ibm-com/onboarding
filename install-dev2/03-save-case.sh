#!/bin/bash

cloudctl=$HOME/bin/cloudctl
ctl=/usr/local/bin/cloudctl

casefile=$(find . -name ibm-tnc-orchest*| tail -n 1)
sudo cp $cloudctl $ctl
sudo $ctl case save --case $casefile --outputdir /root/case/outputdir --tolerance 1 

tar xvfz $casefile
