;win32
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   prompt BYTE "ENTER a grade", 0
   g1 DWORD ?
   g2 DWORD ?
   g3 DWORD ?
   g4 DWORD ?
   sum BYTE 40 DUP(?),0
   avg BYTE 40 DUP(?),0
   Result BYTE 40 DUP(?)
   resultbl BYTE "the sum is", 0
   resultb BYTE "the avarge is", 0
.CODE
MainProc PROC
   input prompt,Result,40
   atod Result
   mov g1,eax
   input prompt,Result,40
   atod Result
   mov g2,eax
    input prompt,Result,40
   atod Result
   mov g3,eax
   input prompt,Result,40
   atod Result
   mov g4,eax

   mov eax,g1
   add eax,g2
   add eax,g3
   add eax,g4
   mov ebx,eax
   dtoa sum,eax
   output resultbl,sum
   mov eax,ebx
   mov bl,4
   div bl
   dtoa avg,eax
   output resultb,avg
   mov eax, 0
   ret
MainProc ENDP
END
