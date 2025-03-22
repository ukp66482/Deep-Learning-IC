module spiControl_FSM(
////input
    input  clk, //100MHz
    input  rst,
    input [3:0] data_in,
    input  load_data,
////output    
    output reg spi_clk, //10MHz
    output reg done_send,
    output reg spi_data
);

    reg [2:0] dataCount;
    reg [7:0] shiftReg;
    reg [1:0] state;
    reg [1:0] next_state;
    wire clock_10;
    reg CE;

    clk_wiz_1(.clk_in1(clk), .reset(rst), .clk_out1(clock_10));

    parameter 
        IDLE = 2'd0,
        TRANSFER = 2'd1,
        DONE = 2'd2;

    always @(negedge clock_10 or posedge rst) begin //state
        if(rst) state <= IDLE;
        else state <= next_state;
    end

    always @(*) begin //next_state
        case(state)
            IDLE:begin
                if(load_data) next_state = TRANSFER;
                else next_state = IDLE;
            end
            TRANSFER:begin
                if(dataCount == 3'd7) next_state = DONE;
                else next_state = TRANSFER;
            end
            DONE:begin
                if(!load_data) next_state = IDLE;
                else next_state = DONE;
            end
            default: next_state = IDLE;
        endcase
    end

    always @(negedge clock_10 or posedge rst) begin //shiftReg
        if(rst) shiftReg <= 8'd0;
        else begin
            case(state)
                IDLE: if(load_data) shiftReg <= {data_in[3], 1'b0, data_in[2], 1'b0, data_in[1], 1'b0, data_in[0], 1'b0}; 
                TRANSFER: shiftReg <= {shiftReg[6:0],1'b0};
                DONE: shiftReg <= 8'd0;
            endcase
        end
    end

    always @(negedge clock_10 or posedge rst) begin //dataCount
        if(rst) dataCount <= 0;
        else begin
            case(state)
                TRANSFER: if(dataCount != 7) dataCount <= dataCount + 3'd1;
                default: dataCount <= 3'd0;
            endcase
        end
    end

    always @(negedge clock_10 or posedge rst) begin //spi_data
        if(rst) spi_data <= 1'b0;
        else begin
            case(state)
                TRANSFER: spi_data <= shiftReg[7];
                default: spi_data <= 1'b0;
            endcase
        end
    end

    always @(negedge clock_10 or posedge rst) begin //CE
        if(rst) CE <= 1'b0;
        else begin
            case(state)
                TRANSFER: CE <= 1'b1;
                default: CE <= 1'b0;
            endcase
        end
    end

    always @(negedge clock_10 or posedge rst) begin //done_send
        if(rst) done_send <= 1'b0;
        else begin
            case(state)
                DONE:begin
                    if(!load_data) done_send <= 1'b0;
                    else done_send <= 1'b1;
                end
                default: done_send <= 1'b0;
            endcase
        end
    end

    always @(*) begin //spi_clk
        if(CE) spi_clk = clock_10;
        else spi_clk = 1'b0;
    end

endmodule