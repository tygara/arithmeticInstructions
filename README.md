# Lab: Assembly Arithmetic Operations

## Task

Write a code in Assembly that uses uninitialized and initialized
variables for the following arithmetic instructions:

1.) result = -var1 * 10
2.) result = var1 + var2 + var3 + var4
3.) result = (-var1 * var2) + var3
4.) result = (var1 * 2) / (var2 - 3)

## Flowchart

[Flowchart](docs/flowchart.png)

## Challenges Faced During the Lab

### Phase 1: Planning

In the planning stage, understanding the data types in x86
architecture was critical. Knowing which registers to use
based on the size of the data types (byte, word, doubleword)
took time to grasp. I had to reinforce my understanding of the 
relationships between `al`, `ax`, and `eax`, and how data size 
affects the instructions used.

### Phase 2: Implementation

Implementing the logic with correct order of operations was
a key challenge. Multiplication and division required precise
handling of registers and operand sizes. I also had to be
mindful of how the results are stored, for example: 
`imul` stores the result in `ax`, and dividing with `div`
requires the dividend to be set up in `ax` or `dx:ax`
depending on operand size.

Writing the result back to memory (`[result]`) needed the
correct size specifier (`resb` for 8-bit,`resw` for 16-bit, `resd` for 32-bit),
or else GDB would not interpret the output as expected.

### Phase 3: Debugging

During debugging, I faced several issues:

- GDB required the right format for watch variables
  (`watch (short) result` or `watch (int) result`) depending
  on the reserved size.
- I had to remember how to clear `dx` before division
  to avoid unexpected remainders.
- Understanding how to step through the code in `gdb` using
  `layout asm`, `layout regs`, `stepi`, and `watch`.

