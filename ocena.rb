class Ocenakoncowa
  def initialize(przedmiot, ocena, data)
    @przedmiot = przedmiot
    @ocena = ocena
    @data = data
  end

  def wypisz_info
    puts "#{@przedmiot}   #{@ocena}   #{@data}"
  end
end
