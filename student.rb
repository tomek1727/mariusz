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