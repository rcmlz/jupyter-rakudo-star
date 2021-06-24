#!/bin/bash
PYTHON_VERSION=`python -c 'import sys; version=sys.version_info[:3]; print("{0}.{1}".format(*version))'`

HIGHLIGHTING=ressources/raku.js #or raku1.js if you like it more

CM_RAKU="/srv/conda/envs/notebook/lib/python$PYTHON_VERSION/site-packages/notebook/static/components/codemirror/mode/raku"
mkdir $CM_RAKU

cp $HIGHLIGHTING $CM_RAKU/raku.js

patch /srv/conda/envs/*/lib/python*/site-packages/notebook/static/components/codemirror/mode/meta.js $HOME/ressources/codemirror_mode_meta_raku.patch
