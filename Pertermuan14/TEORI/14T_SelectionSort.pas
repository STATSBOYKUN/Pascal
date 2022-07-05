program urutdata;
uses crt;
type
     arr = array [1..100] of integer;
var
     N,i,pil:integer;
     data:arr;
     ulang:char;

     procedure display(x:arr);
     var i:integer;
     begin
          for i:=1 to n do
             write(x[i]:5);
          writeln;
     end;

     procedure tukar(var x,y:integer);
     var z:integer;
     begin
          z:=x;
          x:=y;
          y:=z;
     end;

     function CariIdxMin(var Data:arr; i,N:integer):integer;
     var j:integer;
     begin
          CariIdxMin:=i;
          for j:=i+1 to n do
          begin
               if (data[j]<data[CariIdxMin]) then
                  CariIdxMin:=j;
               display(data);
          end;
          writeln('Min data ',i,'-',n,' = ',data[CariIdxMin]);
     end;

     function CariIdxMax(var Data:arr; i,N:integer):integer;
     var j:integer;
     begin
          CariIdxMax:=i;
          for j:=i+1 to n do
          begin
               if (data[j]>data[CariIdxMax]) then
                  CariIdxMax:=j;
               display(data);
          end;
          writeln('Max data ',i,'-',n,' = ',data[CariIdxMax]);
     end;

     procedure SelectionSort(var Data:arr; N:integer);
     var i,IdxMin,IdxMax:integer;
     begin
          for i:=1 to n-1 do
          begin
               writeln('Perulangan ke-(i=',i,')');
               case pil of
                    1: begin
                       IdxMin:=CariIdxMin(data,i,n);
                       tukar(data[i],data[IdxMin]);
                       end;
                    2: begin
                       IdxMax:=CariIdxMax(data,i,n);
                       tukar(data[i],data[IdxMax]);
                       end;
               end;
               display(data); writeln; readln();
          end;
     end;
begin
ulang:='Y';
REPEAT
     clrscr;
     writeln('PROGRAM SELECTION SORT');
     writeln('======================');
     write('Banyak data yang ingin diinput: '); readln(N);
     for i:=1 to n do
         begin
         write('Data ke-',i,': '); readln(Data[i]);
         end;
     writeln;

     writeln('Jenis pengurutan:  1=Ascending;  2=Descending');
     write('Pilih jenis pengurutan [1/2]: '); readln(pil);
     writeln;
     writeln('Data sebelum diurutkan:');
     display(data); writeln;
     SelectionSort(data,n);

     case pil of
          1: writeln('Data sesudah diurutkan (ascending) :');
          2: writeln('Data sesudah diurutkan (descending) :');
     end;
     display(data);

     writeln;
     write('Ingin mengulang program? [Y/T]: '); readln(ulang);
UNTIL upcase(ulang)<>'Y';
readln;
end.