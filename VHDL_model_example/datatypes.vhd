library IEEE;
use IEEE.MATH_REAL.ALL;
--use float_pkg.all;
package datatypes is
	type Vector is array(natural range <>) of real;
	function serial_Vectormul (a,b : Vector) return REAL;
end datatypes;

package body datatypes is

	function serial_Vectormul (a,b : Vector) return REAL is  
	variable res:REAL;
	begin
		for i in a'range loop
			res := res + (a(i)*b(i));
		end loop;
		return res;
	end serial_Vectormul;
	
end datatypes;