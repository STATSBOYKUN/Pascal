program konversiToBiner;
uses crt;

var
   bilangan : longint;

function pengkonversiKeBiner(angka : longint):longint;
begin
   if angka = 0 then
      pengkonversiKeBiner := 0
   else
      pengkonversiKeBiner := (angka mod 2) + (10 * pengkonversiKeBiner(angka div 2));
end;

begin
   clrscr;
   write('Desimal : '); readln(bilangan);
   writeln('Biner : ', pengkonversiKeBiner(bilangan));
end.