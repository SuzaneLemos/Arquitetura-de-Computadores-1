/*
 Guia_0101.v
 770855 - Suzane Lemos de Lima
*/
module Guia_0101;
// define data
 integer x = 13; // decimal
 reg [7:0] b = 0; // binary (bits - little endian)
// actions
 initial
 begin : main
 $display ( "Guia_0101 - Tests" );
 $display ( "x = %d" , x );
 $display ( "b = %8b", b );
 b = x;
 $display ( "b = %8b", b );
 end // main
endmodule // Guia_0101


/*
 Guia_0102.v
 770855 - Suzane Lemos de Lima
*/
module Guia_0102;
// define data
 integer x = 0; // decimal
 reg [7:0] b = 8'b0001101; // binary (bits - little endian)
// actions
 initial
 begin : main
 $display ( "Guia_0102 - Tests" );
 $display ( "x = %d" , x );
 $display ( "b = %8b", b );
 x = b;
 $display ( "b = %d", x );
 end // main
endmodule // Guia_0102

/*
 Guia_0103.v
 770855 - Suzane Lemos de Lima
*/
module Guia_0103;
// define data
 integer x = 13; // decimal
 reg [7:0] b = 0; // binary
// actions
 initial
 begin : main
 $display ( "Guia_0103 - Tests" );
 $display ( "x = %d" , x );
 $display ( "b = %8b", b );
 b = x;
 $display ( "b = %B (2) = %o (8) = %x (16) = %X (16)", b, b, b, b );
 end // main
endmodule // Guia_0103

/*
 Guia_0104.v
 770855 - Suzane Lemos de Lima
*/
module Guia_0104;
// define data
 integer x = 13; // decimal
 reg [7:0] b = 0; // binary
// actions
 initial
 begin : main
 $display ( "Guia_0104 - Tests" );
 $display ( "x = %d" , x );
 $display ( "b = %8b", b );
 b = x;
 $display ( "b = [%4b] [%4b] = %x %x", b[7:4], b[3:0], b[7:4], b[3:0] );
 end // main
endmodule // Guia_0104

/*
 Guia_0105.v
 770855 - Suzane Lemos de Lima
*/
module Guia_0105;
// define data
 integer x = 13; // decimal
 reg [7:0] b ; // binary
 reg [0:2][7:0] s = "PUC"; // char array[3] (3x8 bits - little Endian)
// actions
 initial
 begin : main
 $display ( "Guia_0105 - Tests" );
 $display ( "x = %d" , x );
 $display ( "b = %8b", b );
 $display ( "s = %s" , s );
 b = x;
 $display ( "b = [%4b] [%4b] = %h %h", b[7:4], b[3:0], b[7:4], b[3:0] );
 s[0] = "-";
 s[1] = 8'b01001101; // 'M'
 s[2] = 71; // 'G'
 $display ( "s = %s" , s );
 end // main
endmodule // Guia_0105

