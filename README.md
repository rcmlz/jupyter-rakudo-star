# jupyter-rakudo-star
Please consult the [postBuild](postBuild) script and the [postBuild.d](postBuild.d) folder to see how [Rakudo-Star](https://rakudo.org/star/source) was installed from source.

|Classic|Jupyter-Lab|
|--|--|
|[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/rcmlz/jupyter-rakudo-star/code_highlighting)|[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/rcmlz/jupyter-rakudo-star/code_highlighting?urlpath=lab)|

Syntax highlighting works out-of-the-box for Pygments based exports - to e.g. pdf. CodeMirror based syntax highlighting in Code Cells needs a patch as demonstrated in the [code_highlighting](https://mybinder.org/v2/gh/rcmlz/jupyter-rakudo-star/code_highlighting) branch.

ToDo: create a npm package for CodeMirror syntax highlighting as the CodeMirror project is not accepting pull request for new modes anymore.

In [ressources](ressources) you will find two highlighting schemas you can pick from. The script [postBuild.d/03_patch_codemirror.sh](postBuild.d/03_patch_codemirror.sh) installs as demonstration the file named "[raku.js](ressources/raku.js)".  
