#!/bin/bash
base_dir=$PWD
for f in ./install/*.sh; do 
cd $base_dir
. $f
done;
