global rindex

rindex:
    mov r10, 0

loop:
    cmp byte[rdi], 0
    je end
    cmp byte[rdi], sil
    je update_found
    inc rdi
    jmp loop

update_found:
    mov r10, rdi
    inc rdi
    jmp loop

end:
    mov rax, r10
    ret