require './lib/dictionary'
class NightWriter
  attr_reader :message_file, :braille_file
  def initialize
    @message_file = ARGV[0] || ""
    @braille_file = ARGV[1] || "braille.txt"
  end

  def read_input_lines
    file = @message_file
    File.read(file) if File.exist?(@message_file)
  end

  def message_file_count
    if read_input_lines
      read_input_lines.length
    else
      "256"
    end
  end

  def create_braille_txt
    dictionary = Dictionary.new
    if @braille_file.length && @message_file.length >= 1
      File.open("#{@braille_file}", "w") do |f|
        translated_to_braille = read_input_lines.split("").map do |letter|
          dictionary.input_to_braille(letter)
        end
        # require "pry"; binding.pry
         joined_braille = translated_to_braille.join
        f.write("#{joined_braille}")
      end
    end
  end

  def starting_message
    puts "Created '#{@braille_file}' containing #{message_file_count} characters"
  end
end


night_writer = NightWriter.new
night_writer.starting_message
night_writer.create_braille_txt
