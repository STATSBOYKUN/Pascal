program contoh81;
uses crt;

type
   hariPekan = (Ahad, Senin, Selasa, Rabu, Kamis, Jumat, Sabtu);
   hariBulan = 1..31;

var 
   i,awalbulan : hariPekan;
   j,tglmaks : hariBulan;
   x,y,k,lebar : integer;

begin
   clrscr;

   write('Hari pertama awal bulan: ');
   readln(awalbulan);
   write('Jumlah hari bulan ini: ');
   readln(tglmaks); 
   
   writeln;
   lebar := 7;
   for i := Ahad to sabtu do
      write(i:lebar);
   
   y := 5;
   x := ord(awalbulan); //x := 1
   for j := 1 to tglmaks do
   begin
      if x = 7 then
      begin
         x := 0; // x := 1
         y := y+1;
      end;

      gotoxy(lebar * x + 1, y); write(j:3);
      x := x+1;
   end;

   readln;
end.

{
   1) Error
   5) karena x/y minimmum 1
}