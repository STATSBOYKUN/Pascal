program programMatriks;
uses crt, math; // crt : clrscr; math : power

label ulang; // untuk perulangan

type
   // tipe untuk memudahkan penamaan variabel
   ukuranMatriks = integer;
   kolomMatriks = integer;
   barisMatriks = integer;
   arrayMatriks = array of array of real;

var
   // variabel global
   opsi : byte; // pilihan menu
   matriksA, matriksB: arrayMatriks; // wadah matriks
   baris : array[1..100] of barisMatriks; // wadah baris matriks
   kolom : array[1..100] of kolomMatriks; // wadah kolom matriks
   ulangKe : integer;

function inputMatriks(var matriks1 : arrayMatriks):arrayMatriks; // menginput nilai matriks
var
   i,j : integer;
   n : barisMatriks; m : kolomMatriks;
begin
   clrscr;
   writeln('[INPUT MATRIKS]');

   writeln();
   write(' baris : '); readln(n); // menentukan baris matriks
   write(' kolom : '); readln(m); // menentukan panjang matriks

   setlength(matriks1, n+1, m+1); // mengatur panjang array

   writeln();
   for i := 1 to n do // perulangan untuk menginput nilai matriks
   begin
      for j := 1 to m do
      begin
         write('Nilai [', i, ', ', j, '] : '); readln(matriks1[i,j]);
      end;
   end;

   baris[ulangKe] := n; // menampung baris matriks
   kolom[ulangKe] := m; // menampung kolom matriks 
   ulangKe := ulangKe + 1; // mengiterasi ulangKe
   
   inputMatriks := matriks1; // mengreturn nilai inputMatriks
   clrscr;
end;

procedure lihatMatriks(var matriks2 : arrayMatriks; o : barisMatriks; p : kolomMatriks); // melihat nilai matriks
var
   k, l : integer;
begin
   for k := 1 to o do // perulangan untuk menampilan nilai matriks
   begin
      for l := 1 to p do
      begin
         write(matriks2[k,l]:5:2, ' ');
      end;
      writeln();
   end;

end;

function perkalianMatriks(matriks3, matriks4 : arrayMatriks; d, e : barisMatriks; f, g : kolomMatriks):arrayMatriks; // perkalian 2 matriks
var
   matriksHasil : arrayMatriks; // matriks penampung hasil perkalian
   m, n, o : integer; 
begin
   setlength(matriksHasil, d+1, g+1); // mengatur panjang array

   for m := 1 to d do // perulangan untuk inisiasi matriks hasil
   begin
      for n := 1 to g do
      begin
         matriksHasil[m, n] := 0;
      end;
   end;

   for m := 1 to d do // perkalian matriks dengan hasilnya ditampung di matriks hasil
   begin
      for n := 1 to g do
      begin
         for o := 1 to f do
         begin
            write((matriks3[m, o]):4:2, '*', (matriks4[o, n]):4:2);
            if o <> f then
               write(' + ');
            matriksHasil[m, n] := matriksHasil[m, n] + (matriks3[m, o] * matriks4[o, n]);
         end;

         write('  ');
      end;
      writeln();
   end;

   perkalianMatriks := matriksHasil; // mengreturn nilai perkalianMatriks
end;

procedure kofaktorMatriks(var matriks5, matriksPenampung : arrayMatriks; y : barisMatriks ; z : kolomMatriks; n : ukuranMatriks); // mencari kofaktor matriks
var
   a,b,p,q : integer;
begin
   a := 1; b := 1; // inisiasi awal

   for p := 1 to n do // perulangan untuk membuat matriks penampung menampung kofaktor suatu matriks
   begin
      for q := 1 to n do
      begin
         if (p <> y) and (q <> z) then // menampung matriks dengan ukuran (n-1, n-1) selain baris y dan kolom z
         begin
            matriksPenampung[a, b] := matriks5[p,q];
            b := b + 1;
            if b = n then
            begin
               b := 1;
               a := a + 1;
            end;
         end;
      end;
   end;

end;

function determinanMatriks(matriks6 : arrayMatriks; n : ukuranMatriks):real; // menghitung determinan matriks
var
   hasilDeterminan, hasilDeterminanPenampung : real; // menampung hasil determinan
   matriksPenampung2 : arrayMatriks; // matriks penampung untuk kofaktor
   r, tanda : integer;
