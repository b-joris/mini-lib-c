global memcpy

memcpy:
    mov rax, rdi
    mov rcx, 0

loop:
    cmp rcx, rdx
    jz end
    mov r10b, [rsi + rcx]
    mov [rdi + rcx], r10b
    inc rcx
    jmp loop

end:
    mov rax, rdi
    ret