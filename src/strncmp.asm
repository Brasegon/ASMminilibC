    global mystrncmp
    section .text
mystrncmp:
    mov rax, 0 ;initialise la valeur de return a 0
    mov rcx, 0 ;creé un index a 0
begin:
    cmp rdx, rcx
    je end
    movzx rax, BYTE [rdi + rcx]
    movzx rbx, BYTE [rsi + rcx]
    cmp rax, rbx
    je increment
increment:
    cmp rax, 0
    je end
    cmp rbx, 0
    je end
    inc rcx
    jmp begin
end:
    sub rax, rbx
    ret