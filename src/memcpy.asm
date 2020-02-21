    global memcpy
    section .text
memcpy:
    mov rcx, 0
begin:
    cmp rdx, rcx
    je end
    mov al, BYTE [rsi + rcx] ;; meme chose que le memset sauf que l'on copy du src[rcx] au dest[rcx]
    mov BYTE [rdi + rcx], al
    inc rcx
    mov rax, rdi
    jmp begin
end:
    ret