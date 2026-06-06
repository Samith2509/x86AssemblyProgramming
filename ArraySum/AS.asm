.model flat, c
.code

CalcArraySumASM PROC

    push ebp
    mov  ebp, esp

    mov  edx, [ebp+8]      ; edx = x (array pointer)
    mov  ecx, [ebp+12]     ; ecx = n (number of elements)
    xor  eax, eax          ; eax = sum

    cmp  ecx, 0
    jle  InvalidCount

@@:
    add  eax, [edx]        ; add current element
    add  edx, 4            ; move to next int
    dec  ecx               ; decrement counter
    jnz  @B                ; repeat until ecx = 0

InvalidCount:
    pop  ebp
    ret

CalcArraySumASM ENDP

END