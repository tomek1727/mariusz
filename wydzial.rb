class Wydział
  def initialize()
    @studenci = []
    @jednostki = []
    @przedmioty = []

  end

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


  def przenieswykladowce(imie, nazwisko, stara, nowa, dodaj)
    w = "wykładowca"
    @jednostki.each do |x|
      if x.nazwa == stara
        w = x.usunwykladowce(imie, nazwisko)

      end
    end
    if dodaj
      @jednostki.each do |x|
        if x.nazwa == nowa
          x.dodajwykladowce(w)
        end
      end
    end
  end


  def dodajocene(student, przedmiot, ocena, data)
    czyjest = false
    @przedmioty.each do |y|
      if y.nazwa == przedmiot
        czyjest = true
      end
    end
    if czyjest
      @studenci.each do |x|
        if x.nr_indeksu == student
          x.dodajocene(przedmiot, ocena, data)
        end
      end
    else
      puts "Nie ma takiego przedmiotu"
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


  def infostudenci(oceny)
    print "Imie".rjust(10)
    print "Nazwisko".rjust(20)
    print "Numer Indeksu".rjust(20)
    print "Data Urodzenia".rjust(20)
    print "Rok".rjust(10)
    print "Kierunek".rjust(10)
    print "Specjalizacja".rjust(10)
    puts "Grupa".rjust(10)
    @studenci.each do |x|
      x.wypisz_info()
      if oceny == true
        x.infooceny()
      end
    end
  end


  def infojednostki(wyklad)
    print "Nazwa".rjust(10)
    puts "Adres"

    @jednostki.each do |x|
      x.wypisz_info()
      if wyklad
        x.infowykladowcy()
      end
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
