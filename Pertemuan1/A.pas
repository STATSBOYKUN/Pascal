(* program contoh_awal;

 begin
     writeln('saya Pascal');
     writeln('saya baru kenal');

 end.
*)

(*
program tampil;

var
        nama:string[10];
begin
        nama:='Umar';
        write('Nama : ');
        write(nama);
end.
*)

program SistemBilBulat;

uses crt;

var
        a,b,c:byte;
        d,e,f:byte; //short integer tidak bisa menampung variabel f

begin
        clrscr;
        a:=200; b:=55;c:=a+b;
        writeln('Tipe data Byte');
        writeln(' ',a,' + ',b,' = ',c);
        writeln;
        d:=125;e:=5;f:=d+e;
        writeln(' ',d,' + ',e,' = ',f);
        readkey;
end.
