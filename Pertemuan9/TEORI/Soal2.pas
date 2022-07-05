program Penjumlahan2;
uses crt;

var
   bil1, bil2, hasil : integer;
   kondisi : byte;

procedure jumlah(x,y : integer; var penampung : integer);
begin
   penampung := x + y;
   writeln(penampung);
end;

begin
   repeat
      clrscr;

      writeln('[ Program Penjumlahan 2 Bilangan ]');
      write('Bilangan 1 : '); readln(bil1);
      write('Bilangan 2 : '); readln(bil2);
      
      writeln;
      write('Hasil penjumlahan bilangan : '); jumlah(bil1, bil2, hasil);

      writeln;
      writeln('Ulang program ? (YA = 1/TIDAK = 0)');
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);
   writeln('Terima kasih telah menggunakan program ini :)');
   readln;
end.