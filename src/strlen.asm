global strlen

strlen:
    mov rcx, 0

loop:
    cmp byte[rdi], 0
    je end
    inc rdi
    inc rcx
    jmp loop

end:
    mov rax, rcx
    ret