#!/bin/bash

set -x
set -e

## Transfer logs over to the OSCAlogs dir and push
cp logs/* OSCAlogs
cd OSCAlogs
git add *
git commit -m "build date: $(date)"
git push
cd ..
