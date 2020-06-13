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
