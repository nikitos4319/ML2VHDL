use work.datatypes.all;
library IEEE;
use IEEE.MATH_REAL.ALL;
package activations is
	function relu (Z : REAL) return REAL;
	function sigmoid (Z : REAL) return REAL;
	function softplus (Z : REAL) return REAL;
	function linear (Z : REAL) return REAL;
	function softsign (Z : REAL) return REAL;
	function softmax (Z : Vector) return Vector;
end activations;

package body activations is
	function relu (Z : REAL) return REAL is  
	variable res : REAL;
	begin
		if (Z < 0.0) then
			res := 0.0;
		else
			res := Z;
		end if;
		return res;
	end relu;
	
	function sigmoid (Z : REAL) return REAL is  
	begin
		return 1.0/(EXP(-Z)+1.0);
	end sigmoid;
	
	function softplus (Z : REAL) return REAL is  
	begin
		return LOG(EXP(Z)+1.0);
	end softplus;
	
	function linear (Z : REAL) return REAL is  
	begin
		return Z;
	end linear;
	
	function softsign (Z : REAL) return REAL is  
	variable res : REAL;
	begin
		if (Z < 0.0) then 
			res := Z/(-Z+1.0);
		else 
			res := Z/(Z+1.0);
		end if;
		return res;
	end softsign;
	
	function softmax (Z : Vector) return Vector is
	variable res : Vector(Z'range);
	variable sum : REAL := 0.0;
	begin
		for i in Z'range loop
			sum := sum + Z(i);
		end loop;
		for i in Z'range loop
			res(i) := EXP(Z(i))/sum;
		end loop;	
		return res;
	end softmax;
	
end activations;