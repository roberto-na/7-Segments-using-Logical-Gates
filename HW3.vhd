----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:17:49 08/21/2018 
-- Design Name: 
-- Module Name:    HW3 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HW3 is
    Port ( B3 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           Dot : out  STD_LOGIC;
           G : out  STD_LOGIC;
           F : out  STD_LOGIC;
           E : out  STD_LOGIC;
           D : out  STD_LOGIC;
           C : out  STD_LOGIC;
           B : out  STD_LOGIC;
           A : out  STD_LOGIC);
end HW3;

architecture Behavioral of HW3 is

begin

G <= (NOT B3 AND NOT B2 AND NOT B1           ) OR
     (NOT B3 AND     B2 AND     B1 AND     B0) OR
	  (    B3 AND     B2 AND NOT B1 AND NOT B0);

F <= (NOT B3 AND NOT B2 AND                B0) OR
	  (NOT B3 AND NOT B2 AND     B1           ) OR
	  (NOT B3 AND                B1 AND     B0) OR
	  (    B3 AND     B2 AND NOT B1 AND     B0);

E <= (NOT B3                       AND     B0) OR
	  (           NOT B2 AND NOT B1 AND     B0) OR
	  (NOT B3 AND     B2 AND NOT B1           );

D <= (               B2 AND     B1 AND     B0) OR
	  (NOT B3 AND NOT B2 AND NOT B1 AND     B0) OR
	  (NOT B3 AND     B2 AND NOT B1 AND NOT B0) OR
	  (    B3 AND NOT B2 AND     B1 AND NOT B0);

C <= (    B3 AND     B2            AND NOT B0) OR
	  (    B3 AND     B2 AND     B1           ) OR
	  (NOT B3 AND NOT B2 AND     B1 AND NOT B0);

B <= (               B2 AND     B1 AND NOT B0) OR
	  (    B3                AND B1 AND     B0) OR
	  (    B3 AND     B2            AND NOT B0) OR
	  (NOT B3 AND     B2 AND NOT B1 AND     B0);
	  
A <= (NOT B3 AND NOT B2 AND NOT B1 AND     B0) OR
	  (NOT B3 AND     B2 AND NOT B1 AND NOT B0) OR
	  (    B3 AND NOT B2 AND     B1 AND     B0) OR
	  (    B3 AND     B2 AND NOT B1 AND     B0);

DOT <= '1';

end Behavioral;

