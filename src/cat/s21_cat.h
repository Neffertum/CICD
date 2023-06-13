#ifndef SRC_CAT_S21_CAT_H_
#define SRC_CAT_S21_CAT_H_

#include <stdio.h>
#include <string.h>

struct flags {
  int b;
  int e;
  int n;
  int s;
  int t;
  int e_big;
  int t_big;
};

int output(int argc, char **argv);
int make_magic(struct flags myflags, FILE *file);

#endif  //  SRC_CAT_S21_CAT_H_
