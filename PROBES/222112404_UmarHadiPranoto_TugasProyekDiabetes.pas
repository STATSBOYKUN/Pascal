program perhitunganDiabetes;
uses crt, sysutils; //crt : clrscr, delay; sysutil : fungsi2 string

type
   // tipe list informasi kesehatan
   informasiKesehatan = record
      informasi1 : byte;
      informasi2 : byte;
      informasi3 : byte;
      informasi4 : byte;
   end;

   // tipe list informasi gaya hidup
   informasiGayaHidup = record
      informasi1 : byte;
      informasi2 : byte;
   end;

   // tipe list informasi gaya hidup
   pasien = record 
      nama_pasien : string[50];
      berat_badan : real;
      tinggi_badan : real;
      jenis_kelamin : byte;
      lingkar_pinggang : byte;
      usia : byte;
      bmi : real;
      info1 : informasiKesehatan;
      info2 : informasiGayaHidup;
      poinDiabetes : integer;
   end;

   // pemudahan penamaan array
   arrayPasien = array of pasien;
   arrayInteger = array of integer;

var
   // variabel global
   user : arrayPasien; // wadah list pasien
   banyak_pasien2 : integer; // banyak pasien
   penghitung : boolean; // logika saat singgah ke menu input
   panjangStringPassword : array[1..100] of integer; // wadah panjang string password
   
function decrypt(decryptPassword : string;count : byte):string; // mendekripsi password
begin
   decryptPassword := LeftStr(decryptPassword, panjangStringPassword[count]); // mengambil password yang sebernarnya
   decrypt := decryptPassword; // mengreturn decrypt
end;

function encrypt(encryptPassword : string;count : byte):string; // menenkripsi password
var
   penampung : integer; // penampung
begin
   panjangStringPassword[count] := byte(encryptPassword[0]); // menghitung panjang string
   penampung := not ((panjangStringPassword[count] and panjangStringPassword[count]) or panjangStringPassword[count]); // membuat kode password
   encryptPassword := encryptPassword + IntToStr(penampung); // menggabungkan password asli dengan penampung
   encrypt := encryptPassword; // mengreturn encrypt
end;

function login():boolean; // login program
label ulang; // perulangan
type
   // tipe list user
   recordUser = record
      username : string[20];
      password : string[20];
   end;
   //pemudahan penamaan array
   arrayRecordUser = array[1..100] of recordUser;
var
   i, opsi, count : byte;
   dataUser : file of arrayRecordUser; // file record user
   dataLogin : arrayRecordUser; // wadah login yang dilakukan user
   tempUsername, tempPassword : string[20]; // wadah sementara penampung username dan password
begin
   count := 1; // penghitung perulangan pada login

   ulang : 
   clrscr;
   gotoXY(40, 10); writeln('     SELAMAT DATANG');
   gotoXY(40, 11); writeln('PROGRAM PASIEN DIABETES');
   gotoXY(40, 12); writeln('=======================');
   gotoXY(40, 13); writeln('Pengguna baru ?');
   gotoXY(40, 14); write('(YA=1, TIDAK = 0) : '); readln(opsi);
   clrscr;
   if opsi = 0 then
      begin
         gotoXY(40, 15); write('Username : '); readln(tempUsername); // username
         gotoXY(40, 16); write('Password : '); readln(tempPassword); // password

         assign(dataUser, 'fileUser.dat'); // membuat dan menamai file user
         reset(dataUser); // membuka file untuk read
         
         while not eof(dataUser) do // perulangan hingga pointer mencapai akhir file
         begin
            read(dataUser, dataLogin); // membaca data pada file
            
            for i := 1 to count do
            begin
               dataLogin[i].password := decrypt(dataLogin[i].password,i); // mendekripsi password dari file
               if (tempUsername <> dataLogin[i].username) or (tempPassword <> dataLogin[i].password) then // membandingkan username dan password
               begin
                  gotoXY(20, 28); writeln('Username atau password tidak valid.');
                  readln();
                  login := false;
               end
               else
               begin
                  login := true;
                  break;
               end;
            end;
         end;
         
         close(dataUser); // menutup file
      end
   else
      begin
         assign(dataUser, 'fileUser.dat'); // membuat dan menamai file user
         rewrite(dataUser); // membuka file untuk memasukkan data ke file
         gotoXY(40, 15); write('Username : '); readln(dataLogin[count].username); // memasukkan data
         gotoXY(40, 16); write('Password : '); readln(dataLogin[count].password); // memasukkan data

         dataLogin[count].password := encrypt(dataLogin[count].password, count); // menekripsi password

         write(dataUser, dataLogin); // memasukkan data ke file
         close(dataUser); // menutup file

         gotoXY(40, 17); writeln('Silahkan login kembali...');
         readln();

         count := count + 1;
         goto ulang;
      end;   
