/*
 * STM32F407VG linker script
 *
 * Memory layout:
 * - Flash: 1MB at 0x08000000
 * - RAM: 128KB at 0x20000000 (the 64KB CCM RAM at 0x10000000 is not used)
 */

MEMORY
{
    rom (rx) : ORIGIN = 0x08000000, LENGTH = 1024K
    ram (rwx) : ORIGIN = 0x20000000, LENGTH = 128K
}

/* Include the common STM32 linker script */
INCLUDE cortex-m-generic.ld

/* Additional symbols required by some code */
PROVIDE(_estack = ORIGIN(ram) + LENGTH(ram));
PROVIDE(_end = end);
