Program Tranfer1;
Var a,b:integer;

Procedure tukar(x,y:integer);
Var z: integer;
Begin
   writeln;
   writeln('Procedure : ');
   writeln('x : ', x);
   writeln('y : ', y);
   writeln('z : ', z);
   writeln('a : ', a);
   writeln('b : ', b);

   
   z:=x; x:=y; y:=z;
   writeln;
   writeln('Tukar : ');
   writeln('x : ', x);
   writeln('y : ', y);
   writeln('z : ', z);
   writeln('a : ', a);
   writeln('b : ', b);
End;

Begin
   writeln('Main : ');
   
   a:=2; b:=9;
   writeln(' a= ',a,' b:= ',b);
   tukar(a,b);

   writeln;
   writeln('Masuk main kembali : ');
   writeln(' a= ',a,' b:= ',b);
End.