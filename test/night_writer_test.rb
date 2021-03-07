require './test/test_helper'

class NightWriterTest < Minitest::Test
  def test_it_exists
    night_writer1 = NightWriter.new('input')
    assert_instance_of NightWriter, night_writer1
  end

  def test_it_takes_args
    input = "bananas"
    night_writer = NightWriter.new(input)
    assert_equal input, night_writer.input
  end

end
