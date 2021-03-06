
# Loop constraints
directive set /sobel/core/core:rlp CSTEPS_FROM {{. == 0}}
directive set /sobel/core/core:rlp/main CSTEPS_FROM {{. == 3} {.. == 0}}

# IO operation constraints
directive set /sobel/core/core:rlp/main/FRAME:io_read(vin:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:io_write(vout:rsc.d) CSTEPS_FROM {{.. == 2}}

# Real operation constraints
directive set /sobel/core/core:rlp/main/and CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#1 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#2 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#3 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#4 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#5 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#6 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#7 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#8 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#9 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#15:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:mul CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:acc#1 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#16:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:mul#1 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:acc#2 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#17:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:mul#2 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:and#1 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:or#1 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#21:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:mul#6 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:acc#10 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#22:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:mul#7 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:acc#12 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#23:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:mul#8 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:acc#14 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:acc#16 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:acc CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC2:acc CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC2-3:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC2:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC2-3:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC2:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/ACC2-3:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#11 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/acc#3 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#13 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#12 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#15 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#14 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#16 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/acc#5 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:mul#2 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:mul#3 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#23 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#17 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#18 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#19 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#20 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#21 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#22 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#3 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#25 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#24 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#27 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#26 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#28 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/acc#7 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:mul#4 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:mul#5 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#35 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#29 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#30 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#31 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#32 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#33 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#34 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#4 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:mul CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#41 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:mul#1 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#42 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#36 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#37 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc#38 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#39 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#40 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#2 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:or CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:or#3 CSTEPS_FROM {{.. == 2}}
directive set /sobel/core/core:rlp/main/FRAME:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:acc CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#16 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:or CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#6:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mul CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#7:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mul#1 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:acc#2 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#8:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mul#2 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#17 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:or#2 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#9:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mul#3 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:acc#26 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#10:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mul#4 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:acc#27 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#11:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mul#5 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:acc#28 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#19 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:or#4 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#12:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mul#6 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:acc#10 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#13:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mul#7 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:acc#12 CSTEPS_FROM {{.. == 1}}
directive set {/sobel/core/core:rlp/main/regs.operator[]#14:mux} CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mul#8 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:acc#14 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:acc#16 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:acc CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:and#13 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for#1:mux#9 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#42 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#46 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#20 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#21 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#22 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#23 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#24 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#25 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#33 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#34 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#35 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#39 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#40 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#41 CSTEPS_FROM {{.. == 1}}
directive set /sobel/core/core:rlp/main/FRAME:for:mux#44 CSTEPS_FROM {{.. == 1}}
