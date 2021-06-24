#!/bin/bash
source ~/start

# switch to raku2.js for different color schema
HIGHLIGHTING=ressources/raku.js
#HIGHLIGHTING=ressources/raku2.js

# ToDo: dynamically detect python version
PYTHON_VERSION="python3.7"
CM_RAKU="/srv/conda/envs/notebook/lib/$PYTHON_VERSION/site-packages/notebook/static/components/codemirror/mode/raku"
mkdir $CM_RAKU

cp $HIGHLIGHTING $CM_RAKU/raku.js

patch /srv/conda/envs/*/lib/python*/site-packages/notebook/static/components/codemirror/mode/meta.js ../ressources/codemirror_mode_meta.patch
