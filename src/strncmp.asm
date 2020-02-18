    global strncmp:
    section .text
strncmp:
    mov rcx, 0
begin:
    mov r10b, BYTE[rdi]
    mov r11b, BYTE[rsi]
    cmp r10b, 0
    je end
    cmp r11b, 0
    je end
    cmp r10b, r11b
    jne end
    inc rdi
    inc rsi
    inc rcx
    cmp rdx, rcx
    jle end
    jmp begin
end:
    movzx rax, r10b
    movzx rbx, r11b
    sub rax, rbx
    ret
