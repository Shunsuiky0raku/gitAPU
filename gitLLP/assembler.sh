#!/bin/bash

filename="${1%%.*}" #remove .s extension
nasm -f elf64 ${filename}".s"
ld ${filename}".o" -o ${filename}
[ "$2" == "-g" ] && gdb -q ${filename} || ./${filename}
