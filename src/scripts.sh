#! /bin/bash

if [[ $1 == 1 ]]; then
  output="$(clang-format -style=google -n src/cat/*.c* src/cat/*.h* src/grep/*.c* src/grep/*.h* 2>&1)"
  if [[ "$output" == "" ]]
  then
    exit 0
  else
    echo "$output"
    exit 1
  fi
elif [[ $1 == 2 ]]; then
  test_1="$(./src/cat/test_sh/script_cat.sh)"
  test_2="$(./src/grep/test_sh/script_grep.sh)"
  echo -e "$test_1\n\n$test_2\n"
  if [[ ${test_1: -2} == " 0" && ${test_2: -2} == " 0" ]]; then
    echo "1480 tests passed successfully"
    exit 0
  else
    echo "Not all tests were successful"
    exit 1
  fi
fi
