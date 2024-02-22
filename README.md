# Bootloader
A simple bootloader that prints "Hello World!" to the BIOS screen.

## Clone & Run
Clone the Repository

```bash
git clone https://github.com/OmarAzizi/Bootloader.git && cd Bootloader
```
Assemble into a **raw binary** file with nasm

```bash
nasm -f bin boot.asm -o boot.bin
```

Run with QEMU

```bash
qemu-system-x86_64 -hda boot.bin
```
