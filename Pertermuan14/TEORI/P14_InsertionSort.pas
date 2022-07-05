program Urutin;
uses crt;
Type Larik = array [1..100] of integer;

Procedure Asc_InsertionSort(var data:larik; n:integer);
var
   a,i,j,key:integer;
begin
   for i:=2 to n do
      begin
         key:=data[i];
         j:=i-1;
         while (j>0)and(data[j]>key) do
            begin
               data[j+1]:=data[j];
               j:=j-1;
            end;
         data[j+1]:=key;
         write('Untuk i=',i,' hasilnya: ');
         for a:=1 to n do
               write(data[a],' ');
               writeln;
      end;
End;

Procedure Desc_InsertionSort(var data:larik; n:integer);
var
   a,i,j,key:integer;
begin
   for i:=2 to n do
      begin
         key:=data[i];
         j:=i-1;
         while (j>0)and(data[j]<key) do {bedanya di sini}
            begin
               data[j+1]:=data[j];
               j:=j-1;
            end;
         data[j+1]:=key;
         write('Untuk i=',i,' hasilnya: ');
         for a:=1 to n do
               write(data[a],' ');
               writeln;

      end;
End;
label
   awal,pilih;
var
   data:larik;
   i,n:integer;
   pilihan,lagi:char;
begin
   clrscr;
   {n:=5;
   data[1]:=5;
   data[2]:=8;
   data[3]:=6;
   data[4]:=9;
   data[5]:=1;}
   awal:
   writeln('PROGRAM INSERTION SORT');
   writeln('=======================');
   writeln;
   write('Masukkan jumlah bilangan: ');
   readln(n);
   for i:=1 to n do
   begin
      write('Data[',i,'] = ');
      readln(data[i]);
   end;
   writeln('1. Ascending Sort');
   writeln('2. Descending Sort');
   pilih:
   write('Pilihan Anda [1/2]: ');
   readln(pilihan);
   writeln;

   if (pilihan='1') then
   begin
      writeln('Anda memilih Ascending Sort');
      writeln('hasilnya adalah');
      Asc_Insertionsort(data,n);
      writeln;
      write('Setelah diurutkan:');
      for i:=1 to n do write(' ',data[i]);
   end
   else if (pilihan='2') then
   begin
      writeln('Anda memilih Descending Sort');
      writeln('hasilnya adalah');
      Desc_Insertionsort(data,n);
      writeln;
      write('Setelah diurutkan:');
      for i:=1 to n do write(' ',data[i]);
   end
   else
   begin
      writeln('Pilihan tidak tersedia, silahkan pilih nomor 1 atau 2');
      goto pilih;
   end;

   writeln;
   write('Apakah Anda ingin mengulangi program? [Y/T]: ');
   readln(lagi);
   writeln;
   if (lagi='Y') or (lagi='y') then
   goto awal;
   readln;
end.
