program latihanArray;
uses crt;

var 
   x: array [1..100] of integer;
   n,i,max,min,tot,pos:integer;
   rt,sdt,sd,md:real;

begin
   writeln('program array');
   writeln('=============');
   writeln;

   write('masukkan jumlah data (data harus urut): ');readln(n);
   writeln;

   for i:= 1 to n do
      readln(x[i]);

   writeln;
   
   write('data yang telah dimasukkan: ');
   max:=x[1];
   min:=x[1];
   tot:=0;
   sdt:=0;

   for i:= 1 to n do
   begin
      write(x[i],' '); 
      if (max<x[i]) then
         max:=x[i]
      else
         min:=x[i];

      tot:=tot+x[i];
   end;

   rt:=tot/n;
   for i:= 1 to n do
   begin
      sdt:=sdt+sqr(x[i]-rt);
   end;

   sd:=sqrt(sdt/(n-1));
   if (n mod 2 = 1) then
      begin
         pos:=(n div 2)+1;
         md:=x[pos];
      end
   else
      begin
         pos:=(n div 2);
         md:=(x[pos]+x[pos+1])/2;
      end;
   
   writeln;
   writeln('nilai maximal : ',max);
   writeln('nilai minimal : ',min);
   writeln('nilai rata-rata : ',rt:4:2);
   writeln('standar deviasi : ',sd:4:2);
   writeln('median : ',md:4:2);
   
end.