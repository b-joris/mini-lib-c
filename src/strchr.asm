global strchr

strchr:
    cmp byte[rdi], 0
    je fail
    cmp byte[rdi], sil
    je found
    inc rdi
    jmp strchr

fail:
    mov rax, 0
    jmp end

found:
    mov rax, rdi

end:
    ret