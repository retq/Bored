;win32
.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
 prompt BYTE "ENTER a lenght", 0
 promp BYTE "ENTER a width", 0
 len DWORD ?
 wid DWORD ?
 RESULT BYTE 40 DUP(?)
 resultbl BYTE "the perimeter is", 0
.CODE
MainProc PROC
 input prompt,Result,40
 atod Result
 mov len,eax
 input promp,Result,40
 atod Result
 mov wid,eax
 
 mov eax,len
 imul eax,2
 mov len,eax
 mov eax,wid
 imul eax,2
 add eax,len
 dtoa len,eax
 output resultbl,len
 mov, eax 0
 ret
MainProc ENDP
END
