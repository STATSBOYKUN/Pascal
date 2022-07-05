program ukuranSebaranData;
uses crt, math;

label 
   ulang;

type
   arrayInt = array of integer;

var
   kondisi : byte;
   i, n : integer;

   data : arrayInt;

function rerata(data1 : arrayInt; k : integer):real;
var 
   jumlah : integer;

begin
   jumlah := 0; 
   for i := 1 to k do
   begin
      jumlah := jumlah + data1[i];
   end;

   rerata := jumlah/k;
end;

function stdDev(data2 : arrayInt; l : integer):real;
var
   jumlah2 : real;
   rerata2 : real;

begin
   jumlah2 := 0;
   rerata2 := rerata(data2, l);

   for i := 1 to l do
   begin
      jumlah2 := jumlah2 + power((data2[i] - rerata2), 2);
   end;

   stdDev := sqrt(jumlah2/l);
end;

function dataTerkecil(data3 : arrayInt; m : integer):integer;
var
   penampung : integer;

begin
   penampung := data3[1];
   for i := 2 to m do
   begin
      if data3[i] < penampung then
         penampung := data3[i];
   end;

   dataTerkecil := penampung;
end;

function dataTerbesar(data4 : arrayInt; o : integer):integer;
var
   penampung2 : integer;

begin
   penampung2 := data4[1];
   for i := 2 to o do
   begin
      if data4[i] > penampung2 then
         penampung2 := data4[i];
   end;

   dataTerbesar := penampung2;
end;

begin
   repeat
      ulang : 
      clrscr;
      
      writeln('[ PROGRAM RINGKASAN DATA ]');
      writeln('==========================');
      write('Banyak data yang ingin diiinput : '); 
      readln(n);

      if n <= 1 then
      begin
         writeln('Banyak data harus lebih dari 2.');
         readln();
         goto ulang;
      end;

      setlength(data, n);
      for i := 1 to n do
      begin
         write('Data [', i, '] : '); readln(data[i]);
      end;

      writeln;
      writeln('==========================');
      writeln('Rata - rata     : ', rerata(data, n):6:2);
      writeln('Standar deviasi : ', stdDev(data, n):6:2);
      writeln('Data Terkecil   : ', dataTerkecil(data, n):6);
      writeln('Data Terbesar   : ', dataTerbesar(data, n):6);

      writeln;
      writeln('Ulang program ? (YA = 1, TIDAK = 0)');
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);

   writeln('');
   writeln('Terima kasih telah menggunakan program ini :)');
   readln;
end.