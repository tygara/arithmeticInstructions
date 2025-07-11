; Variables on the right are initialized, variables on the left are not.

; result = var1 + var2 + var3 + var4

section .bss
  result resw 1     ; 32bit reserved word - result -

section .data
  var1 dw 5
  var2 dw 10
  var3 dw 15
  var4 dw 20


section .text
  global _start


_start:

main_body:
  mov ax, [var1]
  add ax, [var2]
  add ax, [var3]
  add ax, [var4]

  mov [result], ax


exit_program:
  mov eax, 1
  xor ebx, ebx
  int 0x80
