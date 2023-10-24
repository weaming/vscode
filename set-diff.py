#!/usr/bin/env python3
# Author    : weaming
# Mail      : garden.yuen@gmail.com
# Created   : 2019-11-22 12:59:23
import sys

file1 = sys.argv[1]
file2 = sys.argv[2]


def file_as_set(path):
    return set(x.strip() for x in open(path).readlines() if x.strip())


diff = file_as_set(file1) - file_as_set(file2)
print('\n'.join(diff))
