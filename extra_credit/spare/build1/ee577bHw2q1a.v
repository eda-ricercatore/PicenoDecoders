/**
 * This is written by Zhiyang Ong
 * for EE577b Homework 2, Question 1
 */

// Behavioral model for Finite State Machine model of the vending machine
module fsmVendingMachine(disp_Q,disp_D,disp_N,disp_P,done,
	money,price,start,clk,reset);
	
	/**
	 * Output signals representing the dispense enable inputs for the
	 * following denominations:
	 * disp_Q: quarter
	 * disp_D: dime
	 * disp_N: nickel
	 * disp_P: penny
	 *
	 * Output signal representing the end of the transaction:
	 * done:
	 */
	output reg disp_Q,disp_D,disp_N,disp_P,done;
	
	/**
	 * Input signals
	 * money: Money paid by the consumer for the item
	 * price: Price of the food item
	 * start: The signal to initialize the coin dispensing solution
	 * clk: The clock signal that synchronously control the signal
	 * reset: The signal to bring the FSM (coin dispenser) to its initial state
	 */
	input [6:0] money,price;
	input start,clk,reset;
	
	/**
	 * Declare signal types for testbench to drive and monitor
	 * signals during the simulation of the counter
	 *
	 * The reg data type holds a value until a new value is driven
	 * onto it in an "initial" or "always" block. It can only be
	 * assigned a value in an "always" or "initial" block, and is
	 * used to apply stimulus to the inputs of the DUT.
	 *
	 * The wire type is a passive data type that holds a value driven
	 * onto it by a port, assign statement or reg type. Wires cannot be
	 * assigned values inside "always" and "initial" blocks. They can
	 * be used to hold the values of the DUT's outputs
	 */
	
	// Declare "wire" signals: outputs from the DUT
	//wire FSM_OUTPUT;
	
	/**
	 * Declare "reg" signals: inputs to the DUT
	 * state: current state of the FSM
	 * nextstate: next state of the FSM
	 */
	reg [3:0] state, nextstate;
	reg [6:0] change;
	/**
	 * Boolean flag to indicate if the done signal should remain high,
	 * and if the change should be updated
	 */
	reg flagDone;
	
	// Defining constants: parameter [name_of_constant] = value;
	// Definitions for the states in the vending machine
	// Initial state of the FSM
	parameter Sinitial = 4'b0000;
	// State of the FSM where change >= a quarter
	parameter Squarter = 4'b0001;
	// State of the FSM where change >= a dime
	parameter Sdime = 4'b0010;
	// State of the FSM where change >= a nickel
	parameter Snickel = 4'b0011;
	// State of the FSM where change >= a penny
	parameter Spenny = 4'b0100;
	// Final state of the FSM
	parameter Sfinal = 4'b0101;
	// Temporary transition state for a quarter
	parameter SquarterTemp = 4'b0110;
	// Temporary transition state for a dime
	parameter SdimeTemp = 4'b0111;
	// Temporary transition state for a nickel
	parameter SnickelTemp = 4'b1000;
	// Temporary transition state for a penny
	parameter SpennyTemp = 4'b1001;
	
	
	// State Memory
	always @(posedge clk)
	begin
		// Synchronous reset
		if (reset)
			// Go to the initial state
			state <= Sinitial;
		else
			// Move/Proceed to the next state
			state <= nextstate;
	end
	
	
	/**
	 * Next State Logic
	 */
	always @(*)
	begin
		case (state)
			Sinitial:
				begin
					if(money < price)
					begin
						change = money;
					end
					else
					begin
						change = money - price;
					end
					
					
					if (start & (change == 0))
					begin
						$display($time, " << Go to State $0.00 >>",change);
						nextstate <= Sfinal;
					end
					else if (start & (change >= 7'd25))
					begin
						$display($time, " << Go to State $0.25 >>",change);
						nextstate <= Squarter;
					end
					else if (start & (change >= 7'd10))
					begin
						$display($time, " << Go to State $0.10 >>",change);
						nextstate <= Sdime;
					end
					else if (start & (change >= 7'd5))
					begin
						$display($time, " << Go to State $0.05 >>",change);
						nextstate <= Snickel;
					end
					else if (start & (change >= 7'd1))
					begin
						$display($time, " << Go to State $0.01 >>",change);
						nextstate <= Spenny;
					end
					else
					begin
						nextstate <= Sfinal;
					end
				end
			Squarter:
				begin
					$display($time, " << Reached State $0.25 >>", change);
					change = change - 7'd25;
					$display(" << New change for $0.25 >>", change);
					if (change >= 7'd25)
					begin
						nextstate <= SquarterTemp;
					end
					else if (change >= 7'd10)
					begin
						nextstate <= Sdime;
					end
					else if (change >= 7'd5)
					begin
						nextstate <= Snickel;
					end
					else if (change >= 7'd1)
					begin
						nextstate <= Spenny;
					end
					else
					begin
						// There is no change
						nextstate <= Sfinal;
					end
				end
			Sdime:
				begin
					$display($time, " << Reached State $0.10 >>", change);
					change = change - 7'd10;
					$display(" << New change for $0.10 >>", change);
					if (change >= 7'd25)
					begin
						nextstate <= Squarter; 
					end
					else if (change >= 7'd10)
					begin
						$display(" << Return to the Dime state >>", change);
						nextstate <= SdimeTemp;
					end
					else if (change >= 7'd5)
					begin
						nextstate <= Snickel;
					end
					else if (change >= 7'd1)
					begin
						nextstate <= Spenny;
					end
					else
					begin
						// There is no change
						nextstate <= Sfinal;
					end
				end
			Snickel:
				begin
					$display($time, " << Reached State $0.05 >>", change);
					change = change - 7'd5;
					$display(" << New change for $0.05 >>", change);
					if (change >= 7'd25)
					begin
						nextstate <= Squarter;
					end
					else if (change >= 7'd10)
					begin
						nextstate <= Sdime;
					end
					else if (change >= 7'd5)
					begin
						nextstate <= SnickelTemp;
					end
					else if (change >= 7'd1)
					begin
						nextstate <= Spenny;
					end
					else
					begin
						// There is no change
						nextstate <= Sfinal;
					end
				end
			Spenny:
				begin
					$display($time, " << Reached State $0.01 >>",change);
					change = change - 7'd1;
					$display(" << New change for $0.01 >>", change);
					if (change >= 7'd25)
					begin
						nextstate <= Squarter;
					end
					else if (change >= 7'd10)
					begin
						nextstate <= Sdime;
					end
					else if (change >= 7'd5)
					begin
						nextstate <= Snickel;
					end
					else if (change >= 7'd1)
					begin
						$display(" << Change for additional $0.01 >>", change);
						nextstate <= SpennyTemp;
						$display(" << Changed ==> >>", change);
					end
					else if (change == 0)
					begin
						// There is no change
						$display(" << No More Change >>", change);
						nextstate <= Sfinal;
					end

				end
			Sfinal:
				begin
					$display($time, " << Reached State $0.00 >>",change);
					
					if ((change < 7'd5) & (change > 0)) 
					begin
						$display($time, " << Go to State Penny >>",change);
						nextstate <= Spenny;
					end
					else
					begin
						if (start)
						begin
							$display($time, " << Go to Initial State >>",change);
							nextstate <= Sinitial;
						end
						else
						begin
							$display($time, " << Remain at Next State >>",change);
							nextstate <= Sfinal;
						end
					end
				end
				
			SquarterTemp:
				begin
					$display($time, " << Reached Temp State $0.25 >>",change);
					nextstate <= Squarter;
				end
			SdimeTemp:
				begin
					$display($time, " << Reached Temp State $0.10 >>",change);
					nextstate <= Sdime;
				end
			SnickelTemp:
				begin
					$display($time, " << Reached Temp State $0.05 >>",change);
					nextstate <= Snickel;
				end
			SpennyTemp:
				begin
					$display($time, " << Reached Temp State $0.01 >>",change);
					nextstate <= Spenny;
				end
				
			default:
				begin
					nextstate <= Sinitial;
				end
		endcase
	end
	
	
	// Output Logic
	always @(state)
	begin
		case(state)
			Sinitial:
				begin
					disp_Q <= 0;
					disp_D <= 0;
					disp_N <= 0;
					disp_P <= 0;
					done <= 0;
				end
			Squarter:
				begin
					disp_Q <= 1;
					disp_D <= 0;
					disp_N <= 0;
					disp_P <= 0;
					done <= 0;
				end
			Sdime:
				begin
					disp_Q <= 0;
					disp_D <= 1;
					disp_N <= 0;
					disp_P <= 0;
					done <= 0;
				end
			Snickel:
				begin
					disp_Q <= 0;
					disp_D <= 0;
					disp_N <= 1;
					disp_P <= 0;
					done <= 0;
				end
			Spenny:
				begin
					disp_Q <= 0;
					disp_D <= 0;
					disp_N <= 0;
					disp_P <= 1;
					done <= 0;
				end
			Sfinal:
				begin
					disp_Q <= 0;
					disp_D <= 0;
					disp_N <= 0;
					disp_P <= 0;
					done <= 1;
				end
				
			SquarterTemp:
				begin
					disp_Q <= 0;
					disp_D <= 0;
					disp_N <= 0;
					disp_P <= 0;
					done <= 0;
				end
			SdimeTemp:
				begin
					disp_Q <= 0;
					disp_D <= 0;
					disp_N <= 0;
					disp_P <= 0;
					done <= 0;
				end
			SnickelTemp:
				begin
					disp_Q <= 0;
					disp_D <= 0;
					disp_N <= 0;
					disp_P <= 0;
					done <= 0;
				end
			SpennyTemp:
				begin
					disp_Q <= 0;
					disp_D <= 0;
					disp_N <= 0;
					disp_P <= 0;
					done <= 0;
				end
				
			default:
				begin
					disp_Q <= 0;
					disp_D <= 0;
					disp_N <= 0;
					disp_P <= 0;
					done <= 1;
				end
		endcase
	end
	
endmodule
