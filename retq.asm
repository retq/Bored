;win32
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   prompt BYTE "ENTER a number", 0
   x DWORD ?
   y DWORD ?
   z DWORD ?
   Result BYTE 40 DUP(?)
   resultbl BYTE "the value of exp 2(x+y)+z is", 0
.CODE
MainProc PROC
   input prompt,Result,40
   atod Result
   mov x,eax
   input prompt,Result,40
   atod Result
   mov y,eax
   input prompt,Result,40
   atod Result
   mov z,eax

   mov eax,x
   add eax,y
   imul eax,2
   mov x,eax
   
   mov eax,z
   add eax,x
   dtoa x,eax
   output resultbl,x
   mov eax, 0
   ret
MainProc ENDP
END
