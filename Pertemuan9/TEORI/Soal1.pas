program Penjumlahan;
uses crt;

var
   bil1, bil2 : integer;
   kondisi : byte;

procedure jumlah(x,y : integer);
begin
   writeln(x + y);
end;

begin
   repeat
      clrscr;

      writeln('[ Program Penjumlahan 2 Bilangan ]');
      write('Bilangan 1 : '); readln(bil1);
      write('Bilangan 2 : '); readln(bil2);
      
      writeln;
      write('Hasil penjumlahan bilangan : '); jumlah(bil1, bil2);

      writeln;
      writeln('Ulang program ? (YA = 1/TIDAK = 0)');
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);
   writeln('Terima kasih telah menggunakan program ini :)');
   readln;
end.