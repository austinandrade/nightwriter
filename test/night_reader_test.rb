require './test/test_helper'

class NightReaderTest < Minitest::Test
  def test_it_exists
    night_reader1 = NightReader.new
    assert_instance_of NightReader, night_reader1
  end
end
