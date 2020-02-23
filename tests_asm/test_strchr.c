/*
** EPITECH PROJECT, 2020
** ASM_minilibc_2019
** File description:
** test_strchr
*/

#include <unistd.h>
#include <criterion/criterion.h>
#include "asm.h"

Test(strchr_tests, basic_tests)
{
    cr_expect_str_eq(my_strchr("Testing", 'T'), "Testing");
    cr_expect_str_eq(my_strchr("Testing", 't'), "ting");
    cr_expect_str_eq(my_strchr("Testing", 'i'), "ing");
    cr_expect_str_eq(my_strchr("Testing", 'g'), "g");
}

Test(strchr_tests, advanced_tests)
{
    cr_expect_str_empty(my_strchr("Testing", '\0'));
}

Test(strchr_tests, null_tests)
{
    cr_expect_null(my_strchr("Testing", 'z'));
    cr_expect_null(my_strchr("Testing", 'I'));
    cr_expect_null(my_strchr("Testing", '!'));
}

Test(strchr_tests, compare_libc_function)
{
    cr_expect_str_eq(my_strchr("Testing", 'T'), strchr("Testing", 'T'));
    cr_expect_str_eq(my_strchr("Testing", 't'), strchr("ting", 't'));
    cr_expect_str_eq(my_strchr("Testing", 'i'), strchr("ing", 'i'));
    cr_expect_str_eq(my_strchr("Testing", 'g'), strchr("g", 'g'));

    cr_expect_str_eq(my_strchr("Testing", '\0'), strchr("Testing", '\0'));

    cr_expect_eq(my_strchr("Testing", 'z'), strchr("Testing", 'z'));
    cr_expect_eq(my_strchr("Testing", 'I'), strchr("Testing", 'I'));
    cr_expect_eq(my_strchr("Testing", '!'), strchr("Testing", '!'));
}