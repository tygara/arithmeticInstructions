; result = (var1 * 2)/(var2 - 3) - result must be an integer

section .bss
  result resw 1

section .data
  var1 dw 25
  var2 dw 28


section .text
    global _start

_start:

main_body:
  mov ax, [var1]      ; ax -> 25[var1]
  mov cx, 2           ; dx -> 2
  mul cx              ; ax x dx -> ax

  mov bx, [var2]      ; bx -> 28[var2]
  mov cx, 3           ; dx -> 3
  sub bx,cx           ; bx - dx = 28 - 3 -> bx 

  xor dx, dx          ; cleared dx:ax registers for quotient and remainder. 
  div bx

  mov [result], ax


exit_program:
  mov eax, 1
  xor ebx, ebx
  int 0x80
