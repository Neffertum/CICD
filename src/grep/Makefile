CC=gcc -Wall -Werror -Wextra -std=c11 -D_GNU_SOURCE
all: s21_grep

s21_grep:
	$(CC) s21_grep.c -o s21_grep

style:
	clang-format -style=google -n *.c* *.h*

sh:
	sh ./tests/2sample_tests.sh
	sh ./tests/1sample_tests.sh

test:
	./test_sh/test_grep.sh

clean: 
	rm s21_grep
