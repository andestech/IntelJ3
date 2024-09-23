# Flash programming

This method requires a flash burner, either SPI_burn or PAR_burn, to communicate with ICEman through socket protocols. ICEman uses Andes-defined APIs to read from and write to the target via the Debug Module. 


# Pre-defined API functions

The Andes-defined API functions required for communication between a burner utility and ICEman are as follows:

- outw/outh/outb(ADDRESS, DATA): Write word, half-word, or byte data to the target.
- inw/inh/inb(ADDRESS): Read word, half-word, or byte data from the target.
- fastin(ADDRESS, SIZE, BUFFER): Use ICEman to fill the buffer with multi-word data read from the target. If Bit 1 of the memory address being read is 0, the address automatically increments by 4 (word size) after each read.
- fastout(ADDRESS, SIZE, BUFFER): Write multi-word data to the target using ICEman. If Bit 1 of the memory address being written is 0, the address automatically increments by 4 (word size) after each write.
- fastbytein(ADDRESS, SIZE, BUFFER, IF_CONST_ADDR): Use ICEman to fill the buffer with multi-byte data read from the target. If IF_CONST_ADDR is 0, the address automatically increments by 1 (byte size) after each read.
- fastbyteout(ADDRESS, SIZE, BUFFER, IF_CONST_ADDR): Write multi-byte data to the target using ICEman. If IF_CONST_ADDR is 0, the address automatically increments by 1 after each write.


# Building PAR_burn or SPI_burn burner

To customize the burner for your programming needs, follow these steps to modify and build the source code:

- Step 1
Navigate to the source folder

- Step 2
Open main.c, locate all TODO comments, and configure the relevant values for your target system.

- Step 3
Edit the appropriate file, either smcflash-IntelJ3.c, smcflash-Micron.c, or spiflash-MXIC.c, according to the instructions in its TODO comments to suit your flash programming requirements.

- Step 4
For SPI_burn only: If the SPI-ROM in your target system has a slower frequency and fails to be accessed, open platform.c, find the macros SPI_TX_FIFO and SPI_RX_FIFO (counters for accessing the SPI controller data port), and reduce their values.

- Step 5
Run the build script to compile the burner utility:
$ ./build_[SPIburn|PARburn].sh

    Note:
    Ensure that the x86 MinGW toolchain is installed to make the burner utility compatible with Windows.

- Step 6
The compiled executable, either SPI_burn.exe or PAR_burn.exe, will be located in the same folder.
To view help messages for the burner utility, use:
$ ./[PAR_burn.exe|SPI_burn.exe] -help

