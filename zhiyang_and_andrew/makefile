###########################################################################
# This is written by Zhiyang Ong
# and Andrew Mattheisen 
# Acknowledgements: Prof. Rashed Bhatti for providing the original script 
#
# 
#
#
#
#






#####################################################################
# TARGETS THAT WORK FOR OUR DESIGN

# Target to compile and simulate the convolutional encoder
# Requires the updating the script cencodertb.f
test_enc:
	@echo Test the convolutional encoder
	ncverilog -f cencodertb.f +gui


# Target to compile and simulate the add-compare-select circuit
# Requires the updating the script acstb.f
test_acs:
	@echo Test the add-compare-select circuit
	ncverilog -f acstb.f +gui


# Target to compile and simulate the Viterbi decoder
# Requires the updating the script viterbidec.f
test_vit:
	@echo Test the Viterbi decoder
	ncverilog -f viterbidec.f +gui


# Target to compile and simulate the selector
# Requires the updating the script selectortb.f
test_sel:
	@echo Test the selector
	ncverilog -f selectortb.f +gui


# Target to compile and simulate the Branch Metric Unit
# Requires the updating the script bmutb.f
test_bmu:
	@echo Test the Branch Metric Unit
	ncverilog -f bmutb.f +gui


# Target to compile and simulate the random number generator
# Store the random number in the file testfile.bit
# Requires the updating the script generatedata.f
test_rnd:
	@echo Generate some random numbers
	ncverilog -f generatedata.f +gui


# Target to compile and simulate the communications channel
# Requires the updating the script generatedata.f
test_cch:
	@echo Test the communications channel
	ncverilog -f commschannel.f +gui


# Target to compile and simulate the 2-bit 2-input XOR gate
# Requires the updating the script xor2.f
test_xor:
	@echo Test the 2-bit 2-input XOR gate
	ncverilog -f xor2.f +gui


# Target to compile and simulate the noise generator
# Requires the updating the script noisegentb.f
test_n_g:
	@echo Test the noise generator
	ncverilog -f noisegentb.f +gui


# Target to compile and simulate the pipe
# Requires the updating the script pipe.f
test_pip:
	@echo Test the pipe
	ncverilog -f pipe.f +gui


# Target to compile and simulate the pipe with 2-bit
# input/output.
# Requires the updating the script pipe2.f
test_pp2:
	@echo Test the pipe with 2-bit input/output
	ncverilog -f pipe2.f +gui


# Target to compile and simulate the dummy file to
# test Verilog concepts.
# Requires the updating the script pipe2.f
test_z:
	@echo Test some Verilog concepts
	ncverilog -f z.f +gui







# Target to compile and simulate the communications channel
# Synthesized target
# Requires the updating the script generatedata.f
test_sch:
	@echo Test the synthesized communications channel
	ncverilog -f syncommschannel.f +gui


# Target to compile and simulate the Viterbi decoder
# Synthesized target
# Requires the updating the script viterbidec.f
test_svd:
	@echo Test the synthesized Viterbi decoder
	ncverilog -f synviterbidec.f +gui





