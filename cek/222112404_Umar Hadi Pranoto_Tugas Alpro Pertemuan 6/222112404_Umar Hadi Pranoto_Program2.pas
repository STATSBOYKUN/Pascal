program deret_angka;

uses crt;
label ulang, ulang2, ulang3;

var
   N, deret : integer;
   i, j : integer;
   kondisi : byte;
   dGanjil, dGenap : real;

begin
   repeat
      ulang:
      clrscr;

      writeln('[  PROGRAM DERET ANGKA  ]');
      writeln('=========================');
      writeln('1) 1 - 1/3 + 1/5 -... +- 1/N');
      writeln('2) 1 + 1/4 - 1/6 -... +- 1/N');
      writeln('Pilih deret ( Deret Ganjil=1 / Deret Genap=2 )');
      write('Opsi : '); readln(deret);

      writeln;
      if deret = 1 then
         begin
            ulang2 : 
            write('Masukkan jumlah bilangan N : '); readln(N);
            if ((N mod 2) <> 1) or (N <= 0) then
               begin
                  writeln('Masukkan bilangan ganjil positif.');
                  readln;
                  goto ulang2;
               end; 

            write('Deret : 1');

            i := 3;
            j := 1;
            dGanjil := 1;
            while (i <= N ) do
            begin
               if (j mod 2) = 1 then
                  begin
                     write(' - ');
                     dGanjil := dGanjil - (1/i);
                  end
               else
                  begin
                     write(' + ');
                     dGanjil := dGanjil + (1/i);
                  end;
               
               write('1/', i);
               i := i + 2;
               j := j + 1;
            end;
            
            writeln;
            writeln('Jumlah deret : ', dGanjil:2:3);
         end
      else if deret = 2 then
         begin
            ulang3 : 
            write('Masukkan banyak suku deret : '); readln(N);
            if N <= 0 then
               begin
                  writeln('Masukkan bilangan positif.');
                  readln;
                  goto ulang3;
               end; 

            write('Deret : 1');

            i := 4;
            j := 1;
            dGenap := 1;
            while (j < N ) do
            begin
               if (j mod 2) = 1 then
                  begin
                     write(' + ');
                     dGenap := dGenap + (1/i);
                  end
               else
                  begin
                     write(' - ');
                     dGenap := dGenap - (1/i);
                  end;
               
               write('1/', i);
               i := i + 2;
               j := j + 1;
            end;

            writeln;
            writeln('Jumlah deret : ', dGenap:2:3);
         end
      else 
         begin
            writeln('Mohon pilih dengan benar.');
            readln;
            goto ulang;
         end;
      writeln;
      writeln('Ulang program ? (YA=1, TIDAK=0)'); 
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);
   
   writeln;
   writeln('Terima kasih telah menggunakan program ini.');
   readln;
end.