;win32
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
   prompt BYTE "ENTER a pennis", 0
   promp BYTE "ENTER a nicklas", 0
   prom BYTE "ENTER a dims", 0
   pro BYTE "ENTER a quarter", 0
   pr BYTE "ENTER a fifty", 0
   p BYTE "ENTER a dollars", 0
   pennies DWORD ?
   nickels DWORD ?
   dims DWORD ?
   quarter DWORD ?
   fifty DWORD ?
   dollars DWORD ? 
   sum BYTE 40 DUP(?),0
   dollar BYTE 40 DUP(?),0
   Result BYTE 40 DUP(?)
   resultbl BYTE "the sum of coins", 0
   resultb BYTE "the dollars you have", 0

.CODE
MainProc PROC
   input prompt,Result,40
   atod Result
   mov pennies,eax
   input promp,Result,40
   atod Result
   mov nickels,eax
   input prom,Result,40
   atod Result
   mov dims,eax
   input pro,Result,40
   atod Result
   mov quarter,eax
    input pr,Result,40
   atod Result
   mov fifty,eax
   input p,Result,40
   atod Result
   mov dollars,eax
 
   mov eax,pennies
   imul eax,1
   mov pennies,eax
   mov eax,nickels
   imul eax,5
   mov nickels,eax
   mov eax,dims
   imul eax,10
   mov dims,eax
   mov eax,quarter
   imul eax,25
   mov quarter,eax
   mov eax,fifty
   imul eax,50
   mov fifty,eax
   mov eax,dollars
   imul eax,100
   mov dollars,eax
   mov eax,0
   mov eax,pennies
   add eax,nickels
   add eax,dims
   add eax,quarter
   add eax,fifty
   add eax,dollars
   mov ebx,eax
   dtoa sum,eax
   output resultbl,sum
   mov eax,ebx
   mov bl,100
   idiv bl
   dtoa dollar,eax
   output resultb,dollar
   mov eax, 0
   ret
MainProc ENDP
END
