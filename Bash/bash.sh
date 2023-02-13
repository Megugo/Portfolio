1) Посмотреть где я
sit@sit-VirtualBox:~$ pwd
/home/sit

2) Создать папку
sit@sit-VirtualBox:~$ mkdir d1

3) Зайти в папку
sit@sit-VirtualBox:~$ cd d1

4) Создать 3 папки
sit@sit-VirtualBox:~$ mkdir d2 d3 d4

5) Зайти в любоую папку
sit@sit-VirtualBox:~$ cd d3

6) Создать 5 файлов (3 txt, 2 json)
sit@sit-VirtualBox:~/d3$ touch 1.txt 2.txt 3.txt 1.json 2.json

8) Вывести список содержимого папки
sit@sit-VirtualBox:~/d3$ ls 
1.json  1.txt  2.json  2.txt  3.txt

9) Открыть любой txt файл
sit@sit-VirtualBox:~/d3$ nano 1.txt

10) написать туда что-нибудь, любой текст.
11) сохранить и выйти.
sit@sit-VirtualBox:~/d3$ cat 1.txt
1123
123545

12) Выйти из папки на уровень выше
sit@sit-VirtualBox:~/d3$ cd ..

—
13) переместить любые 2 файла, которые вы создали, в любую другую папку.
sit@sit-VirtualBox:~/d3$ mv *.txt ../d2

14) скопировать любые 2 файла, которые вы создали, в любую другую папку.
sit@sit-VirtualBox:~/d2$ cp *.txt ../d3

15) Найти файл по имени
sit@sit-VirtualBox:~$ find / -name 1.txt

16) просмотреть содержимое в реальном времени.
sit@sit-VirtualBox:~/d3$ cat 1.txt | grep 1123

17) вывести несколько первых строк из текстового файла
sit@sit-VirtualBox:~/d3$ head 1.txt

18) вывести несколько последних строк из текстового файла
sit@sit-VirtualBox:~/d3$ tail 1.txt

19) просмотреть содержимое длинного файла.
sit@sit-VirtualBox:~/d3$ less data.json 

20) вывести дату и время
sit@sit-VirtualBox:~/d3$ date
Чт окт 27 16:06:52 MSK 2022

=========

Задание *
1) Отправить http запрос на сервер http://162.55.220.72:5005/terminal-hw-request.
sit@sit-VirtualBox:~/d3$ curl http://162.55.220.72:5005/terminal-hw-request

2) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13
sit@sit-VirtualBox:~/d3$ touch script.sh
sit@sit-VirtualBox:~/d3$ chmod +x script.sh 
script.sh:
~~~
#!/bin/bash
cd
cd d1
mkdir d2 d3 d4
cd d3
touch 1.txt 2.txt 3.txt 1.json 2.json
ls -la
mv *.txt ..
~~~
Запуск ./script.sh