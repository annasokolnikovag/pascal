{рамка из 0 в двумерном массиве}
program z3;
var 
a: array[1..100,1..100] of integer;
 i,j,n: integer;
begin
Randomize;
write('размерность: ');
readln(n);
writeln('исходная: ');
for i:=1 to n do
      for j:=1 to n do
    a[i,j]:=random(51);
    
for i:=1 to n do begin
writeln;
      for j:=1 to n do
      write(a[i,j]:3, ' ');
end;

writeln;
writeln('измененная: ');
for i:=1 to n do begin
a[1,i]:=0;
a[n,i]:=0;
      for j:=1 to n do begin
      a[j,1]:=0;
      a[j,n]:=0;
      end;
end;
      
for i:=1 to n do begin
writeln;
      for j:=1 to n do
      write(a[i,j]:3, ' ');
end;
end.
