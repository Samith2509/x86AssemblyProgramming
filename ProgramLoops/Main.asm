.386
.model flat

.data
intArr dword 10000h, 20000h, 30000h, 40000h, 50000h

.code
start proc
	mov edi,offset intArr ; point to the first element of the array
	mov ecx,lengthof intArr ; number of elements in the array
	mov eax,0
LP:
    add eax,[edi]
	add edi, type intArr
	loop LP
	ret
start endp
end start