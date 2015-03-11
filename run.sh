#!/bin/sh

cc a.c -o a
./a > b.c
cc b.c -o b
./b > c.c
