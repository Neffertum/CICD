#! /bin/bash

scp src/cat/s21_cat cityorde@192.168.0.105:~/
scp src/grep/s21_grep cityorde@192.168.0.105:~/

ssh cityorde@192.168.0.105 "echo e | sudo -S mv s21_cat s21_grep /usr/local/bin/"
