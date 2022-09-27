global main
extern scanf, printf

section .text
main:
        push rbp
        mov rbp,rsp
        sub rsp,16

        mov eax,0
        lea rdi,[message]
        call printf

        mov eax,0
        lea rdi,[form_int_inp]
        lea rsi,[inte]
        call scanf

        mov eax,0
        lea rdi,[form_out_int]
        mov edx,[inte]
        call printf

        mov eax,0
        lea rdi,[form_str_inp]
        lea rsi,[st]
        call scanf

        mov eax,0
        lea rdi,[form_out_str]
        lea rsi,[st]
        call printf

        add rsp,16
        leave
        ret

section .data
message: db "Enter integer and String: ",10,0
form_int_inp: db "%d",0
form_str_inp: db "%s",0
form_out_int: db "The given integer is %d",10,0
form_out_str: db "The given string is %s",10,0


section .bss
inte resb 4
st resb 100

