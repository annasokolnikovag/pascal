{Задача Array 11 Заполнить массив случайными числами в интервале [20,100] и записать в другой
массив все числа, которые оканчиваются на 0}
var a: array[1..20] of integer;
    z: array[1..20] of integer;
     i, k: integer;
begin
for i:=1 to 20 do
begin
    a[i]:=random(81)+20;
    write(a[i],' ');
end;
k:=1;
for i:=1 to 20 do
begin
    if a[i] mod 10 = 0 then
    begin
    z[k]:=a[i];
    inc(k);
    end;
end;
writeln(' ');
writeln('оканчив. на 0: ');
for i:=1 to k do
write(z[i], ' ');
end.
    