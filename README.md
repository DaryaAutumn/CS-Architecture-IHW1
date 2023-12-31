# Индивидуальное домашнее задание 1 по курсу АВС, Судакова Дарья, БПИ227, вариант 30
Задание выполнено на оценку 10.
## Условие
Разработать программу, которая вводит одномерный массив A, состоящий из N элементов (значение N вводится при выполнении программы), после чего формирует из элементов массива A новый массив B по следующим правилам: массив В составляется из элементов массива A, которые больше, чем элементы, стоящие перед ними.  
_Уточнение_: В данном случае я решила не брать первый элемент массива А в массив В, так как перед ним ничего не стоит.
## Критерии
### На оценку 4-5
1. Представлено решение на на ассемблере в файле [IHW.asm](IHW.asm). Ввод данных производится с клавиатуры, вывод - на консоль.
2. В тексте программы присутствуют комментарии.
     
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/50fa43ad-8bf9-4ea4-8f3a-ff214a6d493b)

3. В программе используются следующие подпрограммы: check_limits, input_array, form_array.
   
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/656f241e-b93a-4b94-9b57-07609cb0f327)
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/ebe522d5-c72b-4f36-85d2-f32eff9f3d42)
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/d93874f8-eaa2-405e-bbdb-aa29bc451da9)

4. Тестовые данные:
   В случае неверного ввода размера массива -
   
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/b9b8d389-782e-471b-8ea1-8f7704bcaef2)  

   В случае верного ввода размера массива -
   
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/9f6126cc-2d00-48e6-84eb-31143a25b47b)
   
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/8a7cda40-5c78-4cd6-8b8b-89f6ab3e1677)


### На оценку 6-7
1-2. _Уточнение:_ в данном случае для передачи параметров в подпрограммы регистров a0-a7 хватало, а в подпрограммах были использованы регистры t0-t5, большего количества переменных не потребовалось, поэтому для соответствия конвенции подпрограмм было принято решение передавать параметры через эти регистры. Данная оговорка была сделана лектором в общем чате по АВС. 
   
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/3ebf6886-6087-42ef-8344-57f03459b3e0)  
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/35c4bfee-1bda-4666-9e23-e020b25ddd1b)  
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/53959863-2900-4bbb-92e1-744f60950929)  
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/97d14292-550f-4554-8439-8f208fc2f7df)

Стек используется для наприсания начала и конца подпрограмм в макросах start_subprogramm и finish_subprogramm. Данные макросы вызываются каждый раз перед началом подпрограммы и после ее исполнения.  

![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/df9d9274-bcc8-4a34-afed-42220827a87d)

3. Перед каждой из подпрограмм в комментариях описаны передаваемые и возвращаемые значения (видно на скриншотах выше).

### На оценку 8

1. Подпрограммы поддреживают подключение различных массивов при передаче необходимых параметров в указанные в комментариях регистры. Это проверяет написанная [тестовая программа](tests.asm) на ассемблере, которая создает свой собственный массив и успешно использует подпрограмму [form_array](form_array.asm).
   
2. Написано две тестовые программы: [tests.asm](tests.asm) на ассемблере и [main.cpp](main.cpp) на с++. Первая создает три собственных массива, применяет к каждому подпрограмму form_array и выводит результат на экран. Вторая повторяет логику основной программы на ассемблере, чтобы убедиться в правильности выводимого ответа. Тестовые данные в двух программах разные.
   
_Работа тестов на С++:_  

![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/2174373e-1c8e-477c-8bab-16955ebb3cd7)    

_Такие же тесты в тестируемой программе:_    

![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/a14e734b-f26f-4020-bf39-b505baaa0588)  
![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/133fb94e-3987-4536-aad7-6e5d6522c1d0)  

_Работа тестов на ассемблере:_    

![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/56b99bbb-d3b5-4d02-ae0e-92c55cd2d680)

_Такие же тесты в тестируемой программе_   

![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/02dc9afe-30ce-4085-8b22-c220c0457d9c)

### На оценку 9

1. В программу добавлены макросы добавления в массив, печати строки, целого числа, пробела, переноса строки, печати массива. Они находятся в файле [macros.asm](macros.asm). На скриншоте приведены некоторые из них:

   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/ab526a11-73aa-40b4-bb62-abbe1e73e094)

2. Все подпрограммы обернуты в макросы начала и конца подпрограммы.

   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/a63f1b70-9e8d-4e37-96b1-c6ec5a5983f8)
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/9a5a1cb8-321a-49ca-9417-eff70db51fc7)

### На оценку 10

1. Программа разбита на несколько файлов: каждая подпрограмма выделена в отдельный файл и автономна в использовании. Есть два файла с тестами и файл [главной программы](IHW.asm) на ассемблере.

2. Макросы вынесены в отдельную библиотеку [macros.asm](macros.asm).

## Конец отчета!
![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/536cc56c-4c72-4cd2-b4c3-08e5a9bd97f4)


