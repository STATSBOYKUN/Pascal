program rerata;

uses crt;

var
   i, N : integer;
   kondisi : byte;
   jGenap, jGanjil : real;
   nGanjil, nGenap : real;
   rGenap, rGanjil : real;
   bilangan, jumlah : real;

begin
   repeat 
      clrscr;

      writeln('[    PROGRAM RERATA    ]');
      writeln('========================');
      write('Masukkan jumlah bilangan N : '); readln(N);

      jumlah := 0;
      jGanjil := 0; nGanjil := 0; rGanjil := 0;
      jGenap := 0; nGenap := 0; rGenap := 0;
      i := 0;

      repeat
         write('Masukkan bilangan ke - ', i + 1, ' : ');readln(bilangan);
         
         jumlah := jumlah + bilangan;
         if ((i+1) mod 2) = 0 then
            begin
               jGenap := jGenap + bilangan;
               nGenap := nGenap + 1;
            end
         else
            begin
               jGanjil := jGanjil + bilangan;
               nGanjil := nGanjil + 1;
            end;
            
         i := i + 1;
      until(i = N);

      if nGenap <> 0 then 
         rGenap := jGenap/nGenap;
      
      if nGanjil <> 0 then
         rGanjil := jGanjil/nGanjil;
      
      writeln;
      writeln('Rata - rata bilangan         = ', (jumlah/N):9:2);
      writeln('Rata - rata bilangan ganjil  = ', rGanjil:9:2);
      writeln('Rata - rata bilangan genap   = ', rGenap:9:2);

      writeln;
      writeln('Ulang program ? (YA=1, TIDAK=0)'); 
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);

   writeln;
   writeln('Terima kasih telah menggunakan program ini.');
   readln;
end.