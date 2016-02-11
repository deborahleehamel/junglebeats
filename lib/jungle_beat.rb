require_relative '../lib/linked_list'

class JungleBeat < LinkedList
  attr_accessor :beats, :list, :rate, :voice

  def initialize(beats)
    @beats = beats.split
    build_list
    reset_rate
    reset_voice
  end

  def build_list
    @head = Node.new(@beats[0])
    @beats[1..-1].each do |beat|
      append(beat)
    end
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
  end

  def play
    `say -r #{rate} -v #{voice} "#{all}"`
    count
  end

end
