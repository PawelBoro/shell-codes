#!/usr/bin/env bash
# Polecenie ./phonebook.sh new nazwa numer_telefonu powoduje dodanie osoby do książki telefonicznej
# Polecenie ./phonebook.sh nazwa - wyświetla numer podanej osoby

PHONELIST=/home/pawel/source/repo/PawelBoro/shell-codes/.ksiazka_telefoniczna.txt

# jezeli nie zostanie podany zaden parametr ($#), wowczas mamy problem i trzeba zapytac uzytkownika co chce otrzymac
if [ $# -lt 1 ]; then
  echo "Za mała ilość argumentów"
  exit 1
fi

# Czy chcesz dodać nową osobę do książki telefonicznej?
if [ $1 = "new" ]; then # checks if the first argument is equal to "new" and $1 represents the first positional parameter passed to the script.
  shift                 # removes the first positional parameter ($1) and shifts all the remaining parameters one position to the left.
  echo $* >>$PHONELIST
  echo Osoba $* została dodana do bazy danych
  exit 0
elif [ $1 = "del" ]; then
  shift
  sed -i "/$*/d" $PHONELIST
  echo "Osoba $* zostala usunieta z bazy danych"
  exit 0
# else
#  echo "Nieznana komenda: $1.Użyj 'new' lub 'del'."
fi

# Nie. Czy książka telefoniczna zawiera jakiekolwiek osoby?
# Mimo wszystko to może być pierwsze użycie książki telefonicznej.
if [ ! -s $PHONELIST ]; then
  echo "Książka telefoniczna nie zawiera jeszcze żadnego kontaktu!"
  exit 1
else
  grep -i -q "$*" $PHONELIST #Przeszukanie Pliku
  if [ $? -ne 0 ]; then      # Czy poprzednia komenda zakończyła się błędem
    echo "Niestety nie ma takiej osoby"
    exit 1
  else
    grep -i "$*" $PHONELIST
  fi
fi
exit 0
