-- Xilinx XPort Language Converter, Version 4.1 (110)
-- 
-- ABEL Design Source: ramcon.abl
-- VHDL Design Output: ramcon.vhd
-- Created 16-Oct-2015 09:06 PM
--
-- Copyright (c) 2015, Xilinx, Inc.  All Rights Reserved.
-- Xilinx Inc makes no warranty, expressed or implied, with respect to
-- the operation and/or functionality of the converted output files.
-- 

Library IEEE;
   use IEEE.std_logic_1164.all;
   use IEEE.std_logic_arith.all;
entity ramcon is
   Port (
      CLK_RAMC, RESET, A40_0, A40_1, A40_2, A40_3, A40_4, A40_5, A40_6, A40_7,
	    A40_8, A40_9, A40_10, A40_11, A40_12, A40_13, A40_14, A40_15,
	    A40_16, A40_17, A40_18, A40_19, A40_20, A40_21, A40_22, A40_23,
	    A40_24, A40_25, A40_26, A40_27, A40_28, A40_29, A40_30, C4MHZ,
	    RW_40, INIT, SIZ40_0, SIZ40_1, TT40_1, TS40, SCLK, ICACHE,
	    WE_FLASH, OE_FLASH: in std_logic;
      UDQ0, UDQ1, LDQ0, LDQ1, CE_B0, CE_B1, WE, CAS, RAS, CLK_RAM, CLKEN, BA0,
	    BA1, LE_RAM, OERAM_40, OE40_RAM, ARAM_0, ARAM_1, ARAM_2, ARAM_3,
	    ARAM_4, ARAM_5, ARAM_6, ARAM_7, ARAM_8, ARAM_9, ARAM_10, ARAM_11,
	    ARAM_12: buffer std_logic;
      D30_28, D30_29, D30_30, D30_31: in std_logic;
      SEL16M, TA40, TCI40: buffer std_logic;
      TBI40: in std_logic
   );
end ramcon;


architecture ramcon_behav of ramcon is
   signal RQ0_CLK_ctrl, RQ0_ACLR_ctrl, NQ0_CLK_ctrl, NQ0_ACLR_ctrl,
	 ARAM_0_CLK_ctrl, ARAM_0_ACLR_ctrl, CQ0_CLK_ctrl, CQ0_ACLR_ctrl,
	 ARAM_12_D, ARAM_12_FB, RQ7_D, RQ6_D, RQ5_D, RQ4_D, RQ3_D, RQ2_D,
	 RQ1_D, RQ0_D, NQ2_D, NQ1_D, NQ0_D, ARAM_11_D, ARAM_10_D, ARAM_9_D,
	 ARAM_8_D, ARAM_7_D, ARAM_6_D, ARAM_5_D, ARAM_4_D, ARAM_3_D, ARAM_2_D,
	 ARAM_1_D, ARAM_0_D, BA1_D, BA0_D, RAS_D, CAS_D, TA40_D, WE_D, CE_B1_D,
	 CE_B0_D, LDQ1_D, LDQ0_D, UDQ1_D, UDQ0_D, OE40_RAM_D, OERAM_40_D,
	 CQ0_D, CQ1_D, CQ2_D, CQ3_D, CQ4_D, CQ5_D, BA1_ASET, BA1_CLK, BA0_ASET,
	 BA0_CLK, RAS_ASET, RAS_CLK, CAS_ASET, CAS_CLK, WE_ASET, WE_CLK,
	 CE_B1_ASET, CE_B1_CLK, CE_B0_ASET, CE_B0_CLK, LDQ1_ASET, LDQ1_CLK,
	 LDQ0_ASET, LDQ0_CLK, UDQ1_ASET, UDQ1_CLK, UDQ0_ASET, UDQ0_CLK,
	 OE40_RAM_ASET, OE40_RAM_CLK, OERAM_40_ASET, OERAM_40_CLK, TA40_OE,
	 TA40_ASET, TA40_CLK, TRANSFER_ACLR, TRANSFER_CLK, TRANSFER_D, SELRAM1,
	 SELRAM0, REFRESH, ENACLK, ENANOPC, CLRNOPC, CLRREFC, CLRTRAN,
	 TRANSFER, NQ0, NQ1, NQ2, CQ0, CQ1, CQ2, CQ3, CQ4, CQ5, RQ0, RQ1, RQ2,
	 RQ3, RQ4, RQ5, RQ6, RQ7: std_logic;
   signal UDQ0_FB, UDQ1_FB, LDQ0_FB, LDQ1_FB, CE_B0_FB, CE_B1_FB, WE_FB,
	 CAS_FB, RAS_FB, BA0_FB, BA1_FB, OERAM_40_FB, OE40_RAM_FB, ARAM_0_FB,
	 ARAM_1_FB, ARAM_2_FB, ARAM_3_FB, ARAM_4_FB, ARAM_5_FB, ARAM_6_FB,
	 ARAM_7_FB, ARAM_8_FB, ARAM_9_FB, ARAM_10_FB, ARAM_11_FB, TA40_FB,
	 RQ7_FB, RQ6_FB, RQ5_FB, RQ4_FB, RQ3_FB, RQ2_FB, RQ1_FB, RQ0_FB,
	 CQ5_FB, CQ4_FB, CQ3_FB, CQ2_FB, CQ1_FB, CQ0_FB, NQ2_FB, NQ1_FB,
	 NQ0_FB, TRANSFER_FB: std_logic
	 -- :='0'
	 ;

   Function to_std_logic(X: in Boolean) return Std_Logic is
   variable ret : std_logic;
   begin
   if x then ret := '1';  else ret := '0'; end if;
   return ret;
   end to_std_logic;


   -- sizeIt replicates a value to an array of specific length.
   Function sizeIt(a: std_Logic; len: integer) return std_logic_vector is
      variable rep: std_logic_vector( len-1 downto 0);
   begin for i in rep'range loop rep(i) := a;  end loop; return rep;
   end sizeIt;