begin
   tanda := 1; // tanda determinan
   setlength(matriksPenampung2, n+1, n+1); // mengatur panjang array

   if (n = 1) then // determinan dari matriks ordo 1x1
      begin
      hasilDeterminan := matriks6[1,1];
      writeln('Determinan : ', hasilDeterminan:4:2);
      end
   else if (n = 2) then // determinan dari matriks ordo 2x2
      begin
      hasilDeterminan := (matriks6[1,1] * matriks6[2,2] - matriks6[1,2]*matriks6[2,1]);
      writeln('Determinan : ', matriks6[1,1]:4:2,'*', matriks6[2,2]:4:2, '-', matriks6[1,2]:4:2, '*', matriks6[2,1]:4:2, ' : ', hasilDeterminan:4:2);
      end
   else // determinan dari matriks ordo lebih dari 2x2
   begin
      for r := 1 to n do // perulangan untuk menghitung determinan matriks
      begin
         writeln('Kofaktor matriks(eliminasi baris ke-1, kolom ke-', r, ') : ');
         kofaktorMatriks(matriks6, matriksPenampung2, 1, r, n); // mencari kofaktor matriks
         lihatMatriks(matriksPenampung2, n-1, n-1);

         hasilDeterminanPenampung := determinanMatriks(matriksPenampung2, n-1);
         write('Determinan Total : ', hasilDeterminan:4:2, ' + (', tanda, '*', matriks6[1,r]:4:2, '*', hasilDeterminanPenampung:4:2,') : ');
         hasilDeterminan := hasilDeterminan + (tanda * matriks6[1,r] * hasilDeterminanPenampung); // fungsi rekursif mencari determinan
         writeln(hasilDeterminan:4:2);
         tanda := (-1) * tanda; // tanda akan mengikuti (-1) ^ penjumlahan index matriks(genap = 1, ganjil = -1)
         readln();
      end;
   end;
   
   determinanMatriks := hasilDeterminan; // mengreturn nilai determinanMatriks
end;

procedure adjointMatriks(var matriks7, adjoint : arrayMatriks; n : ukuranMatriks); // mencari adjoint matriks
var
   matriksPenampung3 : arrayMatriks; // matriks penampung untuk kofaktor
   t, u : integer;
   tanda : real;
begin
   setlength(matriksPenampung3, n+1, n+1); // mengatur panjang matriks
   if (n = 1) then // jika matriks ordo 1x1
   begin
      adjoint[1,1] := 1;
   end;

   for t := 1 to n do // perulangan untuk mencari adjoint dengan menggunakan kofaktor
   begin
      for u := 1 to n do
      begin
         writeln('[ADJOINT UNTUK BARIS KE-', t, ' KOLOM KE-', u, ']');

         writeln('Kofaktor matriks(eliminasi baris ke-', t, ' kolom ke-', u, ') : ');
         kofaktorMatriks(matriks7, matriksPenampung3, t, u, n); // mencari kofaktor matriks
         lihatMatriks(matriksPenampung3, n-1, n-1);
         
         tanda := power((-1), (t + u)); // tanda akan mengikuti (-1) ^ penjumlahan index matriks(genap = 1, ganjil = -1)
         adjoint[u,t] := tanda * determinanMatriks(matriksPenampung3, n-1); // mendapatkan adjoin dengan mencari determinan dari kofaktor
         writeln('Adjoint Matriks[',u ,',', t, '] : ', adjoint[u,t]:4:2);
         readln();
      end;
   end;
end;

function inversMatriks(matriks9 : arrayMatriks; n : ukuranMatriks):arrayMatriks; // mencari invers matriks
var
   hasilDeterminan2 : real;
   invers, adjoint : arrayMatriks; // matriks penampung untuk adjoin
   x, y : integer;
begin
   writeln('[MENCARI DETERMINAN MATRIKS]');
   writeln('============================');
   hasilDeterminan2 := determinanMatriks(matriks9, n); // mencari determinan matriks
   writeln('Nilai determinan matriks : ', hasilDeterminan2:4:2);
   readln();
   
   setlength(invers, n+1, n+1); // mengatur panjang array
   setlength(adjoint, n+1, n+1); // mengatur panjang array
   
   writeln('[MENCARI ADJOINT MATRIKS]');
   writeln('=========================');
   adjointMatriks(matriks9, adjoint, n); // mencari adjoint matriks

   if hasilDeterminan2 = 0 then
      begin
         writeln('Inverse matriks tidak ada karena determinan bernilai 0 :)');
      end
   else
      begin
         writeln('[MATRIKS]');
         for x := 1 to n do //perulangan untuk menghitung invers matriks
         begin
            for y := 1 to n do
            begin
               write(adjoint[x,y]:4:2, '/', hasilDeterminan2:4:2, '  ');
               invers[x,y] := adjoint[x,y] / hasilDeterminan2;
            end;
            
            writeln();
         end;
      end;

   inversMatriks := invers; // mengreturn nilai inversMatriks
end;

function transposeMatriks(matriks8 : arrayMatriks; g : barisMatriks; h : kolomMatriks):arrayMatriks; // mencari transpose matriks
var 
   v,w : integer;
   transpose : arrayMatriks;
begin

   // logika untuk menentukan ukuran matriks transpose
   if h < g then
      setlength(transpose, g+1, g+1)
   else
      setlength(transpose, h+1, h+1);
   
   for v := 1 to g do // perulangan untuk mentranspose matriks
   begin
      for w := 1 to h do
      begin
         transpose[w, v] := matriks8[v,w];
      end;
   end;

   transposeMatriks := transpose; // mengreturn nilai transposeMatriks
end;

