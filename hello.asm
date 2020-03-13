section .data
    text db "Hello, World!", 10

# section .bss

section .text
    global _start

# _start label is mandatory, acts as the entry point for the program
_start:
    # write to standard output file descriptor
    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, 14
    syscall
    # exit program
    mov rax 60
    mov rdi, 0
    syscall