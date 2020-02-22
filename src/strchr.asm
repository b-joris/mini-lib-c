global strchr

strchr:
    mov rax, 0

loop:
    cmp byte[rdi], 0
    je end
    cmp byte[rdi], sil
    je found
    inc rdi
    jmp loop

found:
    mov rax, rdi

end:
    ret