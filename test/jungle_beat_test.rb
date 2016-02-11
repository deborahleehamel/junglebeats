require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/jungle_beat'

class JungleBeatTest < Minitest::Test

  def test_build_list
    jb = JungleBeat.new("deep dep dep deep")

    assert_equal "deep dep dep deep", jb.all
  end

  def test_play_returns_number_of_beats
    jb = JungleBeat.new("deep dep dep deep")

    assert_equal 4, jb.play
  end
end
