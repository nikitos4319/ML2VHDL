use work.activations.all;
use work.datatypes.all;
library IEEE;
use IEEE.MATH_REAL.ALL;

entity dense_1 is
port(
	input: in Vector(0 to 7):=(others=>0.0);
	Neuron: out Vector(0 to 9):=(others=>0.0)
);
end dense_1;

architecture struct of dense_1 is

constant W0: Vector(0 to 9) := (0.17737357,0.029250622,0.27476433,-0.14296478,0.29578167,0.059383783,-0.32119274,-0.13432898,0.2560094,0.08066931);
constant W1: Vector(0 to 9) := (0.7351561,-0.47099137,0.1515566,-0.26899612,-0.6883571,0.83129334,-0.13105054,-0.36999926,0.34726158,0.40798017);
constant W2: Vector(0 to 9) := (-0.09545828,0.03334454,-0.48559797,0.14924014,0.014274866,-0.29539445,0.50792426,0.014444797,-0.33402857,0.3241865);
constant W3: Vector(0 to 9) := (-0.16295137,-0.10778222,0.0021910905,-0.030397177,0.22970755,0.017091382,-0.70731187,0.29305553,0.23488283,0.3561759);
constant W4: Vector(0 to 9) := (0.5624613,-0.3732219,0.5008739,0.19647264,0.14656655,0.2182096,-0.37778077,0.33950418,-0.59704095,0.38840604);
constant W5: Vector(0 to 9) := (0.25303772,-0.20783743,-0.433308,-0.4075445,0.6516829,0.48173493,-0.415681,0.037541017,0.8858509,0.10291299);
constant W6: Vector(0 to 9) := (0.7976487,-0.29031244,0.10463718,-0.104730815,0.24282591,0.14309932,-0.03860147,0.17063391,-0.084888026,-0.3690683);
constant W7: Vector(0 to 9) := (0.64210767,0.85527825,0.6495626,-0.25700906,-0.0018056503,0.14915207,0.26126763,-0.8989522,-0.20280254,-0.0056833117);
constant b: Vector(0 to 9) := (-0.34923422,0.44284463,0.15133668,0.0,-0.17428426,-0.384024,-0.07512841,0.54402,-0.11130876,0.49636713);

begin
	Neuron(0) <= relu((input(0)*W0(0))+(input(1)*W1(0))+(input(2)*W2(0))+(input(3)*W3(0))+(input(4)*W4(0))+(input(5)*W5(0))+(input(6)*W6(0))+(input(7)*W7(0))+b(0));
	Neuron(1) <= relu((input(0)*W0(1))+(input(1)*W1(1))+(input(2)*W2(1))+(input(3)*W3(1))+(input(4)*W4(1))+(input(5)*W5(1))+(input(6)*W6(1))+(input(7)*W7(1))+b(1));
	Neuron(2) <= relu((input(0)*W0(2))+(input(1)*W1(2))+(input(2)*W2(2))+(input(3)*W3(2))+(input(4)*W4(2))+(input(5)*W5(2))+(input(6)*W6(2))+(input(7)*W7(2))+b(2));
	Neuron(3) <= relu((input(0)*W0(3))+(input(1)*W1(3))+(input(2)*W2(3))+(input(3)*W3(3))+(input(4)*W4(3))+(input(5)*W5(3))+(input(6)*W6(3))+(input(7)*W7(3))+b(3));
	Neuron(4) <= relu((input(0)*W0(4))+(input(1)*W1(4))+(input(2)*W2(4))+(input(3)*W3(4))+(input(4)*W4(4))+(input(5)*W5(4))+(input(6)*W6(4))+(input(7)*W7(4))+b(4));
	Neuron(5) <= relu((input(0)*W0(5))+(input(1)*W1(5))+(input(2)*W2(5))+(input(3)*W3(5))+(input(4)*W4(5))+(input(5)*W5(5))+(input(6)*W6(5))+(input(7)*W7(5))+b(5));
	Neuron(6) <= relu((input(0)*W0(6))+(input(1)*W1(6))+(input(2)*W2(6))+(input(3)*W3(6))+(input(4)*W4(6))+(input(5)*W5(6))+(input(6)*W6(6))+(input(7)*W7(6))+b(6));
	Neuron(7) <= relu((input(0)*W0(7))+(input(1)*W1(7))+(input(2)*W2(7))+(input(3)*W3(7))+(input(4)*W4(7))+(input(5)*W5(7))+(input(6)*W6(7))+(input(7)*W7(7))+b(7));
	Neuron(8) <= relu((input(0)*W0(8))+(input(1)*W1(8))+(input(2)*W2(8))+(input(3)*W3(8))+(input(4)*W4(8))+(input(5)*W5(8))+(input(6)*W6(8))+(input(7)*W7(8))+b(8));
	Neuron(9) <= relu((input(0)*W0(9))+(input(1)*W1(9))+(input(2)*W2(9))+(input(3)*W3(9))+(input(4)*W4(9))+(input(5)*W5(9))+(input(6)*W6(9))+(input(7)*W7(9))+b(9));
end struct;