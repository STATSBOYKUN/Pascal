program Contoh96;
var x,y:integer;

procedure subpro1(a, b:integer);
var c:integer;
begin
    c := a; a := b; b := c;
    writeln('Nilai a : ', a);
    writeln('Nilai b : ', b);
    writeln('Nilai c : ', c);
    writeln;
end;

procedure subpro2(var a:integer; b:integer);
var c:integer;
begin
    c := a; a := b; b := c;

    writeln('Nilai a : ', a);
    writeln('Nilai b : ', b);
    writeln('Nilai c : ', c);
    writeln;
end;

procedure subpro3(a:integer; var b:integer);
var c:integer;
begin
    c := a; a := b; b := c;
    writeln('Nilai a : ', a);
    writeln('Nilai b : ', b);
    writeln('Nilai c : ', c);
    writeln;
end;

procedure subpro4(var a,b:integer);
var c:integer;
begin
    c := a; a := b; b := c;
    writeln('Nilai a : ', a);
    writeln('Nilai b : ', b);
    writeln('Nilai c : ', c);
    writeln;
end;

begin
    x := 5; y := 23;
    writeln('Ini subpro 1');
    subpro1(x,y);
    writeln('tranfer by value:    x= ', x);
    writeln('tranfer by value:    y= ', y);

    x := 5; y := 23;
    writeln;
    writeln('Ini subpro 2');
    subpro2(x,y);
    writeln('tranfer by location: x= ', x);
    writeln('tranfer by value:    y= ', y);

    x := 5; y := 23;
    writeln;
    writeln('Ini subpro 3');
    subpro3(x,y);
    writeln('tranfer by value:    x= ', x);
    writeln('tranfer by location: y= ', y);

    x := 5; y := 23;
    writeln;
    writeln('Ini subpro 4');
    subpro4(x,y);
    writeln('tranfer by location: x= ', x);
    writeln('tranfer by location: y= ', y);
end. 