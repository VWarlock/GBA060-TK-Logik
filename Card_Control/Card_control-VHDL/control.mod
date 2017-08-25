MODEL
MODEL_VERSION "v1998.8";
DESIGN "control";

/* port names and type */
INPUT S:PIN34 = CLK30;
INPUT S:PIN64 = RW40;
INPUT S:PIN40 = STERM30;
INPUT S:PIN36 = DSACK30<0>;
INPUT S:PIN41 = BERR30;
INPUT S:PIN35 = DSACK30<1>;
INPUT S:PIN22 = PLL_CLK;
INPUT S:PIN97 = TT40<1>;
INPUT S:PIN4 = SEL16M;
INPUT S:PIN68 = TS40;
INPUT S:PIN96 = TT40<0>;
INPUT S:PIN56 = BR40;
INPUT S:PIN63 = BB40;
INPUT S:PIN60 = SIZ40<0>;
INPUT S:PIN61 = SIZ40<1>;
INPUT S:PIN1 = A40<1>;
INPUT S:PIN27 = A40<0>;
INPUT S:PIN37 = HALT30;
INPUT S:PIN67 = LOCK40;
INPUT S:PIN71 = LOCKE40;
INPUT S:PIN17 = BR30;
INPUT S:PIN28 = BGACK30;
INPUT S:PIN54 = TM40<1>;
INPUT S:PIN55 = TM40<0>;
INPUT S:PIN94 = RSTO40;
INPUT S:PIN92 = CPU40_60;
INPUT S:PIN66 = TM40<2>;
INPUT S:PIN19 = IPL30<0>;
INPUT S:PIN18 = IPL30<1>;
INPUT S:PIN20 = IPL30<2>;
TRIOUT S:PIN99 = RESET30;
TRIOUT S:PIN72 = TA40;
TRIOUT S:PIN39 = AS30;
TRIOUT S:PIN46 = DS30;
OUTPUT S:PIN16 = LE_BS;
TRIOUT S:PIN7 = AL<1>;
TRIOUT S:PIN49 = SIZ30<0>;
TRIOUT S:PIN8 = AL<0>;
TRIOUT S:PIN43 = SIZ30<1>;
OUTPUT S:PIN3 = ICACHE;
OUTPUT S:PIN86 = RSTI40;
OUTPUT S:PIN82 = BCLK;
OUTPUT S:PIN81 = PCLK;
OUTPUT S:PIN2 = SCLK;
TRIOUT S:PIN42 = RW30;
OUTPUT S:PIN24 = BG30;
OUTPUT S:PIN59 = BG40;
OUTPUT S:PIN12 = BWL_BS<0>;
OUTPUT S:PIN13 = BWL_BS<1>;
OUTPUT S:PIN11 = BWL_BS<2>;
OUTPUT S:PIN30 = FC30<0>;
OUTPUT S:PIN29 = FC30<1>;
OUTPUT S:PIN33 = FC30<2>;
OUTPUT S:PIN89 = IPL40<0>;
OUTPUT S:PIN85 = IPL40<1>;
OUTPUT S:PIN90 = IPL40<2>;
OUTPUT S:PIN93 = A_OE;
OUTPUT S:PIN10 = OE_BS;
OUTPUT S:PIN6 = CLK_RAMC;
OUTPUT S:PIN14 = CLK_BS;
OUTPUT S:PIN15 = DIR_BS;
OUTPUT S:PIN79 = TBI40;
OUTPUT S:PIN73 = TEA40;
TRIOUT S:PIN80 = TCI40;
TRIOUT S:PIN53 = PLL_S<0>;
OUTPUT S:PIN87 = MDIS40;
OUTPUT S:PIN91 = CDIS40;
OUTPUT S:PIN52 = PLL_S<1>;
OUTPUT S:PIN77 = BGR60;
OUTPUT S:PIN9 = A30_LE;

