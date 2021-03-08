require './lib/dictionary'
class NightWriter
  attr_reader :message_file, :braille_file
  def initialize
    @message_file = ARGV[0] || ""
    @braille_file = ARGV[1] || "Nada"
  end

  def starting_message
    puts "Created '#{@braille_file}' containing #{message_file_count} characters."
  end

  def message_file_count
    if read_input_lines
      read_input_lines.length
    else
      "Zilch"
    end
  end

  def read_input_lines
    file = @message_file
    File.read(file).chomp if File.exist?(@message_file)
  end

  def write_to_braille_file
    if @braille_file.length && @message_file.length >= 1
      File.open("#{@braille_file}", "w") do |f|
        f.write("#{convert_braille_to_rows}")
      end
    else
      puts "No ARGS!\nTry again..."
    end
  end

  def translate_to_braille
    dictionary = Dictionary.new
    read_input_lines.downcase.chars.map do |letter|
      dictionary.english_to_braille(letter)
    end
  end

  def convert_braille_to_rows
    top = []
    middle = []
    bottom = []

    translate_to_braille.each do |a|
      top << a[0]
      middle << a[1]
      bottom << a[2]
    end
    
    top.join + "\n" + middle.join + "\n" + bottom.join + "\n"
  end
end


night_writer = NightWriter.new
night_writer.starting_message
night_writer.write_to_braille_file
