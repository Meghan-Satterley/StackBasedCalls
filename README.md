# StackBasedCalls
coded in x86 assembly language <br>
This program passes parameters on the stack by value and by reference <br>

The following directions where given: <br>
Code these three value-returning procedures: <br>
1) integerAdd-pass parameters by value (push variables on the stack) <br>
2) integerSubtract-pass parameters by reference (push OFFSET values on the stack) <br>
3) integerMultiply-pass parameter value01 by value and parameter value02 by reference <br>

In order to run this code you will need to modify and upload to vsCode or download the following zip files: <br>
<b> masm615.zip</b> <br>
<b> Irvine.zip</b> <br>
<b> Satterley_ASM.zip</b> <br>
and store them in the C drive of your device. <br> 

Then go to the search bar at the bottom of your screen and type the letters CMD to open your command prompt. <br>
Next type or copy and paste the following lines to create an executable file and execute the program. <br> 
<b> cd C:\Satterley_ASM </b> <br>
<b> make32 Meghan-Satterley_StackBasedCalls </b> <br> <br>
You should see the following files appear in your folder directory <br> 
![make32_StackBasedCalls](https://user-images.githubusercontent.com/114275745/233820512-0d3ed779-45f8-41d9-8af8-0f0c8b0f00b1.png) <br>

<br> <br> Lastly type the following line to execute the program <br>
<b> Meghan-Satterley_StackBasedCalls </b> <br> <br>
The following will result if executed correctly <br>
![StackBasedCalls_Exe](https://user-images.githubusercontent.com/114275745/233820523-68a248fe-4e82-45c2-8ac7-82cfb69337be.png) <br>

<br> Only the eax return values have any significance
<br> This program shows basic manipulation of passing parameters on the stack (both by reference and value)
