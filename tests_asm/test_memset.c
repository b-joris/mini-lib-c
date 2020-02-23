/*
** EPITECH PROJECT, 2020
** ASM_minilibc_2019
** File description:
** test_memset
*/

#include <stdio.h>
#include <unistd.h>
#include <criterion/criterion.h>
#include "asm.h"

char *string;
char *string2;

void setup(void)
{
    string = malloc(10);
    string[9] = '\0';

    string2 = malloc(10);
    string2[9] = '\0';
}

void teardown(void)
{
    free(string);
    free(string2);
}

Test(memset_tests, basic_tests, .init = setup, .fini = teardown)
{
    my_memset(string, 'A', 9);
    cr_expect_str_eq(string, "AAAAAAAAA");

    my_memset(string, '!', 3);
    cr_expect_str_eq(string, "!!!AAAAAA");
}

Test(memset_tests, advanced_tests, .init = setup, .fini = teardown)
{
    my_memset(string, '\0', 9);
    cr_expect_str_empty(string);
}

Test(memset_tests, compare_libc_tests, .init = setup, .fini = teardown)
{
    my_memset(string, 'A', 9);
    memset(string2, 'A', 9);
    cr_expect_str_eq(string, string2);

    my_memset(string, '!', 3);
    memset(string2, '!', 3);
    cr_expect_str_eq(string, string2);

    my_memset(string, '\0', 9);
    memset(string2, '\0', 9);
    cr_expect_str_eq(string, string2);
}