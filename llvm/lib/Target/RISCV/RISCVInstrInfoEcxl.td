def FACTORIAL : Instruction {
    bits<32> Inst;
    bits<32> SoftFail = 0;
    bits<5> rs2 = 0b11111;
    bits<5> rs1;
    bits<5> rd;
    let Namespace = "RISCV";
    let Size = 4;
    let hasSideEffects = 0;
    let mayLoad = 0;
    let mayStore = 0;
    let Inst{31-25} = 0b0000100; /*funct7*/  
    let Inst{24-20} = rs2;
    let Inst{19-15} = rs1;
    let Inst{14-12} = 0b111; /*funct3*/
    let Inst{11-7} = rd;
    let Inst{6-0} = 0b0101011; /*opcode*/
    dag OutOperandList = (outs GPR:$rd);
    dag InOperandList = (ins GPR:$rs1);
    let AsmString = "factorial\t$rd, $rs1";
}
def : Pat<(int_riscv_factorial GPR:$rs1), (FACTORIAL GPR:$rs1)>;

// We use 0101011 (0x2B) as our custom opcode here. Func3 is 0b000 here. Add more with Func3 = 0b001, 0b010, etc.
def DUMMY_R_TYPE1 : Instruction {
    bits<32> Inst;
    bits<5> rs2;
    bits<5> rs1;
    bits<5> rd;
    let Namespace = "RISCV";
    let Size = 4;
    let hasSideEffects = 0;
    let mayLoad = 0;
    let mayStore = 0;
    let Inst{31-25} = 0b0000000; /*funct7*/  
    let Inst{24-20} = rs2;
    let Inst{19-15} = rs1;
    let Inst{14-12} = 0b000; /*funct3*/
    let Inst{11-7} = rd;
    let Inst{6-0} = 0b0101011; /*opcode*/
    dag OutOperandList = (outs GPR:$rd);
    dag InOperandList = (ins GPR:$rs1, GPR:$rs2);
    let AsmString = "dummy_r_type1\t$rd, $rs1, $rs2";
}
def : Pat<(int_riscv_dummy_r_type1 GPR:$rs1, GPR:$rs2), (DUMMY_R_TYPE1 GPR:$rs1, GPR:$rs2)>;


def DUMMY_R_TYPE2 : Instruction {
    bits<32> Inst;
    bits<5> rs2;
    bits<5> rs1;
    bits<5> rd;
    let Namespace = "RISCV";
    let Size = 4;
    let hasSideEffects = 0;
    let mayLoad = 0;
    let mayStore = 0;
    let Inst{31-25} = 0b0000000; /*funct7*/  
    let Inst{24-20} = rs2;
    let Inst{19-15} = rs1;
    let Inst{14-12} = 0b001; /*funct3*/
    let Inst{11-7} = rd;
    let Inst{6-0} = 0b0101011; /*opcode*/
    dag OutOperandList = (outs GPR:$rd);
    dag InOperandList = (ins GPR:$rs1, GPR:$rs2);
    let AsmString = "dummy_r_type2\t$rd, $rs1, $rs2";
}
def : Pat<(int_riscv_dummy_r_type2 GPR:$rs1, GPR:$rs2), (DUMMY_R_TYPE2 GPR:$rs1, GPR:$rs2)>;

def DUMMY_R_TYPE3 : Instruction {
    bits<32> Inst;
    bits<5> rs2;
    bits<5> rs1;
    bits<5> rd;
    let Namespace = "RISCV";
    let Size = 4;
    let hasSideEffects = 0;
    let mayLoad = 0;
    let mayStore = 0;
    let Inst{31-25} = 0b0000000; /*funct7*/  
    let Inst{24-20} = rs2;
    let Inst{19-15} = rs1;
    let Inst{14-12} = 0b010; /*funct3*/
    let Inst{11-7} = rd;
    let Inst{6-0} = 0b0101011; /*opcode*/
    dag OutOperandList = (outs GPR:$rd);
    dag InOperandList = (ins GPR:$rs1, GPR:$rs2);
    let AsmString = "dummy_r_type3\t$rd, $rs1, $rs2";
}
def : Pat<(int_riscv_dummy_r_type3 GPR:$rs1, GPR:$rs2), (DUMMY_R_TYPE3 GPR:$rs1, GPR:$rs2)>;

def DUMMY_R_TYPE4 : Instruction {
    bits<32> Inst;
    bits<5> rs2;
    bits<5> rs1;
    bits<5> rd;
    let Namespace = "RISCV";
    let Size = 4;
    let hasSideEffects = 0;
    let mayLoad = 0;
    let mayStore = 0;
    let Inst{31-25} = 0b0000000; /*funct7*/  
    let Inst{24-20} = rs2;
    let Inst{19-15} = rs1;
    let Inst{14-12} = 0b011; /*funct3*/
    let Inst{11-7} = rd;
    let Inst{6-0} = 0b0101011; /*opcode*/
    dag OutOperandList = (outs GPR:$rd);
    dag InOperandList = (ins GPR:$rs1, GPR:$rs2);
    let AsmString = "dummy_r_type4\t$rd, $rs1, $rs2";
}
def : Pat<(int_riscv_dummy_r_type4 GPR:$rs1, GPR:$rs2), (DUMMY_R_TYPE4 GPR:$rs1, GPR:$rs2)>;

def DUMMY_R_TYPE5 : Instruction {
    bits<32> Inst;
    bits<5> rs2;
    bits<5> rs1;
    bits<5> rd;
    let Namespace = "RISCV";
    let Size = 4;
    let hasSideEffects = 0;
    let mayLoad = 0;
    let mayStore = 0;
    let Inst{31-25} = 0b0000000; /*funct7*/  
    let Inst{24-20} = rs2;
    let Inst{19-15} = rs1;
    let Inst{14-12} = 0b100; /*funct3*/
    let Inst{11-7} = rd;
    let Inst{6-0} = 0b0101011; /*opcode*/
    dag OutOperandList = (outs GPR:$rd);
    dag InOperandList = (ins GPR:$rs1, GPR:$rs2);
    let AsmString = "dummy_r_type5\t$rd, $rs1, $rs2";
}
def : Pat<(int_riscv_dummy_r_type5 GPR:$rs1, GPR:$rs2), (DUMMY_R_TYPE5 GPR:$rs1, GPR:$rs2)>;
