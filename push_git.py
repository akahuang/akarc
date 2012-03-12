#!/usr/bin/python
import os

src_file = './gitconfig'
des_file = os.environ['HOME'] + '/.gitconfig'
tmp_file = './gitconfig_temp'
ignore_tag = ['[user]\n', '[github]\n']

fin = open(des_file, 'r')
fout = open(tmp_file, 'w')

ignore_flag = False
for line in fin:
    # Tag
    if line[0] == '[':
        ignore_flag = (line in ignore_tag)

    if ignore_flag == True:
        fout.write(line)

fin.close()
fout.close()

os.system('cat %s >> %s' % (src_file, tmp_file))
os.system('mv %s %s' % (tmp_file, des_file))
