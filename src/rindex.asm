global rindex

rindex:
    mov rax, 0

loop:
    cmp byte[rdi], 0
    je end
    cmp byte[rdi], sil
    cmove rax, rdi
    inc rdi
    jmp loop

end:
    ret