module voting_machine(
    input clk ,
    input rst,
    input mode,
    input button0,
    input button1,
    input button2,
    input button3,
    output [3:0] led
);

    wire valid_vote_0;
    wire valid_vote_1;
    wire valid_vote_2;
    wire valid_vote_3;

    wire [3:0] candidate0_vote_reced;
    wire [3:0] candidate1_vote_reced;
    wire [3:0] candidate2_vote_reced;
    wire [3:0] candidate3_vote_reced;

    wire anyvalidvote;

buttoncontrol bc0(
    .clk(clk),
    .button(button0),
    .valid_vote(valid_vote_0)
);

buttoncontrol bc1(
    .clk(clk),
    .button(button1),
    .valid_vote(valid_vote_1)
);

buttoncontrol bc2(
    .clk(clk),
    .button(button2),
    .valid_vote(valid_vote_2)
);

buttoncontrol bc3(
    .clk(clk),
    .button(button3),
    .valid_vote(valid_vote_3)
);

vote_logger vl(
    .clk(clk),
    .rst(rst),
    .mode(mode),
    .candidate0_vote_valid(valid_vote_0),
    .candidate1_vote_valid(valid_vote_1),
    .candidate2_vote_valid(valid_vote_2),
    .candidate3_vote_valid(valid_vote_3),
    .candidate0_vote_received(candidate0_vote_reced),
    .candidate1_vote_received(candidate1_vote_reced),
    .candidate2_vote_received(candidate2_vote_reced),
    .candidate3_vote_received(candidate3_vote_reced)
);

assign anyvalidvote = valid_vote_0 | valid_vote_1 | valid_vote_2 | valid_vote_3;

modecontrol mc(
    .clk(clk),
    .rst(rst),
    .mode(mode),
    .valid_vote(anyvalidvote),
    .candidate0_vote(candidate0_vote_reced),
    .candidate1_vote(candidate1_vote_reced),
    .candidate2_vote(candidate2_vote_reced),
    .candidate3_vote(candidate3_vote_reced),
    .candidate0_button_press(valid_vote_0),
    .candidate1_button_press(valid_vote_1),
    .candidate2_button_press(valid_vote_2),
    .candidate3_button_press(valid_vote_3),
    .led(led)
);

endmodule