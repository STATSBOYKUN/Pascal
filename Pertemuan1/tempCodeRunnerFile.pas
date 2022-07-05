program Luas_Segi_Tiga;

var
   luas : real;
   alas,tinggi : byte;

begin
   alas := 5;
   tinggi := 10;

   luas = 0.5*alas*tinggi;
   writeln('Alas = ', alas);
   writeln('Tinggi = ', tinggi);
   writeln('Luas = ', luas);
end.