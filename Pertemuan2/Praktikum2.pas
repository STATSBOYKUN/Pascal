program KonversiSuhu;

var
   celcius : real;
   hasil: real;

function Fahrenheit(celcius:real):real;
var
   result : real;
begin
   result := 9/5 * celcius + 32;
   Fahrenheit := result;
end;

begin
   write('Masukkan angka Celcius : ');
   read(celcius);

   hasil := Fahrenheit(celcius);
   writeln('Dalam Fahrenheit :', hasil:10:2);
end.