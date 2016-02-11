require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/jungle_beat'

class JungleBeatTest < Minitest::Test

  def test_something
    jb = JungleBeat.new("deep dep dep deep")

    assert_equal "deep dep dep deep", jb.all
    require "pry"; binding.pry
  end

end
