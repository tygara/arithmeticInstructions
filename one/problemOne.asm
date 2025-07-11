; Variables of the right hand side are initalized & variables on left are not
; result = -var1 * 10

section .bss
  result resd 1       ; 32 bit reserved word 
    
section .data
  var1 dw -2          ; 16 bit signed value

section .text
  global _start


_start:

main_body:
  mov ax, [var1]
  mov bl, 10

  imul bl             ; result: (ax)-2 * bl(10) = -20

  mov [result], ax

exit_program:
  mov eax, 1
  xor ebx, ebx
  int 0x80
