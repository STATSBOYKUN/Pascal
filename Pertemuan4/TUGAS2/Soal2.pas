program kondisi_air;

uses crt;
var suhu:  integer;

begin
   clrscr;

   write('Berapa suhu air (dalam Celcius) : ');
   readln(suhu);

   write('Kondisi air : ');
   if (suhu <= 0) then
      write('Beku')
   else if (suhu > 0) and (suhu < 100) then
      write('Cair')
   else if (suhu >= 100) then
      write('Uap');
   
   readln;
end.