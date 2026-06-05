.386
.model flat

PBYTE TYPEDEF PTR BYTE
PWORD TYPEDEF PTR WORD
PDWORD TYPEDEF PTR DWORD

.data
	arr1 BYTE 10h, 20h, 30h, 40h, 50h
	arr2 WORD 1,2,3
	arr3 DWORD 100, 200, 300

	pt1 PBYTE arr1
	pt2 PWORD arr2
	pt3 PDWORD arr3
.code
	start proc
	mov esi,pt1
	mov al, [esi] ; load the first byte from arr1 into al
	mov esi,pt2
	mov ax, [esi] ; load the first word from arr2 into ax
	mov esi,pt3
	mov eax, [esi] ; load the first dword from arr3 into eax
	ret
start endp
end start
