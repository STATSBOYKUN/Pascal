program data_mahasiswa;

uses crt;
label ulang, awal;

var 
   kondisi : byte;
   usia, tinggi, i, j, k, N : integer;
   u17, u18, u19, u20, uLain : real;
   t17, t18, t19, t20, tLain : real;
   r17, r18, r19, r20, rLain : real;
   banyakMahasiswa, temp : integer;

   arrayTinggi : array[1 .. 100] of integer;

begin
   repeat 
      awal : 
      clrscr;

      writeln('[   PROGRAM DATA MAHASISWA   ]');
      writeln('==============================');
      write('Masukkan jumlah mahasiswa : '); readln(N);

      writeln;
      if N <= 0 then 
         begin
            writeln('Silahkan input dengan benar.');
            readln;
            goto awal;
         end;
      
      i := 0; 
      u17 := 0; t17 := 0; r17 := 0;
      u18 := 0; t18 := 0; r18 := 0;
      u19 := 0; t19 := 0; r19 := 0;
      u20 := 0; t20 := 0; r20 := 0;
      uLain := 0; tLain := 0; rLain := 0;

      repeat
         ulang : 
         write('Masukkan usia mahasiswa ke - ', i + 1, ' : '); readln(usia);
         write('Tinggi(dalam cm) : ');readln(tinggi);

         if (usia <= 0) then
            begin
               writeln('Usia yang dimasukkan salah');
               readln;
               goto ulang;
            end
         else if (tinggi < 100) then
            begin
               writeln('Tinggi minimal adalah 100 cm.');
               readln;
               goto ulang;
            end
         else
            begin
               if usia = 17 then
                  begin
                     u17 := u17 + 1;
                     t17 := t17 + tinggi;
                  end
               else if usia = 18 then
                  begin
                     u18 := u18 + 1;
                     t18 := t18 + tinggi;
                  end
               else if usia = 19 then
                  begin
                     u19 := u19 + 1;
                     t19 := t19 + tinggi;
                  end
               else if usia = 20 then
                  begin
                     u20 := u20 + 1;
                     t20 := t20 + tinggi;
                  end
               else
                  begin
                     uLain := uLain + 1;
                     tLain := tLain + tinggi;
                  end;
            end;         
         
         arrayTinggi[i+1] := tinggi;
         i := i + 1;
      until (i = N);
      
      writeln;
      writeln('Jumlah mahasiswa berusia 17 tahun   = ', u17:3:0);
      writeln('Jumlah mahasiswa berusia 18 tahun   = ', u18:3:0);
      writeln('Jumlah mahasiswa berusia 19 tahun   = ', u19:3:0);
      writeln('Jumlah mahasiswa berusia 20 tahun   = ', u20:3:0);
      writeln('Jumlah mahasiswa berusia selain itu = ', uLain:3:0);

      if u17 <> 0 then
         r17 := t17/u17;
      
      if u18 <> 0 then
         r18 := t18/u18;
      
      if u19 <> 0 then
         r19 := t19/u19;
      
      if u20 <> 0 then
         r20 := t20/u20;
      
      if uLain <> 0 then
         rLain := tLain/uLain;
      
      writeln;
      writeln('Rata - rata tinggi mahasiswa berusia 17 tahun   = ', r17:3:2);
      writeln('Rata - rata tinggi mahasiswa berusia 18 tahun   = ', r18:3:2);
      writeln('Rata - rata tinggi mahasiswa berusia 19 tahun   = ', r19:3:2);
      writeln('Rata - rata tinggi mahasiswa berusia 20 tahun   = ', r20:3:2);
      writeln('Rata - rata tinggi mahasiswa berusia selain itu = ', rLain:3:2);
      
      for j := 1 to N do
         begin
            for k := j + 1 to N do
               begin
                  if arrayTinggi[j] > arrayTinggi[k] then
                  begin
                     temp := arrayTinggi[j];
                     arrayTinggi[j] := arrayTinggi[k];
                     arrayTinggi[k] := temp;
                  end;
               end;
         end;
      
      j := 1;
      writeln;
      while (j <= N) do
         begin
            banyakMahasiswa := 1;

            while (arrayTinggi[j] = arrayTinggi[j + 1]) do
               begin
                  banyakMahasiswa := banyakMahasiswa + 1;
                  j := j + 1;
               end;
               
            writeln('Jumlah mahasiswa tinggi[', arrayTinggi[j],' cm] : ', banyakMahasiswa);
            j:= j + 1;     
         end;
         
      writeln;
      writeln('Ulang program ? (YA=1, TIDAK=0)'); 
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);
   
   writeln;
   writeln('Terima kasih telah menggunakan program ini.');
   readln;
end.