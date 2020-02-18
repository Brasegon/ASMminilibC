    global memset
    section .text
memset:
    mov rcx, 0 ; on initialise la variable a 0
begin:
    cmp rdx, rcx ; on compare rcx a la size
    je end ; si oui on return sinon on continue
    mov BYTE [rdi + rcx], sil; On copie l'argument 2 (char) dans le dest[rcx]
    inc rcx; on increment
    jmp begin; on boucle
end:
    mov rax, rdi; on stock la valeur pour la return
    ret