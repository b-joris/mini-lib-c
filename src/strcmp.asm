global strcmp

strcmp:
    mov rcx, 0

loop:
    mov al, [rdi + rcx]
    mov r10b, [rsi + rcx]
    cmp r10b, 0
    je end
    cmp al, 0
    je end
    cmp al, r10b
    jne end
    inc rcx
    jmp loop

end:
    sub al, r10b
    movsx rax, al
    ret