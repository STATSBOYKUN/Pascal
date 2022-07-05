program programDataMahasiswa;
uses crt;

label 
   ulang;

type
   mhs = record
      NIM : string[10];
      nama : string[30];
      kelas : string[30];
      nilai : integer;
   end;

   arrayMahasiswa = array of mhs;

var
   opsi : byte;
   i, n : integer;
   inputKe : integer;

   data : arrayMahasiswa;

procedure inputData(var data6 : arrayMahasiswa; m : integer);
begin
   setlength(data6,n+1);
   for i := 1 to m do
   begin
      writeln('[ Mahasiswa ke - ', i, ' ]');
      with data6[i] do
      begin
         write('NIM   : '); readln(NIM);
         write('Nama  : '); readln(nama);
         write('Kelas : '); readln(kelas);
         write('Nilai : '); readln(nilai);
      end;
      writeln;
   end;
end;

procedure tampilData(data1 : arrayMahasiswa; a : integer);
begin
   writeln('[ DATA MAHASISWA ]');
   writeln;

   for i := 1 to a do
   begin
      writeln('[ Mahasiswa ke - ', i, ' ]');
      writeln('NIM   : ', data1[i].NIM);
      writeln('Nama  : ', data1[i].nama);
      writeln('Kelas : ', data1[i].kelas);
      writeln('Nilai : ', data1[i].nilai:3);
      writeln;
   end;
end;

function dataTerkecil(data2 : arrayMahasiswa; b : integer):integer;
var
   penampung : integer;

begin
   penampung := data2[1].nilai;
   for i := 2 to b do
   begin
      if data2[i].nilai < penampung then
         penampung := data2[i].nilai;
   end;

   dataTerkecil := penampung;
end;

function dataTerbesar(data3 : arrayMahasiswa; c : integer):integer;
var
   penampung2 : integer;

begin
   penampung2 := data3[1].nilai;
   for i := 2 to c do
   begin
      if data3[i].nilai > penampung2 then
         penampung2 := data3[i].nilai;
   end;

   dataTerbesar := penampung2;
end;

function rerata(data4 : arrayMahasiswa; d : integer):real;
var 
   jumlah : integer;

begin
   jumlah := 0; 
   for i := 1 to d do
   begin
      jumlah := jumlah + data4[i].nilai;
   end;

   rerata := jumlah/d;
end;

procedure cariDataWithNilai(data5 : arrayMahasiswa; e, nilaiDicari : integer);
begin
   for i := 1 to e do
   begin
      if data5[i].nilai = nilaiDicari then
      begin
         writeln('[ Mahasiswa ke - ', i, ' ]');
         writeln('NIM   : ', data5[i].NIM);
         writeln('Nama  : ', data5[i].nama);
         writeln('Kelas : ', data5[i].kelas);
         writeln('Nilai : ', data5[i].nilai:3);
         writeln;
      end;
   end;
end;

begin

   inputKe := 0;

   ulang : 
   clrscr;
      
   writeln('[ PROGRAM DATA MAHASISWA ]');
   writeln('==========================');
   writeln('1) Input data');
   writeln('2) Tampilkan data');
   writeln('3) Data Terkecil');
   writeln('4) Data Terbesar');
   writeln('5) Rata-rata');
   writeln('6) Keluar');
   writeln('==========================');
   write('Opsi (1-6) : '); readln(opsi);

   case opsi of
      1 : 
         begin
            clrscr;
            write('Banyak data yang ingin diiinput : '); 
            readln(n);

            if n <= 0 then
            begin
               writeln('Banyak data harus >= 1.');
               readln();
               goto ulang;
            end;

            inputData(data, n);

            inputKe := inputKe + 1;
            readln;
            goto ulang;
         end;
      2 : 
         begin
            clrscr;
            if inputKe = 0 then
            begin
               writeln('Mohon input data terlebih dahulu.');
               readln;
               goto ulang;
            end;
            
            tampilData(data, n);

            readln;
            goto ulang;
         end;
      3 : 
         begin
            clrscr;
            if inputKe = 0 then
            begin
               writeln('Mohon input data terlebih dahulu.');
               readln;
               goto ulang;
            end;

            writeln('Nilai Terkecil   : ', dataTerkecil(data, n):6);
            writeln('Oleh mahasiswa : ');
            writeln;

            cariDataWithNilai(data, n, dataTerkecil(data, n));

            readln;
            goto ulang;
         end;
      4 : 
         begin
            clrscr;
            if inputKe = 0 then
            begin
               writeln('Mohon input data terlebih dahulu.');
               readln;
               goto ulang;
            end;

            writeln('Nilai Terbesar   : ', dataTerbesar(data, n):6);
            writeln('Oleh mahasiswa : ');
            writeln;

            cariDataWithNilai(data, n, dataTerbesar(data, n));

            readln;
            goto ulang;
         end;
      5 : 
         begin
            clrscr;
            if inputKe = 0 then
            begin
               writeln('Mohon input data terlebih dahulu.');
               readln;
               goto ulang;
            end;

            writeln('Rata - rata nilai : ', rerata(data, n):6:2);

            readln;
            goto ulang;
         end;
      6 : 
         begin
            writeln;
            writeln('Terima kasih telah menggunakan program ini :)');
            readln;
         end;
   else
      writeln('Mohon masukkan angka 1-6.');
      readln;
      goto ulang;
   end;

end.