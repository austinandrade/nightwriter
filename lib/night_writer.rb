class NightWriter
  attr_reader :input, :message_file, :braille_file
  def initialize(input)
    @input = input
    @message_file = ARGV[0]
    @braille_file = ARGV[1]
  end

  def read_input_lines
    File.readlines(ARGV[0])
  end

  def message_file_count
    read_input_lines.length
  end

  def create_braille_txt
    File.open("braille.txt", "w") {|f| f.write("#{lines}")}
  end

  def arg_reader_and_writer
    if create_braille_txt
      puts "Created #{braille_txt} containing #{total_characters} characters"
    else
      puts "Created 'braille.txt' containing 256 characters"
    end
  end
end
