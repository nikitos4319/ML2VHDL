use work.activations.all;
use work.datatypes.all;
library IEEE;
use IEEE.MATH_REAL.ALL;

entity dense_2 is
port(
	input: in Vector(0 to 9):=(others=>0.0);
	Neuron: out Vector(0 to 5):=(others=>0.0)
);
end dense_2;

architecture struct of dense_2 is

constant W0: Vector(0 to 5) := (0.2843399,-0.5318437,-0.3915597,-1.2233897,1.2994711,0.37202668);
constant W1: Vector(0 to 5) := (-1.1919,0.25971353,-0.010358636,0.657057,-1.538661,0.23964925);
constant W2: Vector(0 to 5) := (0.12592407,-0.502056,-0.37984768,0.8632901,-0.49105468,0.38792583);
constant W3: Vector(0 to 5) := (0.4795944,0.55721873,-0.5994956,0.35749125,-0.16354561,-0.42080677);
constant W4: Vector(0 to 5) := (0.26617786,0.034801543,-0.112139426,-1.3452399,0.53409,-0.76773155);
constant W5: Vector(0 to 5) := (0.28807253,0.22139716,-0.28637326,-0.7398709,0.74989134,-0.83793885);
constant W6: Vector(0 to 5) := (-0.36227486,-0.34281495,0.37341577,-0.95284617,0.5282214,-1.265686);
constant W7: Vector(0 to 5) := (0.47509652,-0.36073118,-0.596642,1.2809248,-0.721486,0.63080937);
constant W8: Vector(0 to 5) := (-0.58606,-0.031242609,0.37356666,-0.21214391,1.562985,-0.36441043);
constant W9: Vector(0 to 5) := (-0.27595216,-0.5687988,0.09615194,0.5317248,0.4439067,-0.039441478);
constant b: Vector(0 to 5) := (-0.056868576,0.0,-0.054524537,0.47520226,-0.40537003,0.3511208);

begin
	Neuron(0) <= relu((input(0)*W0(0))+(input(1)*W1(0))+(input(2)*W2(0))+(input(3)*W3(0))+(input(4)*W4(0))+(input(5)*W5(0))+(input(6)*W6(0))+(input(7)*W7(0))+(input(8)*W8(0))+(input(9)*W9(0))+b(0));
	Neuron(1) <= relu((input(0)*W0(1))+(input(1)*W1(1))+(input(2)*W2(1))+(input(3)*W3(1))+(input(4)*W4(1))+(input(5)*W5(1))+(input(6)*W6(1))+(input(7)*W7(1))+(input(8)*W8(1))+(input(9)*W9(1))+b(1));
	Neuron(2) <= relu((input(0)*W0(2))+(input(1)*W1(2))+(input(2)*W2(2))+(input(3)*W3(2))+(input(4)*W4(2))+(input(5)*W5(2))+(input(6)*W6(2))+(input(7)*W7(2))+(input(8)*W8(2))+(input(9)*W9(2))+b(2));
	Neuron(3) <= relu((input(0)*W0(3))+(input(1)*W1(3))+(input(2)*W2(3))+(input(3)*W3(3))+(input(4)*W4(3))+(input(5)*W5(3))+(input(6)*W6(3))+(input(7)*W7(3))+(input(8)*W8(3))+(input(9)*W9(3))+b(3));
	Neuron(4) <= relu((input(0)*W0(4))+(input(1)*W1(4))+(input(2)*W2(4))+(input(3)*W3(4))+(input(4)*W4(4))+(input(5)*W5(4))+(input(6)*W6(4))+(input(7)*W7(4))+(input(8)*W8(4))+(input(9)*W9(4))+b(4));
	Neuron(5) <= relu((input(0)*W0(5))+(input(1)*W1(5))+(input(2)*W2(5))+(input(3)*W3(5))+(input(4)*W4(5))+(input(5)*W5(5))+(input(6)*W6(5))+(input(7)*W7(5))+(input(8)*W8(5))+(input(9)*W9(5))+b(5));
end struct;