begin

-- Register Section

   UDQ0 <= UDQ0_FB;
   process (UDQ0_CLK, UDQ0_ASET) begin
      if UDQ0_ASET='1' then
	 UDQ0_FB <= '1';
      elsif UDQ0_CLK'event and UDQ0_CLK='1' then
	 UDQ0_FB <= UDQ0_D;
      end if;
   end process;

   UDQ1 <= UDQ1_FB;
   process (UDQ1_CLK, UDQ1_ASET) begin
      if UDQ1_ASET='1' then
	 UDQ1_FB <= '1';
      elsif UDQ1_CLK'event and UDQ1_CLK='1' then
	 UDQ1_FB <= UDQ1_D;
      end if;
   end process;

   LDQ0 <= LDQ0_FB;
   process (LDQ0_CLK, LDQ0_ASET) begin
      if LDQ0_ASET='1' then
	 LDQ0_FB <= '1';
      elsif LDQ0_CLK'event and LDQ0_CLK='1' then
	 LDQ0_FB <= LDQ0_D;
      end if;
   end process;

   LDQ1 <= LDQ1_FB;
   process (LDQ1_CLK, LDQ1_ASET) begin
      if LDQ1_ASET='1' then
	 LDQ1_FB <= '1';
      elsif LDQ1_CLK'event and LDQ1_CLK='1' then
	 LDQ1_FB <= LDQ1_D;
      end if;
   end process;

   CE_B0 <= CE_B0_FB;
   process (CE_B0_CLK, CE_B0_ASET) begin
      if CE_B0_ASET='1' then
	 CE_B0_FB <= '1';
      elsif CE_B0_CLK'event and CE_B0_CLK='1' then
	 CE_B0_FB <= CE_B0_D;
      end if;
   end process;

   CE_B1 <= CE_B1_FB;
   process (CE_B1_CLK, CE_B1_ASET) begin
      if CE_B1_ASET='1' then
	 CE_B1_FB <= '1';
      elsif CE_B1_CLK'event and CE_B1_CLK='1' then
	 CE_B1_FB <= CE_B1_D;
      end if;
   end process;

   WE <= WE_FB;
   process (WE_CLK, WE_ASET) begin
      if WE_ASET='1' then
	 WE_FB <= '1';
      elsif WE_CLK'event and WE_CLK='1' then
	 WE_FB <= WE_D;
      end if;
   end process;

   CAS <= CAS_FB;
   process (CAS_CLK, CAS_ASET) begin
      if CAS_ASET='1' then
	 CAS_FB <= '1';
      elsif CAS_CLK'event and CAS_CLK='1' then
	 CAS_FB <= CAS_D;
      end if;
   end process;

   RAS <= RAS_FB;
   process (RAS_CLK, RAS_ASET) begin
      if RAS_ASET='1' then
	 RAS_FB <= '1';
      elsif RAS_CLK'event and RAS_CLK='1' then
	 RAS_FB <= RAS_D;
      end if;
   end process;

   BA0 <= BA0_FB;
   process (BA0_CLK, BA0_ASET) begin
      if BA0_ASET='1' then
	 BA0_FB <= '1';
      elsif BA0_CLK'event and BA0_CLK='1' then
	 BA0_FB <= BA0_D;
      end if;
   end process;

   BA1 <= BA1_FB;
   process (BA1_CLK, BA1_ASET) begin
      if BA1_ASET='1' then
	 BA1_FB <= '1';
      elsif BA1_CLK'event and BA1_CLK='1' then
	 BA1_FB <= BA1_D;
      end if;
   end process;

   OERAM_40 <= OERAM_40_FB;
   process (OERAM_40_CLK, OERAM_40_ASET) begin
      if OERAM_40_ASET='1' then
	 OERAM_40_FB <= '1';
      elsif OERAM_40_CLK'event and OERAM_40_CLK='1' then
	 OERAM_40_FB <= OERAM_40_D;
      end if;
   end process;

   OE40_RAM <= OE40_RAM_FB;
   process (OE40_RAM_CLK, OE40_RAM_ASET) begin
      if OE40_RAM_ASET='1' then
	 OE40_RAM_FB <= '1';
      elsif OE40_RAM_CLK'event and OE40_RAM_CLK='1' then
	 OE40_RAM_FB <= OE40_RAM_D;
      end if;
   end process;

   (ARAM_0, ARAM_1, ARAM_2, ARAM_3, ARAM_4, ARAM_5, ARAM_6, ARAM_7, ARAM_8,
	 ARAM_9, ARAM_10, ARAM_11) <= std_logic_vector'(ARAM_0_FB & ARAM_1_FB &
	 ARAM_2_FB & ARAM_3_FB & ARAM_4_FB & ARAM_5_FB & ARAM_6_FB & ARAM_7_FB
	 & ARAM_8_FB & ARAM_9_FB & ARAM_10_FB & ARAM_11_FB);
   process (ARAM_0_CLK_ctrl, ARAM_0_ACLR_ctrl) begin
      if ARAM_0_ACLR_ctrl='1' then
	 (ARAM_0_FB, ARAM_1_FB, ARAM_2_FB, ARAM_3_FB, ARAM_4_FB, ARAM_5_FB,
	       ARAM_6_FB, ARAM_7_FB, ARAM_8_FB, ARAM_9_FB, ARAM_10_FB,
	       ARAM_11_FB) <= std_logic_vector'("000000000000");
      elsif ARAM_0_CLK_ctrl'event and ARAM_0_CLK_ctrl='1' then
	 (ARAM_0_FB, ARAM_1_FB, ARAM_2_FB, ARAM_3_FB, ARAM_4_FB, ARAM_5_FB,
	       ARAM_6_FB, ARAM_7_FB, ARAM_8_FB, ARAM_9_FB, ARAM_10_FB,
	       ARAM_11_FB) <= std_logic_vector'(ARAM_0_D & ARAM_1_D & ARAM_2_D
	       & ARAM_3_D & ARAM_4_D & ARAM_5_D & ARAM_6_D & ARAM_7_D &
	       ARAM_8_D & ARAM_9_D & ARAM_10_D & ARAM_11_D);
      end if;
   end process;

   TA40 <= TA40_FB when TA40_OE='1' else 'Z';
   process (TA40_CLK, TA40_ASET) begin
      if TA40_ASET='1' then
	 TA40_FB <= '1';
      elsif TA40_CLK'event and TA40_CLK='1' then
	 TA40_FB <= TA40_D;
      end if;
   end process;

   (RQ7, RQ6, RQ5, RQ4, RQ3, RQ2, RQ1, RQ0) <= std_logic_vector'(RQ7_FB &
	 RQ6_FB & RQ5_FB & RQ4_FB & RQ3_FB & RQ2_FB & RQ1_FB & RQ0_FB);
   process (RQ0_CLK_ctrl, RQ0_ACLR_ctrl) begin
      if RQ0_ACLR_ctrl='1' then
	 (RQ7_FB, RQ6_FB, RQ5_FB, RQ4_FB, RQ3_FB, RQ2_FB, RQ1_FB, RQ0_FB) <=
	       std_logic_vector'("00000000");
      elsif RQ0_CLK_ctrl'event and RQ0_CLK_ctrl='1' then
	 (RQ7_FB, RQ6_FB, RQ5_FB, RQ4_FB, RQ3_FB, RQ2_FB, RQ1_FB, RQ0_FB) <=
	       std_logic_vector'(RQ7_D & RQ6_D & RQ5_D & RQ4_D & RQ3_D & RQ2_D
	       & RQ1_D & RQ0_D);
      end if;
   end process;

   (CQ5, CQ4, CQ3, CQ2, CQ1, CQ0) <= std_logic_vector'(CQ5_FB & CQ4_FB & CQ3_FB
	 & CQ2_FB & CQ1_FB & CQ0_FB);
   process (CQ0_CLK_ctrl, CQ0_ACLR_ctrl) begin
      if CQ0_ACLR_ctrl='1' then
	 (CQ5_FB, CQ4_FB, CQ3_FB, CQ2_FB, CQ1_FB, CQ0_FB) <=
	       std_logic_vector'("000000");
      elsif CQ0_CLK_ctrl'event and CQ0_CLK_ctrl='1' then
	 (CQ5_FB, CQ4_FB, CQ3_FB, CQ2_FB, CQ1_FB, CQ0_FB) <=
	       std_logic_vector'(CQ5_D & CQ4_D & CQ3_D & CQ2_D & CQ1_D &
	       CQ0_D);
      end if;
   end process;

   (NQ2, NQ1, NQ0) <= std_logic_vector'(NQ2_FB & NQ1_FB & NQ0_FB);
   process (NQ0_CLK_ctrl, NQ0_ACLR_ctrl) begin
      if NQ0_ACLR_ctrl='1' then
	 (NQ2_FB, NQ1_FB, NQ0_FB) <= std_logic_vector'("000");
      elsif NQ0_CLK_ctrl'event and NQ0_CLK_ctrl='1' then
	 (NQ2_FB, NQ1_FB, NQ0_FB) <= std_logic_vector'(NQ2_D & NQ1_D & NQ0_D);
      end if;
   end process;

   TRANSFER <= TRANSFER_FB;
   process (TRANSFER_CLK, TRANSFER_ACLR) begin
      if TRANSFER_ACLR='1' then
	 TRANSFER_FB <= '0';
      elsif TRANSFER_CLK'event and TRANSFER_CLK='1' then
	 TRANSFER_FB <= TRANSFER_D;
      end if;
   end process;