end;

procedure inputData(var user1 : arrayPasien); // menginput data pasien
label ulang;
var
   banyak_pasien, i, k : integer;
begin
   write('Jumlah pasien diinput : '); readln(banyak_pasien);
   if penghitung = false then
      banyak_pasien2 := 0;
   
   setlength(user1, banyak_pasien2 + banyak_pasien+1);
   clrscr;

   for k := banyak_pasien2 + 1 to banyak_pasien2 + banyak_pasien do // perulangan menginput data n-pasien
   begin
      with user1[k] do
      begin
         ulang:
         clrscr;

         writeln('[ Pasien ke - ', k, ' ]');

         writeln();
         writeln('                    [INFORMASI UMUM]');
         writeln('=====================================================');
         write('Nama                     : '); readln(user1[k].nama_pasien);
            // validator
            for i := 1 to length(user1[k].nama_pasien) do // perulangan mengecek setiap isi string
            begin
               if (user1[k].nama_pasien[i] in ['A'..'Z']) or (user1[k].nama_pasien[i] in ['a'..'z']) or (user1[k].nama_pasien[i] = ' ') then
               else
               begin
                  writeln('Mohon input data dengan benar.');
                  readln();
                  goto ulang;
               end;
            end;
         
         write('Laki-laki=0, Perempuan=1 : '); readln(user1[k].jenis_kelamin);
            // validator
            if (user1[k].jenis_kelamin <> 0) and (user1[k].jenis_kelamin <> 1) then
               begin
                  writeln('Mohon input data dengan benar.');
                  readln();
                  goto ulang;
               end;
         
         write('Usia                     : '); readln(user1[k].usia);
            // validator
            if (user1[k].usia < 8) or (user1[k].usia > 90) then
               begin
                  writeln('Mohon input data dengan benar.');
                  readln();
                  goto ulang;
               end;

         write('Berat Badan(kg)          : '); readln(user1[k].berat_badan);
            // validator
            if (user1[k].berat_badan < 20) or (user1[k].berat_badan > 150) then
               begin
                  writeln('Mohon input data dengan benar.');
                  readln();
                  goto ulang;
               end;
         
         write('Tinggi Badan(cm)         : '); readln(user1[k].tinggi_badan);
            // validator
            if (user1[k].tinggi_badan < 60) or (user1[k].tinggi_badan > 220) then
               begin
                  writeln('Mohon input data dengan benar.');
                  readln();
                  goto ulang;
               end;

         write('Lingkar Pinggang(cm)     : '); readln(user1[k].lingkar_pinggang);
            // validator
            if (user1[k].lingkar_pinggang < 40) or (user1[k].lingkar_pinggang > 120) then
               begin
                  writeln('Mohon input data dengan benar.');
                  readln();
                  goto ulang;
               end;
         
         writeln();
         writeln('                 [INFORMASI KESEHATAN]');
         writeln('=====================================================');
         writeln('Apakah kakek, bibi, paman, atau sepupu pertama pernah didiagnosis Diabetes?');
         write('Jawaban(YA=1, TIDAK=0) : '); readln(user1[k].info1.informasi1);
            // validator
            if (user1[k].info1.informasi1 <> 1) and (user1[k].info1.informasi1 <> 0) then
               begin
                  writeln('Mohon input data dengan benar.');
                  readln();
                  goto ulang;
               end;
         
         writeln('Apakah orang tua, saudara kandung, atau anak kandung pernah didiagnosis Diabetes?');
         write('Jawaban(YA=1, TIDAK=0) : '); readln(user1[k].info1.informasi2);
            // validator
            if (user1[k].info1.informasi2 <> 1) and (user1[k].info1.informasi2 <> 0) then
               begin
                  writeln('Mohon input data dengan benar.');
                  readln();
                  goto ulang;
               end;
         
         writeln('Apakah kamu pernah memiliki kadar gula darah yang tinggi?');
         write('Jawaban(YA=1, TIDAK=0) : '); readln(user1[k].info1.informasi3);
            // validator
            if (user1[k].info1.informasi3 <> 1) and (user1[k].info1.informasi3 <> 0) then
               begin
                  writeln('Mohon input data dengan benar.');
                  readln();
                  goto ulang;
               end;
         
         writeln('Apakah kamu sehari-hari pernah mengkonsumsi obat darah tinggi?');
         write('Jawaban(YA=1, TIDAK=0) : '); readln(user1[k].info1.informasi4);
            // validator
            if (user1[k].info1.informasi4 <> 1) and (user1[k].info1.informasi4 <> 0) then
               begin
                  writeln('Mohon input data dengan benar.');
                  readln();
                  goto ulang;
               end;

         writeln();
         writeln('                 [INFORMASI GAYA HIDUP]');
         writeln('=====================================================');
         writeln('Apakah kamu berolahraga selama lebih dari 30 menit setiap hari?');
         write('Jawaban(YA=1, TIDAK=0) : '); readln(user1[k].info2.informasi1);
            // validator
            if (user1[k].info2.informasi1 <> 1) and (user1[k].info2.informasi1 <> 0) then
               begin
                  writeln('Mohon input data dengan benar.');
                  readln();
                  goto ulang;
               end;
         
         writeln('Seberapa sering kamu mengkonsumsi sayur dan buah?');
         write('Jawaban (Setiap Hari=1, Jarang=0) : '); readln(user1[k].info2.informasi2);
            // validator
            if (user1[k].info2.informasi2 <> 1) and (user1[k].info2.informasi2 <> 0) then
               begin
                  writeln('Mohon input data dengan benar.');
                  readln();
                  goto ulang;
               end;
      end;
   end;

   banyak_pasien2 := banyak_pasien2 + banyak_pasien; // input data nantinya bukan overwrite tetapi berupa append(menambah data)
