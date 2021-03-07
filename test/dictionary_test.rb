require './test/test_helper'

class DictionaryTest < Minitest::Test
  def test_it_exists
    dictionary = Dictionary.new("alphabet")
    assert_instance_of Dictionary, dictionary
  end

  def test_it_has_args
    alphabet = Alphabet.new
    alphabet.add_alphabet
    dictionary = Dictionary.new(alphabet)

    assert_equal alphabet, dictionary.entire_alphabet
  end

  def test_it_converts_one_letter_to_braille
    alphabet = Alphabet.new
    alphabet.add_alphabet
    dictionary = Dictionary.new(alphabet)

    assert_equal "0. \n .. \n ..", dictionary.input_to_braille("a")
    assert_equal "0. \n 0. \n ..", dictionary.input_to_braille("b")
    assert_equal "00 \n .. \n ..", dictionary.input_to_braille("C")
    assert_equal "00 \n .0 \n ..", dictionary.input_to_braille("D")
    assert_equal "0. \n .0 \n ..", dictionary.input_to_braille("e")
    assert_equal "00 \n 0. \n ..", dictionary.input_to_braille("f")
    assert_equal "00 \n 00 \n ..", dictionary.input_to_braille("G")
    assert_equal "0. \n 00 \n ..", dictionary.input_to_braille("H")
    assert_equal ".0 \n 0. \n ..", dictionary.input_to_braille("i")
    assert_equal ".0 \n 00 \n ..", dictionary.input_to_braille("J")
    assert_equal "0. \n .. \n 0.", dictionary.input_to_braille("k")
    assert_equal "0. \n 0. \n 0.", dictionary.input_to_braille("L")
    assert_equal "00 \n .. \n 0.", dictionary.input_to_braille("M")
    assert_equal "00 \n .0 \n 0.", dictionary.input_to_braille("n")
    assert_equal "0. \n .0 \n 0.", dictionary.input_to_braille("o")
    assert_equal "00 \n 0. \n 0.", dictionary.input_to_braille("p")
    assert_equal "00 \n 00 \n 0.", dictionary.input_to_braille("Q")
    assert_equal "0. \n 00 \n 0.", dictionary.input_to_braille("R")
    assert_equal ".0 \n 0. \n 0.", dictionary.input_to_braille("s")
    assert_equal ".0 \n 00 \n 0.", dictionary.input_to_braille("T")
    assert_equal "0. \n .. \n 00", dictionary.input_to_braille("u")
    assert_equal "0. \n 0. \n 00", dictionary.input_to_braille("v")
    assert_equal ".0 \n 00 \n .0", dictionary.input_to_braille("w")
    assert_equal "00 \n .. \n 00", dictionary.input_to_braille("x")
    assert_equal "00 \n .0 \n 00", dictionary.input_to_braille("y")
    assert_equal "0. \n .0 \n 00", dictionary.input_to_braille("Z")
    assert_equal ".. \n 00 \n .0", dictionary.input_to_braille(".")
    assert_equal ".. \n 0. \n ..", dictionary.input_to_braille(",")
    assert_equal ".0 \n .0 \n 00", dictionary.input_to_braille("#")
    assert_equal ".. \n .. \n ..", dictionary.input_to_braille(" ")

  end
end
