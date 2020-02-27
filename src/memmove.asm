global memmove
global my_memmmove

my_memove:
memmove:
    cmp rdx, byte 0
    je exit_memory
    mov rbx, rdx
    dec rbx

copy:
    cmp rbx, byte 0
    je memcpy
    mov rax, [rsi + rbx]
    push rax
    dec rbx
    jmp copy

memcpy:
    push QWORD [rsi]
    mov rbx, 0

memory:
    cmp rbx, rdx
    je exit_memory
    pop rax
    mov [rdi + rbx], al
    inc rbx
    jmp memory

exit_memory:
    lea rax, [rdi]
    ret