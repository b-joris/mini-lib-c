global rindex

rindex:
    mov r10, 0
    jmp loop

update_found:
    mov r10, rdi
    jmp loop

loop:
    cmp byte[rdi], 0
    je end
    cmp [rdi], rsi
    je update_found
    inc rdi
    jmp loop

end:
    mov rax, r10
    ret