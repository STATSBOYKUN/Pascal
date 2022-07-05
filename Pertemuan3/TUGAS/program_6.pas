//program 6
program tipe_real;
uses crt;

var
   a:real;
   b:single;
   c:double;
   d:extended;
   e:comp;

begin
   clrscr;
        
   a:= 123456.31;
   b:= 123456.31;
   c:= 123456.31;
   d:= 123456.31;
   e:= 123456.31;

   writeln('a : ', a);
   writeln('b : ', b);
   writeln('c : ', c);
   writeln('d : ', d);
   writeln('e : ', e);

   readkey;
end.