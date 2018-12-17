#!/usr/bin/env bash

"${PYTHON}" setup.py install

rm -r "${PREFIX}/doc"
rm -r "${PREFIX}/test"
