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
end
