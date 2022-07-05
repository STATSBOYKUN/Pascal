// program 11
program tipe_pointer;

uses crt;

type
   tipeString = string;

var 
   nama1  : tipeString;
   nama2  : ^string;

begin
   clrscr;

   nama1 := 'Umar';
   nama2 := @nama1;

   writeln('Isi nama1 : ', nama1);
   writeln('Isi nama2 : ', nama2^);

   readkey;
end.