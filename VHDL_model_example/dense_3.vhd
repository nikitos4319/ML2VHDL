use work.activations.all;
use work.datatypes.all;
library IEEE;
use IEEE.MATH_REAL.ALL;

entity dense_3 is
port(
	input: in Vector(0 to 5):=(others=>0.0);
	Neuron: out Vector(0 to 0):=(others=>0.0)
);
end dense_3;

architecture struct of dense_3 is

constant W0: Vector(0 to 0) := (-0.70015186, others => 0.0);
constant W1: Vector(0 to 0) := (-0.61453, others => 0.0);
constant W2: Vector(0 to 0) := (0.73317605, others => 0.0);
constant W3: Vector(0 to 0) := (-1.6146388, others => 0.0);
constant W4: Vector(0 to 0) := (1.2084255, others => 0.0);
constant W5: Vector(0 to 0) := (-1.0891341, others => 0.0);
constant b: Vector(0 to 0) := (-0.35897696, others => 0.0);

begin
	Neuron(0) <= sigmoid((input(0)*W0(0))+(input(1)*W1(0))+(input(2)*W2(0))+(input(3)*W3(0))+(input(4)*W4(0))+(input(5)*W5(0))+b(0));
end struct;