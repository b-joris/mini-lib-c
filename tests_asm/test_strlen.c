/*
** EPITECH PROJECT, 2020
** ASM_minilibc_2019
** File description:
** test_strlen
*/

#include <criterion/criterion.h>
#include "asm.h"

Test(strlen_tests, basic_tests)
{
    cr_expect_eq(my_strlen("Testing"), 7);
    cr_expect_eq(my_strlen("A very long sentence"), 20);
}

Test(strlen_tests, advanced_tests)
{
    cr_expect_eq(my_strlen("First\0Second"), 5);
}

Test(strlen_tests, null_lenght_tests)
{
    cr_expect_eq(my_strlen(""), 0);
    cr_expect_eq(my_strlen("\0"), 0);
}

Test(strlen_tests, compare_libc_function)
{
    cr_expect_eq(my_strlen("Testing"), strlen("Testing"));
    cr_expect_eq(my_strlen("A very long sentence"), strlen("A very long sentence"));
    cr_expect_eq(my_strlen("First\0Second"), strlen("First\0Second"));

    cr_expect_eq(my_strlen(""), strlen(""));
    cr_expect_eq(my_strlen("\0"), strlen("\0"));
}