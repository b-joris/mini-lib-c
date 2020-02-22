global strcspn
global my_strcspn

my_strcspn:
strcspn:
    mov rax, rdi; string
    mov rbx, rsi; reject strings
    mov rcx, 0

    mov r10, 0; reject counter

loop:
    cmp byte[rax], 0
    je end
    jmp loop_over_reject

update_loop:
    inc rax
    inc rcx
    mov r10, 0
    jmp loop

loop_over_reject:
    mov r9b, [rbx + r10]
    cmp r9b, 0
    je update_loop
    cmp r9b, [rax]
    je end
    inc r10
    jmp loop_over_reject

end:
    mov rax, rcx
    ret