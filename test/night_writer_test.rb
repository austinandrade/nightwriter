require './test/test_helper'

class NightWriterTest < Minitest::Test
  def test_it_exists
    input = "bananas"
    night_writer = NightWriter.new(input)
    assert_instance_of NightWriter, night_writer
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
end
