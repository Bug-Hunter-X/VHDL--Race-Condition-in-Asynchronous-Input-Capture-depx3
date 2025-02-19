```vhdl
ENTITY my_entity IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE behavioral OF my_entity IS
  SIGNAL sync_data1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL sync_data2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
  PROCESS (clk, rst)
  BEGIN
    IF rst = '1' THEN
      sync_data1 <= "00000000";
      sync_data2 <= "00000000";
    ELSIF rising_edge(clk) THEN
      sync_data1 <= data_in;      
      sync_data2 <= sync_data1;    
    END IF;
  END PROCESS;
  data_out <= sync_data2;
END ARCHITECTURE;
```