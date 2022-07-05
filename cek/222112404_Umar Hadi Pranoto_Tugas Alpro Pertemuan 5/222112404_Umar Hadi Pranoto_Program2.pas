program kalkulator_sederhana;

uses crt;
label awal;

var
   angka1, angka2 : longint;
   operasi : char;
   opsi : byte;

begin
   awal : 
   clrscr;

   writeln('[PROGRAM KALKULATOR SEDERHANA]');
   writeln('==============================');
   write(' Bilangan bulat 1     : ');readln(angka1);
   write(' Operator(+, -, *, /) : ');readln(operasi);
   write(' Bilangan bulat 2     : ');readln(angka2);
   writeln('==============================');

   case operasi of
      '+' : writeln('Hasil perhitungan : ', angka1 + angka2);
      '-' : writeln('Hasil perhitungan : ', angka1 - angka2);
      '*' : writeln('Hasil perhitungan : ', angka1 * angka2);
      '/' : writeln('Hasil perhitungan : ', angka1 div angka2);
   else
      writeln('Operator salah.');
      readln;
      goto awal;
   end;

   writeln;
   writeln('Hitung bilangan lain? (YA=1, TIDAK=0)'); 
   write('Opsi : '); readln(opsi);

   if opsi = 1 then
      goto awal;
   
   writeln('Terima kasih telah menggunakan program ini.');
   readkey;
end.