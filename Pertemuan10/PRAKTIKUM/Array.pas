program ukuranSebaranData;
uses crt;

label 
   ulang;

type
   arrayInt = array of integer;

var
   opsi : byte;
   i, n : integer;

   data : arrayInt;

procedure tampilData(data3 : arrayInt; m : integer);
begin
   writeln('[ DATA TERINPUT ]');
   for i := 1 to m do
   begin
      writeln('Data ke - ', i, ' :', data3[i]);
   end;
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

begin
   ulang : 
   clrscr;
      
   writeln('[ PROGRAM RINGKASAN DATA ]');
   writeln('==========================');
   writeln('1) Input data');
   writeln('2) Tampilkan data');
   writeln('3) Data Terkecil');
   writeln('4) Data Terbesar');
   writeln('5) Rata-rata');
   writeln('6) Keluar');
   writeln('==========================');
   writeln('Opsi (1-6) : '); readln(opsi);
   
   case opsi of
      1 : 
         begin
            clrscr;
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

            readln;
            goto ulang;
         end;
      2 : 
         begin
            clrscr;
            tampilData(data, n);

            readln;
            goto ulang;
         end;
      3 : 
         begin
            clrscr;
            writeln('Data Terkecil   : ', dataTerkecil(data, n):6);

            readln;
            goto ulang;
         end;
      4 : 
         begin
            clrscr;
            writeln('Data Terbesar   : ', dataTerbesar(data, n):6);

            readln;
            goto ulang;
         end;
      5 : 
         begin
            clrscr;
            writeln('Rata - rata     : ', rerata(data, n):6:2);

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
      
   end;

end.