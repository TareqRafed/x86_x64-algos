
# Collection of x86, x64 Algorithms

Only Intel syntax of instructions in addition to MASM and NASM Assemblers.
For x86 MASM I used Irvine32.inc library, while for NASM I'm using from-scratch procedures.

All the algorithms are written to be interactive via terminal.


## **Windows**

You have to install Visual Studio, in addition to importing the Irvine32 library [more details](https://asmirvine.com/gettingstartedvs2019/index.htm)

## **Linux**

You have to install NASM.

***Arch***
	
    sudo pacman -S nasm

***Debian***
	
    sudo apt install nasm
   
   Then you have to follow these commands
   
       cd x86/nasm
       make File=%Name of the algo you want to run%
   
   *Note: You should only pass the root files in x86/nasm*
   *Example:*
		   

	    make File=fib
