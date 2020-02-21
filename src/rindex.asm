global rindex

rindex:
    mov r10, 0
    mov rcx, 0

loop:
    cmp byte[rdi + rcx], 0
    je end
    cmp byte[rdi + rcx], sil
    je update_found
    inc rcx
    jmp loop

update_found:
    mov r10, rdi
    inc rcx
    jmp loop

end:
    mov rax, r10
    ret