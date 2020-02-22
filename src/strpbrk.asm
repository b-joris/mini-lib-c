global strpbrk

;char *strpbrk(const char *s, const char *accept);

strpbrk:
    mov rax, rdi; string
    mov rbx, rsi; accept
    mov rcx, 0; accept counter

    mov r10, 0; result saver
    jmp loop

loop:
    cmp byte[rax], 0
    je end
    jmp compare_accept

reset_accepts_variables:
    mov rcx, 0
    inc rax
    jmp loop

compare_accept:
    cmp byte[rbx + rcx], 0
    je reset_accepts_variables
    mov r11b, byte[rax]
    cmp byte[rbx + rcx], r11b
    je save_result
    inc rcx
    jmp compare_accept

save_result:
    mov r10, rax

end:
    mov rax, r10
    ret