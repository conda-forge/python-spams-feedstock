#!/usr/bin/env python

import os
import shutil


# move lena.png and boat.png out
for fn in ('extdata/lena.png', 'extdata/boat.png'):
    if os.path.exists(fn):
        shutil.move(fn, '.')

os.environ["OPENBLAS_NUM_THREADS"] = "1"
os.environ["OMP_NUM_THREADS"] = os.environ["CPU_COUNT"]

with open("test_spams.py", "r") as fh:
    exec(compile(fh.read(), "test_spams.py", "exec"))