var
   matriksHasil2 : arrayMatriks;
   hasilDeterminan3 : real;

begin
   ulangKe := 1; // untuk penghitung perulangan
   ulang : 
   clrscr;

   // menu program
   writeln('    [ PROGRAM MATRIKS ]');
   writeln('=========================');
   writeln('1) Perkalian Matriks');
   writeln('2) Determinan Matriks');
   writeln('3) Transpose Matriks');
   writeln('4) Invers Matriks');
   writeln('5) Keluar progam');
   writeln('=========================');
   write('Opsi (1-5): '); readln(opsi);

   case opsi of // mengidentifikasi nilai opsi
      1 : 
         begin
            clrscr;
            writeln('[MATRIKS A]'); writeln('Silakan input matriks...'); readln();
            inputMatriks(matriksA); // input matriks A

            writeln('[MATRIKS B]'); writeln('Silakan input matriks...'); readln();
            inputMatriks(matriksB); // input matriks B
            
            if kolom[ulangKe-2] <> baris[ulangKe-1] then // validator
               writeln('Tidak bisa dikalikan karena kolom matriks A tidak sama dengan baris matriks B :)')
            else
            begin
               writeln('[MATRIKS A]');
               lihatMatriks(matriksA, baris[ulangKe-2], kolom[ulangKe-2]); // tampil matriks

               writeln();
               writeln('[MATRIKS B]');
               lihatMatriks(matriksB, baris[ulangKe-1], kolom[ulangKe-1]); // tampil matriks

               writeln();
               writeln('[Matriks A x B]');
               matriksHasil2 := perkalianMatriks(matriksA, matriksB, baris[ulangKe-2], baris[ulangKe-1], kolom[ulangKe-2], kolom[ulangKe-1]); // hasil perkalian matriks

               writeln();
               writeln('[Hasil Matriks]');
               lihatMatriks(matriksHasil2, baris[ulangKe-2], kolom[ulangKe-1]); // tampil matriks
            end;

            readln();
            goto ulang;
         end;
      2 :
         begin
            clrscr;
            
            writeln('[Matriks n x n]'); writeln('Silakan input matriks...'); readln();
            inputMatriks(matriksA); // input matriks A

            if baris[ulangKe-1] <> kolom[ulangKe-1] then // validator
               writeln('Nilai baris dan kolom harus sama :)')
            else
            begin
               writeln('[Matriks]');
               lihatMatriks(matriksA, baris[ulangKe-1], kolom[ulangKe-1]); // lihat matriks

               writeln();
               writeln('=========================');
               hasilDeterminan3 := determinanMatriks(matriksA, baris[ulangKe-1]); // menampilkan nilai determinan matriks
               writeln('=========================');
               
               writeln('Nilai determinan matriks : ', hasilDeterminan3:4:2);
            end;

            readln();
            goto ulang;
         end;
      3 :
         begin
            clrscr;

            writeln('[Matriks]'); writeln('Silakan input matriks...'); readln();
            inputMatriks(matriksA); // input matriks A

            writeln('[Matriks]');
            lihatMatriks(matriksA, baris[ulangKe-1], kolom[ulangKe-1]); // lihat matriks

            matriksHasil2 := transposeMatriks(matriksA, baris[ulangKe-1], kolom[ulangKe-1]); // mengtranspose matriks

            writeln();
            writeln('[Matriks Transpose]');
            lihatMatriks(matriksHasil2, kolom[ulangKe-1], baris[ulangKe-1]); // lihat matriks

            readln();
            goto ulang;
         end;
      4 : 
         begin
            clrscr;

            writeln('[Matriks]'); writeln('Silakan input matriks...');  readln();
            inputMatriks(matriksA); // input matriks A
            
            if baris[ulangKe-1] <> kolom[ulangKe-1] then // validator
               writeln('Nilai baris dan kolom harus sama :)')
            else if baris[ulangKe-1] > 4 then // validator
               writeln('Maaf program hanya bisa memproses invers matriks dengan ukuran <= 4x4 :)')
            else
            begin
               writeln('[Matriks]');
               lihatMatriks(matriksA, baris[ulangKe-1], kolom[ulangKe-1]); // lihat matriks

               writeln();
               matriksHasil2 := inversMatriks(matriksA, baris[ulangKe-1]); // menginvers matriks

               writeln('=========================');
               writeln('[Matriks Inverse]');
               lihatMatriks(matriksHasil2, baris[ulangKe-1], kolom[ulangKe-1]); // lihat matriks
            end;

            readln();
            goto ulang;
         end;
      5 : 
         begin
            //penutup
            writeln('Terima kasih telah menggunakan program ini :)');
            writeln('Dibuat oleh : ');
            writeln('  Nama  : Umar Hadi Pranoto');
            writeln('  Studi : Politeknik Statistika STIS');
            writeln('  Info  : 222112404@stis.ac.id');
            readln();
            EXIT;
         end;
   else
      // validator
      writeln('Mohon masukkan angka 1-5.');
      readln();
      goto ulang;
   end;
end.