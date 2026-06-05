.386
.model flat

.data
intArr sword 0,0,0,0,18,3,0,-34,-56,7,8

.code
start proc
      mov ebx, offset intArr ; point to the first element of the array
      mov ecx, lengthof intArr ; number of elements in the array
L1:
      cmp word ptr [ebx], 0 ; compare the current element with 0
      jnz found ; if it's not zero, jump to found
      add ebx, 2 ; move to the next element (2 bytes for word)
      loop L1 ; loop until all elements are checked
      jmp notfound ; if we finish the loop without finding a non-zero, jump to notfound
found:
      movsx eax,word ptr [ebx] ; move the found non-zero element into eax
      jmp quit
notfound:
      mov eax, -1 ; if no non-zero element is found, return -1
quit:
      ret
start endp
end start
