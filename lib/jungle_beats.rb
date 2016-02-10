require_relative '../lib/linked_list'

class JungleBeats < LinkedList
  attr_accessor :beats, :list

  def initialize(beats)
  @beats = beats
  split_beats = beats.split_beats
  first_beat = split_beats[0]
  @list = LinkedList.new(first_beat)
  split_beats[1..-1].each do |beat|
    list.append(beat)
  end

  def beats
    @beats
  end

  




end
