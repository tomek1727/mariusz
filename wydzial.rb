class Wydział
  def dodajjednostke(nazwa, adres)
    jed = Jednostka.new(nazwa, adres)
    @jednostki << jed
  end
  def dodajprzedmiot(nazwa, kierunek, specjalnosc, semestr, ilgodzin)
    prz = Przedmiot.new(nazwa, kierunek, specjalnosc, semestr, ilgodzin)
    @przedmioty << prz
  end
  def dodajstudenta(imie, nazwisko, data, kierunek, specjalizacja, rok, indeks, grupa)
    stu = Student.new(imie, nazwisko, data, kierunek, specjalizacja, rok, indeks, grupa)
    @studenci << stu
  end
  def dodajwykladowce(imie, nazwisko, data, tytul, stanowisko, jednostka)
    @jednostki.each do |x|
      if x.nazwa == jednostka
        x.nowywykladowca(imie, nazwisko, data, tytul, stanowisko)
      end
    end
  end
  def przenieswykladowce(imie, nazwisko, stara, nowa)
    w =
    @jednostki.each do |x|
      if x.nazwa = stara
       w = x.przenieswykladowce(imie, nazwisko)

     end
   end
    @jednostki.each do |x|
      if x.nazwa == nowa
       x.dodajwykladowce(w)
     end
   end
  end
  def dodajocene(student, przedmiot, ocena, data)
    @studenci.each do |x|
      if x.nr_indeksu == student
        x.dodajocene(przedmiot, ocena, data)
      end
    end
  end
  def usunstudenta(indeks)
    i = 0
    @studenci.each do |x|
      if x.nr_indeksu == indeks
        @studenci.delete_at(i)
        break
      end
      i += 1
    end
  end
  def infostudenci()
    print "Imie".rjust(10)
    print "Nazwisko".rjust(15)
    print "Numer Indeksu".rjust(15)
    print "Data Urodzenia".rjust(10)
    print "Kierunek".rjust(10)
    print "Specjalizacja".rjust(10)
    print "Rok".rjust(10)
    puts "Grupa".rjust(10)
    @studenci.each do |x|
      x.wypisz_info()
    end
  end
  def infojednostki()
    print "Nazwa".rjust(10)
    puts "Adres"
    @jednostki.each do |x|
      x.wypisz_info()
    end
  end
  def infoprzedmioty()
    print "Nazwa".rjust(10)
    print "Kierunek".rjust(10)
    print "Specjalizacja".rjust(10)
    print "Semestr".rjust(10)
    puts "Ilosc Godzin".rjust(10)
    @przedmioty.each do |x|
      x.wypisz_info()
    end
  end
end
