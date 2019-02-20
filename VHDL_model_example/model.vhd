use work.activations.all;use work.datatypes.all;
library IEEE;
use IEEE.MATH_REAL.ALL;

entity model is
port(
	input: in Vector(0 to 7);
	output: out Vector(0 to 0)
);
end model;

architecture struct of model is

component dense_1
	port(input: in Vector(0 to 7);Neuron: out Vector(0 to 9));
end component;
component dense_2
	port(input: in Vector(0 to 9);Neuron: out Vector(0 to 5));
end component;
component dense_3
	port(input: in Vector(0 to 5);Neuron: out Vector(0 to 0));
end component;

signal f1: Vector(0 to 9);
signal f2: Vector(0 to 5);
begin
layer0: dense_1 port map(input, f1);
layer1: dense_2 port map(f1, f2);
layer2: dense_3 port map(f2, output);
end struct;