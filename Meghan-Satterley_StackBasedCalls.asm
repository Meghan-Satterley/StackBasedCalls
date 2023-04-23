;Meghan Satterley
;Spring 2022
;this program passes parameters on the stack by value and by reference

TITLE Stack-Based Calls (Meghan-Satterley_StackBasedCalls.asm)

INCLUDE Irvine32.inc

.data
value01 DWORD 024h   ; decimal 36
value02 DWORD 065h   ; decimal 101

.code
main PROC

    push    value01		;push varibables on the stack
    push    value02
    call    integerAdd
    call WriteInt

    push    OFFSET value01	;push offset values on to stack
    push    OFFSET value02
    call    integerSubtract
    call WriteInt

    push    value01
    push    OFFSET value02
    call    integerMultiply
    call WriteInt

    call    Crlf
    call    Crlf
    call    WaitMsg

    exit

main ENDP

integerAdd PROC			;pass parameters by value

    call    Clrscr
    push    ebp
    mov     ebp,esp
    mov     eax,[ebp + 12]
    add     eax,[ebp + 8]
    call    DumpRegs
    pop     ebp
    ret 8				;return to calling routine and clean up stack

integerAdd ENDP 

integerSubtract PROC		;pass parameters by reference

    push    ebp
    mov     ebp,esp
    push    esi
    mov     esi,[ebp + 12]
    mov     eax,[esi]
    mov     esi,[ebp + 8]
    sub     eax,[esi]
    call    DumpRegs
    pop     esi
    pop     ebp
    ret 8				;return to calling routine and clean up stack

integerSubtract    ENDP

integerMultiply PROC		;pass value01 by value and value02 by reference

    push    ebp
    mov     ebp,esp
    push    esi
    mov     ebx,[ebp + 12]
    mov     esi,[ebp + 8]
    mov     eax,[esi]
    mul     ebx
    call    DumpRegs
    pop     esi
    pop     ebp
    ret 8				;return to calling routine and clean up stack

integerMultiply    ENDP
END main