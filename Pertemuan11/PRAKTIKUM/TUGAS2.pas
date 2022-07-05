program programMatriks;
uses crt;

label ulang;

type
   kolomMatriks = integer;
   barisMatriks = integer;
   arrayMatriks = array of array of real;

function inputMatriks(var matriks1 : arrayMatriks; n, m : integer):arrayMatriks;
var
   i,j : integer;
begin
   clrscr;
   setlength(matriks1, n+1, m+1);

   for i := 1 to n do
   begin
      for j := 1 to m do
      begin
         write('Nilai [', i, ', ', j, '] : '); readln(matriks1[i,j]);
      end;
   end;
   inputMatriks := matriks1;
   clrscr;
end;

procedure lihatMatriks(var matriks2 : arrayMatriks; o, p : integer);
var
   i, j : integer;
begin
   for i := 1 to o do
   begin
      for j := 1 to p do
      begin
         write(matriks2[i,j]:3:2, ' ');
      end;
      writeln();
   end;

end;

procedure perkalianMatriks();
var
   matriksHasil, matriksA, matriksB : arrayMatriks;
   c1, c2 : kolomMatriks;
   r1, r2 : barisMatriks;
   i, j, k : integer; 

begin
   writeln('[INPUT MATRIKS]');

   writeln();
   writeln('[Matriks A]');
   write(' baris : '); readln(r1);
   write(' kolom : '); readln(c1);
   matriksA := inputMatriks(matriksA, r1, c1);

   writeln();
   writeln('[Matriks B]');
   r2 := c1;
   writeln(' baris : ', r2);
   write(' kolom : '); readln(c2);
   matriksB := inputMatriks(matriksB, r2, c2);

   setlength(matriksHasil, r1+1, c2+1);
   for i := 1 to r1 do
   begin
      for j := 1 to c2 do
      begin
         matriksHasil[i,j] := 0;
      end;
   end;

   for i := 1 to r1 do
   begin
      for j := 1 to c2 do
      begin
         for k := 1 to c1 do
         begin
            matriksHasil[i, j] := matriksHasil[i, j] + (matriksA[i, k] * matriksB[k, j]);
         end;
      end;
   end;

   writeln('[MATRIKS A]');
   lihatMatriks(matriksA, r1, c1);

   writeln('[MATRIKS B]');
   lihatMatriks(matriksB, r2, c2);

   writeln('[MATRIKS A * B]');
   lihatMatriks(matriksHasil, r1, c2);

end;

function determinanMatriks(matriks : arrayMatriks; t : integer):real;
var
   matriksPenampung : arrayMatriks;
   tanda, b, hasilDeterminan : real;
   c : integer;
   i, j, k : integer;
   
begin
   setlength(matriksPenampung, t+1, t+1);

   tanda := 1;
   for i := 1 to t do
   begin
      if matriks[i, i] = 0 then
      begin
         c := 0;
         while ((i+c) < t) and (matriks[i+c, i] = 0) do
         begin
            c := c + 1;
         end;

         if i + c = t then
         begin
            determinanMatriks := 0;
            break;
         end;
            
         k := 1;
         j := i;
         repeat
            matriksPenampung[j,k] := matriks[j,k];
            matriks[j, k] := matriks[j+c,k];
            matriks[j+c, k] := matriksPenampung[j,k];

            k := k + 1;
         until (k = t);

         tanda := tanda * (-1);
      end;
      
      for j := 1 to t do
      begin
         if ( i <> j) then
            begin
               b := matriks[j, i]/ matriks[i,i];

               for k := 1 to t do
               begin
                  matriks[j,k] := matriks[j,k] - (matriks[i, k] * b);
               end;
            end;
      end;
   end;

   hasilDeterminan := 1;
   for i := 1 to t do
   begin
      hasilDeterminan := hasilDeterminan * matriks[i,i];
   end;
   determinanMatriks := tanda * hasilDeterminan;
end;

procedure transposeMatriks();
var 
   i,j : integer;
   c1 : kolomMatriks;
   r1 : barisMatriks;
   matriksA, matriksB : arrayMatriks;
begin
   writeln('[INPUT MATRIKS]');

   writeln();
   writeln('[Matriks]');
   write(' baris : '); readln(r1);
   write(' kolom : '); readln(c1);
   
   inputMatriks(matriksA, r1, c1);

   if c1 < r1 then
      setlength(matriksB, r1+1, r1+1)
   else
      setlength(matriksB, c1+1, c1+1);
   
   for i := 1 to r1 do
   begin
      for j := 1 to c1 do
      begin
         matriksB[j, i] := matriksA[i,j];
      end;
   end;

   clrscr;
   writeln('[Matriks]');
   lihatMatriks(matriksA, r1, c1);

   writeln('[Matriks Transpose]');
   lihatMatriks(matriksB, c1, r1);
