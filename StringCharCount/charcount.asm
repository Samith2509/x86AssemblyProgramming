.model flat,c
.code
CountChar proc
	push ebp
	mov ebp,esp
	push esi
	mov esi, [ebp + 8] ; pointer to the string
	mov cx, [ebp + 12] ; character to count
	xor edx, edx ; clear edx to use as a counter
@@: mov ax, [esi] ; load next char into ax
	or ax,ax ; check if it's the null terminator
	jz @F ; if it is, we're done
	cmp ax,cx ; compare the current character with the target character
	jne SkipInc ; if no match, skip incrementing counter
	inc edx ; if it matches, increment the counter
SkipInc:
	add esi, 2 ; increment pointer by 2 for wide character
	jmp @B
@@: mov eax, edx ; move the count into eax for return

	pop esi
	pop ebp
	ret
CountChar endp
end