program segitiga_pascal;
uses crt;

var i, j, k, baris:integer;

function factorial(x:integer):real;
var
   a, b : integer;
begin
   if (x = 0) or (x = 1) then
      a := 1
   else if x > 1 then
      begin
         a := 1;
         for b := 1 to x do
            a := a * b;
      end;

      factorial := a;
end;

begin
   clrscr;

   write('Masukkan baris: '); readln(baris);

   for i := 0 to baris-1 do
   begin
      for j := 1 to  baris-i do
      write('  ');
               
      for k := 0 to i do
         begin
            write(factorial(i)/(factorial(k) * factorial(i-k)):3:0, ' ');
         end;
   
   writeln;
   end;
   
end.
