#!/usr/bin/python
import os

src_file = os.environ['HOME'] + '/.gitconfig'
des_file = './gitconfig'
ignore_tag = ['[user]\n', '[github]\n']

fin = open(src_file, 'r')
fout = open(des_file, 'w')

ignore_flag = False
for line in fin:
    # Tag
    if line[0] == '[':
        ignore_flag = (line in ignore_tag)

    if ignore_flag == False:
        fout.write(line)

fin.close()
fout.close()
