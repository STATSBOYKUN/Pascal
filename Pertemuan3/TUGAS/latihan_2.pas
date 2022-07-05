//program L_02
program Luas_Segi_Empat;

uses crt;

const
   p = 5;
   l = 4;

var
   luas : integer;

begin
   clrscr;

   luas := p*l;

   writeln('Panjang = ', p);
   writeln('Lebar   = ', l);
   writeln('Luas    = ', luas);

   readkey;
end.