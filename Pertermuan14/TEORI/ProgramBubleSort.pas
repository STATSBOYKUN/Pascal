Program bubble_sort;
uses crt;

var
 i,j,n,pilih : integer;
 a : array [1..100] of integer;

procedure buble1; {ascending}
 var	z : integer;

 begin
  for i:=1 to n-1 do
    begin
     for j:=n downto i+1 do
      begin
       if a[j] < a[j-1] then
        begin
         writeln('Data ke-',j,' lebih kecil daripada data ke-',(j-1));
         z:=a[j]; writeln('z = ',z,'        a[',j,'] = ',a[j]);
         a[j]:=a[j-1]; writeln('a[',j,'] = ',a[j],'    a[',j-1,'] = ',a[j-1]);
         a[j-1]:=z; writeln('a[',j-1,'] = ',a[j-1],'     z = ',z)
        end
	else begin
                writeln('Data ke-',j,' tidak lebih kecil daripada data ke-',(j-1));
                writeln('Sehingga tidak terjadi pengulangan pada iterasi ini');
                writeln;
            end;
        readln();
      end;
    end;
  end;
procedure buble2; {descending}
 var	z : integer;

 begin
  for i:=1 to n-1 do
    begin
     for j:=n downto i+1 do
      begin
       writeln('i = ',i,' j = ',j);
       if a[j] > a[j-1] then
        begin
         writeln('Data ke-',j,' lebih besar daripada data ke-',(j-1));
         z:=a[j]; writeln('z = ',z,'        a[',j,'] = ',a[j]);
         a[j]:=a[j-1]; writeln('a[',j,'] = ',a[j],'    a[',j-1,'] = ',a[j-1]);
         a[j-1]:=z; writeln('a[',j-1,'] = ',a[j-1],'     z = ',z);
         writeln;
        end
       else begin
                writeln('Data ke-',j,' tidak lebih besar daripada data ke-',(j-1));
                writeln('Sehingga tidak terjadi pengulangan pada iterasi ini');
                writeln;
            end;
      end;
    end;
  end;

begin
 clrscr;
 writeln('Program : Mengurutkan Nilai menggunakan Bubble Sort');
 writeln('=================================================');
 write ('Masukkan banyak data yang ingin di urut : '); readln(n);
 for i:=1 to n do
  begin
   write ('Data ',i,' : '); readln(a[i]);
  end;
 writeln('Pilih jenis pengurutan: ');
 writeln('1. Ascending (kecil ke besar)');
 writeln('2. Descending (besar ke kecil)');
 write('Pilihan Anda(1/2): '); readln(pilih);
 writeln;
 case pilih of
 1 : buble1;
 2 : buble2;
 end;
 writeln('=========================');
 writeln('Data setelah diurutkan : ');
 for j:=1 to n do
  write (a[j],' ');
readln;
end.

