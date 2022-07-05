program programDataMahasiswa;
uses crt; // untuk clrscr

label 
   ulang; // untuk perulangan

type
   mhs = record // tipe list mahasiswa
      NIM : string[10];
      nama : string[30];
      kelas : string[30];
      nilai : integer;
   end;

   arrayMahasiswa = array of mhs; // tipe array dari list mahasiswa

var
   // variabel global
   opsi : byte;
   i, n, key : integer;
   inputKe : integer;

   tempData, data : arrayMahasiswa;

procedure inputData(var data0 : arrayMahasiswa; m : integer);
begin
   setlength(data0,m+1); // mengatur panjang array
   for i := 1 to m do // perulangan untuk memasukkan data list mahasiswa
   begin
      writeln('[ Mahasiswa ke - ', i, ' ]');
      with data0[i] do
      begin
         write('NIM   : '); readln(NIM);
         write('Nama  : '); readln(nama);
         write('Kelas : '); readln(kelas);
         write('Nilai : '); readln(nilai);
      end;
      writeln;
   end;
end;

procedure copyData(var data02, data03 : arrayMahasiswa; m : integer);
begin
   setlength(data03,m+1); // mengatur panjang array
   for i := 1 to m do // mengkopi data02 ke data03
   begin
      data03[i].NIM := data02[i].NIM;
      data03[i].nama := data02[i].nama;
      data03[i].kelas := data02[i].kelas;
      data03[i].nilai := data02[i].nilai;
   end;
end;

procedure tampilData(data1 : arrayMahasiswa; a : integer);
begin
   clrscr; //membersihkan layar
   
   //membuat kepala tabel
   gotoxy(2,1);write('                 [ Daftar Nilai Mahasiswa ]                ');
   gotoxy(1,3);write('-----------------------------------------------------------');
   gotoxy(2,4);write('No');
   gotoxy(8,4);write('NIM');
   gotoxy(22,4);write('Nama');
   gotoxy(40,4);write('Kelas');
   gotoxy(48,4);write('Nilai Alpro');
   gotoxy(1,5);write('-----------------------------------------------------------');

   //menampilkan isi list mahasiswa
   for i:=1 to a do
   begin
      with data1[i] do
      begin
         gotoxy(2,5+i);write(i);
         gotoxy(8,5+i);write(nim);
         gotoxy(22,5+i);write(nama);
         gotoxy(40,5+i);write(kelas);
         gotoxy(48,5+i);write(nilai);
      end;

   end;
end;

function dataTerkecil(data2 : arrayMahasiswa; b : integer):integer;
var
   penampung : integer;

begin
   penampung := data2[1].nilai; // asumsi data terkecil terletak pada index pertama
   for i := 2 to b do // membandingkan data hingga didapat data terkecil
   begin
      if data2[i].nilai < penampung then
         penampung := data2[i].nilai; // penampung data terkecil
   end;

   dataTerkecil := penampung; // mengreturn dataTerkecil 
end;

function dataTerbesar(data3 : arrayMahasiswa; c : integer):integer;
var
   penampung2 : integer;

begin
   penampung2 := data3[1].nilai; // asumsi data terbesar terletak pada index pertama
   for i := 2 to c do // membandingkan data hingga didapat data terbesar
   begin
      if data3[i].nilai > penampung2 then
         penampung2 := data3[i].nilai; // penampung data terbesar
   end;

   dataTerbesar := penampung2; // mengreturn dataTerbesar 
end;

function rerata(data4 : arrayMahasiswa; d : integer):real;
var 
   jumlah : integer;

begin
   jumlah := 0; // inisiasi jumlah
   for i := 1 to d do // menambahkan jumlah dengan setiap nilai data
   begin
      jumlah := jumlah + data4[i].nilai;
   end;

   rerata := jumlah/d; // mengreturn nilai rata-rata
end;

procedure cariDataWithNilai(data5 : arrayMahasiswa; e, nilaiDicari : integer);
begin
   for i := 1 to e do // mencari data pertama hingga data terakhir
   begin
      if data5[i].nilai = nilaiDicari then // menampilkan data apabila nilai dicari ditemukan
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

procedure urutkanBerdasarNama(var data6: arrayMahasiswa; n:integer);
var 
   i,j,menu:integer;
   tmp:mhs;
begin
   writeln('Urutkan nama');
   writeln('1. Ascending');
   writeln('2. Descending');
   write('Masukkan pilihan Anda : ');readln(menu);  //pilihan menu ascending/descending

   case menu of
   1:
      begin
         for i:=1 to n-1 do
         begin
            for j:=1 to n-1 do
               if(data6[j+1].nama<data6[j].nama) then //membandingkan dua data
               begin
                  // menukar data
                  tmp:=data6[j+1];
                  data6[j+1]:=data6[j];
                  data6[j]:=tmp;
               end;
         end;
      end;
   2:
      begin
         for i:=1 to n-1 do
         begin
            for j:=1 to n-1 do
               if(data6[j+1].nama>data6[j].nama) then //membandingkan dua data
               begin
                  // menukar data
                  tmp:=data6[j+1];
                  data6[j+1]:=data6[j];
                  data6[j]:=tmp;
               end;
         end;
      end;
   end;
