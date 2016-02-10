require_relative 'node'

class LinkedList

  attr_accessor :head
  #singly-linked list you have a head = the start of the list
  def initialize
    @head = nil
  end

  def append(data)
    node = Node.new(data)
    if head_does_not_exist
      @head = node
    else
      tail = find_tail(@head)
      tail.next_node = node
    end
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node
  end


  private
  # private cannot be called or tested outside the current method is referenced in
  # use these as helper methods to tidy up methods

  def head_does_not_exist
    @head.nil?
  end

  def no_next_node_exists(current_position)
    current_position.next_node.nil?
  end

  def find_tail(current_position)
    until no_next_node_exists(current_position)
      #is your next node nil? Yes or no? loop through reset current position to next node
      current_position = current_position.next_node
    end

    current_position
  end

end
