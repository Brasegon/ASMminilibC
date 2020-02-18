    global memset
    section .text
memset:
    mov rcx, 0
begin:
    cmp rdx, rcx
    je end
    mov BYTE [rdi + rcx], sil
    inc rcx
    jmp begin
end:
    mov rax, rdi
    ret