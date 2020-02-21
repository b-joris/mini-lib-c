global memcpy

memcpy:
    mov rax, rdi
    mov rcx, 0

loop:
    cmp rcx, rdx
    je end
    mov bl, [rsi + rcx]
    mov [rdi + rcx], bl
    inc rcx
    jmp loop

end:
    mov rax, rdi
    ret