touch /tmp/test/{jeden,dwa,trzy}
chmod 777 /tmp/test/{jeden,dwa,trzy}
find /tmp/test/ -perm -002 -type f -ls
#? ps
ps
ps ux | less
ps aux
ps -e
#? Processes
top
jobs
vi file.sh ctrl+Z
fg %1
bg %1
#? variables
printenv
#? Programing constructions
# if..then
ZMIENNA=1
if [ $ZMIENNA -eq 1 ]; then
  echo "Zmienna ma wartość 1"
fi
# if..then..else
DZIEN="piatek"
if [ $DZIEN = "piatek" ]; then
  echo "Hurra, dzisiaj jest piatek."
else
  echo "Czy piatek kiedykolwiek nadejdzie?"
fi
help test # Operatory wyrażeń tekstowych
# Inne funkcje książka 'Linux Biblia' strony 179-185;
if..then..elif
Polecenie case
Pętla for..do
Pętla While..do i untill..do
#grep
grep /home /etc/passwd
env | grep ^HO
man grep
#cut - usuwanie fragmentow wierszy tekstu
grep /home /etc/passwd | cut -d':' -f6 - (- ostatni oznacza pokazania wartości danych ze standardowego wejścia potoku)
#tr - przekształcenie badz usuwanie znakow
F00="PolaCzeNie zNAKow"
echo $F00 | tr [A-Z] [a-z]
#sed - edytor strumieni
#Wyszukiwanie w folderze slowa home
sed -n '/home/p' /etc/passwd -> pawel:x:1000:1000::/home/pawel:/bin/bash

#? Zmienne
#$:
Reprezentuje całkowitą liczbę argumentów przekazanych do skryptu.
Na przykład, jeśli uruchomisz skrypt za pomocą ./script.sh arg1 arg2 arg3, #$ będzie równe 3.

$1:
Oznacza pierwszy argument przekazany do skryptu.
Na przykład, jeśli uruchomisz skrypt za pomocą ./script.sh arg1 arg2 arg3, $1 będzie równe arg1.

$*:
Reprezentuje wszystkie argumenty przekazane do skryptu jako jeden ciąg tekstowy.
Na przykład, jeśli uruchomisz skrypt za pomocą ./script.sh arg1 arg2 arg3, $* będzie równe arg1 arg2 arg3.

! (użyty w if [ ! -s $Test ]):
! oznacza negację w Bashu.
-s sprawdza, czy plik jest pusty (czy ma niezerowy rozmiar).
if [ ! -s $Test ] oznacza: "jeśli plik $Test jest pusty" (jeśli jego rozmiar wynosi zero).

$?:
Reprezentuje kod wyjścia ostatnio wykonanej komendy.
Na przykład, jeśli ostatnia komenda zakończyła się sukcesem, $? będzie równe 0. W przeciwnym razie będzie to kod błędu.
