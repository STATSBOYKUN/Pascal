program scores(input, output);
uses crt, math;

const
   tab = '    ';
   dash = '-';
   numberOfDashes = 50;

type
   scoreArray = array[1..100, 1..8] of real;
   averageArray = array[1..100] of real;
   stdDevArray = array[1..100] of real;
   terkecilArray = array[1..100] of real;
   terbesarArray = array[1..100] of real;

var
   score : scoreArray;
   average : averageArray;
   stdDev : stdDevArray;
   terkecil : terkecilArray;
   terbesar : terbesarArray;

   numberOfCourses : integer;
   numberOfStudents : integer;

   i, studentCount, scoreCount, dashCount : integer;

function rerata(data1 : scoreArray; k : integer):real;
var 
   jumlah : real;

begin
   jumlah := 0; 
   for i := 1 to numberOfCourses do
   begin
      jumlah := jumlah + data1[k, i];
   end;

   rerata := jumlah/numberOfCourses;
end;

function fungsiStdDev(data2 : scoreArray; l : integer):real;
var
   jumlah2 : real;
   rerata2 : real;

begin
   jumlah2 := 0;
   rerata2 := rerata(data2, l);

   for i := 1 to numberOfCourses do
   begin
      jumlah2 := jumlah2 + power((data2[l, i] - rerata2), 2);
   end;

   fungsiStdDev := sqrt(jumlah2/numberOfCourses);
end;

function dataTerkecil(data3 : scoreArray; m : integer):real;
var
   penampung : real;

begin
   penampung := data3[m,1];
   for i := 2 to numberOfCourses do
   begin
      if data3[m, i] < penampung then
         penampung := data3[m, i];
   end;

   dataTerkecil := penampung;
end;

function dataTerbesar(data4 : scoreArray; o : integer):real;
var
   penampung2 : real;

begin
   penampung2 := data4[o, 1];
   for i := 2 to numberOfCourses do
   begin
      if data4[o, i] > penampung2 then
         penampung2 := data4[o, i];
   end;

   dataTerbesar := penampung2;
end;

begin
   write('number of Students : '); readln(numberOfStudents);
   write('number of Courses : '); readln(numberOfCourses);

   for studentCount := 1 to numberOfStudents do
   begin
      writeln;
      writeln('Score of student #', studentCount, ': ');
      for scoreCount := 1 to numberOfCourses do
      begin
         write('Enter score for Course #', scoreCount, ': ');
         readln(Score[studentCount, scoreCount]);
      end;
   end;

   writeln;
   writeln(tab, 'Student #', tab, 'average', tab, ' stdDev', tab, ' MIN', tab, ' MAX');
   write(tab);

   for dashCount := 1 to numberOfDashes do
   begin
      write(dash);
   end;
   writeln;

   for studentCount := 1 to numberOfStudents do
   begin
      average[studentCount] := rerata(score, studentCount);
      stdDev[studentCount] := fungsiStdDev(score, studentCount);
      terkecil[studentCount] := dataTerkecil(score, studentCount);
      terbesar[studentCount] := dataTerbesar(score, studentCount);
   end;

   for studentCount := 1 to numberOfStudents do
   begin
      writeln(
      tab, studentCount:3, 
      '       ', average[studentCount]:8:2, 
      '    ', stdDev[studentCount]:8:2,
      ' ', terkecil[studentCount]:8:2,
      ' ', terbesar[studentCount]:8:2);
   end;
   write(tab);

   for dashCount := 1 to numberOfDashes do
   begin
      write(dash);
   end;

   writeln;
   readln;
end.