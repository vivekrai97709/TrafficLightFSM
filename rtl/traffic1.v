module traffic1(

    input clk,
    input rst,

    output reg AG,
    output reg AY,
    output reg AR,

    output reg BG,
    output reg BY,
    output reg BR
);
    reg [1:0] state;
    reg [1:0] next_state;

    parameter S0 = 2'b00; 
    parameter S1 = 2'b01; 
    parameter S2 = 2'b10; 
    parameter S3 = 2'b11;         

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= S0;
        end else begin
            state <= next_state;
        end
    end

    always @(*)
      begin
        case(state)

            S0: next_state = S1;
            S1: next_state = S2;
            S2: next_state = S3;
            S3: next_state = S0;

            default: next_state = S0;

        endcase
    end

    always @(*)
     begin
        AG = 0; AY = 0; AR = 0;
        BG = 0; BY = 0; BR = 0;

        case(state)

            S0:
            begin
                AG = 1;
                BR = 1;
             end

             S1:
            begin
                AY = 1;
                BR = 1;
            end

            S2:
            begin
                AR = 1;
                BG = 1;
            end

            S3:
            begin
                AR = 1;
                BY = 1;
            end

        endcase
    end
endmodule
