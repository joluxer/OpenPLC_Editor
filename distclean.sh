#!/bin/bash

OPENPLC_DIR="$(dirname "$(readlink -f "$0")")"

cd "${OPENPLC_DIR}"
git checkout -- ./ ./editor/ ./matiec/
git clean -fdx -- ./ ./matiec/ ./editor/
git submodule foreach --recursive 'git checkout -- ./'
git submodule foreach --recursive 'git clean -fdx -- ./'
rm -f ${OPENPLC_DIR}/openplc_editor.sh
