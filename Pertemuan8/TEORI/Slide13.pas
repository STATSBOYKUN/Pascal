program totalmark;
uses crt;

type
   mark = 1..100;

var
   s1,s2,s3 : mark;

   kondisi : byte;
   total : integer;

begin
   repeat
      clrscr;
      write('Input 3 nilai (misal:1 2 3): ');
      readln(s1,s2,s3);
   
      total := s1+s2+s3;
      writeln('Total nilai : ', total);

      writeln;
      writeln('Ulang program ? (YA=1, TIDAK=0)'); 
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);
   readln;
end.