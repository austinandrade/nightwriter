require './lib/alphabet'
class Dictionary
  def english_to_braille(letter)
    if letter == "a" || letter == "A"
      "0. \n .. \n .."
    elsif letter == "b" || letter == "B"
      "0. \n 0. \n .."
    elsif letter == "c" || letter == "C"
      "00 \n .. \n .."
    elsif letter == "d" || letter == "D"
      "00 \n .0 \n .."
    elsif letter == "e" || letter == "E"
      "0. \n .0 \n .."
    elsif letter == "f" || letter == "F"
      "00 \n 0. \n .."
    elsif letter == "g" || letter == "G"
      "00 \n 00 \n .."
    elsif letter == "h" || letter == "H"
      "0. \n 00 \n .."
    elsif letter == "i" || letter == "I"
      ".0 \n 0. \n .."
    elsif letter == "j" || letter == "J"
      ".0 \n 00 \n .."
    elsif letter == "k" || letter == "K"
      "0. \n .. \n 0."
    elsif letter == "l" || letter == "L"
      "0. \n 0. \n 0."
    elsif letter == "m" || letter == "M"
      "00 \n .. \n 0."
    elsif letter == "n" || letter == "N"
      "00 \n .0 \n 0."
    elsif letter == "o" || letter == "O"
      "0. \n .0 \n 0."
    elsif letter == "p" || letter == "P"
      "00 \n 0. \n 0."
    elsif letter == "q" || letter == "Q"
      "00 \n 00 \n 0."
    elsif letter == "r" || letter == "R"
      "0. \n 00 \n 0."
    elsif letter == "s" || letter == "S"
      ".0 \n 0. \n 0."
    elsif letter == "t" || letter == "T"
      ".0 \n 00 \n 0."
    elsif letter == "u" || letter == "U"
      "0. \n .. \n 00"
    elsif letter == "v" || letter == "V"
      "0. \n 0. \n 00"
    elsif letter == "w" || letter == "W"
      ".0 \n 00 \n .0"
    elsif letter == "x" || letter == "X"
      "00 \n .. \n 00"
    elsif letter == "y" || letter == "Y"
      "00 \n .0 \n 00"
    elsif letter == "z" || letter == "Z"
      "0. \n .0 \n 00"
    elsif letter == "z" || letter == "."
      ".. \n 00 \n .0"
    elsif letter == "z" || letter == ","
      ".. \n 0. \n .."
    elsif letter == "z" || letter == "#"
      ".0 \n .0 \n 00"
    elsif letter == "z" || letter == " "
      ".. \n .. \n .."
    end
  end
end
