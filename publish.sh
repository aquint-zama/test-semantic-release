#!/bin/bash

VERSION_FILE="version.py"
NEWTAG=$1
sed -i "" "s/__version__=\"v[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]*\"/__version__=\"${NEWTAG//./\\.}\"/" $VERSION_FILE
