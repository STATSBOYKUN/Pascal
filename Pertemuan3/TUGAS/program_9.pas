//program 9
program waktu;

uses crt;

var
   tanggal : string[10];
   hari : string[6];
   pasaran : string[6];

begin
   clrscr;

   tanggal := '26-12-2005';
   hari := 'Senin';
   pasaran := 'Pahing';

   writeln(tanggal, ', ', hari, ' ', pasaran);

   readkey;
end.