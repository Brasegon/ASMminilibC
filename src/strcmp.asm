    global strcmp
    section .text

strcmp:
    mov rax, 0 ;initialise la valeur de return a 0
    mov rcx, 0 ;creé un index a 0
    cmp rdi, 0
    je end
    cmp rsi, 0
    je end
begin:
    movzx rax, BYTE [rdi + rcx]
    movzx rbx, BYTE [rsi + rcx]
    cmp rax, rbx
    je increment
    sub rax, rbx
    cmp rax, 0
    jl end_neg
    cmp rax, 0
    jg end_pos
    jmp end
increment:
    cmp rax, 0
    je end
    cmp rbx, 0
    je end
    inc rcx
    jmp begin
end_pos:
    mov rax, 1
    ret
end_neg:
    mov rax, -1
    ret
end:
    ret