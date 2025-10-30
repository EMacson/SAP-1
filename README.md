# SAP-1

This is my recreation of the SAP-1 computer from [Digital Computer Electronics by Albert Paul Malvino and Jerald A. Brown](https://ia800809.us.archive.org/34/items/367026792DigitalComputerElectronicsAlbertPaulMalvinoAndJeraldABrownPdf1/367026792-Digital-Computer-Electronics-Albert-Paul-Malvino-and-Jerald-A-Brown-pdf%20%281%29.pdf)

Currently I working through creating the SAP-1 in Logisim. I have previously attempted to create parts of the computer in Verilog.

### Table of Contents
1. [Logisim](#logisim)
    - [Full Adder](#full-adder)
    - [4-bit Adder-Subtractor](#4-bit-adder-dubtractor)
    - [TTL Adder-Subtractor](#ttl-adder-dubtractor)
2. [Verilog](#verilog)

## Logisim

The entire SAP-1 circuit is under SAP-1.circ, and logism needs to be installed to open the file. The following sections are in the order in which I created each subcomponent.

### Full Adder

<img src="logism\img\full-adder.png" alt="" />

### 4-bit Adder-Subtractor

a and b are 4-bit integer inputs. sub indicates if the operation is a subtraction, when sub is set to high then the operation is a-b; otherwise, the operation is a+b.

<img src="logism\img\4-bit-adder-subtractor.png" alt="" />

### TTL Adder-Subtractor

The is my recreation of the 7483 4-bit adder. a and b are 8-bit integers and sub indicates a subtraction operation, a high value sets a subtraction operation (a-b).

<img src="logism\img\TTL-adder-subtractor.png" alt="" />

## Verilog