/* timing arc definitions */
A40<0>_AL<0>_delay: DELAY (ENABLE_HIGH) A40<0> AL<0>;
SIZ40<1>_AL<0>_delay: DELAY (ENABLE_HIGH) SIZ40<1> AL<0>;
SIZ40<0>_AL<0>_delay: DELAY (ENABLE_HIGH) SIZ40<0> AL<0>;
SIZ40<0>_AL<1>_delay: DELAY (ENABLE_HIGH) SIZ40<0> AL<1>;
SIZ40<1>_AL<1>_delay: DELAY (ENABLE_HIGH) SIZ40<1> AL<1>;
A40<1>_AL<1>_delay: DELAY (ENABLE_HIGH) A40<1> AL<1>;
CPU40_60_BCLK_delay: DELAY CPU40_60 BCLK;
RW40_BWL_BS<0>_delay: DELAY RW40 BWL_BS<0>;
SIZ40<1>_BWL_BS<0>_delay: DELAY SIZ40<1> BWL_BS<0>;
A40<0>_BWL_BS<0>_delay: DELAY A40<0> BWL_BS<0>;
SIZ40<0>_BWL_BS<0>_delay: DELAY SIZ40<0> BWL_BS<0>;
SIZ40<1>_BWL_BS<1>_delay: DELAY SIZ40<1> BWL_BS<1>;
A40<1>_BWL_BS<1>_delay: DELAY A40<1> BWL_BS<1>;
SIZ40<0>_BWL_BS<1>_delay: DELAY SIZ40<0> BWL_BS<1>;
RW40_BWL_BS<1>_delay: DELAY RW40 BWL_BS<1>;
RW40_BWL_BS<2>_delay: DELAY RW40 BWL_BS<2>;
RW40_DIR_BS_delay: DELAY RW40 DIR_BS;
TM40<1>_FC30<0>_delay: DELAY TM40<1> FC30<0>;
TM40<0>_FC30<0>_delay: DELAY TM40<0> FC30<0>;
TT40<0>_FC30<0>_delay: DELAY TT40<0> FC30<0>;
TT40<1>_FC30<0>_delay: DELAY TT40<1> FC30<0>;
TT40<0>_FC30<1>_delay: DELAY TT40<0> FC30<1>;
TM40<1>_FC30<1>_delay: DELAY TM40<1> FC30<1>;
TM40<0>_FC30<1>_delay: DELAY TM40<0> FC30<1>;
TT40<1>_FC30<1>_delay: DELAY TT40<1> FC30<1>;
TM40<0>_FC30<2>_delay: DELAY TM40<0> FC30<2>;
TM40<2>_FC30<2>_delay: DELAY TM40<2> FC30<2>;
TM40<1>_FC30<2>_delay: DELAY TM40<1> FC30<2>;
TT40<1>_FC30<2>_delay: DELAY TT40<1> FC30<2>;
TT40<0>_FC30<2>_delay: DELAY TT40<0> FC30<2>;
TM40<1>_ICACHE_delay: DELAY TM40<1> ICACHE;
TT40<1>_ICACHE_delay: DELAY TT40<1> ICACHE;
TM40<0>_ICACHE_delay: DELAY TM40<0> ICACHE;
IPL30<0>_IPL40<0>_delay: DELAY IPL30<0> IPL40<0>;
IPL30<1>_IPL40<1>_delay: DELAY IPL30<1> IPL40<1>;
IPL30<2>_IPL40<2>_delay: DELAY IPL30<2> IPL40<2>;
TT40<1>_OE_BS_delay: DELAY TT40<1> OE_BS;
SEL16M_OE_BS_delay: DELAY SEL16M OE_BS;
RSTO40_RESET30_delay: DELAY (ENABLE_HIGH) RSTO40 RESET30;
RW40_RW30_delay: DELAY (ENABLE_HIGH) RW40 RW30;
SIZ40<0>_SIZ30<0>_delay: DELAY (ENABLE_HIGH) SIZ40<0> SIZ30<0>;
SIZ40<1>_SIZ30<0>_delay: DELAY (ENABLE_HIGH) SIZ40<1> SIZ30<0>;
SIZ40<1>_SIZ30<1>_delay: DELAY (ENABLE_HIGH) SIZ40<1> SIZ30<1>;
SIZ40<0>_SIZ30<1>_delay: DELAY (ENABLE_HIGH) SIZ40<0> SIZ30<1>;
SEL16M_TA40_delay: DELAY (ENABLE_HIGH) SEL16M TA40;
TT40<1>_TA40_delay: DELAY (ENABLE_HIGH) TT40<1> TA40;
TT40<1>_TBI40_delay: DELAY TT40<1> TBI40;
SEL16M_TBI40_delay: DELAY SEL16M TBI40;
BERR30_TEA40_delay: DELAY BERR30 TEA40;
PLL_CLK_TA40_delay: DELAY (ENABLE_HIGH) PLL_CLK TA40;
PLL_CLK_AS30_delay: DELAY (ENABLE_HIGH) PLL_CLK AS30;
PLL_CLK_DS30_delay: DELAY (ENABLE_HIGH) PLL_CLK DS30;
PLL_CLK_AL<1>_delay: DELAY (ENABLE_HIGH) PLL_CLK AL<1>;
PLL_CLK_SIZ30<0>_delay: DELAY (ENABLE_HIGH) PLL_CLK SIZ30<0>;
PLL_CLK_AL<0>_delay: DELAY (ENABLE_HIGH) PLL_CLK AL<0>;
PLL_CLK_SIZ30<1>_delay: DELAY (ENABLE_HIGH) PLL_CLK SIZ30<1>;
PLL_CLK_RSTI40_delay: DELAY PLL_CLK RSTI40;
PLL_CLK_BCLK_delay: DELAY PLL_CLK BCLK;
PLL_CLK_PCLK_delay: DELAY PLL_CLK PCLK;
PLL_CLK_SCLK_delay: DELAY PLL_CLK SCLK;
PLL_CLK_RW30_delay: DELAY (ENABLE_HIGH) PLL_CLK RW30;
PLL_CLK_BG30_delay: DELAY PLL_CLK BG30;
PLL_CLK_BG40_delay: DELAY PLL_CLK BG40;
PLL_CLK_IPL40<0>_delay: DELAY PLL_CLK IPL40<0>;
PLL_CLK_IPL40<1>_delay: DELAY PLL_CLK IPL40<1>;
PLL_CLK_IPL40<2>_delay: DELAY PLL_CLK IPL40<2>;
PLL_CLK_A_OE_delay: DELAY PLL_CLK A_OE;
PLL_CLK_OE_BS_delay: DELAY PLL_CLK OE_BS;
PLL_CLK_CLK_RAMC_delay: DELAY PLL_CLK CLK_RAMC;
PLL_CLK_CLK_BS_delay: DELAY PLL_CLK CLK_BS;
PLL_CLK_TBI40_delay: DELAY PLL_CLK TBI40;
CLK30_AS30_delay: DELAY (ENABLE_HIGH) CLK30 AS30;
CLK30_DS30_delay: DELAY (ENABLE_HIGH) CLK30 DS30;
CLK30_LE_BS_delay: DELAY CLK30 LE_BS;
CLK30_AL<1>_delay: DELAY (ENABLE_HIGH) CLK30 AL<1>;
CLK30_SIZ30<0>_delay: DELAY (ENABLE_HIGH) CLK30 SIZ30<0>;
CLK30_AL<0>_delay: DELAY (ENABLE_HIGH) CLK30 AL<0>;
CLK30_SIZ30<1>_delay: DELAY (ENABLE_HIGH) CLK30 SIZ30<1>;
CLK30_BWL_BS<0>_delay: DELAY CLK30 BWL_BS<0>;
CLK30_BWL_BS<1>_delay: DELAY CLK30 BWL_BS<1>;
CLK30_BWL_BS<2>_delay: DELAY CLK30 BWL_BS<2>;
CPU40_60_TA40_delay: DELAY (ENABLE_HIGH) CPU40_60 TA40;
CPU40_60_AS30_delay: DELAY (ENABLE_HIGH) CPU40_60 AS30;
CPU40_60_DS30_delay: DELAY (ENABLE_HIGH) CPU40_60 DS30;
CPU40_60_AL<1>_delay: DELAY (ENABLE_HIGH) CPU40_60 AL<1>;
CPU40_60_SIZ30<0>_delay: DELAY (ENABLE_HIGH) CPU40_60 SIZ30<0>;
CPU40_60_AL<0>_delay: DELAY (ENABLE_HIGH) CPU40_60 AL<0>;
CPU40_60_SIZ30<1>_delay: DELAY (ENABLE_HIGH) CPU40_60 SIZ30<1>;
CPU40_60_RW30_delay: DELAY (ENABLE_HIGH) CPU40_60 RW30;
CPU40_60_BG30_delay: DELAY CPU40_60 BG30;
CPU40_60_BG40_delay: DELAY CPU40_60 BG40;
CPU40_60_A_OE_delay: DELAY CPU40_60 A_OE;
CPU40_60_OE_BS_delay: DELAY CPU40_60 OE_BS;

