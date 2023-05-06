#!/bin/bash
export PYTHON_VERSION=`python3 -c 'import sys; print("python" + ".".join(map(str, sys.version_info[:2])))'`

HIGHLIGHTING=ressources/raku.js #or raku1.js if you like it more

CM_RAKU="/srv/conda/envs/notebook/lib/$PYTHON_VERSION/site-packages/notebook/static/components/codemirror/mode/raku"
mkdir $CM_RAKU

cp $HIGHLIGHTING $CM_RAKU/raku.js

patch /srv/conda/envs/*/lib/python*/site-packages/notebook/static/components/codemirror/mode/meta.js $HOME/ressources/codemirror_mode_meta.patch
