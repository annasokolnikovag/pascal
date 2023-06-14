unit func;
interface
uses CRT;
procedure ygadai(a, a1: integer);

implementation
procedure ygadai(a, a1: integer);
var i: integer;
begin
    a:= random(9)+1;
    i:=1;
    TextColor(Blue);
    write('Попытка ',i, ': ');
    readln(a1);
if a1 = a then begin
       TextColor(Red); 
       writeln('Вы угадали число ', a ,' за ',i,' попытку! Молодец!');
    end;  

if a1 <> a then begin
       TextColor(Green); 
       writeln('Не угадали число, осталaсь ',i ,' попытка');
       i:=i+1;
    end;
 
if i=2 then begin
       TextColor(Blue);
       write('Попытка ',i, ': ');
       readln(a1);
          if a1=a then begin
          TextColor(Red); 
          writeln('Вы угадали число ', a ,' за ',i,' попытки! Молодец!');  
          end 
       else begin
          if a1<>a then begin
          TextColor(Green); 
          writeln('Не угадали число за ',i ,' попытки');
          TextColor(Blue);
          writeln('Загаданное число: ', a);
          end; 
       end; 
   end; 
   writeln;
end;
end.