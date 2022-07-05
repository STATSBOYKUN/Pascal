program pangkatBilangan;
uses crt;

var
   bilangan, pangkat : integer;

function pangkatBilangan(bilangan, pangkat : integer):real;
begin
   if pangkat = 1 then
      pangkatBilangan := bilangan
   else
      pangkatBilangan := bilangan * pangkatBilangan(bilangan, pangkat-1);
      { pangkat bilangan := 5 * 25 = 125
         
         pangkatBilangan(5, 3-1) : =
         pangkat bilangan := 5 * 5

         pangkatBilangan(5, 2-1)
            := 5
      }
end;

begin
   clrscr;
   write('bilangan : '); readln(bilangan);
   write('pangkat  : '); readln(pangkat);

   writeln('Hasil , ',  ': ', pangkatBilangan(bilangan, pangkat):9:2);
end.