/**
 Arquitetura de Computadores I - Guia_01.java
 770855 - Suzane Lemos de Lima
*/
public class Guia_01
{
/*
 Contador de erros.
 */
 private static int errors = 0;
/*
 Testar se dois valores sao iguais.
 @param x - primeiro valor
 @param y - segundo valor
 */
 public static void test_equals ( Object x, Object y )
 {
 if ( (""+x).compareTo(""+y) != 0 )
 errors = errors + 1;
 } // end test_equals ( )
/*
 Exibir o total de erros.
 @return mensagem com o total de erros
 */
 public static String test_report ( )
 {
 return ( ""+errors );
 } // end test_report ( )
/*
 Converter valor decimal para binario.
 @return binario equivalente
 @param value - valor decimal
 */
 public static String dec2bin ( int value )
 {
 return ( "0" );
 } // end dec2bin ( )
/*
 Converter valor binario para decimal.
 @return decimal equivalente
 @param value - valor binario
 */
 public static int bin2dec ( String value )
 {
 return ( -1 );
 } // end bin2dec ( )
/*
 Converter valor decimal para base indicada.
 @return base para a conversao
 @param value - valor decimal
 */
 public static String dec2base ( int value, int base )
 {
 return ( "0" );
 } // end dec2base ( )
/*
 Converter valor binario para base indicada.
 @return valor equivalente na base indicada
 @param value - valor binario
 @param base - para a conversao
 */
 public static String bin2base ( String value, int base )
 {
 return ( "0" );
 } // end bin2base ( )
/*
 Converter valor em ASCII para hexadecimal.
 @return hexadecimal equivalente
 @param value - caractere(s) em codigo ASCII
 */
 public static String ASCII2hex ( String value )
 {
 return ( "0" );
 } // end ASCII2hex ( )
/*
 Converter valor em hexadecimal para ASCII.
 @return caractere(s) em codigo ASCII
 @param value - hexadecimal equivalente(s)
 */
 public static String hex2ASCII ( String value )
 {
 return ( "0" );
 } // end hex2ASCII ( )

/*
 Acao principal.
*/
 public static void main ( String [ ] args )
 {
 System.out.println ( "Guia_01 - Java Tests " );
 System.out.println ( "999999 - Xxx Yyy Zzz " );
 System.out.println ( );
 test_equals ( dec2bin ( 26 ), "10101" );
 test_equals ( dec2bin ( 53 ), "10101" );
 test_equals ( dec2bin ( 723 ), "10101" );
 test_equals ( dec2bin ( 312 ), "10101" );
 test_equals ( dec2bin ( 365 ), "10101" );
 System.out.println ( "1. errorTotalReport = "+test_report ( ) );
 test_equals ( bin2dec ( "10110" ), 0 );
 test_equals ( bin2dec ( "11011" ), 0 );
 test_equals ( bin2dec ( "100100" ), 0 );
 test_equals ( bin2dec ( "101001" ), 0 );
 test_equals ( bin2dec ( "110111" ), 0 );
 System.out.println ( "2. errorTotalReport = "+test_report ( ) );
 test_equals ( dec2base ( 61, 4 ), "10101" );
 test_equals ( dec2base ( 54, 8 ), "10101" );
 test_equals ( dec2base ( 77, 16 ), "10101" );
 test_equals ( dec2base ( 151, 16 ), "10101" );
 test_equals ( dec2base ( 738, 16 ), "10101" );
 System.out.println ( "3. errorTotalReport = "+test_report ( ) );
 test_equals ( bin2base ( "10101", 4 ), "10101" );
 test_equals ( bin2base ( "11010", 8 ), "10101" );
 test_equals ( bin2base ( "100111", 16 ), "10101" );
 test_equals ( bin2base ( "101001", 8 ), "10101" );
 test_equals ( bin2base ( "101101", 4 ), "10101" );
 System.out.println ( "4. errorTotalReport = "+test_report ( ) );
 test_equals ( ASCII2hex ( "PUC-Minas" ), "10101" );
 test_equals ( ASCII2hex ( "2023-02" ), "10101" );
 test_equals ( ASCII2hex ( "Belo Horizonte" ), "10101" );
 // OBS.: A seguir, exemplos apenas para os primeiros, acrescentar todos os outros cÃ³digos propostos!
 test_equals ( hex2ASCII ( "116 ..." ), "10101" ); // OBS.: 116 e' o primeiro octal (0116)!
 test_equals ( hex2ASCII ( "4D ..." ), "10101" ); // OBS.: 4D e' o primeiro hexadecimal (0x4D)!
 System.out.println ( "5. errorTotalReport = "+test_report( ) );
 System.out.print ( "\n\nApertar ENTER para terminar." );
 System.console ( ).readLine ( );
 } // end main
} // end class
# Modelo em Python
'''
 Arquitetura de Computadores I - Guia_01.py
 999999 - Xxx Yyy Zzz
'''
'''
 Contador de erros.
'''
errors = 0;
'''
 Testar se dois valores sao iguais.
 @param x - primeiro valor
 @param y - segundo valor
'''
def test_equals ( x, y ):
 global errors;
 if ( str(x) != str(y) ):
 errors = errors + 1;
