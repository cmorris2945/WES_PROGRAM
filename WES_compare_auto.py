#! /usr/bin/python

import subprocess

subprocess.run("python3 ./scripts/Trim_BAM_metrics_compare.py && bash ./scripts/vcfcompare_bash.sh", shell=True)
