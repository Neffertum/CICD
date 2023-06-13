CC=gcc -Wall -Werror -Wextra -std=c11

all: s21_cat

s21_cat:
	$(CC) s21_cat.c -o s21_cat

style:
	clang-format -style=google -n *.c* *.h*

sh:
	sh ./tests/asci_tests.sh
	sh ./tests/sample_tests.sh

test:
	./test_sh/test_cat.sh

clean: 
	rm s21_cat
