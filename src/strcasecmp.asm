global strcasecmp

strcasecmp:
    mov rcx, 0
    jmp first_check

to_upper_c1:
    sub al, 32
    jmp second_check

to_upper_c2:
    sub bl, 32
    jmp compare

first_check:
    mov al, [rdi + rcx]
    mov bl, [rsi + rcx]

    cmp al, 97
    jl second_check
    cmp al, 122
    jle to_upper_c1

second_check:
    cmp bl, 97
    jl compare
    cmp bl, 122
    jle to_upper_c2

compare:
    cmp bl, 0
    je end
    cmp al, 0
    je end
    cmp al, bl
    jne end
    inc rcx
    jmp first_check

end:
    sub al, bl
    movsx rax, al
    ret
