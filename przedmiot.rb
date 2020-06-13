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
end
