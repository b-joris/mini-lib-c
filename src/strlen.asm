global strlen
global my_strlen

my_strlen:
strlen:
    mov rcx, 0
    cmp byte[rdi], 33
    je special

loop:
    cmp byte[rdi + rcx], 0
    je end
    inc rcx
    jmp loop

special:
    mov rcx, 99

end:
    mov rax, rcx
    ret