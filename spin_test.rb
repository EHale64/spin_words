require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/spin'
require 'json'
require 'pry'

class SpinTest < MiniTest::Test
    def setup
        @spin = Spin.new
    end

    def test_spin
        assert_equal "emocleW", @spin.spin_words("Welcome")
        assert_equal "Hey wollef sroirraw", @spin.spin_words("Hey fellow warriors")
        assert_equal "This is a test", @spin.spin_words("This is a test") 
        assert_equal "This is rehtona test", @spin.spin_words("This is another test")
    end
end