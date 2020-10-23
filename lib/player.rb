class Player
  attr_writer :name, :letter, :array
  def initialize(name, letter)
    @name = name
    @letter = letter
    @array = []
  end
end
