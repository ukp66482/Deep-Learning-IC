`define KERNEL_0_0 20'sh0A89E
`define KERNEL_0_1 20'sh092D5
`define KERNEL_0_2 20'sh06D43
`define KERNEL_0_3 20'sh01004
`define KERNEL_0_4 20'shF8F71
`define KERNEL_0_5 20'shF6E54
`define KERNEL_0_6 20'shFA6D7
`define KERNEL_0_7 20'shFC834
`define KERNEL_0_8 20'shFAC19

`define KERNEL_1_0 20'shFDB55
`define KERNEL_1_1 20'sh02992
`define KERNEL_1_2 20'shFC994
`define KERNEL_1_3 20'sh050FD
`define KERNEL_1_4 20'sh02F20
`define KERNEL_1_5 20'sh0202D
`define KERNEL_1_6 20'sh03BD7
`define KERNEL_1_7 20'shFD369
`define KERNEL_1_8 20'sh05E68

`define BIAS_0 20'sh01310 //1 bit sign + 3 bit integer + 16 bit fraction
`define BIAS_1 20'shF7295 //1 bit sign + 3 bit integer + 16 bit fraction

module CONV (
    input clk,
    input reset,
    input ready,
    input signed [19:0] idata,
    input [19:0] cdata_rd,

    output reg busy,
    output reg crd,
    output reg cwr,
    output reg [2:0] csel,
    output reg [11:0] iaddr,
    output reg [11:0] caddr_rd,
    output reg [11:0] caddr_wr,
    output reg [19:0] cdata_wr
);

parameter 
IDLE = 4'd0,
INPUT_CONV = 4'd1,
MAC = 4'd2,
//ROUND = 4'd3,
OUTPUT_L0_K0 = 4'd4,
OUTPUT_L0_K1 = 4'd5,
INPUT_MAX_POOL = 4'd6,
MAX_POOL_1 = 4'd7,
MAX_POOL_2 = 4'd8,
OUTPUT_L1_K0 = 4'd9,
OUTPUT_L1_K1 = 4'd10,
OUTPUT_L2_K0 = 4'd11,
OUTPUT_L2_K1 = 4'd12,
DONE = 4'd13;

reg [3:0] state;
reg [3:0] next_state;

reg signed [47:0] acc_1; // 1bit sign + 15bit integer + 32 bit fraction
reg signed [47:0] acc_2; // 1bit sign + 15bit integer + 32 bit fraction

reg [3:0] cnt;
reg [5:0] x;
reg [5:0] y;
reg [10:0] flatten_addr;

wire signed [6:0] x_dec_1;
wire signed [6:0] y_dec_1;
wire signed [6:0] x_inc_1;
wire signed [6:0] y_inc_1;

assign x_dec_1 = x - 7'sd1;
assign y_dec_1 = y - 7'sd1;
assign x_inc_1 = x + 7'sd1;
assign y_inc_1 = y + 7'sd1;

always @(posedge clk or posedge reset) begin //state
    if(reset) state <= IDLE;
    else state <= next_state;
end

