program faktorial;

uses crt;

var a, n, i : longint;

begin
   write('Masukkan n : '); readln(n);

   write(n, '! = ');
   
   if (n = 0) or (n = 1) then
      a := 1
   else if n > 1 then
      begin
         for i := 1 to N-1 do
         begin
            write(i, ' x ');
            if i = (N-1) then
               write(i+1);
         end;
      
         a := 1;
         for i := 1 to N do
            a := a * i;
      end;
   
   writeln;
   writeln('Hasil : ', a);
end.