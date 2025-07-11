; result = (-var1 * var2) + var3

section .bss
  result resw 1

section .data
  var1 dw -5        ; move to ax
  var2 dw 10        ; move to dx
  var3 dw 20

section .text
    global _start

_start:

main_body:
  mov ax, [var1]
  mov dx, [var2]

  imul dx
  add ax, [var3]

  mov [result], ax
  

exit_program:
  mov eax, 1
  xor ebx, ebx
  int 0x80
