﻿{Создать массив стеков и стек массивов. Реализовать базовые операции: удаление, добавление и поиск элемента. 
 Вывести время выполнения всех операций для обоих структур данных.
 Примечания: массив должен быть динамическим, структуры данных (массив стеков и стек массивов)
 должны заполняться достаточно большим количеством элементов (более 10000, чтобы было нагляднее видно разницу)}


program mass_stack;

const n=10000;
var
a:array[1..10000] of integer;
size,x,i:integer;

procedure push (c:integer); //Добавление на вершину стека
  begin 
    size:=size+1;
    a[size]:=c;
  end;
  
procedure pop (); //Удаление верхнего элемента стека
  begin
    size := size - 1;
  end;
  
function top:integer; //Получения значения верхнего элемента стека
  begin
    top:=a[size];
  end;
  
begin
  size := 0; {Изначально стек пуст}
  for i := 1 to n do begin {добавляем 3 введенных с клавиатуры элемента. Например 4 16 9}
    x:= random(10000);
    write(x, ' ');
    Push(x);
  end;
    writeln(Top()); {Верхний элемент - 9. Поэтому на экран будет выведено 9}
    while size > 0 do  {Удаляем элементы пока стек не опустеет}
      Pop();
    writeln(size); {Стек пуст, поэтому выведется 0}
end.