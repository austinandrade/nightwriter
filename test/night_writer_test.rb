require './test/test_helper'

class NightWriterTest < Minitest::Test
  def test_it_exists
    night_writer = NightWriter.new
    assert_instance_of NightWriter, night_writer
  end

  def test_it_can_get_starting_message
    night_writer = NightWriter.new
    assert_output(/Created 'Nada' containing Zilch characters.\n/) { night_writer.starting_message }
  end

  def test_it_can_get_message_file_character_count
    night_writer = NightWriter.new
    night_writer.stubs(:read_input_lines).returns("I may bend, but I don't break.")
    assert_equal 30, night_writer.message_file_count
  end

  def test_it_can_read_input_lines
    night_writer = NightWriter.new
    night_writer.stubs(:read_input_lines).returns("I may bend, but I don't break.")
    assert_equal "I may bend, but I don't break.", night_writer.read_input_lines
  end

  def test_it_can_write_to_braille_file
    night_writer = NightWriter.new
    night_writer.stubs(:write_to_braille_file).returns(183)
    assert_equal 183, night_writer.write_to_braille_file
  end

  def test_it_can_translate_to_braille
    night_writer = NightWriter.new
    night_writer.stubs(:read_input_lines).returns("I may bend, but I don't break.")
    expected = [[".0", "0.", ".."], ["..", "..", ".."], ["00", "..", "0."],
    ["0.", "..", ".."], ["00", ".0", "00"], ["..", "..", ".."],
    ["0.", "0.", ".."], ["0.", ".0", ".."], ["00", ".0", "0."],
    ["00", ".0", ".."], ["..", "0.", ".."], ["..", "..", ".."],
    ["0.", "0.", ".."], ["0.", "..", "00"], [".0", "00", "0."],
    ["..", "..", ".."], [".0", "0.", ".."], ["..", "..", ".."],
    ["00", ".0", ".."], ["0.", ".0", "0."], ["00", ".0", "0."],
    ["..", "..", "0."], [".0", "00", "0."], ["..", "..", ".."],
    ["0.", "0.", ".."], ["0.", "00", "0."], ["0.", ".0", ".."],
    ["0.", "..", ".."], ["0.", "..", "0."], ["..", "00", ".0"]]
    assert_equal expected, night_writer.translate_to_braille
  end

  def test_it_can_convert_braille_to_rows
    night_writer = NightWriter.new
    night_writer.stubs(:read_input_lines).returns("I may bend, but I don't break.")
    expected = ".0..000.00..0.0.0000....0.0..0...0..000.00...0..0.0.0.0.0...
    0........0..0..0.0.00...0...00..0....0.0.0..00..0.00.0....00
    ....0...00......0.........000.........0.0.0.0.....0.....0..0
    "
    assert_equal expected, night_writer.convert_braille_to_rows
  end
end