end;

procedure urutkanBerdasarNIM(var data7: arrayMahasiswa; n:integer);
var 
   i,j,menu:integer;
   tmp:mhs;
begin
   writeln('Urutkan nim');
   writeln('1. Ascending');
   writeln('2. Descending');
   write('Masukkan pilihan Anda : ');readln(menu);  //pilihan menu ascending/descending

   case menu of
   1:
      begin
         for i:=1 to n-1 do
         begin
            for j:=1 to n-1 do
               if(data7[j+1].nim<data7[j].nim) then //membandingkan dua data
               begin
                  // menukar data
                  tmp:=data7[j+1];
                  data7[j+1]:=data7[j];
                  data7[j]:=tmp;
               end;
         end;
      end;
   2:
      begin
         for i:=1 to n-1 do
         begin
            for j:=1 to n-1 do
               if(data7[j+1].nim>data7[j].nim) then //membandingkan dua data
               begin
                  // menukar data
                  tmp:=data7[j+1];
                  data7[j+1]:=data7[j];
                  data7[j]:=tmp;
               end;
         end;
      end;
   end;
end;

procedure urutkanBerdasarKelas(var data8: arrayMahasiswa; n:integer);
var 
   i,j,menu:integer;
   tmp:mhs;
begin
   writeln('Urutkan kelas');
   writeln('1. Ascending');
   writeln('2. Descending');
   write('Masukkan pilihan Anda : ');readln(menu);  //pilihan menu ascending/descending

   case menu of
   1:
      begin
         for i:=1 to n-1 do
         begin
            for j:=1 to n-1 do
               if(data8[j+1].kelas<data8[j].kelas) then //membandingkan dua data
               begin
                  // menukar data
                  tmp:=data8[j+1];
                  data8[j+1]:=data8[j];
                  data8[j]:=tmp;
               end;
         end;
      end;
   2:
      begin
         for i:=1 to n-1 do
         begin
            for j:=1 to n-1 do
               if(data8[j+1].kelas>data8[j].kelas) then //membandingkan dua data
               begin
                  // menukar data
                  tmp:=data8[j+1];
                  data8[j+1]:=data8[j];
                  data8[j]:=tmp;
               end;
         end;
      end;
   end;
end;

procedure urutkanBerdasarNilai(var data9: arrayMahasiswa; n:integer);
var 
   i,j,menu:integer;
   tmp:mhs;
begin
   writeln('Urutkan nilai');
   writeln('1. Ascending');
   writeln('2. Descending');
   write('Masukkan pilihan Anda : ');readln(menu);  //pilihan menu ascending/descending

   case menu of
   1:
      begin
         for i:=1 to n-1 do
         begin
            for j:=1 to n-1 do
               if(data9[j+1].nilai<data9[j].nilai) then //membandingkan dua data
               begin
                  // menukar data
                  tmp:=data9[j+1];
                  data9[j+1]:=data9[j];
                  data9[j]:=tmp;
               end;
         end;
      end;
   2:
      begin
         for i:=1 to n-1 do
         begin
            for j:=1 to n-1 do
               if(data9[j+1].nilai>data9[j].nilai) then //membandingkan dua data
               begin
                  // menukar data
                  tmp:=data9[j+1];
                  data9[j+1]:=data9[j];
                  data9[j]:=tmp;
               end;
         end;
      end;
   end;
end;

procedure menuUrutData(data10 : arrayMahasiswa; n : integer);
label ulang2;
var
   opsi : integer;
begin
   ulang2 : 
   clrscr;
   // menu urut data
   writeln('      [MENU URUT DATA]');
   writeln('==========================');
   writeln('1) Urutkan Berdasar Nama');
   writeln('2) Urutkan Berdasar NIM');
   writeln('3) Urutkan Berdasar Kelas');
   writeln('4) Urutkan Berdasar Nilai');
   writeln('5) Tampilkan Data Terurut');
   writeln('6) Kembali Menu Utama');
   writeln('==========================');
   write('Opsi (1-6) : '); readln(opsi);
   
   case opsi of // mengidentifikasi nilai opsi
      1 : 
         begin
            clrscr;
            urutkanBerdasarNama(data10, n); // mengurutkan data berdasar nama

            writeln('Data telah diurutkan berdasar nama!');
            readln;
            goto ulang2;
         end;
      2 : 
         begin
            clrscr;
            urutkanBerdasarNIM(data10, n); // mengurutkan data berdasar nim

            writeln('Data telah diurutkan berdasar nim!');
            readln;
            goto ulang2;
         end;
      3 : 
         begin
            clrscr;
            urutkanBerdasarKelas(data10, n); // mengurutkan data berdasar kelas

            writeln('Data telah diurutkan berdasar kelas!');
            readln;
            goto ulang2;
         end;
      4 : 
         begin
            clrscr;
            urutkanBerdasarNilai(data10, n); // mengurutkan data berdasar nilai

            writeln('Data telah diurutkan berdasar nilai!');
            readln;
            goto ulang2;
         end;
      5 : 
         begin
            clrscr;
            tampilData(data10, n); // menampilkan data

            readln;
            goto ulang2;
         end;
      6 : 
         begin
         end;
   else
      // validator
      writeln('Mohon masukkan angka 1-6.');
      readln;
      goto ulang2;
   end;
