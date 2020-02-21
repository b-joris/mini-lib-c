global strncmp

strncmp:
    mov rcx, 0

loop:
    cmp rcx, rdx
    je end
    mov al, [rdi + rcx]
    mov bl, [rsi + rcx]
    cmp al, 0
    je end
    cmp bl, 0
    je end
    cmp al, bl
    jne end
    inc rcx
    jmp loop

end:
    sub al, bl
    movsx rax, al
    ret