global strcmp
global my_strcmp

my_strcmp:
strcmp:
    mov rcx, 0

loop:
    mov al, [rdi + rcx]
    mov bl, [rsi + rcx]
    cmp bl, 0
    je end
    cmp al, 0
    je end
    cmp al, bl
    jne end
    inc rcx
    jmp loop

end:
    sub al, bl
    movsx rax, al
    ret