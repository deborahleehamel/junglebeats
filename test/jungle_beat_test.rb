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

  def test_alternating_methods
    jb = JungleBeat.new("deep dep dep deep")
    jb.prepend("bop boop")
    jb.append("bep beep")
    jb.insert(3, "nop noop")
    jb.pop(6)

    assert_equal "boop bop deep", jb.all
  end

  def test_if_rate_resets
    jb = JungleBeat.new("deep dep dep deep")
    jb.play
    jb.rate = 100
    jb.play
    jb.reset_rate

    assert_equal 500, jb.rate
  end

  def test_if_voice_resets
    jb = JungleBeat.new("deep dep dep deep")
    jb.play
    jb.voice = "Alice"
    jb.play
    jb.reset_voice

    assert_equal "Boing", jb.voice
  end

  def test_if_it_can_append_beats
    jb = JungleBeat.new("deep dep dep deep")
    jb.append("bop boop")

    assert_equal "deep dep dep deep bop boop", jb.all
  end

  def test_if_it_can_prepend_beats
    jb = JungleBeat.new("deep dep dep deep")
    jb.prepend("bop boop")

    assert_equal "boop bop deep dep dep deep", jb.all
  end

  def test_if_it_can_pop_off_beats
    jb = JungleBeat.new("deep dep dep deep")

    assert_equal "dep deep", jb.pop(2)
    assert_equal "deep dep", jb.all
  end

  def test_if_it_counts_all_beats
    jb = JungleBeat.new("deep dep")
    jb.append("bop boop")
    jb.append("nop noop")

    assert_equal 6, jb.count
  end

  def test_if_beat_is_included
    jb = JungleBeat.new("deep dep")
    jb.append("bop boop")
    jb.append("nop noop")

    assert jb.include?("noop")
    refute jb.include?("zap")
  end


  def test_if_it_can_insert_specific_beats
    jb = JungleBeat.new("deep dep dep")

    assert_equal "deep noop noop nop dep dep", jb.insert(1, "noop noop nop")
  end

  def test_if_can_bring_back_all_beats
    jb = JungleBeat.new("deep dep")
    jb.append("bop boop")
    jb.append("nop noop")

    assert_equal "deep dep bop boop nop noop", jb.all
  end

  def test_if_it_can_find_specific_amount_of_beats_at_specific_index
    jb = JungleBeat.new("deep dep dep deep")

    assert_equal "dep dep", jb.find(1, 2)
  end

end
