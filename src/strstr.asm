global strstr

;char *strstr(const char *haystack, const char *needle);

strstr:
    mov rax, rdi; haystack
    mov rbx, rsi; needle
    mov rcx, 0; needle counter

    mov r10, 0; result saver
    jmp haystack_loop

needle_loop:
    cmp byte[rbx + rcx], 0
    je save_result

    mov r11b, byte[rbx + rcx]
    cmp byte[rax + rcx], r11b
    jne reset_needle_variables
    inc rcx
    jmp needle_loop

reset_needle_variables:
    mov rcx, 0
    inc rax
    jmp haystack_loop

haystack_loop:
    cmp byte[rax], 0
    je end
    mov r11b, byte[rbx]
    cmp byte[rax], r11b
    je needle_loop
    inc rax
    jmp haystack_loop

save_result:
    mov r10, rax

end:
    mov rax, r10
    ret