During a past interview for an RTL Design position, 
I was asked to write Verilog RTL code that generates the following sequence: 
1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9.

At first, I thought it would be a straightforward task. However, the interviewer then specified a 
constraint: the sequence generation should utilize a single counter that is enabled and 
disabled each time the output value changes.

While my initial approach seemed simple, developing a fully functional and 
correct RTL implementation under that specific constraint took me approximately 40 minutes.


The below github link containts 
1. Verilog RTL Code
2. Verilog Test Bench
3. Simulation Result (Image and Monitor Result) 
4. Synthesis Schematic 
 