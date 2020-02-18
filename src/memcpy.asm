    global memcpy
    section .text
memcpy:
    mov rcx, 0
begin:
    cmp rdx, rcx
    je end
    mov al, BYTE [rsi + rcx]
    mov BYTE [rdi + rcx], al
    inc rcx
    jmp begin
end:
    mov rax, rdi
    ret