end;

procedure inversMatriks();
var
   matriksPenampung1, matriksPenampung2 : arrayMatriks;
   matriksA, matriksB : arrayMatriks;
   b : real;
   i, j, k, n, c : integer;

begin
   writeln('[INPUT MATRIKS]');

   writeln();
   writeln('[Matriks n x n]');
   write(' n : '); readln(n);
            
   inputMatriks(matriksA, n, n);

   writeln('[Matriks]');
   lihatMatriks(matriksA, n, n);

   setlength(matriksPenampung1, n+1, n+1);
   setlength(matriksPenampung2, n+1, n+1);

   setlength(matriksB, n+1, n+1);
   for i := 1 to n do
   begin
      for j := 1 to n do
      begin
         if (i <> j) then
            matriksB[i,j] := 0
         else
            matriksB[i,j] := 1;
      end;
   end;

   if determinanMatriks(matriksA, n) = 0 then
      writeln('Inverse matriks tidak ada karena determinan bernilai 0 :)')
   else
      begin
         for i := 1 to n do
         begin
            if matriksA[i, i] = 0 then
            begin
               c := 0;
               while ((i+c) < n) and (matriksA[i+c, i] = 0) do
               begin
                  c := c + 1;
               end;

               if i + c = n then
               begin
                  break;
               end;
                  
               k := 1;
               j := i;
               repeat
                  matriksPenampung1[j,k] := matriksA[j,k];
                  matriksA[j, k] := matriksA[j+c,k];
                  matriksA[j+c, k] := matriksPenampung1[j,k];

                  matriksPenampung2[j,k] := matriksB[j,k];
                  matriksB[j, k] := matriksB[j+c,k];
                  matriksB[j+c, k] := matriksPenampung2[j,k];

                  k := k + 1;
               until (k = n);
            end;
            
            for j := 1 to n do
            begin
               if ( i <> j) then
                  begin
                     b := matriksA[j, i]/ matriksA[i,i];

                     for k := 1 to n do
                     begin
                        matriksA[j,k] := matriksA[j,k] - (matriksA[i, k] * b);
                        matriksB[j,k] := matriksB[j,k] - (matriksA[i, k] * b);
                     end;
                  end;
            end;

            writeln();
            writeln('[Matriks]');
            lihatMatriks(matriksA, n, n);

            writeln();
            writeln('[Matriks Invers]');
            lihatMatriks(matriksB, n, n);
         end;
         
         for i := 1 to n do
         begin
            for k := 1 to n do
            begin
               matriksB[i,k] := matriksB[i,k]/matriksA[i,i];
            end;

            matriksA[i,i] := matriksA[i,i]/matriksA[i,i];
         end;
      end;
   
   writeln();
   writeln('[Matriks]');
   lihatMatriks(matriksA, n, n);

   writeln();
   writeln('[Matriks Invers]');
   lihatMatriks(matriksB, n, n);
end;

var
   opsi : byte;
   matriks: arrayMatriks;
   n : integer;

begin
   ulang : 
   clrscr;

   writeln('[ PROGRAM MATRIKS ]');
   writeln('=========================');
   writeln('1) Perkalian Matriks');
   writeln('2) Determinan Matriks');
   writeln('3) Transpose Matriks');
   writeln('4) Invers Matriks');
   writeln('5) Keluar progam');
   writeln('=========================');
   write('Opsi (1-5): '); readln(opsi);

   case opsi of
      1 : 
         begin
            clrscr;
            perkalianMatriks();

            readln();
            goto ulang;
         end;
      2 :
         begin
            clrscr;
            writeln('[INPUT MATRIKS]');

            writeln();
            writeln('[Matriks n x n]');
            write(' n : '); readln(n);
            
            inputMatriks(matriks, n, n);

            writeln('[Matriks]');
            lihatMatriks(matriks, n, n);

            writeln('Nilai determinan : ', determinanMatriks(matriks, n):8:2);

            readln();
            goto ulang;
         end;
      3 :
         begin
            clrscr;
            transposeMatriks();

            readln();
            goto ulang;
         end;
      4 : 
         begin
            clrscr;
            inversMatriks();

            readln();
            goto ulang;
         end;
      5 : 
         begin
            writeln('Terima kasih telah menggunakan program ini :)');
            readln();
            EXIT;
         end;
   else
      writeln('Mohon masukkan angka 1-5.');
      readln();
      goto ulang;
   end;
end.