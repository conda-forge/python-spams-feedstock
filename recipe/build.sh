#!/usr/bin/env bash

"${PYTHON}" -m pip install . --no-deps -vv

rm -r "${PREFIX}/doc"
rm -r "${PREFIX}/test"
