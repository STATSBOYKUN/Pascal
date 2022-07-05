program sequentialSearchBoolean;
uses crt;

type larik = array of integer;

procedure sequentialSearch2(a:larik; n,x :integer; var y:integer);
var
   i:integer;
   ketemu:boolean;
begin
   i := 1;
   ketemu := false;
   
   while (i<=n) and (ketemu <> true) do
   begin
      if a[i] = x then 
         ketemu:=true;    
      
      if ketemu = true then
         begin
            y:=i;
            writeln('Saat i = ', i, '. Nilai data = ', a[i], ', Y = ', y);
         end
      else
         begin
            y:=0;
            writeln('Saat i = ', i, '. Nilai data = ', a[i], ', Y = ', y);
         end;
      
      i := i + 1;
   end;

end;

var 
   data : larik;
   i, n, key, j : integer;
   opsi : integer;

begin
   repeat
      clrscr;
      write('Jumlah data dimasukkan : '); readln(n);

      setlength(data, n);
      for i := 1 to n do
      begin
         write('Data ke - ', i, ' : '); readln(data[i]);
      end;

      writeln();
      write('Cari nilai data : '); readln(key); 

      j := 0;
      sequentialSearch2(data, n, key, j);
      if j = 0 then
         writeln('Data tidak ditemukan.')
      else
         writeln('Data ditemukan pada data[', j , ']');

      writeln();
      writeln('Ulang program?(YES=1,NO=0)');
      write('Opsi : '); readln(opsi);

      if (opsi <> 1) and (opsi <> 0) then
      begin
         opsi := 0
      end;
   until (opsi = 0);
   
   writeln('Terima kasih :)');
   readln();
end.