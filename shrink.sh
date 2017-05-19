#!/bin/bash

EXPANDED="$1.d"

cd $EXPANDED
zip -o ../$1 -r *
