    global mystrlen:
    section .text
mystrlen:
    mov rax, 0 ; on initialise la variable rax a 0
begin:
    cmp BYTE [rdi], 0 ; on compare si le char(8 bit == 1 octet) est == 0
    je end ; Si oui on return le nombre
    inc rdi ; Si non on increment rdi
    inc rax ; On increment la string str[rax += 1]
    jmp begin ; on boucle
end:
    ret

