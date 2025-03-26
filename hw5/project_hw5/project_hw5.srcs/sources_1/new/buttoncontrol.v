module buttoncontrol(
    input clk,  //125MHz
    input rst,
    input button,
    output reg valid_vote
);

    reg [30:0] counter;

    always @(posedge clk)begin    
        if(counter >= 125000000) counter <= 31'd0;
        else if(button) counter <= counter + 31'd1;
        else counter <= 31'b0;
    end

    always @(posedge clk) begin
        if(rst) valid_vote <= 1'b0;
        else begin
            if(counter >= 125000000) valid_vote <= 1'b1;
            else valid_vote <= 1'b0;
        end
    end

endmodule
