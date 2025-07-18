@echo off
cargo bootimage
if %errorlevel% neq 0 exit /b %errorlevel%

qemu-system-x86_64 -drive format=raw,file=target/x86_64-ricky_os/debug/bootimage-ricky_os.bin