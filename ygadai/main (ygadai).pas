program main;
uses CRT,ygadai;

var a,a1:integer;
begin
  TextColor(Blue);
   TextBackGround(LightGray);
  ClrScr;
  writeln('Угадайте число с 2 попыток.');
  ygadai(a,a1);
end.
