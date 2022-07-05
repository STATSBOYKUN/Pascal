program bilangan_prima;

uses crt;

function prima(bilangan, faktor_bilangan, jumlah_faktor2 : longint) : longint;
begin
   if bilangan <> faktor_bilangan then
      begin
         if (bilangan mod faktor_bilangan) = 0 then
            begin
            writeln('Bilangan tersebut memiliki faktor : ', faktor_bilangan);
            prima := prima(bilangan, faktor_bilangan + 1, jumlah_faktor2 + 1);
            end
         else
            begin
            prima := prima(bilangan, faktor_bilangan + 1, jumlah_faktor2);
            end;
      end
   else
      begin
         writeln('Bilangan tersebut memiliki faktor : ', faktor_bilangan);
         prima := jumlah_faktor2 + 1; 
      end;
end;

procedure tampil();
var
   opsi : byte;
   faktor, jumlah_faktor, x : longint;

begin
   clrscr;

   faktor := 2;
   jumlah_faktor := 0;

   writeln('[PROGRAM CEK BILANGAN PRIMA]');
   writeln('============================');
   write('Masukkan bilangan bulat > 1 : ');

   readln(x);
   writeln;

   if prima(x, faktor, jumlah_faktor) = 1 then
      writeln('Bilangan tersebut merupakan bilangan prima.')
   else
      writeln('Bilangan tersebut bukan merupakan bilangan prima.');

   writeln;
   writeln('============================');
   writeln('Periksa bilangan lainnya ? (YA=1, TIDAK=0)');
   write('Opsi : ');readln(opsi);

   if opsi = 1 then
      tampil()
   else if opsi = 0 then
      writeln('Terima kasih telah menggunakan program ini.')
   else
      writeln('Program error.');
end;

begin
   clrscr;
   tampil();

   readkey;
end.