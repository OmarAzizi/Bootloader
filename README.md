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

Run with [QEMU](https://www.qemu.org/)

```bash
qemu-system-x86_64 -hda boot.bin
```

![Screenshot from 2024-02-23 02-32-55](https://github.com/OmarAzizi/Bootloader/assets/110500643/cf40a31f-2383-4a30-bed0-f14bb7c25693)

