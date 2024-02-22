BITS 16                         ; telling the assembler that we are using 16-bit architechture
ORG 0x7C00                      ; originate instruction

section     .data
    ; some constants
    NULL            EQU     0
    RBIL_VIDEO      EQU     0x10
    DISPLAY_CHAR    EQU     0Eh

section     .text
global _start
_start:
    mov     si, message
    call    print_message
    jmp     $                   ; infinite loop

print_message:
    mov     bx, 0
.loop:
    lodsb                       ; will load the charchter that the `SI` register is pointing to into `AL`
    cmp     al, NULL            ; check if we reached end of the string
    je      .done
    call    print_char
    jmp     .loop               ; repeat to the next charchter
.done:
    ret

print_char:
    mov     ah, DISPLAY_CHAR
    int     RBIL_VIDEO
    ret
    
message: db "Hello World!", 0   ; null terminated string
times 510- ($ - $$) db 0        ; padding
dw  0xAA55                      ; magic number
