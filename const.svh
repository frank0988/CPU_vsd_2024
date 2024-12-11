`define OP_R     0110011 
`define OP_I     0010011
`define LUI      0110111
`define AUIPC    0010111
`define JAL      1101111
`define JALR     1100111
`define OP_B     1100011
`define OP_L     0000011
`define OP_S     0100011

// RV32I Instruction func3 Encodings

// Integer Register-Immediate Instructions
`define ADDI_func3   000 // Add immediate
`define SLTI_func3   010 // Set less than immediate
`define SLTIU_func3  011 // Set less than immediate unsigned
`define XORI_func3   100 // Bitwise XOR immediate
`define ORI_func3    110 // Bitwise OR immediate
`define ANDI_func3   111 // Bitwise AND immediate
`define SLLI_func3   001 // Shift left logical immediate
`define SRLI_func3   101 // Shift right logical immediate (unsigned)
`define SRAI_func3   101 // Shift right arithmetic immediate (overloaded by funct7)

// Integer Register-Register Instructions
`define ADD_func3    000 // Add
`define SUB_func3    000 // Subtract (overloaded by funct7)
`define SLL_func3    001 // Shift left logical
`define SLT_func3    010 // Set less than
`define SLTU_func3   011 // Set less than unsigned
`define XOR_func3    100 // Bitwise XOR
`define SRL_func3    101 // Shift right logical
`define SRA_func3    101 // Shift right arithmetic (overloaded by funct7)
`define OR_func3     110 // Bitwise OR
`define AND_func3    111 // Bitwise AND

// Branch Instructions
`define BEQ_func3    000 // Branch if equal
`define BNE_func3    001 // Branch if not equal
`define BLT_func3    100 // Branch if less than
`define BGE_func3    101 // Branch if greater than or equal
`define BLTU_func3   110 // Branch if less than unsigned
`define BGEU_func3   111 // Branch if greater than or equal unsigned

// Load Instructions
`define LB_func3     000 // Load byte
`define LH_func3     001 // Load halfword
`define LW_func3     010 // Load word
`define LBU_func3    100 // Load byte unsigned
`define LHU_func3    101 // Load halfword unsigned

// Store Instructions
`define SB_func3     000 // Store byte
`define SH_func3     001 // Store halfword
`define SW_func3     010 // Store word

// Boolean
`define TRUE 1
`define FALSE 0