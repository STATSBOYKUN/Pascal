{Program Konversi Nilai CASE}
// Program Contoh51;

// var nilai : integer;
//    grade : char;

// begin
//    writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
//    write('nilai Anda = ');
//    readln(nilai);

   if (nilai >= 0) and (nilai <= 59)then
      grade:='D'
   else if (nilai >= 60) and (nilai <= 69) then 
      grade:='C'
   else if (nilai >= 70) and (nilai <= 79) then
      grade:='B'
   else if (nilai >= 80) and (nilai <= 100) then
      grade:='A';

   writeln('Grade Anda : ', grade );

   if grade = 'D' then
      writeln('Kurang memuaskan')
   else if grade = 'C' then
      writeln('Cukup')
   else if grade = 'B' then
      writeln('Baik')
   else if grade = 'A' then
      writeln('Sangat Baik');

//    readln;
// end.

{Program Konversi Nilai CASE-ELSE}
Program Contoh52;

var 
   Nilai : integer;
   grade : char;
   
begin
   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
   write('Nilai Anda = ');
   readln(Nilai);

   if (nilai >= 0) and (nilai <= 59)then
      grade:='D'
   else if (nilai >= 60) and (nilai <= 69) then 
      grade:='C'
   else if (nilai >= 70) and (nilai <= 79) then
      grade:='B'
   else if (nilai >= 80) and (nilai <= 100) then
      grade:='A';
   else 
      grade:='F';

   if Grade='F' then
      writeln('Anda salah input nilai')
   else  
      writeln('Grade Anda : ', Grade );

   if grade = 'D' then
      writeln('Kurang memuaskan')
   else if grade = 'C' then
      writeln('Cukup')
   else if grade = 'B' then
      writeln('Baik')
   else if grade = 'A' then
      writeln('Sangat Baik');
   
   readln;
end.

{Program Menentukan Hasil Ujian}
Program Contoh53;

var
   nilai : integer;
   cek : char;

begin
   awal :

   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
   write('Nilai Anda = ');
   readln(nilai);

   case nilai of
      0..59 : writeln(' Anda tidak lulus.');
      60..100 :
         begin
            write('Anda lulus. ');

            case nilai of
               60..74: writeln('dengan nilai cukup');
               75..89: writeln('dengan nilai baik');
            else 
               writeln('dengan nilai sangat baik');
            end;
         end;
      else writeln(' Anda salah input nilai');
   end;
   
end.