# end test_equals ( )
'''
 Exibir o total de erros.
 @return mensagem com o total de erros
'''
def test_report ( ):
 return ( ""+str(errors) );
# end test_report ( )
'''
 Converter valor decimal para binario.
 @return binario equivalente
 @param value - valor decimal
'''
def dec2bin ( value ):
 return ( "0" );
# end dec2bin ( )
'''
 Converter valor binario para decimal.
 @return decimal equivalente
 @param value - valor binario
'''
def bin2dec ( value ):
 return ( -1 );
# end bin2dec ( )
'''
 Converter valor decimal para base indicada.
 @return base para a conversao
 @param value - valor decimal
'''
def dec2base ( value, base ):
 return ( "0" );
# end dec2base ( )
'''
 Converter valor binario para base indicada.
 @return valor equivalente na base indicada
 @param value - valor binario
 @param base - para a conversao
'''
def bin2base ( value, base ):
 return ( "0" );
# end bin2base ( )
'''
 Converter valor em ASCII para hexadecimal.
 @return hexadecimal equivalente
 @param value - caractere(s) em codigo ASCII
'''
def ASCII2hex ( value ):
 return ( "0" );
# end ASCII2hex ( )
'''
 Converter valor em hexadecimal para ASCII.
 @return caractere(s) em codigo ASCII
 @param value - hexadecimal equivalente(s)
'''
def hex2ASCII ( value ):
 return ( "0" );
# end hex2ASCII ( )
'''
 Acao principal.
'''
def main ( ):
 print ( "Guia_01 - Python Tests" );
 print ( "999999 - Xxx Yyy Zzz" );
 print ( );
 test_equals ( dec2bin ( 26 ), "10101" );
 test_equals ( dec2bin ( 53 ), "10101" );
 test_equals ( dec2bin ( 723 ), "10101" );
 test_equals ( dec2bin ( 312 ), "10101" );
 test_equals ( dec2bin ( 365 ), "10101" );
 print ( "1. errorTotalReport = "+test_report ( ) );
 test_equals ( bin2dec ( "10110" ), 0 );
 test_equals ( bin2dec ( "11011" ), 0 );
 test_equals ( bin2dec ( "100100" ), 0 );
 test_equals ( bin2dec ( "101001" ), 0 );
 test_equals ( bin2dec ( "110111" ), 0 );
 print ( "2. errorTotalReport = "+test_report ( ) );
 test_equals ( dec2base ( 61, 4 ), "10101" );
 test_equals ( dec2base ( 54, 8 ), "10101" );
 test_equals ( dec2base ( 77, 16 ), "10101" );
 test_equals ( dec2base ( 151, 16 ), "10101" );
 test_equals ( dec2base ( 738, 16 ), "10101" );
 print ( "3. errorTotalReport = "+test_report ( ) );
 test_equals ( bin2base ( "10101", 4 ), "10101" );
 test_equals ( bin2base ( "11010", 8 ), "10101" );
 test_equals ( bin2base ( "100111", 16 ), "10101" );
 test_equals ( bin2base ( "101001", 8 ), "10101" );
 test_equals ( bin2base ( "101101", 4 ), "10101" );
 print ( "4. errorTotalReport = "+test_report ( ) );
 test_equals ( ASCII2hex ( "PUC-Minas" ), "10101" );
 test_equals ( ASCII2hex ( "2023-02" ), "10101" );
 test_equals ( ASCII2hex ( "Belo Horizonte" ), "10101" );
 # OBS.: A seguir, exemplos apenas para os primeiros, acrescentar todos os outros codigos propostos!
 test_equals ( hex2ASCII ( "116 ..." ), "10101" ); // OBS.: 116 e' o primeiro octal (0116)!
 test_equals ( hex2ASCII ( "4D ..." ), "10101" ); // OBS.: 4D e' o primeiro hexadecimal (0x4D)!
 print ( "5. errorTotalReport = "+test_report( ) );
 print ( "\n\nApertar ENTER para terminar." );
 input ( );
# end main ( )
if __name__ == "__main__":
 main( );
message.txt
6 KB