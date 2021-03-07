class NightWriter
  attr_reader :input
  def initialize(input)
    @input = input
    @night_reader = NightReader.new
  end

  def input_to_s
    input.to_s
  end

  def input_to_individual_character_array
    input_to_s.split("")
  end

  def starting_message(starting, ending)
    puts "Created #{ending} containing 256 characters"
  end

  def dictionary(letter)
    require "pry"; binding.pry
    if letter == "a"
      "0....."
     end
  end

  # message_txt = ARGV[0]
  # braille_txt = ARGV[1]
  # lines = File.readlines(ARGV[0])
  # line_count = lines.size
  # text = lines.join
  # total_characters = text.length
  # create_braille_txt = File.open("braille.txt", "w") {|f| f.write("#{lines}") }
  # puts "Created #{braille_txt} containing #{total_characters} characters" if create_braille_txt
  # ARGF.read

end
