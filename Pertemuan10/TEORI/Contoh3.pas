program latihanRecord;
uses crt;

type 
   mhs = record
      NIM : string[10];
      nama : string[30];
      prodi : string[30];
      IP : real;
   end;

var 
   data : array of mhs;
   i, n : integer;

begin
   clrscr;
   writeln('[ INPUT MAHASISWA ]');
   write('Banyak mahasiswa diinput : '); readln(n);

   setlength(data,n+1);
   for i := 1 to n do
   begin
      writeln('[ Mahasiswa ke - ', i, ' ]');
      with data[i] do
      begin
         write('NIM : '); readln(NIM);
         write('Nama : '); readln(nama);
         write('Program Studi : '); readln(prodi);
         write('IP : '); readln(IP);
      end;
      writeln;
   end;
   
   clrscr;
   writeln('[ DATA MAHASISWA ]');
   writeln;

   for i := 1 to n do
   begin
      writeln('[ Mahasiswa ke - ', i, ' ]');
      writeln('NIM : ', data[i].NIM);
      writeln('Nama: ', data[i].nama);
      writeln('Program Studi : ', data[i].prodi);
      writeln('IP  : ', data[i].IP:2:2);
      writeln;
   end;
   
   readln;
end.