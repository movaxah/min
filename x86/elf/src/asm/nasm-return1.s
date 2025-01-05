BITS 32
GLOBAL _start
SECTION .text
_start:
                mov     eax, 1
                mov     ebx, 1 
                int     0x80
