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