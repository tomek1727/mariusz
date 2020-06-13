
#czesc tomek, pojawiłem sie u góry! Jesteś super kolega


class Przedmiot
  def initialize(nazwa, kierunek, specjalnosc, semestr, ilgodzin)
    @nazwa = nazwa
    @kierunek = kierunek
    @specjalnosc = specjalnosc
    @semestr = semestr
    @godzin = ilgodzin
  end
  def wypisz_info()
    print "#{@nazwa}".rjust(10)
    print "#{@kierunek}".rjust(10)
    print "#{@specjalnosc}".rjust(10)
    print "#{@semestr}".rjust(10)
    puts "#{@godzin}".rjust(10)
  end

class Osoba
  def initialize(imie, nazwisko, data_urodzenia)
    @imie = imie
    @nazwisko = nazwisko
    @data_urodzenia = data_urodzenia
  end
end


class Student < Osoba
  def initialize(imie, nazwisko, data_urodzenia, kierunek, specjalnosc, rok, nr_indeksu, grupa)
    super(imie, nazwisko, data_urodzenia)
    @kierunek = kierunek
    @specjalnosc = specjalnosc
    @rok = rok
    @grupa = grupa
    @nr_indeksu = nr_indeksu
    @oceny = []
  end
  attr_reader :nr_indeksu

  def wypisz_info
    print "#{@imie}".rjust(10)
    print "#{@nazwisko}".rjust(15)
    print "#{@nr_indeksu}".rjust(15)
    print "#{@data_urodzenia}".rjust(10)
    print "#{@rok}".rjust(10)
    print "#{@kierunek}".rjust(10)
    print "#{@specjalnosc}".rjust(10)
    print "#{@grupa}".rjust(10)
  end

  def dodajocene(przedmiot, ocena, data)
    ocena = Ocenakoncowa.new(przedmiot, ocena, data)
    @oceny << ocena
  end
  def infooceny
    @oceny.each do |x|
      puts "#{x.przedmiot}   #{x.ocena}   #{x.data}"
    end
  end

end

class Ocenakoncowa
  def initialize(przedmiot, ocena, data)
    @przedmiot = przedmiot
    @ocena = ocena
    @data = data
  end
  attr_reader :przedmiot
  attr_reader :ocena
  attr_reader :data
end



class Wykladowca < Osoba
  def initialize(imie, nazwisko, data_urodzenia, tytul_naukowy, stanowisko)
    super(imie, nazwisko, data_urodzenia)
    @tytul_naukowy = tytul_naukowy
    @stanowisko = stanowisko
  end
  attr_reader :imie
  attr_reader :nazwisko
  def wypisz_info
    puts "\n#{@tytul_naukowy} #{@imie} #{@nazwisko}"
    puts "Stanowisko: #{@stanowisko}\n"
  end
end

class Jednostka
  def initialize(nazwa, adres)
    @nazwa = nazwa
    @adres = adres
    @wykladowcy = []
  end
  attr_reader :nazwa
  def nowywykladowca(imie, nazwisko, data, tytul, stanowisko)
    teacher = Wykladowca.new(imie, nazwisko, data, tytul, stanowisko)
    @wykladowcy << teacher
  end
  def dodajwykladowce(teacher)
    @wykladowcy << teacher
  end
  def usunwykladowce(imie, nazwisko)
    i = 0
    @wykladowcy.each do |x|
      if x.imie == imie and x.nazwisko == nazwisko
        @wykladowcy.delete_at(i)
        break;
      end
      i += 1
    end
  end
  def infowykladowcy()
    @wykladowcy.each do |x|
      x.wypisz_info
    end
  end
  def przenieswykladowce (imie, nazwisko)
    i = 0
    @wykladowcy.each do |x|
      if x.imie == imie and x.nazwisko == nazwisko
        y = x
        @wykladowcy.delete_at(i)
        return y
      end
      i += 1
    end
  end
  def wypisz_info()
    print "#{@nazwa}".rjust(10)
    puts "#{@adres}"

end

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




andrzej = Student.new("Andrzej", "Bisewski", "05.28.1999", "Informatyka", "Dziennikarstwo", 2019, 18, 3)
tomek = Wykladowca.new("Tomek", "Czajkowski", "03.03.1980", "Profesor", "Dziekan")

andrzej.wypisz_info
tomek.wypisz_info
