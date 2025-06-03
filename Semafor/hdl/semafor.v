//------------------------------------------------------------------------------
// Universitatea Transilvania din Brasov
// Facultatea IESC
// Proiect     : Laborator ED
// Modul       : Semafor
// Autor       : <denis.bratosin@student.unitbv.ro>
// Data        : Apr. 16, 2025
//------------------------------------------------------------------------------


module semafor(
    input clk,
    input rst_n,
    input buton,
    output reg[2:0] led_masini,
    output reg led_piedtoni
    //Pt pietoni 1 e rosu 0 verde
    //3 biti bitul 2 pt rosu 1 pt galben 0 pt verde
);

    parameter R=3'b100, G=3'b010,V=3'b001;
    reg[2:0] state;
    parameter r=1'b1 , v=1'b0;
    reg cerere_pieton;
    reg[15:0] timer;


    always @(posedge clk) begin
        if(!rst_n) begin //Se verfica prima oara daca se da reset , daca nu se verifica starea daca da devine rosu si se reseteaza timerul
            state <= R;
            timer <=0;
        end
        else begin
            case (state)
                R: begin //Semafor rosu (PT MASINI)
                    if(timer==30) begin//Daca trec 30 secunde
                        state <= G;//Devine galben
                        timer <=0;
                        
                    end
                    else begin
                        timer <=timer+1;
                    end
                end

                G: begin//Galben. Sta 5 secunde si dupa devine V
                    if(timer==5)begin
                        state<=V;
                        timer <=0;
                    end
                    else begin
                        timer<=timer+1;
                    end

                end
                V: begin
                    if(buton) begin
                        cerere_pieton <=1;
                    end
                    if(timer >= 60 && cerere_pieton) begin
                        state <= R;
                        timer <= 0;
                        cerere_pieton <=0;
                        
                    end
                    else begin
                        timer<=timer+1;
                    end

                end

            endcase
        end
    end 
    

    always @(*) begin
        case(state)
            R: begin
                led_masini=R;
                led_piedtoni=v; // 0 verde  pietoni 1 rosu
            end
            G: begin
                led_masini=G;
                led_piedtoni=r; //can e galben pt masini e rosu pt pietnoni
            end
            V: begin 
                led_masini=V;
                led_piedtoni=r;
            end

        endcase 
        if(timer==90)begin
            $stop;
        end


endmodule

