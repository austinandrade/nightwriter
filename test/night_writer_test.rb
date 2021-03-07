require './test/test_helper'

class NightWriterTest < Minitest::Test
  def test_it_exists
    input = "bananas"
    night_writer1 = NightWriter.new(input)
    assert_instance_of NightWriter, night_writer1
  end

  def test_it_takes_args
    input = "bananas"
    night_writer = NightWriter.new(input)
    assert_equal input, night_writer.input
  end

  def test_input_is_converted_to_a_string
    input = "bananas"
    night_writer = NightWriter.new(input)
    assert_equal "bananas", night_writer.input_to_s
  end

  def test_input_to_individual_character_array
    input = "bananas"
    night_writer = NightWriter.new(input)
    assert_equal ["b", "a", "n", "a", "n", "a", "s"], night_writer.input_to_individual_character_array
  end

  def test_starting_message
    skip
    input = "bananas"
    starting = "Jam"
    ending = "Boom"
    night_writer = NightWriter.new(input)
    night_writer.starting_message(starting, ending)
  end


  def test_alphabet
    input = "bananas"
    night_writer = NightWriter.new(input)
    expected = ["a", "b", "c", "d", "e",
                "f", "g", "h", "i", "j", "k",
                "l", "m", "n", "o", "p", "q",
                "r", "s", "t", "u", "v", "w",
                "x", "y", "z", "0", "1", "2",
                "3", "4", "5", "6", "7", "8",
                "9", ".", ",", "#", ""]
    assert_equal expected, night_writer.alphabet

  end

  def test_dictionary_can_convert
    # skip
    input = "bananas"
    night_writer = NightWriter.new(input)

    assert_equal "0.....", night_writer.dictionary("a")
  end
end
