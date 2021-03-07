require './test/test_helper'

class AlphabetTest < Minitest::Test
  def test_it_exists
    alphabet = Alphabet.new
    assert_instance_of Alphabet, alphabet
  end

  def test_alphabet_starts_empty
    alphabet = Alphabet.new
    assert_equal [], alphabet.alphabet_list
  end

  def test_it_can_add_alphabet
    alphabet = Alphabet.new
    expected = [["a", "b", "c", "d", "e", "f",
                "g", "h", "i", "j", "k", "l",
                "m", "n", "o", "p", "q", "r",
                "s", "t", "u", "v", "w", "x",
                "y", "z", "0", "1", "2", "3",
                "4", "5", "6", "7", "8", "9",
                ".", ",", "#", " "]]
    assert_equal expected, alphabet.add_alphabet
  end

  def test_contains?
    alphabet = Alphabet.new
    alphabet.add_alphabet
    assert_equal true, alphabet.contains?("a")
  end
end
