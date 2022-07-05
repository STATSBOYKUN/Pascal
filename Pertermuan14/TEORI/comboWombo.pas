program pengurutandata;
uses crt;

type larik = array of integer;

procedure inputData(data : larik; n : integer);
var 
   i : integer;
begin
   for i := 1 to n do
   begin
      write('Data ke - ', i, ' : '); readln(data[i]);
   end;
end;

procedure lihatData(data : larik; n : integer);
var i : integer;
begin
   for i := 1 to n do
   begin
      write(data[i], ' ');
   end;

   readln();
end;

procedure bubblesort(data: larik; n:integer);
var
   i,j,k,temp:integer;
begin
   for i:=1 to n-1 do
   begin
      k := 1;
      writeln('Perulangan ke-', i);
      writeln();
      
      for j:=n downto i+1 do
      begin
         if (data[j]<data[j-1]) then 
         begin
            temp := data[j];
            data[j] := data[j-1];
            data[j-1] := temp;
         end;

         writeln('Penukaran ke-', k);
         lihatData(data, n);
         k := k + 1;
      end;
      writeln();
   end;
end;

procedure selectionsort(data:larik; n:integer);
var
   i, j, min, temp:integer;
begin
   for i:=1 to n-1 do
   begin
      writeln('Perulangan ke-', i);
      writeln();

      min:=i;

      for j:= i+1 to n do
      begin
         if data[j] < data[min] then
            min:=j;
      end;

      temp := data[i];
      data[i] := data[min];
      data[min] := temp;

      writeln('Penukaran');
      lihatData(data, n);
      writeln();
   end;
end;

procedure insertionsort(data:larik; n:integer);
var
   i,j,key:integer;
begin
   for i:=2 to n do
   begin
      writeln('Perulangan ke-', i-1);
      writeln();

      key:=data[i];
      j:=i-1;

      while (j>0)and(data[j]>key) do 
      begin
         data[j+1]:=data[j];
         j:=j-1;
      end;

      data[j+1]:=key;
      writeln('Penukaran');
      lihatData(data, n);
      writeln();
   end;
end;

label ulang;
var
   opsi : byte;
   data : larik;
   n, inputKe : integer;
begin
   inputKe := 0;
   ulang : 
   clrscr;

   writeln('[ PROGRAM PENGURUTAN ]');
   writeln('==========================');
   writeln('1) Input data');
   writeln('2) Bubble Sort');
   writeln('3) Selection Sort');
   writeln('4) Insertion Sort');
   writeln('5) Keluar');
   writeln('==========================');
   write('Opsi (1-5) : '); readln(opsi);

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

            setlength(data, n+1);
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
            
            bubblesort(data, n);

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

            selectionsort(data, n);

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

            insertionsort(data, n);

            readln;
            goto ulang;
         end;
      5 : 
         begin
            writeln;
            writeln('Terima kasih telah menggunakan program ini :)');
            readln;
         end;
   else
      writeln('Mohon masukkan angka 1-5.');
      readln;
      goto ulang;
   end;

end.