end;

function penghitungBMI(var berat_badan, tinggi_badan : real):real; // menghitung bmi
begin
   penghitungBMI := berat_badan / ((tinggi_badan/100) *(tinggi_badan/100)); // mengreturn penghitungBMI
end;

procedure prosesData(user4 : arrayPasien; n : integer); // menghitung poin diabetes
var
   o : integer;
begin
   for o := 1 to n do // perulangan menghitung poin diabetes seluruh pasien
   begin
       user4[o].poinDiabetes := 0;

      // poin diabetes untuk bmi
      if penghitungBMI(user4[o].berat_badan, user4[o].tinggi_badan) < 18.5 then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 0
      else if (penghitungBMI(user4[o].berat_badan, user4[o].tinggi_badan) >= 18.5) and (penghitungBMI(user4[o].berat_badan, user4[o].tinggi_badan) < 25) then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 0
      else if (penghitungBMI(user4[o].berat_badan, user4[o].tinggi_badan) >= 25) and (penghitungBMI(user4[o].berat_badan, user4[o].tinggi_badan) <= 30) then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 1
      else if penghitungBMI(user4[o].berat_badan, user4[o].tinggi_badan) > 30 then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 3;
      
      // poin diabetes untuk usia
      if user4[o].usia < 35 then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 0
      else if (user4[o].usia >= 35) and (user4[o].usia < 45) then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 0
      else if (user4[o].usia >= 45) and (user4[o].usia < 55) then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 2
      else if (user4[o].usia >= 55) and (user4[o].usia < 65) then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 3
      else if (user4[o].usia >= 65) then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 4;

      // poin diabetes untuk lingkar pinggang
      if user4[o].jenis_kelamin = 0 then
      begin
         if user4[o].lingkar_pinggang < 80 then
            user4[o].poinDiabetes := user4[o].poinDiabetes + 0
         else if (user4[o].lingkar_pinggang >= 80) and (user4[o].lingkar_pinggang < 89) then
            user4[o].poinDiabetes := user4[o].poinDiabetes + 0
         else if (user4[o].lingkar_pinggang >= 89) and (user4[o].lingkar_pinggang < 94) then
            user4[o].poinDiabetes := user4[o].poinDiabetes + 0
         else if (user4[o].lingkar_pinggang >= 94) and (user4[o].lingkar_pinggang < 102) then
            user4[o].poinDiabetes := user4[o].poinDiabetes + 3
         else if (user4[o].lingkar_pinggang >= 102) then
            user4[o].poinDiabetes := user4[o].poinDiabetes + 4;
      end
      else if user4[o].jenis_kelamin = 1 then
      begin
         if user4[o].lingkar_pinggang < 80 then
            user4[o].poinDiabetes := user4[o].poinDiabetes + 0
         else if (user4[o].lingkar_pinggang >= 80) and (user4[o].lingkar_pinggang < 89) then
            user4[o].poinDiabetes := user4[o].poinDiabetes + 3
         else if (user4[o].lingkar_pinggang >= 89) and (user4[o].lingkar_pinggang < 94) then
            user4[o].poinDiabetes := user4[o].poinDiabetes + 4
         else if (user4[o].lingkar_pinggang >= 94) and (user4[o].lingkar_pinggang < 102) then
            user4[o].poinDiabetes := user4[o].poinDiabetes + 4
         else if (user4[o].lingkar_pinggang >= 102) then
            user4[o].poinDiabetes := user4[o].poinDiabetes + 4;
      end;

      // poin diabetes untuk informasi kesehatan
      if user[o].info1.informasi1 = 1 then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 3;
      if user[o].info1.informasi2 = 1 then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 5;
      if user[o].info1.informasi3 = 1 then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 5;
      if user[o].info1.informasi4 = 1 then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 2;
      
      // poin diabetes untuk informasi gaya hidup
      if user[o].info2.informasi1 = 0 then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 2;
      if user[o].info2.informasi2 = 0 then
         user4[o].poinDiabetes := user4[o].poinDiabetes + 1;
   end;