always @(*) begin //next_state
    case(state)
        IDLE:begin
            if(ready) next_state = INPUT_CONV;
            else next_state = IDLE;
        end
        INPUT_CONV: next_state = MAC;
        MAC:begin
            if(cnt == 4'd8) next_state = OUTPUT_L0_K0;
            else next_state = MAC;
        end
        //ROUND: next_state = OUTPUT_L0_K0;
        OUTPUT_L0_K0: next_state = OUTPUT_L0_K1;
        OUTPUT_L0_K1:begin
            if(x == 6'd63 && y == 6'd63) next_state = INPUT_MAX_POOL;
            else next_state = INPUT_CONV;
        end
        INPUT_MAX_POOL: next_state = MAX_POOL_1;
        MAX_POOL_1: next_state = MAX_POOL_2;
        MAX_POOL_2:begin
            if(cnt == 4'd3) next_state = OUTPUT_L1_K0;
            else next_state = MAX_POOL_1;
        end
        OUTPUT_L1_K0: next_state = OUTPUT_L1_K1;
        OUTPUT_L1_K1: next_state = OUTPUT_L2_K0;
        OUTPUT_L2_K0: next_state = OUTPUT_L2_K1;
        OUTPUT_L2_K1:begin
            if(flatten_addr == 11'd2047) next_state = DONE;
            else next_state = INPUT_MAX_POOL;
        end
        DONE:begin
            if(ready) next_state = INPUT_CONV;
            else next_state = DONE;
        end
        default: next_state = IDLE;
    endcase
end

always @(posedge clk) begin //x y
    case(state)
        IDLE:begin
            x <= 6'd0;
            y <= 6'd0;
        end
        OUTPUT_L0_K1:begin
            if(x == 6'd63)begin
                x <= 6'd0;
                y <= y + 6'd1;
            end else x <= x + 6'd1;
        end
        OUTPUT_L1_K1:begin
            if(x == 6'd62)begin
                x <= 6'd0;
                y <= y + 6'd2;
            end else x <= x + 6'd2;
        end
    endcase
end

always @(posedge clk) begin //cnt
    case(state)
        IDLE: cnt <= 4'd0;
        MAC: cnt <= cnt + 4'd1;
        OUTPUT_L0_K0: cnt <= 4'd0;
        MAX_POOL_2: cnt <= cnt + 4'd1;
        OUTPUT_L1_K0: cnt <= 4'd0;
    endcase
end

always @(posedge clk) begin //iaddr
    case(state)
        INPUT_CONV: iaddr <= {y_dec_1[5:0], x_dec_1[5:0]};
        MAC:begin
            case(cnt)
                4'd0: iaddr <= {y_dec_1[5:0], x};
                4'd1: iaddr <= {y_dec_1[5:0], x_inc_1[5:0]};
                4'd2: iaddr <= {y, x_dec_1[5:0]};
                4'd3: iaddr <= {y, x};
                4'd4: iaddr <= {y, x_inc_1[5:0]};
                4'd5: iaddr <= {y_inc_1[5:0], x_dec_1[5:0]};
                4'd6: iaddr <= {y_inc_1[5:0], x};
                4'd7: iaddr <= {y_inc_1[5:0], x_inc_1[5:0]};
            endcase
        end
    endcase
end

always @(posedge clk) begin //acc_1 acc_2
    case(state)
        INPUT_CONV:begin
            acc_1 <= {12'h000, `BIAS_0, 16'b0};
            acc_2 <= {12'hfff, `BIAS_1, 16'b0};
        end
        MAC:begin
            case(cnt)
                4'd0:begin
                    if(y_dec_1 == -7'sd1 || x_dec_1 == -7'sd1)begin
                        acc_1 <= acc_1;
                        acc_2 <= acc_2;
                    end else begin
                        acc_1 <= acc_1 + ($signed(idata) * `KERNEL_0_0);
                        acc_2 <= acc_2 + ($signed(idata) * `KERNEL_1_0);
                    end
                end
                4'd1:begin
                    if(y_dec_1 == -7'sd1)begin
                        acc_1 <= acc_1;
                        acc_2 <= acc_2;
                    end else begin
                        acc_1 <= acc_1 + ($signed(idata) * `KERNEL_0_1);
                        acc_2 <= acc_2 + ($signed(idata) * `KERNEL_1_1);
                    end
                end
                4'd2:begin
                    if(y_dec_1 == -7'sd1 || x_inc_1 == -7'sd64)begin
                        acc_1 <= acc_1;
                        acc_2 <= acc_2;
                    end else begin
                        acc_1 <= acc_1 + ($signed(idata) * `KERNEL_0_2);
                        acc_2 <= acc_2 + ($signed(idata) * `KERNEL_1_2);
                    end
                end
                4'd3:begin
                    if(x_dec_1 == -7'sd1)begin
                        acc_1 <= acc_1;
                        acc_2 <= acc_2;
                    end else begin
                        acc_1 <= acc_1 + ($signed(idata) * `KERNEL_0_3);
                        acc_2 <= acc_2 + ($signed(idata) * `KERNEL_1_3);
                    end
                end
                4'd4:begin
                    acc_1 <= acc_1 + ($signed(idata) * `KERNEL_0_4);
                    acc_2 <= acc_2 + ($signed(idata) * `KERNEL_1_4);
                end
                4'd5:begin
                    if(x_inc_1 == -7'sd64)begin
                        acc_1 <= acc_1;
                        acc_2 <= acc_2;
                    end else begin
                        acc_1 <= acc_1 + ($signed(idata) * `KERNEL_0_5);
                        acc_2 <= acc_2 + ($signed(idata) * `KERNEL_1_5);
                    end
                end
                4'd6:begin
                    if(y_inc_1 == -7'sd64 || x_dec_1 == -7'sd1)begin
                        acc_1 <= acc_1;
                        acc_2 <= acc_2;
                    end else begin
                        acc_1 <= acc_1 + ($signed(idata) * `KERNEL_0_6);
                        acc_2 <= acc_2 + ($signed(idata) * `KERNEL_1_6);
                    end
                end
                4'd7:begin
                    if(y_inc_1 == -7'sd64)begin
                        acc_1 <= acc_1;
                        acc_2 <= acc_2;
                    end else begin
                        acc_1 <= acc_1 + ($signed(idata) * `KERNEL_0_7);
                        acc_2 <= acc_2 + ($signed(idata) * `KERNEL_1_7);
                    end
                end
                4'd8:begin
                    if(y_inc_1 == -7'sd64 || x_inc_1 == -7'sd64)begin
                        acc_1 <= acc_1;
                        acc_2 <= acc_2;
                    end else begin
                        acc_1 <= acc_1 + ($signed(idata) * `KERNEL_0_8);
                        acc_2 <= acc_2 + ($signed(idata) * `KERNEL_1_8);
                    end
                end
            endcase
        end
        MAX_POOL_1:begin
            if(cnt == 0) acc_1 <= cdata_rd;
            else begin
                if(cdata_rd > acc_1) acc_1 <= cdata_rd;
            end
        end
        MAX_POOL_2:begin
            if(cnt == 0) acc_2 <= cdata_rd;
            else begin
                if(cdata_rd > acc_2) acc_2 <= cdata_rd;
            end
        end
        /*
        ROUND:begin
            acc_1 <= acc_1[35:16] + acc_1[15];
            acc_2 <= acc_2[35:16] + acc_2[15];
        end*/
    endcase
end

always @(posedge clk) begin //flatten_addr
    case(state)
        IDLE: flatten_addr <= 11'd0;
        OUTPUT_L2_K0: flatten_addr <= flatten_addr + 11'd1;
        OUTPUT_L2_K1: flatten_addr <= flatten_addr + 11'd1;
    endcase
end

always @(posedge clk) begin //csel
    case(state)
        OUTPUT_L0_K0: csel <= 3'b001;
        OUTPUT_L0_K1: csel <= 3'b010;
        INPUT_MAX_POOL: csel <= 3'b0001;
        MAX_POOL_1: csel <= 3'b010;
        MAX_POOL_2: csel <= 3'b001;
        OUTPUT_L1_K0: csel <= 3'b011;
        OUTPUT_L1_K1: csel <= 3'b100;
        OUTPUT_L2_K0: csel <= 3'b101;
        OUTPUT_L2_K1: csel <= 3'b101;
        default: csel <= 3'b000;
    endcase
end

always @(posedge clk) begin //crd
    case(state)
        INPUT_MAX_POOL: crd <= 1;
        MAX_POOL_1: crd <= 1;
        MAX_POOL_2: crd <= 1;
        OUTPUT_L2_K1: crd <= 1;
        default: crd <= 0;
    endcase
end

always @(posedge clk) begin //caddr_rd
    case(state)
        INPUT_MAX_POOL: caddr_rd <= {y, x};
        MAX_POOL_1:begin
            case(cnt)
                4'd0: caddr_rd <= {y, x};
                4'd1: caddr_rd <= {y, x_inc_1[5:0]};
                4'd2: caddr_rd <= {y_inc_1[5:0], x};
                4'd3: caddr_rd <= {y_inc_1[5:0], x_inc_1[5:0]};
            endcase
        end
        MAX_POOL_2:begin
            case(cnt)
                4'd0: caddr_rd <= {y, x_inc_1[5:0]};
                4'd1: caddr_rd <= {y_inc_1[5:0], x};
                4'd2: caddr_rd <= {y_inc_1[5:0], x_inc_1[5:0]};
                //4'd3: caddr_rd <= {y_inc_1[5:0], x_inc_1[5:0]};
            endcase
        end
        OUTPUT_L2_K1: caddr_rd <= {y, x};
    endcase
end

always @(posedge clk) begin //cwr
    case(state)
        OUTPUT_L0_K0: cwr <= 1;
        OUTPUT_L0_K1: cwr <= 1;
        OUTPUT_L1_K0: cwr <= 1;
        OUTPUT_L1_K1: cwr <= 1;
        OUTPUT_L2_K0: cwr <= 1;
        OUTPUT_L2_K1: cwr <= 1;
        default: cwr <= 0;
    endcase
end

always @(posedge clk) begin //caddr_wr
    case(state)
        OUTPUT_L0_K0: caddr_wr <= {y, x}; 
        OUTPUT_L0_K1: caddr_wr <= {y, x};
        OUTPUT_L1_K0: caddr_wr <= {y[5:1], x[5:1]};
        OUTPUT_L1_K1: caddr_wr <= {y[5:1], x[5:1]};
        OUTPUT_L2_K0: caddr_wr <= flatten_addr;
        OUTPUT_L2_K1: caddr_wr <= flatten_addr;
    endcase
    
end

always @(posedge clk) begin //cdata_wr
    case(state)
        OUTPUT_L0_K0: cdata_wr <= acc_1 < 48'sh0 ? 20'sh0 : acc_1[35:16] + acc_1[15];
        OUTPUT_L0_K1: cdata_wr <= acc_2 < 48'sh0 ? 20'sh0 : acc_2[35:16] + acc_2[15];
        OUTPUT_L1_K0: cdata_wr <= acc_1;
        OUTPUT_L1_K1: cdata_wr <= acc_2;
        OUTPUT_L2_K0: cdata_wr <= acc_1;
        OUTPUT_L2_K1: cdata_wr <= acc_2;
    endcase
end

always @(posedge clk or posedge reset) begin //busy
    if(reset) busy <= 0;
    else begin
        case(state)
            IDLE: if(ready) busy <= 1;
            INPUT_CONV: busy <= 1;
            DONE: busy <= 0;
        endcase
    end
end

endmodule