#!/bin/bash

VERSION_JSON="version.py"
NEWTAG=$1
sed -i "" "s/__version__ = \"v[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]*\"/__version__ = \"${NEWTAG//./\\.}\"/" $VERSION_FILE
git add $VERSION_JSON $LAYOUT_FILE $VERSION_FILE
git commit -m "chore: release $NEWTAG"
