require 'test_helper'

class OneTest < Minitest::Test
  def test_it_has_a_version
    assert_match /\d+\.\d+\.\d+/, One::VERSION
  end
end