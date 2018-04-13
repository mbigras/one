require 'test_helper'

class ThingTest < Minitest::Test
  def test_thing
    assert_equal "I'm a one!", One::Thing.new.call
  end
end