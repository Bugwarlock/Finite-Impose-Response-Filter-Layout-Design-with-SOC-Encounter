
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.all;
 
ENTITY test_sec_1dDCT_seq IS
END test_sec_1dDCT_seq;
 
ARCHITECTURE behavior OF test_sec_1dDCT_seq IS 
 
    COMPONENT sec_1dDCT_seq_width8 
    PORT(
         x0 : IN  std_logic_vector(8 downto 0);
         x1 : IN  std_logic_vector(8 downto 0);
         x2 : IN  std_logic_vector(8 downto 0);
         x3 : IN  std_logic_vector(8 downto 0);
         x4 : IN  std_logic_vector(8 downto 0);
         x5 : IN  std_logic_vector(8 downto 0);
         x6 : IN  std_logic_vector(8 downto 0);
         x7 : IN  std_logic_vector(8 downto 0);
			clk: in std_logic;
         D0 : OUT  std_logic_vector(12 downto 0);
         D1 : OUT  std_logic_vector(12 downto 0);
         D2 : OUT  std_logic_vector(12 downto 0);
         D3 : OUT  std_logic_vector(12 downto 0);
         D4 : OUT  std_logic_vector(12 downto 0);
         D5 : OUT  std_logic_vector(12 downto 0);
         D6 : OUT  std_logic_vector(12 downto 0);
         D7 : OUT  std_logic_vector(12 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x0 : std_logic_vector(8 downto 0) := (others => '0');
   signal x1 : std_logic_vector(8 downto 0) := (others => '0');
   signal x2 : std_logic_vector(8 downto 0) := (others => '0');
   signal x3 : std_logic_vector(8 downto 0) := (others => '0');
   signal x4 : std_logic_vector(8 downto 0) := (others => '0');
   signal x5 : std_logic_vector(8 downto 0) := (others => '0');
   signal x6 : std_logic_vector(8 downto 0) := (others => '0');
   signal x7 : std_logic_vector(8 downto 0) := (others => '0');
	signal clk: std_logic:='0';
 	--Outputs
   signal D0 : std_logic_vector(12 downto 0);
   signal D1 : std_logic_vector(12 downto 0);
   signal D2 : std_logic_vector(12 downto 0);
   signal D3 : std_logic_vector(12 downto 0);
   signal D4 : std_logic_vector(12 downto 0);
   signal D5 : std_logic_vector(12 downto 0);
   signal D6 : std_logic_vector(12 downto 0);
   signal D7 : std_logic_vector(12 downto 0);
	
   signal D0i,D1i,D2i,D3i,D4i,D5i,D6i,D7i:integer;
 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut:sec_1dDCT_seq_width8  PORT MAP (
          x0 => x0,
          x1 => x1,
          x2 => x2,
          x3 => x3,
          x4 => x4,
          x5 => x5,
          x6 => x6,
          x7 => x7,
			 clk=>clk,
          D0 => D0,
          D1 => D1,
          D2 => D2,
          D3 => D3,
          D4 => D4,
          D5 => D5,
          D6 => D6,
          D7 => D7
        );

    D0i<=to_integer(signed(D0));
		D1i<=to_integer(signed(D1));
		D2i<=to_integer(signed(D2));
		D3i<=to_integer(signed(D3));
		D4i<=to_integer(signed(D4));
		D5i<=to_integer(signed(D5));
		D6i<=to_integer(signed(D6));
		D7i<=to_integer(signed(D7));
	


   -- Clock process definitions
   clk_process :process
	variable c:std_logic:='0';
   begin
	wait for 15 ns;---period=10ns
		c:=not c;
		clk<=c;
   end process;
 


   -- Stimulus process
   stim_proc: process
	Type cell is array(1 to 8,1 to 8) of integer;
	variable temp:cell:=(
   (-40,-71,-64,17,-65,-63,-60,25),
   (-60,-65,-55,31,-52,-63,-56,-48),
   (-80,-78,-60,-59,-44,-59,-59,-47),
   (-100,-50,-57,-49,-58,-56,-51,-56),
   (-110,-54,-46,-45,-46,-46,-51,-98),
   (-120,-54,-48,-43,-49,-44,-52,-5),
   (-110,-78,-48,-39,-51,-49,-47,-47),
   (90,40,-50,-60,-100,-90,80,70)
	);
	
	
   begin		
	for i in 1 to 8 loop
      wait until rising_edge(clk);

		x0<=std_logic_vector(to_signed((temp(i,1)),9));
		x1<=std_logic_vector(to_signed((temp(i,2)),9));
		x2<=std_logic_vector(to_signed((temp(i,3)),9));
		x3<=std_logic_vector(to_signed((temp(i,4)),9));
		x4<=std_logic_vector(to_signed((temp(i,5)),9));
		x5<=std_logic_vector(to_signed((temp(i,6)),9));
		x6<=std_logic_vector(to_signed((temp(i,7)),9));
		x7<=std_logic_vector(to_signed((temp(i,8)),9));

    end loop;
      wait;
   end process;

END;
