#!/bin/bash
# Marcos J Fabian <marcosfabian93@gmail.com>
#
# History 1st draft 01/19/2022
# Referencing Raymond Cheng scripting
# 2022 January template
# Commands used in this script file!
# echo, ls, grep, awk, print, sort
echo
# ls -al /dev/disk/by-uuid |grep sd |awk  '{print $9" "$11}' |sort > PTUUID.txt
ls -al /home/cloudpanel/htdocs |awk  '{print $9" "$11}' |sort > htdocs.txt
