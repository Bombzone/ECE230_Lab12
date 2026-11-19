module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);
    onehot one(
    .w(sw),
    .clk(btnC),
    .reset(btnU),
    .z(led[0]),
    .states({led[6], led[5], led[4], led[3], led[2]})
    );
    binary bin(
    .w(sw),
    .clk(btnC),
    .reset(btnU),
    .z(led[1]),
    .states(led[9:7])
    );

endmodule