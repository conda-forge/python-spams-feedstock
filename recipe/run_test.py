#!/usr/bin/env python

import os
import shutil


# move lena.png and boat.png out
shutil.move('extdata/lena.png', '.')
shutil.move('extdata/boat.png', '.')

os.environ["OPENBLAS_NUM_THREADS"] = "1"
os.environ["OMP_NUM_THREADS"] = os.environ["CPU_COUNT"]

with open("test_spams.py", "r") as fh:
    exec(compile(fh.read(), "test_spams.py", "exec"))