-- Start of original equations
   SEL16M <= (not A40_30) and (not A40_29) and (not A40_28) and (not A40_27)
	 and (not A40_26) and (not A40_25);
   SELRAM0 <= (not A40_30) and (not A40_29) and (not A40_28) and A40_27 and
	 (not A40_26) and (not A40_25);
   SELRAM1 <= (not A40_30) and (not A40_29) and (not A40_28) and A40_27 and
	 (not A40_26) and A40_25;
   TCI40 <= 
   		(ICACHE and SEL16M and (not A40_24) and A40_23 and A40_22 and A40_21 and A40_20 and A40_19) or 
   		(ICACHE and SEL16M and (not A40_24) and (not A40_23) and (not A40_22) and (not A40_21)) or 
   		(ICACHE and SEL16M and (
   							   ((not A40_24) and (not A40_23) and (not A40_22) and A40_21) or 
   								((not A40_24) and (not A40_23) and A40_22) or 
   								((not A40_24) and A40_23 and (not A40_22) and (not A40_21)))) 
	 	or (SEL16M and ((A40_24 and (not A40_23) and (not A40_22) and A40_21) or 
	 					(A40_24 and (not A40_23) and A40_22) or 
	 					(A40_24 and A40_23 and (not A40_22) and (not A40_21)))) 
	 	or SELRAM0 or SELRAM1;
   TRANSFER_D <= '1';
   TRANSFER_CLK <= (not TS40) and (not TT40_1) and (SELRAM0 or SELRAM1);
   TRANSFER_ACLR <= CLRTRAN or (not RESET);
   TA40_CLK <= CLK_RAMC;
   TA40_ASET <= not RESET;
   TA40_OE <= SELRAM0 or SELRAM1;
   LE_RAM <= '0';
   RQ0_CLK_ctrl <= C4MHZ;
   RQ0_ACLR_ctrl <= (not RESET) or CLRREFC;
   (RQ7_D, RQ6_D, RQ5_D, RQ4_D, RQ3_D, RQ2_D, RQ1_D, RQ0_D) <=
	 std_logic_vector'(unsigned(std_logic_vector'(RQ7 & RQ6 & RQ5 & RQ4 &
	 RQ3 & RQ2 & RQ1 & RQ0)) + unsigned'("00000001"));
   REFRESH <= to_std_logic((unsigned(std_logic_vector'(RQ7 & RQ6 & RQ5 & RQ4 &
	 RQ3 & RQ2 & RQ1 & RQ0)) >= unsigned'("00111100")));
   NQ0_CLK_ctrl <= CLK_RAMC;
   NQ0_ACLR_ctrl <= (not RESET) or CLRNOPC;
   (NQ2_D, NQ1_D, NQ0_D) <= (std_logic_vector'(unsigned(std_logic_vector'(NQ2 &
	 NQ1 & NQ0)) + unsigned'("001"))) and sizeIt(ENANOPC,3);
   CLK_RAM <= (not CLK_RAMC) and ENACLK;
   CLKEN <= '1';
   OERAM_40_CLK <= CLK_RAMC;
   OERAM_40_ASET <= not RESET;
   OE40_RAM_CLK <= CLK_RAMC;
   OE40_RAM_ASET <= not RESET;
   UDQ0_CLK <= CLK_RAMC;
   UDQ0_ASET <= not RESET;
   UDQ1_CLK <= CLK_RAMC;
   UDQ1_ASET <= not RESET;
   LDQ0_CLK <= CLK_RAMC;
   LDQ0_ASET <= not RESET;
   LDQ1_CLK <= CLK_RAMC;
   LDQ1_ASET <= not RESET;
   CE_B0_CLK <= CLK_RAMC;
   CE_B0_ASET <= not RESET;
   CE_B1_CLK <= CLK_RAMC;
   CE_B1_ASET <= not RESET;
   WE_CLK <= CLK_RAMC;
   WE_ASET <= not RESET;
   CAS_CLK <= CLK_RAMC;
   CAS_ASET <= not RESET;
   RAS_CLK <= CLK_RAMC;
   RAS_ASET <= not RESET;
   BA0_CLK <= CLK_RAMC;
   BA0_ASET <= not RESET;
   BA1_CLK <= CLK_RAMC;
   BA1_ASET <= not RESET;
   ARAM_0_CLK_ctrl <= CLK_RAMC;
   ARAM_0_ACLR_ctrl <= not RESET;
   CQ0_CLK_ctrl <= CLK_RAMC;
   CQ0_ACLR_ctrl <= not RESET;


   process (CQ0_FB, CQ1_FB, CQ2_FB, CQ3_FB, CQ4_FB, CQ5_FB, INIT, RQ0, RQ1,
	 RQ2, RQ3, RQ4, RQ5, RQ6, RQ7, REFRESH, TRANSFER, SCLK, A40_21, A40_2,
	 A40_3, A40_4, A40_5, A40_6, A40_7, A40_8, A40_9, A40_10, RW_40, A40_0,
	 A40_1, SIZ40_1, SIZ40_0, SELRAM0, SELRAM1, A40_11, A40_12, A40_13,
	 A40_14, A40_15, A40_16, A40_17, A40_18, A40_19, A40_20, A40_22,
	 A40_23, A40_24, NQ0, NQ1, NQ2)
      variable stdVec6: std_logic_vector(5 downto 0);
   begin
      (CLRREFC, CLRTRAN, ARAM_11_D, ARAM_10_D, ARAM_9_D, ARAM_8_D, ARAM_7_D,
	    ARAM_6_D, ARAM_5_D, ARAM_4_D, ARAM_3_D, ARAM_2_D, ARAM_1_D,
	    ARAM_0_D, CLRNOPC, OERAM_40_D, OE40_RAM_D, UDQ0_D, UDQ1_D, LDQ0_D,
	    LDQ1_D, CE_B0_D, CE_B1_D, WE_D, TA40_D, CAS_D, RAS_D, BA0_D, BA1_D,
	    ENACLK, ENANOPC, CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	    std_logic_vector'("0000000000000000000000000000000000000");
      stdVec6 := std_logic_vector'(CQ5_FB & CQ4_FB & CQ3_FB & CQ2_FB & CQ1_FB &
	    CQ0_FB);
      case stdVec6 is
      when "000000" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '1';
	 CE_B1_D <= '1';
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 if (INIT)='1' then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000001");
	 else
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000000");
	 end if;
      when "000001" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '0';
	 CE_B1_D <= '0';
	 WE_D <= '0';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '0';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 (ARAM_11_D, ARAM_10_D, ARAM_9_D, ARAM_8_D, ARAM_7_D, ARAM_6_D,
	       ARAM_5_D, ARAM_4_D, ARAM_3_D, ARAM_2_D, ARAM_1_D, ARAM_0_D) <=
	       std_logic_vector'(A40_22 & '1' & A40_20 & A40_19 & A40_18 &
	       A40_17 & A40_16 & A40_15 & A40_14 & A40_13 & A40_12 & A40_11);
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("000011");
      when "000011" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '0';
	 CE_B1_D <= '0';
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 ENANOPC <= '1';
	 CLRREFC <= '1';
	 if (unsigned(std_logic_vector'(NQ2 & NQ1 & NQ0)) >= unsigned'("001"))
	       then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000010");
	 else
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000011");
	 end if;
      when "000010" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '0';
	 CE_B1_D <= '0';
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '0';
	 RAS_D <= '0';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("000110");
      when "000110" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '0';
	 CE_B1_D <= '0';
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 ENANOPC <= '1';
	 if (unsigned(std_logic_vector'(NQ2 & NQ1 & NQ0)) >= unsigned'("110"))
	       and (unsigned(std_logic_vector'(RQ7 & RQ6 & RQ5 & RQ4 & RQ3 &
	       RQ2 & RQ1 & RQ0)) >= unsigned'("00000100")) then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000111");
	 elsif (unsigned(std_logic_vector'(NQ2 & NQ1 & NQ0)) >=
	       unsigned'("110")) and (unsigned(std_logic_vector'(RQ7 & RQ6 &
	       RQ5 & RQ4 & RQ3 & RQ2 & RQ1 & RQ0)) <= unsigned'("00000100"))
	       then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000010");
	 else
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000110");
	 end if;
      when "000111" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '0';
	 CE_B1_D <= '0';
	 WE_D <= '0';
	 TA40_D <= '1';
	 CAS_D <= '0';
	 RAS_D <= '0';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 (ARAM_11_D, ARAM_10_D, ARAM_9_D, ARAM_8_D, ARAM_7_D, ARAM_6_D,
	       ARAM_5_D, ARAM_4_D, ARAM_3_D, ARAM_2_D, ARAM_1_D, ARAM_0_D) <=
	       std_logic_vector'("000000100010");
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 CLRREFC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("000101");
      when "000101" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '1';
	 CE_B1_D <= '1';
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 ENANOPC <= '1';
	 if (unsigned(std_logic_vector'(NQ2 & NQ1 & NQ0)) >= unsigned'("001"))
	       then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000100");
	 else
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000101");
	 end if;
      when "000100" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '1';
	 CE_B1_D <= '1';
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 if (REFRESH)='1' then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("001100");
	 elsif ((not REFRESH) and TRANSFER and RW_40 and (not SCLK))='1' then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("001111");
	 elsif ((not REFRESH) and TRANSFER and (not RW_40) and SCLK)='1' then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("011100");
	 else
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000100");
	 end if;
      when "001100" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '0';
	 CE_B1_D <= '0';
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '0';
	 RAS_D <= '0';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 CLRREFC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("001101");
      when "001101" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '1';
	 CE_B1_D <= '1';
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 ENANOPC <= '1';
	 if (unsigned(std_logic_vector'(NQ2 & NQ1 & NQ0)) >= unsigned'("110"))
	       then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000100");
	 else
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("001101");
	 end if;
      when "001111" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '0';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 (ARAM_11_D, ARAM_10_D, ARAM_9_D, ARAM_8_D, ARAM_7_D, ARAM_6_D,
	       ARAM_5_D, ARAM_4_D, ARAM_3_D, ARAM_2_D, ARAM_1_D, ARAM_0_D) <=
	       std_logic_vector'(A40_22 & A40_21 & A40_20 & A40_19 & A40_18 &
	       A40_17 & A40_16 & A40_15 & A40_14 & A40_13 & A40_12 & A40_11);
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 CLRTRAN <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("001110");
      when "001110" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("001010");
      when "001010" =>
	 OERAM_40_D <= not ((SELRAM0 or SELRAM1) and RW_40);
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '0';
	 UDQ1_D <= '0';
	 LDQ0_D <= '0';
	 LDQ1_D <= '0';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '0';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 (ARAM_11_D, ARAM_10_D, ARAM_9_D, ARAM_8_D, ARAM_7_D, ARAM_6_D,
	       ARAM_5_D, ARAM_4_D, ARAM_3_D, ARAM_2_D, ARAM_1_D, ARAM_0_D) <=
	       std_logic_vector'('0' & '0' & '0' & A40_10 & A40_9 & A40_8 &
	       A40_7 & A40_6 & A40_5 & A40_4 & A40_3 & A40_2);
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("001011");
      when "001011" =>
	 OERAM_40_D <= not ((SELRAM0 or SELRAM1) and RW_40);
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '0';
	 UDQ1_D <= '0';
	 LDQ0_D <= '0';
	 LDQ1_D <= '0';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("001001");
      when "001001" =>
	 OERAM_40_D <= not ((SELRAM0 or SELRAM1) and RW_40);
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '0';
	 UDQ1_D <= '0';
	 LDQ0_D <= '0';
	 LDQ1_D <= '0';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 ENANOPC <= '1';
	 if (SIZ40_0 and SIZ40_1)='1' then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("001000");
	 else
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("011111");
	 end if;
      when "001000" =>
	 OERAM_40_D <= not ((SELRAM0 or SELRAM1) and RW_40);
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '0';
	 UDQ1_D <= '0';
	 LDQ0_D <= '0';
	 LDQ1_D <= '0';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '0';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("011000");
      when "011000" =>
	 OERAM_40_D <= not ((SELRAM0 or SELRAM1) and RW_40);
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '0';
	 UDQ1_D <= '0';
	 LDQ0_D <= '0';
	 LDQ1_D <= '0';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("011001");
      when "011001" =>
	 OERAM_40_D <= not ((SELRAM0 or SELRAM1) and RW_40);
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '0';
	 UDQ1_D <= '0';
	 LDQ0_D <= '0';
	 LDQ1_D <= '0';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '0';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("011011");
      when "011011" =>
	 OERAM_40_D <= not ((SELRAM0 or SELRAM1) and RW_40);
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '0';
	 UDQ1_D <= '0';
	 LDQ0_D <= '0';
	 LDQ1_D <= '0';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("011010");
      when "011010" =>
	 OERAM_40_D <= not ((SELRAM0 or SELRAM1) and RW_40);
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '0';
	 UDQ1_D <= '0';
	 LDQ0_D <= '0';
	 LDQ1_D <= '0';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '0';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("011110");
      when "011110" =>
	 OERAM_40_D <= not ((SELRAM0 or SELRAM1) and RW_40);
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '0';
	 UDQ1_D <= '0';
	 LDQ0_D <= '0';
	 LDQ1_D <= '0';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("011111");
      when "011111" =>
	 OERAM_40_D <= not ((SELRAM0 or SELRAM1) and RW_40);
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '0';
	 CE_B1_D <= '0';
	 WE_D <= '0';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '0';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 (ARAM_11_D, ARAM_10_D, ARAM_9_D, ARAM_8_D, ARAM_7_D, ARAM_6_D,
	       ARAM_5_D, ARAM_4_D, ARAM_3_D, ARAM_2_D, ARAM_1_D, ARAM_0_D) <=
	       std_logic_vector'(A40_22 & '1' & A40_20 & A40_19 & A40_18 &
	       A40_17 & A40_16 & A40_15 & A40_14 & A40_13 & A40_12 & A40_11);
	 ENACLK <= '0';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("011101");
      when "011101" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '1';
	 CE_B1_D <= '1';
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 ENANOPC <= '1';
	 if (unsigned(std_logic_vector'(NQ2 & NQ1 & NQ0)) >= unsigned'("001"))
	       then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000100");
	 else
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("011101");
	 end if;
      when "011100" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '0';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 (ARAM_11_D, ARAM_10_D, ARAM_9_D, ARAM_8_D, ARAM_7_D, ARAM_6_D,
	       ARAM_5_D, ARAM_4_D, ARAM_3_D, ARAM_2_D, ARAM_1_D, ARAM_0_D) <=
	       std_logic_vector'(A40_22 & A40_21 & A40_20 & A40_19 & A40_18 &
	       A40_17 & A40_16 & A40_15 & A40_14 & A40_13 & A40_12 & A40_11);
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 CLRTRAN <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("010100");
      when "010100" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= not ((SELRAM0 or SELRAM1) and (not RW_40));
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("010101");
      when "010101" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= not ((SELRAM0 or SELRAM1) and (not RW_40));
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("010111");
      when "010111" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= not ((SELRAM0 or SELRAM1) and (not RW_40));
	 UDQ0_D <= not ((A40_1 and (not A40_0) and (not SIZ40_1) and SIZ40_0)
	       or (A40_1 and SIZ40_1 and (not SIZ40_0)) or ((not SIZ40_1) and
	       (not SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 UDQ1_D <= not (((not A40_1) and (not A40_0) and (not SIZ40_1) and
	       SIZ40_0) or ((not A40_1) and SIZ40_1 and (not SIZ40_0)) or ((not
	       SIZ40_1) and (not SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 LDQ0_D <= not ((A40_1 and A40_0 and (not SIZ40_1) and SIZ40_0) or
	       (A40_1 and SIZ40_1 and (not SIZ40_0)) or ((not SIZ40_1) and (not
	       SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 LDQ1_D <= not (((not A40_1) and A40_0 and (not SIZ40_1) and SIZ40_0)
	       or ((not A40_1) and SIZ40_1 and (not SIZ40_0)) or ((not SIZ40_1)
	       and (not SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '0';
	 TA40_D <= '0';
	 CAS_D <= '0';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 (ARAM_11_D, ARAM_10_D, ARAM_9_D, ARAM_8_D, ARAM_7_D, ARAM_6_D,
	       ARAM_5_D, ARAM_4_D, ARAM_3_D, ARAM_2_D, ARAM_1_D, ARAM_0_D) <=
	       std_logic_vector'('0' & '0' & '0' & A40_10 & A40_9 & A40_8 &
	       A40_7 & A40_6 & A40_5 & A40_4 & A40_3 & A40_2);
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("010110");
      when "010110" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= not ((SELRAM0 or SELRAM1) and (not RW_40));
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 if (SIZ40_0 and SIZ40_1)='1' then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("010010");
	 else
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("110001");
	 end if;
      when "010010" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= not ((SELRAM0 or SELRAM1) and (not RW_40));
	 UDQ0_D <= not ((A40_1 and (not A40_0) and (not SIZ40_1) and SIZ40_0)
	       or (A40_1 and SIZ40_1 and (not SIZ40_0)) or ((not SIZ40_1) and
	       (not SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 UDQ1_D <= not (((not A40_1) and (not A40_0) and (not SIZ40_1) and
	       SIZ40_0) or ((not A40_1) and SIZ40_1 and (not SIZ40_0)) or ((not
	       SIZ40_1) and (not SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 LDQ0_D <= not ((A40_1 and A40_0 and (not SIZ40_1) and SIZ40_0) or
	       (A40_1 and SIZ40_1 and (not SIZ40_0)) or ((not SIZ40_1) and (not
	       SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 LDQ1_D <= not (((not A40_1) and A40_0 and (not SIZ40_1) and SIZ40_0)
	       or ((not A40_1) and SIZ40_1 and (not SIZ40_0)) or ((not SIZ40_1)
	       and (not SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '0';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("010011");
      when "010011" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= not ((SELRAM0 or SELRAM1) and (not RW_40));
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("010001");
      when "010001" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= not ((SELRAM0 or SELRAM1) and (not RW_40));
	 UDQ0_D <= not ((A40_1 and (not A40_0) and (not SIZ40_1) and SIZ40_0)
	       or (A40_1 and SIZ40_1 and (not SIZ40_0)) or ((not SIZ40_1) and
	       (not SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 UDQ1_D <= not (((not A40_1) and (not A40_0) and (not SIZ40_1) and
	       SIZ40_0) or ((not A40_1) and SIZ40_1 and (not SIZ40_0)) or ((not
	       SIZ40_1) and (not SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 LDQ0_D <= not ((A40_1 and A40_0 and (not SIZ40_1) and SIZ40_0) or
	       (A40_1 and SIZ40_1 and (not SIZ40_0)) or ((not SIZ40_1) and (not
	       SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 LDQ1_D <= not (((not A40_1) and A40_0 and (not SIZ40_1) and SIZ40_0)
	       or ((not A40_1) and SIZ40_1 and (not SIZ40_0)) or ((not SIZ40_1)
	       and (not SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '0';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("010000");
      when "010000" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= not ((SELRAM0 or SELRAM1) and (not RW_40));
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("110000");
      when "110000" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= not ((SELRAM0 or SELRAM1) and (not RW_40));
	 UDQ0_D <= not ((A40_1 and (not A40_0) and (not SIZ40_1) and SIZ40_0)
	       or (A40_1 and SIZ40_1 and (not SIZ40_0)) or ((not SIZ40_1) and
	       (not SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 UDQ1_D <= not (((not A40_1) and (not A40_0) and (not SIZ40_1) and
	       SIZ40_0) or ((not A40_1) and SIZ40_1 and (not SIZ40_0)) or ((not
	       SIZ40_1) and (not SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 LDQ0_D <= not ((A40_1 and A40_0 and (not SIZ40_1) and SIZ40_0) or
	       (A40_1 and SIZ40_1 and (not SIZ40_0)) or ((not SIZ40_1) and (not
	       SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 LDQ1_D <= not (((not A40_1) and A40_0 and (not SIZ40_1) and SIZ40_0)
	       or ((not A40_1) and SIZ40_1 and (not SIZ40_0)) or ((not SIZ40_1)
	       and (not SIZ40_0)) or (SIZ40_1 and SIZ40_0));
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '0';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '0';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("110001");
      when "110001" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= not SELRAM0;
	 CE_B1_D <= not SELRAM1;
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("110011");
      when "110011" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '0';
	 CE_B1_D <= '0';
	 WE_D <= '0';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '0';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 (ARAM_11_D, ARAM_10_D, ARAM_9_D, ARAM_8_D, ARAM_7_D, ARAM_6_D,
	       ARAM_5_D, ARAM_4_D, ARAM_3_D, ARAM_2_D, ARAM_1_D, ARAM_0_D) <=
	       std_logic_vector'(A40_22 & '1' & A40_20 & A40_19 & A40_18 &
	       A40_17 & A40_16 & A40_15 & A40_14 & A40_13 & A40_12 & A40_11);
	 ENACLK <= '1';
	 CLRNOPC <= '1';
	 (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
	       std_logic_vector'("110010");
      when "110010" =>
	 OERAM_40_D <= '1';
	 OE40_RAM_D <= '1';
	 UDQ0_D <= '1';
	 UDQ1_D <= '1';
	 LDQ0_D <= '1';
	 LDQ1_D <= '1';
	 CE_B0_D <= '1';
	 CE_B1_D <= '1';
	 WE_D <= '1';
	 TA40_D <= '1';
	 CAS_D <= '1';
	 RAS_D <= '1';
	 BA0_D <= A40_23;
	 BA1_D <= A40_24;
	 ENACLK <= '1';
	 ENANOPC <= '1';
	 if (unsigned(std_logic_vector'(NQ2 & NQ1 & NQ0)) >= unsigned'("001"))
	       then
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("000100");
	 else
	    (CQ5_D, CQ4_D, CQ3_D, CQ2_D, CQ1_D, CQ0_D) <=
		  std_logic_vector'("110010");
	 end if;
      when others =>
      end case;
      stdVec6 := (others=>'0');  -- no storage needed
   end process;
end ramcon_behav;
