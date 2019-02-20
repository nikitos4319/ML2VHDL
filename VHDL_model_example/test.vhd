use work.datatypes.all;
library IEEE;
use IEEE.MATH_REAL.ALL;

library std;
use std.textio.all;
entity test is
end test;

architecture struct of test is

signal inputSet: Vector(0 to 7):=(others=>0.0);
signal outputSet: Vector(0 to 0);
component model
port(
	input: in Vector(0 to 7);
	output: out Vector(0 to 0)
);
end component;
begin
	NN0: model port map(inputSet, outputSet);

	process
		file file_r : text;
		variable line_var : line;
		variable inval : REAL;
	begin
		file_open(file_r, "input.txt",  read_mode);
		while(NOT ENDFILE(file_r)) loop
			readline(file_r,line_var);
			for i in 0 to 7 loop
				read(line_var, inval);
				inputSet(i) <= inval;
			end loop;
			wait for 100 ns;
		end loop;
		file_close(file_r);
		wait;
	end process;
end struct;