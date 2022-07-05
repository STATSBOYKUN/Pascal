program input_bilangan;

uses crt;
label ulang;

var 
   i, kondisi : byte;
   N, bilangan : integer;
   jGenap, jGanjil : integer;

begin
   repeat
      ulang:
      clrscr;

      writeln('[     PROGRAM BILANGAN     ]');
      writeln('============================');
      write('Masukkan jumlah bilangan N : '); readln(N);

      if (N > 10) or (N < 0) then
         begin
            writeln('Masukkan N <= 10 atau N > 0');
            readln;
            goto ulang;
         end;
      
      jGanjil := 0;
      jGenap := 0;
      for i := 1 to N do
         begin
            write('Masukkan bilangan ke - ', i, ' : '); readln(bilangan);
            
            if (bilangan mod 2) = 0 then
               jGenap := jGenap + bilangan
            else
               jGanjil := jGanjil + bilangan;
         end;

      writeln;
      writeln('Jumlah bilangan genap  = ', jGenap);
      writeln('Jumlah bilangan ganjil = ', jGanjil);
      writeln('Total jumlah bilangan  = ', jGanjil+jGenap);

      writeln;
      writeln('Ulang program ? (YA=1, TIDAK=0)'); 
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);

   writeln;
   writeln('Terima kasih telah menggunakan program ini.');
   readln;
end.