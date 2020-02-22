global memset
global my_memset

my_memset:
memset:
    mov rax, rdi
    mov rcx, 0

loop:
    cmp rcx, rdx
    je end
    mov [rax], sil
    inc rax
    inc rcx
    jmp loop

end:
    mov rax, rdi
    ret