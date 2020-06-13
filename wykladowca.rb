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
