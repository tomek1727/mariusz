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

  def infowykladowcy()
    @wykladowcy.each do |x|
      x.wypisz_info
    end
  end

  def usunwykladowce (imie, nazwisko)
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
end
