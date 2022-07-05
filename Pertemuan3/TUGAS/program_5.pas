//program 5
program Luas_Segi_Tiga;

uses crt;

var
   luas :real;
   alas,tinggi :byte;

begin
   clrscr;

   alas := 5;
   tinggi := 10;

   luas := 0.5 * alas * tinggi;
   writeln('Alas = ', alas);
   writeln('Tinggi = ', tinggi);
   writeln('Luas = ', luas:5:2);
   
   readkey;
end.