end;

procedure hasilData(var user5 : arrayPasien; l, n : integer); // menampilkan data pasien
var
   p : integer;
   hasilBMI : real; // wadah bmi
begin
   prosesData(user5, n); // proses poin diabetes

   for p := l to n do // perulangan untuk menampilkan data pasien
   begin
      writeln('[ Pasien ke - ', p, ' ]');
      writeln('=====================================================');
      writeln('Nama                 : ', user5[p].nama_pasien);
      write('Jenis Kelamin        : '); 
      
      // identifikasi nilai jenis_kelamin
      case user5[p].jenis_kelamin of 
         0 : writeln('Laki-laki');
         1 : writeln('Perempuan');
      end;

      writeln('Usia                 : ', (user5[p].usia):3, ' tahun'); 
      writeln('Berat Badan(kg)      : ', (user5[p].berat_badan):3:2);
      writeln('Tinggi Badan(cm)     : ', (user5[p].tinggi_badan):3:2);
      writeln('Lingkar Pinggang(cm) : ', (user5[p].lingkar_pinggang):3);

      writeln();
      writeln('=====================================================');
      hasilBMI := penghitungBMI(user5[p].berat_badan, user5[p].tinggi_badan); // menghitung hasil bmi
      write('BMI                   : ', hasilBMI:3:2); 

      //identifikasi nilai bmi
      if hasilBMI < 18.5 then
         write(' (Berat badan kurang)')
      else if (hasilBMI >= 18.5) and (hasilBMI < 25) then
         write(' (Berat badan normal)')
      else if (hasilBMI >= 25) and (hasilBMI <= 30) then
         write(' (Berat badan berlebih (kecenderungan obesitas))')
      else if hasilBMI > 30 then
         write(' (Obesitas)');

      writeln();
      write('Hasil Risiko Diabetes : ', user5[p].poinDiabetes:5);

      //identifikasi nilai poinDiabetes
      if user5[p].poinDiabetes < 7 then
         begin
            writeln(' (Rendah)');
            writeln('Diperkirakan 1 dari 100 orang akan mengidap Diabetes.');
         end
      else if (user5[p].poinDiabetes >= 7) and (user5[p].poinDiabetes < 12) then
         begin
            writeln(' (Sedikit Tinggi)');
            writeln('Diperkirakan 1 dari 25 orang akan mengidap Diabetes.');
         end
      else if (user5[p].poinDiabetes >= 12) and (user5[p].poinDiabetes < 15) then
         begin
            writeln(' (Sedang)');
            writeln('Diperkirakan 1 dari 6 orang akan mengidap Diabetes.');
         end
      else if (user5[p].poinDiabetes >= 15) and (user5[p].poinDiabetes <= 20) then
         begin
            writeln(' (Tinggi)');
            writeln('Diperkirakan 1 dari 3 orang akan mengidap Diabetes.');
         end
      else if (user5[p].poinDiabetes > 20) then
         begin
            writeln(' (Sangat Tinggi)');
            writeln('Diperkirakan 1 dari 2 orang akan mengidap Diabetes.');
         end;
      
      writeln();
      readln();
   end;
