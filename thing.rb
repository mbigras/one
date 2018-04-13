module One
  VERSION = '0.1.0'
  class Thing
    def call
      "I'm a one!"
    end
  end
end

require 'minitest/autorun'

class TestOne < Minitest::Test
  def test_it_has_a_version
    assert_match /\d+\.\d+\.\d+/, One::VERSION
  end
end

class TestThing < Minitest::Test
  # assert_equal(exp, act, msg = nil)
  def test_thing
    assert_equal "I'm a one!", One::Thing.new.call
  end
end