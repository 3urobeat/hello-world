section .data                 ; we can declare variables in the data section
    msg db "Hello World", 0xa ; define byte: save our message in a memory address with the name msg (0xa means new line)
    len equ $ - msg           ; equals: get the length of msg ($ is the current memory address we are at so we subtract the address of mmsg)

section .text
    global _start

_start:
    mov rax, 1                ; mov moves the data 1 into the rax register. rax holds the syscall we want to use. 1 is sys_write
    mov rdi, 1                ; rdi holds the file descriptor. 1 is Standard Output
    mov rsi, msg              ; the rsi register holds the address of our string of data
    mov rdx, len              ; the rdx register holds the address of the length of our message
    syscall                   ; make a syscall with the arguments above

    mov rax, 60               ; sys_exit has the ID 60
    mov rdi, 0                ; sys_exit has an error code value so we use 0 to exit gracefully (basically there was no error)
    syscall

; Compile:
; nasm -f elf64 -o Assembly.o 'Assembler NASM Linux x86_64.asm'
; ld Assembly.o -o Assembly