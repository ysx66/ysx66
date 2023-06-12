#!/bin/bash

#ysx66

####################################################################################################

svn co https://github.com/NueXini/NueXini_Packages/trunk ./
rm -rf .svn
####################################################################################################

cp -f $GITHUB_WORKSPACE/Z.Backup/patches/packages.README.md ./README.md
