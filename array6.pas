{Задача Array 6 Дан целочисленный массив размера N. Вывести все содержащиеся вданном
массиве четные числа в порядке убывания их индексов, а также их количество K.}
var a: array[1..100] of integer;
    N, i, k: integer;

begin
readln(n); 
    for i:=1 to n do
    readln(a[i]); 

writeln('четные: ');
k:=0;
for i:=n downto 1 do
    if a[i] mod 2 = 0 then
    begin
    writeln(a[i]);
    inc(k);
    end;

if k=0 then
writeln('нет четных')
else
writeln('кол-во четных: ', k);
end.
    