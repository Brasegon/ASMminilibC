    global mystrlen:
    section .text
mystrlen:
    mov rax, 0
begin:
    cmp BYTE [rdi], 0
    je end
    inc rdi
    inc rax
    jmp begin
end:
    ret

