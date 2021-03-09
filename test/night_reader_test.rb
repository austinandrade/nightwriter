require './test/test_helper'

class NightReaderTest < Minitest::Test
  def test_it_exists
    night_reader = NightReader.new
    assert_instance_of NightReader, night_reader
  end

  def test_it_can_get_starting_message
    night_reader = NightReader.new
    assert_output(/Created 'Nada' containing Zilch characters.\n/) { night_reader.starting_message }
  end

  def test_it_can_get_message_file_character_count
    night_reader = NightReader.new
    expected = "a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a "
    night_reader.stubs(:read_input_lines).returns(expected)
    assert_equal 80, night_reader.braille_file_count
  end

  def test_it_can_read_input_lines
    night_reader = NightReader.new
    expected = "a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a "
    night_reader.stubs(:read_input_lines).returns(expected)
    assert_equal expected, night_reader.read_input_lines
  end

  def test_it_can_write_to_braille_file
    night_reader = NightReader.new
    night_reader.stubs(:write_to_braille_file).returns(183)
    assert_equal 183, night_reader.write_to_braille_file
  end

  def test_it_can_translate_to_braille
    night_reader = NightReader.new
    expected = "a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a a "
    night_reader.stubs(:read_input_lines).returns(expected)
    assert_equal [], night_reader.translate_to_english
  end

end
