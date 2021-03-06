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

message_file = ARGV.first
braille_file = ARGV[1]

print File.read(message_file) if ARGV.first
