
#czesc tomek, pojawiłem sie u góry! Jesteś super kolega


class Przedmiot
  def initialize(nazwa, kierunek, specjalnosc, semestr, ilgodzin)
    @nazwa = nazwa
    @kierunek = kierunek
    @specjalnosc = specjalnosc
    @semestr = semestr
    @godzin = ilgodzin
  end
  def wypisz()
    puts "#{@nazwa}   #{@kierunek}   #{@specjalnosc}   #{@semestr}   #{@godzin}"
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

  def wypisz_info
    puts "\n#{@imie} #{@nazwisko}"
    puts "numer Indeksu: #{@nr_indeksu}"
    puts "rok: #{@rok}"
    puts "kierunek: #{@kierunek}"
    puts "specjalność: #{@specjalnosc}"
    puts "grupa: #{@grupa}\n"
  end

  def dodajocene(przedmiot, ocena, data)
    ocena = new.Ocenakoncowa(przedmiot, ocena, data)
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
  attr_reader :@przedmiot
  attr_reader :@ocena
  attr_reader :@data
end



class Wykladowca < Osoba
  def initialize(imie, nazwisko, data_urodzenia, tytul_naukowy, stanowisko)
    super(imie, nazwisko, data_urodzenia)
    @tytul_naukowy = tytul_naukowy
    @stanowisko = stanowisko
  end

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
  def dodajwykladowce(imie, nazwisko, data, tytul, stanowisko)
    teacher = new.Wykladowca(imie, nazwisko, data, tytul, stanowisko)
    @wykladowcy << teacher
  end
end


andrzej = Student.new("Andrzej", "Bisewski", "05.28.1999", "Informatyka", "Dziennikarstwo", 2019, 18, 3)
tomek = Wykladowca.new("Tomek", "Czajkowski", "03.03.1980", "Profesor", "Dziekan")

andrzej.wypisz_info
tomek.wypisz_info
