class Alphabet
  attr_reader :alphabet_list
  def initialize
    @alphabet_list = []
  end

  def add_alphabet
    @alphabet_list << [*('a'..'z'), *('0'..'9'), ".", ",", "#", " "]
  end

  def contains?(input)
    @alphabet_list.any? do |list|
      list.select do |letter|
        letter == input
      end
    end
  end
end
