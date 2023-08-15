
 Guia_0202.v 
 770855 - Suzane Lemos de Lima

module Guia_0202;
 define data
 real x = 0.75;  decimal
 integer y = 7 ;  counter
 reg [70] b = 0 ;  binary
 actions
 initial
 begin  main
 $display ( Guia_0202 - Tests );
 $display ( x = %f , x );
 $display ( b = 0.%8b, b );
 while ( x  0 && y = 0 )
 begin
 if ( x2 = 1 )
 begin
 b[y] = 1;
 x = x2.0 - 1.0;
 end
 else
 begin
 b[y] = 0;
 x = x2.0;
 end  end if
 $display ( b = 0.%8b, b );
 y=y-1;
 end  end while
 end  main
endmodule  Guia_0202