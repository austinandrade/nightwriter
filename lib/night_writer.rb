class NightWriter
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def input_to_s
    input.to_s
  end

  def input_to_individual_character_array
    input_to_s.split("")
  end
end