end;

procedure cariData(var user02 : arrayPasien; n : integer); // mencari pasien berdasar nama
var
   nama_dicari : string[20];
   ketemu : boolean;
   j : integer;
begin
   clrscr;
   writeln('[CARI PASIEN]');
   write('Nama : '); readln(nama_dicari); // key nama pasien

   j := 1;
   ketemu := false;

   while (ketemu <> true) and (j <= n) do // perulangan untuk mencari nama pasien
   begin
      if CompareText(user02[j].nama_pasien, nama_dicari) = 0 then // membandingkan nama pasien dengan nama dicari case-insensitive
      begin
         ketemu := true;
         break;
      end;
      
      j := j + 1;
   end;

   writeln();
   if ketemu = true then // apabila nama ditemukan
      hasilData(user02, j, j)
   else // apabila nama tidak ditemukan
      writeln('Pasien dengan nama, ', nama_dicari, ' tidak ditemukan.');
end;

label ulang; // untuk perulangan
var
   opsi : byte;

begin
   if login() = false then // apabila login() gagal
      EXIT;

   penghitung := false;
   
   ulang : 
   clrscr;
   writeln('[PENGHITUNGAN DIABETES]');
   writeln('=======================');
   writeln('1) Input Data');
   writeln('2) Cari Data');
   writeln('3) Hasil Data');
   writeln('4) Keluar');
   writeln('=======================');
   write('Pilihan(1-4) : '); readln(opsi);

   // identifikasi nilai opsi
   case opsi of
      1 :
         begin
            clrscr;
            inputData(user); // input data pasien

            penghitung := true; // data didapatkan sehingga menu cari data dan hasil data bisa dipilih
            writeln('Input data selesai....');
            delay(2000); // jeda 2000 milidetik
            goto ulang;
         end;
      2 :
         begin
            clrscr;
            if penghitung = false then // validator
               begin
                  writeln('Mohon input data terlebih dahulu.');
                  readln();
                  goto ulang;
               end
            else
               cariData(user, banyak_pasien2); // cari pasien
            
            readln();
            goto ulang;
         end;
      3 :
         begin
            clrscr;
            if penghitung = false then // validator
               begin
                  writeln('Mohon input data terlebih dahulu.');
                  readln();
                  goto ulang;
               end
            else
               hasilData(user, 1, banyak_pasien2); // tampilkan data pasien
            
            readln();
            goto ulang;
         end;
      4 :
         begin
            writeln();
            writeln('Terima kasih telah menggunakan program ini.');
            writeln('Dibuat oleh : ');
            writeln('  Nama  : Umar Hadi Pranoto');
            writeln('  Studi : Politeknik Statistika STIS');
            writeln('  Info  : 222112404@stis.ac.id');
            readln();
         end;
   else
      // validator
      writeln('Mohon masukkan angka 1-4.');
      readln();
      goto ulang;
   end;
end.