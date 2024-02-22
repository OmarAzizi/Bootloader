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

Then you should see this

![Screenshot from 2024-02-23 02-35-14](https://github.com/OmarAzizi/Bootloader/assets/110500643/2e37adc6-4045-40f9-b76f-d50a7a0c6a59)

