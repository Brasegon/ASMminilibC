global strcasecmp
section .text

strcasecmp:
    mov rax, 0
    mov rcx, 0
    jmp checknullarg

checknullarg:
    cmp rdi, 0
    je end
    cmp rsi, 0
    je end
begin:
    movzx rax, BYTE [rdi + rcx]
    movzx rbx, BYTE [rsi + rcx]
    jmp firstcompare
firstcompare:
    cmp rax, 'A'
    jl secondcompare
    cmp rax,'Z'
    jg secondcompare
    add rax, 32
    jmp secondcompare
secondcompare:
    cmp rbx, 'A'
    jl noupper2
    cmp rbx, 'Z'
    jg noupper2
    add rbx, 32
    jmp noupper2
noupper2:
    cmp rax, rbx
    jne end
    cmp rax, 0
    je end
    cmp rbx, 0
    je end
    inc rcx
    jmp begin
end
    sub rax, rbx
    ret