end;

begin
   inputKe := 0;

   ulang : 
   clrscr;
   // menu utama
   writeln('[ PROGRAM DATA MAHASISWA ]');
   writeln('==========================');
   writeln('1) Input data');
   writeln('2) Tampilkan data');
   writeln('3) Data Terkecil');
   writeln('4) Data Terbesar');
   writeln('5) Rata-rata');
   writeln('6) Cari Data');
   writeln('7) Urutkan Data');
   writeln('8) Keluar');
   writeln('==========================');
   write('Opsi (1-8) : '); readln(opsi);

   case opsi of // mengidentifikasi nilai opsi
      1 : 
         begin
            clrscr;
            write('Banyak data yang ingin diiinput : '); 
            readln(n); // memasukkan banyak mahasiswa yang akan diinput

            //validator
            if n <= 0 then
            begin
               writeln('Banyak data harus >= 1.');
               readln();
               goto ulang;
            end;

            inputData(data, n); // menginput data list mahasiswa

            inputKe := inputKe + 1; // validator
            readln;
            goto ulang;
         end;
      2 : 
         begin
            clrscr;
            // validator apabila belum menginput data
            if inputKe = 0 then
            begin
               writeln('Mohon input data terlebih dahulu.');
               readln;
               goto ulang;
            end;
            
            tampilData(data, n); // menampilkan data

            readln;
            goto ulang;
         end;
      3 : 
         begin
            clrscr;
            // validator apabila belum menginput data
            if inputKe = 0 then
            begin
               writeln('Mohon input data terlebih dahulu.');
               readln;
               goto ulang;
            end;

            writeln('Nilai Terkecil   : ', dataTerkecil(data, n):6); // mencari data terkecil
            writeln('Oleh mahasiswa : ');
            writeln;

            cariDataWithNilai(data, n, dataTerkecil(data, n)); // mencari mahasiswa dengan nilai terkecil

            readln;
            goto ulang;
         end;
      4 : 
         begin
            clrscr;
            // validator apabila belum menginput data
            if inputKe = 0 then
            begin
               writeln('Mohon input data terlebih dahulu.');
               readln;
               goto ulang;
            end;

            writeln('Nilai Terbesar   : ', dataTerbesar(data, n):6); // mencari data terbesar
            writeln('Oleh mahasiswa : ');
            writeln;

            cariDataWithNilai(data, n, dataTerbesar(data, n)); // mencari mahasiswa dengan nilai terbesar

            readln;
            goto ulang;
         end;
      5 : 
         begin
            clrscr;
            // validator apabila belum menginput data
            if inputKe = 0 then
            begin
               writeln('Mohon input data terlebih dahulu.');
               readln;
               goto ulang;
            end;

            writeln('Rata - rata nilai : ', rerata(data, n):6:2); // mencari rata-rata nilai

            readln;
            goto ulang;
         end;
      6 : 
         begin
            clrscr;
            // validator apabila belum menginput data
            if inputKe = 0 then
            begin
               writeln('Mohon input data terlebih dahulu.');
               readln;
               goto ulang;
            end;

            writeln('Cari nilai mahasiswa : '); readln(key); // mencari mahasiswa dengan nilai
            writeln;

            cariDataWithNilai(data, n, key);

            readln;
            goto ulang;
         end;
      7 : 
         begin
            clrscr;
            // validator apabila belum menginput data
            if inputKe = 0 then
            begin
               writeln('Mohon input data terlebih dahulu.');
               readln;
               goto ulang;
            end;
            
            copyData(data, tempData, n); // menyalin data pada tempData
            menuUrutData(tempData, n); // memanggil menu urut

            readln;
            goto ulang;
         end;
      8 : 
         begin
            writeln;
            writeln('Terima kasih telah menggunakan program ini :)');
            readln;
         end;
   else
      // validator
      writeln('Mohon masukkan angka 1-8.');
      readln;
      goto ulang;
   end;
end.