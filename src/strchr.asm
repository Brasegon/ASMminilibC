    global strchr
    section .text

strchr:
    mov rcx, 0
increment:
    inc rcx
begin:
    movsx rdx, BYTE [rdi+rcx] ;; met str[rcx] dans rdx --> permet de stocker le character
    cmp rdx, 0 ;; Check si le char est == à '\0'
    je end_null ;; si oui on appelle la fonction end_null, sinon on continue
    cmp rdx, rsi ;; Check si le char est != de l'incrementeur rsi
    jne increment ;; si oui, on incremente rcx
    mov rax, rdi ;; on ajoute l'index a la string
    add rax, rcx ;; on additione avec l'ancienne string
    jmp end ;; on fini avec un return de rax ==> renvoie une string
end_null:
    mov rax, 0
    ret
end:
    ret