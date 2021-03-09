require './lib/translator'
class NightReader
  attr_reader :message_file, :braille_file
  def initialize
    @braille_file = ARGV[0] || ""
    @message_file = ARGV[1] || "Nada"
    @final_braille_letter_hash = Hash.new { |hash, key| hash[key] = [] }
  end

  def starting_message
    puts "Created '#{@message_file}' containing #{braille_file_count} characters."
  end

  def braille_file_count
    if read_input_lines
      read_input_lines.length
    else
      "Zilch"
    end
  end

  def read_input_lines
    file = @braille_file
    chompd_lines = []
    File.readlines(file).each do |line| if File.exist?(@braille_file)
      # chompd_lines << line.chomp
    end
  end
  chompd_lines
end

def write_to_message_file
  if @braille_file.length && @message_file.length >= 1
    File.open("#{@message_file}", "w") do |f|
      f.write("#{translate_to_english}")
    end
  else
    puts "No ARGS!\nTry again..."
  end
end


def break_braille_into_array_of_arrays
  read_input_lines.map do |line|
    third_of_braille_letter = line.scan(/../)
    third_of_braille_letter.map do |third|
      [third]
    end
  end
end

def breakup_3_rows_into_chunks
  rows_in_mulitples_of_3 = []
  while break_braille_into_array_of_arrays.length >= 3
    rows_in_mulitples_of_3 << break_braille_into_array_of_arrays.slice!(0..2)
  end
  rows_in_mulitples_of_3
end

def translate_to_english
  breakup_3_rows_into_chunks.each do |letter_array|
    letter_array.each do |row|
      @final_braille_letter_hash[:letter_1]  << row[0]
      @final_braille_letter_hash[:letter_2]  << row[1]
      @final_braille_letter_hash[:letter_3]  << row[2]
      @final_braille_letter_hash[:letter_4]  << row[3]
      @final_braille_letter_hash[:letter_5]  << row[4]
      @final_braille_letter_hash[:letter_6]  << row[5]
      @final_braille_letter_hash[:letter_7]  << row[6]
      @final_braille_letter_hash[:letter_8]  << row[7]
      @final_braille_letter_hash[:letter_9]  << row[8]
      @final_braille_letter_hash[:letter_10] << row[9]
      @final_braille_letter_hash[:letter_11] << row[10]
      @final_braille_letter_hash[:letter_12] << row[11]
      @final_braille_letter_hash[:letter_13] << row[12]
      @final_braille_letter_hash[:letter_14] << row[13]
      @final_braille_letter_hash[:letter_15] << row[14]
      @final_braille_letter_hash[:letter_16] << row[15]
      @final_braille_letter_hash[:letter_17] << row[16]
      @final_braille_letter_hash[:letter_18] << row[17]
      @final_braille_letter_hash[:letter_19] << row[18]
      @final_braille_letter_hash[:letter_20] << row[19]
      @final_braille_letter_hash[:letter_21] << row[20]
      @final_braille_letter_hash[:letter_22] << row[21]
      @final_braille_letter_hash[:letter_23] << row[22]
      @final_braille_letter_hash[:letter_24] << row[23]
      @final_braille_letter_hash[:letter_25] << row[24]
      @final_braille_letter_hash[:letter_26] << row[25]
      @final_braille_letter_hash[:letter_27] << row[26]
      @final_braille_letter_hash[:letter_28] << row[27]
      @final_braille_letter_hash[:letter_29] << row[28]
      @final_braille_letter_hash[:letter_30] << row[29]
      @final_braille_letter_hash[:letter_31] << row[30]
      @final_braille_letter_hash[:letter_32] << row[31]
      @final_braille_letter_hash[:letter_33] << row[32]
      @final_braille_letter_hash[:letter_34] << row[33]
      @final_braille_letter_hash[:letter_35] << row[34]
      @final_braille_letter_hash[:letter_36] << row[35]
      @final_braille_letter_hash[:letter_37] << row[36]
      @final_braille_letter_hash[:letter_38] << row[37]
      @final_braille_letter_hash[:letter_39] << row[38]
      @final_braille_letter_hash[:letter_40] << row[39]
      @final_braille_letter_hash[:letter_41] << row[40]
    end
  end
end

def assign_final_braille_hash_empty_keys
  @final_braille_letter_hash[:letter_1] = []
  @final_braille_letter_hash[:letter_2] = []
  @final_braille_letter_hash[:letter_3] = []
  @final_braille_letter_hash[:letter_4] = []
  @final_braille_letter_hash[:letter_5] = []
  @final_braille_letter_hash[:letter_6] = []
  @final_braille_letter_hash[:letter_7] = []
  @final_braille_letter_hash[:letter_8] = []
  @final_braille_letter_hash[:letter_9] = []
  @final_braille_letter_hash[:letter_10] = []
  @final_braille_letter_hash[:letter_11] = []
  @final_braille_letter_hash[:letter_12] = []
  @final_braille_letter_hash[:letter_13] = []
  @final_braille_letter_hash[:letter_14] = []
  @final_braille_letter_hash[:letter_15] = []
  @final_braille_letter_hash[:letter_16] = []
  @final_braille_letter_hash[:letter_17] = []
  @final_braille_letter_hash[:letter_18] = []
  @final_braille_letter_hash[:letter_19] = []
  @final_braille_letter_hash[:letter_20] = []
  @final_braille_letter_hash[:letter_21] = []
  @final_braille_letter_hash[:letter_22] = []
  @final_braille_letter_hash[:letter_23] = []
  @final_braille_letter_hash[:letter_24] = []
  @final_braille_letter_hash[:letter_25] = []
  @final_braille_letter_hash[:letter_26] = []
  @final_braille_letter_hash[:letter_27] = []
  @final_braille_letter_hash[:letter_28] = []
  @final_braille_letter_hash[:letter_29] = []
  @final_braille_letter_hash[:letter_30] = []
  @final_braille_letter_hash[:letter_31] = []
  @final_braille_letter_hash[:letter_32] = []
  @final_braille_letter_hash[:letter_33] = []
  @final_braille_letter_hash[:letter_34] = []
  @final_braille_letter_hash[:letter_35] = []
  @final_braille_letter_hash[:letter_36] = []
  @final_braille_letter_hash[:letter_37] = []
  @final_braille_letter_hash[:letter_38] = []
  @final_braille_letter_hash[:letter_39] = []
  @final_braille_letter_hash[:letter_40] = []
end
def translate_to_english
  translator = Translator.new
  @final_braille_letter_hash.map do |letter|
    braille_letter = letter[1].flatten
    translator.braille_to_english(braille_letter)
  end
end
end


night_reader = NightReader.new
# night_reader.starting_message
# night_reader.write_to_message_file
