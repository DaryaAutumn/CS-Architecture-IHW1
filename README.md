# Индивидуальное домашнее задание 1 по курсу АВС, Судакова Дарья, БПИ227, вариант 30
Задание выполнено на оценку 7.
## Условие
Разработать программу, которая вводит одномерный массив A, состоящий из N элементов (значение N вводится при выполненпии программы),после чего формирует из элементов массива A новый массив B по следующим правилам: массив В составляется из элементов массива A, которые больше, чем элементы, стоящие перед ними.  
_Уточнение_: В данном случае я решила не брать первый элемент массива А в массив В, так как перед ним ничего не стоит.
## Критерии
### На оценку 4-5
1. Представлено решение на на ассемблере в файле [IHW.asm](IHW.asm). Ввод данных производится с клавиатуры, вывод - на консоль.
2. В тексте программы присутствуют комментарии.
     
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/50fa43ad-8bf9-4ea4-8f3a-ff214a6d493b)

3. В программе используются следующие подпрограммы: check_limits, input_array, form_array, print_array.
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/c96187bf-385d-4243-b5e0-257c0129573d)
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/ffce0a3c-5763-468f-9368-5da0202cb1ae)
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/f723d3d9-ac92-4edd-8d1e-0df909ccd241)
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/2e2b2d7a-187b-4010-8e67-1efccf70d1c1)

4. Тестовые данные:
   В случае неверного ввода размера массива -
   
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/e4608bbe-3608-4130-89e1-7a55f8dc9edf)

   В случае верного ввода размера массива -

   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/73f24bb6-ebf4-43de-97e8-48ef76361ae4)  
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/2bed64fc-9562-442e-87cf-79fc857d70ac)  
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/01cfbd32-8262-4ae0-bd36-6626da1e947c)    
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/78ff06c2-340e-45fb-acfd-378822416368)  
   

### На оценку 6-7
1. _Уточнение_ В данном случае для передачи параметров регистров a0-a7 хватало, поэтому для соответствия конвенции подпрограмм было принято решение передавать параметры через эти регистры. Данная оговорка была сделана лектором в общем чате по АВС. 
   
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/229379aa-c57d-4f53-962c-bbf0c4bc1309)  
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/3500ff2b-aa71-4123-83c5-f0256ff3f67a)
    
2. В подпрограммах используются локальные переменные, отображаемые на стеке.
   
   ![image](https://github.com/DaryaAutumn/CS-Architecture-IHW1/assets/72216853/69b1ce07-c669-4372-88df-ffa7489e348a)

3. Перед каждой из подпрограмм в комментариях описаны передаваемые и возвращаемые значения.

