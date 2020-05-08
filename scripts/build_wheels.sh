#!/usr/bin/env bash
set -e

#bash scripts/clean.sh

#python setup.py sdist -d ./wheelhouse
#python scripts/code_generation.py
python setup.py bdist_wheel -d ./wheelhouse

if [[ "$OSTYPE" == "darwin"* ]]; then
  for whl in ./wheelhouse/*.whl; do
    delocate-wheel -v "$whl"
  done
fi
