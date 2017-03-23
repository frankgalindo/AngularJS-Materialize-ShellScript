#!/bin/bash

now="$(date +'%d-%m-%Y-%H:%M')"
cp $1 "$1.bkp-$now"
