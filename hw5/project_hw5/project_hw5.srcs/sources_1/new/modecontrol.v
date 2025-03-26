module modecontrol(
    input clk,
    input rst,
    input mode,
    input valid_vote,
    input [3:0] candidate0_vote,
    input [3:0] candidate1_vote,
    input [3:0] candidate2_vote,
    input [3:0] candidate3_vote,
    input candidate0_button_press,
    input candidate1_button_press,
    input candidate2_button_press,
    input candidate3_button_press,

    output reg [3:0] led
);
    reg [30:0] counter;
    reg pressed;

    always @(posedge clk) begin
        if(valid_vote) pressed <= 1'b1;
        else if(counter >= 62500000) pressed <= 1'b0;
    end

    always @(posedge clk)begin    
        if(counter >= 62500000) counter <= 31'd0;
        else if(counter < 62500000 && pressed) counter <= counter + 31'd1;
        else counter <= 31'b0;
    end

    always @(posedge clk) begin
        if(rst)begin
            if(mode == 1'b0 && pressed) led <= 4'b1111;
            else led <= 4'b0000;
        end else begin //mode 0 -> vote , mode1 -> result
            if(mode == 1'b0 && pressed) led <= 4'b1111;
            else if(mode == 1'b1)begin
                case({candidate3_button_press, candidate2_button_press, candidate1_button_press, candidate0_button_press})
                    4'b0001: led <= candidate0_vote;
                    4'b0010: led <= candidate1_vote;
                    4'b0100: led <= candidate2_vote;
                    4'b1000: led <= candidate3_vote;
                endcase
            end else led <= 4'b0000;
        end
    end

endmodule