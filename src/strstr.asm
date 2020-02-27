global strstr
global my_strstr

strstr:
    mov rax, 0
    cmp [rsi], byte 0
    je found_needle
    mov rbx, 0
    jmp do_search

search:
    mov rbx, 0
    jmp loop_search

do_search:
    cmp [rdi + rax], byte 0
    je return_null_byte
    mov r8b, [rsi]
    cmp [rdi + rax], r8b
    je start_check_needle
    jmp loop_search

loop_search:
    inc rax
    jmp do_search

start_check_needle:
    mov r8, rax
    jmp loop_check_needle

loop_check_needle:
    mov r9, [rsi + rbx]
    cmp r9b, byte 0
    je found_needle
    cmp [rdi + r8], r9b
    jne search
    inc rbx
    inc r8
    jmp loop_check_needle

found_needle:
    lea rax, [rdi + rax]
    ret

return_null_byte:
    mov rax, 0
    ret