#!/bin/bash

cat ./tests/asci.txt > ./tests/cat_tests.txt
./s21_cat ./tests/asci.txt > ./tests/s21_cat_tests.txt

cmp ./tests/cat_tests.txt ./tests/s21_cat_tests.txt && echo YES || echo NO


cat -b ./tests/asci.txt > ./tests/cat_tests.txt
./s21_cat -b ./tests/asci.txt > ./tests/s21_cat_tests.txt

cmp ./tests/cat_tests.txt ./tests/s21_cat_tests.txt && echo -b YES || echo -b NO


cat -e ./tests/asci.txt > ./tests/cat_tests.txt
./s21_cat -e ./tests/asci.txt > ./tests/s21_cat_tests.txt

cmp ./tests/cat_tests.txt ./tests/s21_cat_tests.txt && echo -e YES || echo -e NO


cat -n ./tests/asci.txt > ./tests/cat_tests.txt
./s21_cat -n ./tests/asci.txt > ./tests/s21_cat_tests.txt

cmp ./tests/cat_tests.txt ./tests/s21_cat_tests.txt && echo -n YES || echo -n NO


cat -s ./tests/asci.txt > ./tests/cat_tests.txt
./s21_cat -s ./tests/asci.txt > ./tests/s21_cat_tests.txt

cmp ./tests/cat_tests.txt ./tests/s21_cat_tests.txt && echo -s YES || echo -s NO


cat -t ./tests/asci.txt > ./tests/cat_tests.txt
./s21_cat -t ./tests/asci.txt > ./tests/s21_cat_tests.txt

cmp ./tests/cat_tests.txt ./tests/s21_cat_tests.txt && echo -t YES || echo -t NO


cat -b -n ./tests/asci.txt > ./tests/cat_tests.txt
./s21_cat -b -n ./tests/asci.txt > ./tests/s21_cat_tests.txt

cmp ./tests/cat_tests.txt ./tests/s21_cat_tests.txt && echo -b -n YES || echo -b -n NO


cat -b -s -t -e ./tests/asci.txt > ./tests/cat_tests.txt
./s21_cat -b -s -t -e ./tests/asci.txt > ./tests/s21_cat_tests.txt

cmp ./tests/cat_tests.txt ./tests/s21_cat_tests.txt && echo -b -s -t -e YES || echo -b -s -t -e NO


cat -n -b ./tests/asci.txt > ./tests/cat_tests.txt
./s21_cat -n -b ./tests/asci.txt > ./tests/s21_cat_tests.txt

cmp ./tests/cat_tests.txt ./tests/s21_cat_tests.txt && echo -n -b nofile YES || echo -n -b

echo nofile cat:
cat mnb.txt

echo nofile s21_cat:
./s21_cat mnb.txt