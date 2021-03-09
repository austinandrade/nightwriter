require './test/test_helper'

class TranslatorTest < Minitest::Test
  def test_it_exists
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_it_can_convert_from_english_to_braille
    translator = Translator.new
    assert_equal ["0.", "..", ".."], translator.english_to_braille("a")
    assert_equal [".0", ".0", "00"], translator.english_to_braille("#")
    assert_equal [".0", ".0", "00"], translator.english_to_braille("0")
  end

  def test_it_can_convert_from_braille_to_english
    translator = Translator.new
    assert_equal "a", translator.braille_to_english(["0.", "..", ".."])
    assert_equal "b", translator.braille_to_english(["0.", "0.", ".."])
    assert_equal " ", translator.braille_to_english(["..", "..", ".."])
    assert_equal "g", translator.braille_to_english(["00", "00", ".."])
  end
end
