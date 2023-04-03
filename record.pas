{record 1 Создать анкетные данные о студенте(type anketa):
запись с полями: Ф.И.О. (fio — строковый тип), дата рождения (birth — строковый тип), курс
(kurs — значения 1..5). Создать переменную student созданного типа. Выводить значения полей на экран.}
type anketa = record
    fio:string[20];
    birth: string[20];
    kurs: 1..5;
    end;
var student: anketa;
begin
readln(student.fio);
readln(student.birth);
readln(student.kurs);
writeln(student.fio,' ',student.birth,' ',student.kurs);

end.
    