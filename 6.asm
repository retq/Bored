;win32
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   prompt BYTE "ENTER a grade", 0
   promp BYTE "ENTER a weight", 0
   g1 DWORD ?
   g2 DWORD ?
   g3 DWORD ?
   g4 DWORD ?
   w1 DWORD ?
   w2 DWORD ?
   w3 DWORD ?
   w4 DWORD ?
   
   wofsum BYTE 40 DUP(?),0
   sumofw BYTE 40 DUP(?),0
   avg BYTE 40 DUP(?),0
   Result BYTE 40 DUP(?)
   resultbl BYTE "the weighted sum is", 0
   resultb BYTE "the sum of weight is", 0
   resu BYTE "the weighted average", 0
.CODE
MainProc PROC
   input prompt,Result,40
   atod Result
   mov g1,eax
   input promp,Result,40
   atod Result
   mov w1,eax
   input prompt,Result,40
   atod Result
   mov g2,eax
   input promp,Result,40
   atod Result
   mov w2,eax
    input prompt,Result,40
   atod Result
   mov g3,eax
   input promp,Result,40
   atod Result
   mov w3,eax
   input prompt,Result,40
   atod Result
   mov g4,eax
   input promp,Result,40
   atod Result
   mov w4,eax

   mov eax,g1
   imul eax,w1
   mov g1,eax
   mov eax,g2
   imul eax,w2
   mov g2,eax
   mov eax,g3
   imul eax,w3
   mov g3,eax
   mov eax,g4
   imul eax,w4
   add eax,g1
   add eax,g2
   add eax,g3
   mov ebx,eax
   dtoa wofsum,eax
   output resultbl,wofsum
   mov eax,w1
   add eax,w2
   add eax,w3
   add eax,w4
   mov ecx,eax
   dtoa sumofw,eax
   output resultb,sumofw
   mov eax,ebx
   div ecx
   dtoa avg,eax
   output resu,avg
   mov eax, 0
   ret
MainProc ENDP
END
