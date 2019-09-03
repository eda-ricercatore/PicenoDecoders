PicenoDecoders
==============

Encoders and decoders for encoding and decoding, and error detection and correction.

##	Hamming encoders and decoders

[Hamming encoders and decoders](https://github.com/eda-ricercatore/PicenoDecoders/tree/master/extra_credit)

##	Viterbi Decoder

+ Designed the synthesizable behavioral *Verilog* RTL model of the Viterbi decoder.
+ Developed a model of a digital communications system, which is comprised of its transmitting-end, a noisy communications channel, and its receiving-end. In the transmitting-end of this communications system, data is encoded. In the model of the communications channel, as the data passes through the channel, data is intentionally corrupted randomly. *Verilog*'s random number generator is used to do this. In the receiving-end of this communications system, data is decoded.
+ Developed *Verilog* testbenches for each *Verilog* module in this communications system. Used these testbenches for unit testing and regression testing. A *Makefile* is provided for "build automation" (or the automation of analyzing and elaborating the RTL designs, and simulating them).
+ Carried out static timing analysis on synthesized *Verilog* netlist of the Viterbi decoder.
+ Extracted synthesized *Verilog* netlist of the Viterbi decoder to a *SPICE* netlist, and simulated the *SPICE* netlist with the *Synopsys NanoSim* circuit simulator.
+ See [Viterbi decoder](https://github.com/eda-ricercatore/PicenoDecoders/tree/master/zhiyang_and_andrew) for the *Verilog* source code for this project.
+ See [Viterbi_decoder_AJM_ZO.pdf](https://github.com/eda-ricercatore/eda-ricercatore.github.io/blob/master/vecchi-progetti/vlsi-design-projects/Viterbi_decoder_AJM_ZO.pdf) for the project report.


## Encoders and their Corresponding Error Correcting Decoders Based on Coding Theory

A *Perl* script is used to generate the synthesizable behavioral RTL for an encoder and a decoder for error correction using coding theory. The RTL is generated based on a given generator matrix or parity-check matrix. The *Perl* script processes the matrix that is stored in an input file, and creates the pair of corresponding generator and parity-check matrices. Next, these matrices are used to generate the RTL models for the encoder and the decoder.

Files: [vparse.pl](https://github.com/eda-ricercatore/PicenoDecoders/blob/master/zhiyang_extra_credit_2/scripts/vparse.pl) (the *Perl* script), [read_me.md](https://github.com/eda-ricercatore/PicenoDecoders/blob/master/zhiyang_extra_credit_2/scripts/readme.md) (the *readme* file describing how to use the script, what does it do, and what does it not do), [input.txt](https://github.com/eda-ricercatore/PicenoDecoders/blob/master/zhiyang_extra_credit_2/scripts/input.txt) (a sample input text file containing a matrix), and [input_matrices](https://github.com/eda-ricercatore/PicenoDecoders/tree/master/zhiyang_extra_credit_2/scripts/input_matrices) (more files containing matrices). Note that the given generator matrix or parity-check matrix can have its columns rearranged.












