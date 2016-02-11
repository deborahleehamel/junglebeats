require_relative '../lib/linked_list'

class JungleBeat < LinkedList
  attr_accessor :beats, :list

  def initialize(beats)
    @beats = beats.split
    build_list
  end

  def build_list
    @head = Node.new(@beats[0])
    @beats[1..-1].each do |beat|
      append(beat)
    end
  end

  def play
      #iterate through each node and save the data to a string beats = ""
    `say -r 100 -v Boing "#{all}"`
    count
  end






end