/* timing check arc definitions */
SEL16M_PLL_CLK_setup: SETUP(POSEDGE) SEL16M PLL_CLK;
TS40_PLL_CLK_setup: SETUP(POSEDGE) TS40 PLL_CLK;
TT40<0>_PLL_CLK_setup: SETUP(POSEDGE) TT40<0> PLL_CLK;
TT40<1>_PLL_CLK_setup: SETUP(POSEDGE) TT40<1> PLL_CLK;
SEL16M_PLL_CLK_hold: HOLD(POSEDGE) SEL16M PLL_CLK;
TS40_PLL_CLK_hold: HOLD(POSEDGE) TS40 PLL_CLK;
TT40<0>_PLL_CLK_hold: HOLD(POSEDGE) TT40<0> PLL_CLK;
TT40<1>_PLL_CLK_hold: HOLD(POSEDGE) TT40<1> PLL_CLK;
A40<1>_CLK30_setup: SETUP(POSEDGE) A40<1> CLK30;
BERR30_CLK30_setup: SETUP(POSEDGE) BERR30 CLK30;
DSACK30<0>_CLK30_setup: SETUP(POSEDGE) DSACK30<0> CLK30;
DSACK30<1>_CLK30_setup: SETUP(POSEDGE) DSACK30<1> CLK30;
HALT30_CLK30_setup: SETUP(POSEDGE) HALT30 CLK30;
RW40_CLK30_setup: SETUP(POSEDGE) RW40 CLK30;
SIZ40<0>_CLK30_setup: SETUP(POSEDGE) SIZ40<0> CLK30;
SIZ40<1>_CLK30_setup: SETUP(POSEDGE) SIZ40<1> CLK30;
STERM30_CLK30_setup: SETUP(POSEDGE) STERM30 CLK30;
A40<1>_CLK30_hold: HOLD(POSEDGE) A40<1> CLK30;
BERR30_CLK30_hold: HOLD(POSEDGE) BERR30 CLK30;
DSACK30<0>_CLK30_hold: HOLD(POSEDGE) DSACK30<0> CLK30;
DSACK30<1>_CLK30_hold: HOLD(POSEDGE) DSACK30<1> CLK30;
HALT30_CLK30_hold: HOLD(POSEDGE) HALT30 CLK30;
RW40_CLK30_hold: HOLD(POSEDGE) RW40 CLK30;
SIZ40<0>_CLK30_hold: HOLD(POSEDGE) SIZ40<0> CLK30;
SIZ40<1>_CLK30_hold: HOLD(POSEDGE) SIZ40<1> CLK30;
STERM30_CLK30_hold: HOLD(POSEDGE) STERM30 CLK30;
BB40_CPU40_60_setup: SETUP(POSEDGE) BB40 CPU40_60;
BGACK30_CPU40_60_setup: SETUP(POSEDGE) BGACK30 CPU40_60;
BR30_CPU40_60_setup: SETUP(POSEDGE) BR30 CPU40_60;
BR40_CPU40_60_setup: SETUP(POSEDGE) BR40 CPU40_60;
LOCK40_CPU40_60_setup: SETUP(POSEDGE) LOCK40 CPU40_60;
LOCKE40_CPU40_60_setup: SETUP(POSEDGE) LOCKE40 CPU40_60;
BB40_CPU40_60_hold: HOLD(POSEDGE) BB40 CPU40_60;
BGACK30_CPU40_60_hold: HOLD(POSEDGE) BGACK30 CPU40_60;
BR30_CPU40_60_hold: HOLD(POSEDGE) BR30 CPU40_60;
BR40_CPU40_60_hold: HOLD(POSEDGE) BR40 CPU40_60;
LOCK40_CPU40_60_hold: HOLD(POSEDGE) LOCK40 CPU40_60;
LOCKE40_CPU40_60_hold: HOLD(POSEDGE) LOCKE40 CPU40_60;

ENDMODEL