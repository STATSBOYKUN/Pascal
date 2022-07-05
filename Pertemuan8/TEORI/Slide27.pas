program coloursWithCountries;
uses crt;

type
   Colours = (Red,Blue,Black,Orange,Green,White);
   Countries = (France,Italy,Greece,Spain);

var
   Colour : Colours;
   Country : Countries;
   
   i, no : Integer;
   kondisi : byte;

begin
   repeat
      clrscr;

      writeln('NO | Colour | Country | Nilai i | Succ(i) ');
      no := 1;
      for Colour := White downto Orange do
      begin
         for Country := Italy to Spain do
         begin
            i := ORD(Colour) + ORD(Country);
            writeln(no:2,'   ',  colour:8,' ', country:8,' ', i:4,'      ', succ(i):4);
            no := no + 1;
         end;
      end;

      writeln;
      writeln('Ulang program ? (YA=1, TIDAK=0)'); 
      write('Opsi : '); readln(kondisi);
   until (kondisi = 0);
   readln;
end.