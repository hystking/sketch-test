#!/bin/bash

EXPANDED="$1.d"

mkdir -p $EXPANDED
unzip $1 -d $EXPANDED
cd $EXPANDED
find . -name "*.json" | xargs -I{} sh -c "jq . {} > {}.tmp && mv {}.tmp {}"
