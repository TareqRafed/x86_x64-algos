; common constants

%ifndef GLOBAL_ASM
    %define GLOBAL_ASM

        %define STDIN 0
        %define STDOUT 0x01

        ; SYSCALLS
        %define SYS_EXIT 0x01
        %define SYS_read 0x03
        %define SYS_write 0x04

%endif