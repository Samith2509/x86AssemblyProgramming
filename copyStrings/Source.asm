.386
.model flat, stdcall
.stack 4096

.data
quote   BYTE "Machines do feel",0
message BYTE SIZEOF quote DUP(0)

.code
start PROC

    xor esi, esi
    mov ecx, SIZEOF quote

LP:
    mov al, quote[esi]      ; get a character from quote
    mov message[esi], al    ; store in the message
    inc esi
    loop LP

    ret

start ENDP
END start
