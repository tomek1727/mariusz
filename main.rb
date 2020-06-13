
#czesc tomek, pojawiłem sie u góry! Jesteś super kolega

load 'jednostka.rb'
load 'ocena.rb'
load 'osoba.rb'
load 'przedmiot.rb'
load 'student.rb'
load 'wydzial.rb'
load 'wykladowca.rb'




def menu()
  puts "Baza danych wydziału"
  puts "1.Wyświetl jednostki"
  puts "2.Dodaj jednostki"
  puts "3.Dodaj ocene"
  puts "4.Wyswietl studentów"
  puts "5.Wyswietl przedmioty"
  puts "6.Dodaj studenta"
  puts "7.Dodaj przedmiot"
  puts "8.Dodaj wykładowce"
  puts "9.Usun wykladowce"
  puts "10.Przenieś wykładowce"
  puts "11.Usuń studenta"

 wybor = $stdin.gets.chomp
 if wybor == '1'
   puts "Czy wyswietlic też wykładowców?"
   puts "1.Tak"
   puts "2.Nie"
   tn = $stdin.get.chomp
   if tn == '1'
     $wsb.infojednostki(true)
   elsif tn == '2'
     $wsb.infojednostki(false)
   end
 elsif wybor == '2'
   puts "Podaj nazwe jednostki:"
   nazwajednostki = $stdin.gets.chomp
   puts "Podaj adres jednostki"
   adresjednostki = $stdin.gets.chomp
   $wsb.dodajjednostke(nazwajednostki, adresjednostki)
 elsif wybor == '3'
   puts "Nr indeksu studenta:"
   stu = $stdin.gets.chomp
   puts "Przedmiot:"
   prz = $stdin.gets.chomp
   puts "Ocena:"
   oce = $stdin.gets.chomp
   puts "Data:"
   dat = $stdin.gets.chomp
   $wsb.dodajocene(stu, prz, oce, dat)
 elsif wybor == '4'
   puts "Czy wyswietlić też oceny?"
   puts "1.Tak"
   puts "2.Nie"
   tn = $stdin.gets.chomp
   if tn == '1'
     $wsb.infostudenci(true)
   elsif tn == '2'
     $wsb.infostudenci(false)
   end
 elsif wybor == '5'
  $wsb.infoprzedmioty()
elsif wybor == '6'
  puts "Podaj imie:"
  imi = $stdin.gets.chomp
  puts "Podaj nazwisko"
  naz = $stdin.gets.chomp
  puts "Podaj numer indeksu"
  ind = $stdin.gets.chomp
  puts "Podaj date urodzenia"
  dat = $stdin.gets.chomp
  puts "Podaj kierunek"
  kie = $stdin.gets.chomp
  puts "Podaj specjalizacje"
  spe = $stdin.gets.chomp
  puts "Podaj rok"
  rok= $stdin.gets.chomp
  puts "Podaj grupe"
  gru = $stdin.gets.chomp
  $wsb.dodajstudenta(imi, naz, dat, kie, spe, rok, ind, gru)
elsif wybor == '7'
  puts "Podaj nazwe:"
  naz = $stdin.gets.chomp
  puts "Podaj kierunek"
  kie  = $stdin.gets.chomp
  puts "Podaj specjalizacje"
  spe = $stdin.gets.chomp
  puts "Podaj semestr"
  sem = $stdin.gets.chomp
  puts "Podaj ilosc godzin"
  god = $stdin.gets.chomp
  $wsb.dodajprzedmiot(naz, kie, spe, sem, god)
elsif wybor == '8'
  puts "Podaj imie:"
  imi = $stdin.gets.chomp
  puts "Podaj nazwisko:"
  naz = $stdin.gets.chomp
  puts "Podaj date urodzenia:"
  dat = $stdin.gets.chomp
  puts "Podaj tytuł:"
  tyt = $stdin.gets.chomp
  puts "Podaj stanowisko"
  sta = $stdin.gets.chomp
  puts "Podaj nazwe Jednostki"
  jed = $stdin.gets.chomp
  $wsb.dodajwykladowce(imi, naz, dat, tyt, sta, jed)
elsif wybor == '9'
  puts "Podaj imie:"
  imi = $stdin.gets.chomp
  puts "Podaj nazwisko:"
  naz = $stdin.gets.chomp
  puts "Stara jednostka:"
  sta = $stdin.gets.chomp
  puts "Nowa jednostka"
  now = $stdin.gets.chomp
  $wsb.przenieswykladowce(imi, naz, sta, now, false)
elsif wybor == '10'
  puts "Podaj imie:"
  imi = $stdin.gets.chomp
  puts "Podaj nazwisko:"
  naz = $stdin.gets.chomp
  puts "Stara jednostka:"
  sta = $stdin.gets.chomp
  puts "Nowa jednostka"
  now = $stdin.gets.chomp
  $wsb.przenieswykladowce(imi, naz, sta, now, true)
elsif wybor == '11'
  puts "Podaj numer indeksu"
  ind = $stdin.gets.chomp
  $wsb.usunstudenta(ind)
  end
  menu()
end
  $wsb = Wydział.new()
  menu()
