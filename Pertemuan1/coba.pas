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

(*
program SistemBilBulat;

uses crt;

var
        a,b,c:byte;
        d,e,f:byte; //short integer tidak bisa menampung variabel f

begin
        clrscr;

        a:=200;
        b:=55;
        c:=a+b;

        writeln('Tipe data Byte');
        writeln(' ',a,' + ',b,' = ',c);
        writeln;

        d:=125;
        e:=5;
        f:=d+e;

        writeln(' ',d,' + ',e,' = ',f);
        readkey;
end.
*)

(*
program Menghitung_LuasSegitiga;

var
   luas:real;
   alas,tinggi:real;

begin
   alas:=5;
   tinggi:=10;
   luas:=0.5*alas*tinggi;

   writeln('Alas = ', alas);
   writeln('Tinggi = ', tinggi);
   writeln('Luas = ', luas:4:2); //penempatan comma salah, 4:2 bearti tampilkan 4 digit dengan 2 digit belakang comma
end.
*)

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
        a:=123456.31;
        b:=123456.31;
        c:=123456.31;
        d:=123456.31;
        e:=123456.31;

        writeln('a : ', a);
        writeln('b : ', b);
        writeln('c : ', c);
        writeln('d : ', d);
        writeln('e : ', e);

        readkey;
end.

