global rindex
global my_rindex

my_rindex:
rindex:
    mov rax, 0
    mov rbx, 0

get_pointer:
    cmp [rdi + rbx], byte 0
    je return_pointer
    cmp [rdi + rbx], sil
    je save_pointer

continue_get_pointer:
    inc rbx
    jmp get_pointer

save_pointer:
    lea rax, [rdi + rbx]
    jmp continue_get_pointer

return_pointer:
    cmp sil, byte 0
    je return_null_byte
    ret

return_null_byte:
    lea rax, [rdi + rbx]
    ret