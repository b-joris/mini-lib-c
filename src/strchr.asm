global strchr
global my_strchr

my_strchr:
strchr:
    mov rax, 0

loop:
    cmp byte[rdi], 0
    je check_empty
    cmp byte[rdi], sil
    je found
    inc rdi
    jmp loop

found:
    mov rax, rdi
    jmp end

check_empty:
    cmp rsi, 0
    jne end
    mov rax, rdi

end:
    ret