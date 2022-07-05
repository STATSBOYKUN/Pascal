program menentukanHari;
uses crt;

type
   Day = (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);

var
   hari, hari1 : Day;
   kondisi, opsi : byte;

begin
   repeat 
      clrscr;

      write('Hari ini adalah hari : ');readln(hari);

      writeln;
      writeln('================================');
      writeln('Hari Kemarin = 0, Hari Besok = 1?');
      write('Opsi : '); readln(opsi);

      if opsi = 0 then
         begin
            if hari = Monday then
               begin
                  hari1 := Sunday;
                  writeln('Hari kemarin adalah hari : ', hari1);
               end
            else
               begin
                  writeln('Hari kemarin adalah hari : ', pred(hari));
               end;
         end
      else if opsi = 1 then
         begin
            if hari = Sunday then
               begin
                  hari1 := Monday;
                  writeln('Hari besok adalah hari : ', hari1);
               end
            else
               begin
                  writeln('Hari besok adalah hari : ', succ(hari));
               end;
         end
      else
         EXIT;

      writeln;
      writeln('Cek hari lain ? (YA=1, TIDAK=0)'); 
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);
   readln;
end.