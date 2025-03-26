module vote_logger(
    input clk,
    input rst,
    input mode,
    input candidate0_vote_valid,
    input candidate1_vote_valid,
    input candidate2_vote_valid,
    input candidate3_vote_valid,
    output reg [3:0] candidate0_vote_received,
    output reg [3:0] candidate1_vote_received,
    output reg [3:0] candidate2_vote_received,
    output reg [3:0] candidate3_vote_received
    );

    always @(posedge clk) begin
        if(rst)begin
            if(mode == 1'b0)begin
                case({candidate3_vote_valid, candidate2_vote_valid, candidate1_vote_valid, candidate0_vote_valid})
                    4'b0001: candidate0_vote_received <= 4'd0;
                    4'b0010: candidate1_vote_received <= 4'd0;
                    4'b0100: candidate2_vote_received <= 4'd0;
                    4'b1000: candidate3_vote_received <= 4'd0;
                endcase
            end else if(mode == 1'b1)begin
                candidate0_vote_received <= 4'd0;
                candidate1_vote_received <= 4'd0;
                candidate2_vote_received <= 4'd0;
                candidate3_vote_received <= 4'd0;
            end
        end else begin
            if(mode == 1'b0)begin
                case({candidate3_vote_valid, candidate2_vote_valid, candidate1_vote_valid, candidate0_vote_valid})
                    4'b0001: candidate0_vote_received <= candidate0_vote_received + 4'd1;
                    4'b0010: candidate1_vote_received <= candidate1_vote_received + 4'd1;
                    4'b0100: candidate2_vote_received <= candidate2_vote_received + 4'd1;
                    4'b1000: candidate3_vote_received <= candidate3_vote_received + 4'd1;
                endcase
            end
        end
    end

endmodule
