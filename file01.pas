{Пример 7: В файле input.txt записаны числа (каждое — с новой строки), их
количество не превышает 100 Необходимо заменить четные числа на * и записать в файл output.txt.}
var A: array[1..100] of integer;
    f: text;
    N, i: integer;
function ReadFromFile: integer;
var i: integer;
begin
 assign(f, 'input.txt');
 reset(f);
 i := 0;
 while (i<100) and (not eof(f)) do begin
    i := i + 1;
    readln(f,A[i]);  
    end; 
 close(f);    
 ReadFromFile := i;
end;

Begin
   N := ReadFromFile ;
assign(f, 'output.txt');
rewrite(f);
for i:=1 to N do 
if (A[i] mod 2 =0) then writeln(f,'*')
  writeln(f,A[i]);     
close(f);
end.