/*
** EPITECH PROJECT, 2020
** ASM_minilibc_2019
** File description:
** asm
*/

#ifndef ASM_H_
#define ASM_H_

#include <stddef.h>

size_t my_strlen(const char *s);
char *my_strchr(const char *s, int c);
void *my_memset(void *s, int c, size_t n);

#endif /* !ASM_H_ */
