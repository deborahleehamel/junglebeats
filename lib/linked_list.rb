require_relative 'node'

class LinkedList

  attr_accessor :head
  #singly-linked list you have a head = the start of the list
  def initialize
    @head = nil
  end

  def empty?
    @head == nil
  end

  def append(data)
    nodes = data.split
    nodes.each do |d|
      node = Node.new(d)
      if head_does_not_exist
        @head = node
      else
        tail = find_tail(@head)
        tail.next_node = node
      end
    end
    nodes.count
  end

  def prepend(data)
    nodes = data.split
    nodes.each do |d|
      new_node = Node.new(d)
      new_node.next_node = @head
      @head = new_node
    end
    nodes.count
  end

  def pop(num = 1)
    popped = []
    until num == 0 do
      current_node = @head

      if current_node.tail?
        popped << current_node
        @head = nil
      else

        end
        popped << previous_node.next_node
        previous_node.next_node = nil
      end
      num -= 1
    end
    popped.map(&:data).reverse.join(" ")
  end

  def count
    @count = 0
    unless @head.nil?
      @count += 1
      get_next_node(self.head)
    end
    @count
  end

  #after counting the head, count all next nodes
  #check back about recursive if time

  def get_next_node(node)
    if node && node.next_node
      temp_node = node.next_node
      @count += 1
      get_next_node(temp_node)
    end
  end

  def insert(position, data)
    if position > count
      "List is not that long!"
    elsif position == 0
      prepend(data)
    else
      new_node = Node.new(data)
      before = @head
      (position - 1).times do
        before = before.next_node
      end
      after = before.next_node
      before.next_node = new_node
      new_node.next_node = after
    end
    all
    #this needs to return "all" data of the list
  end

  def all
    all = ""
    current = @head

    until current == nil
      all << current.data + " "
      current = current.next_node
    end

    all.strip
  end

  def find(index, amount)
    collection = []
    current = @head

    until current == nil
      collection << current.data.split
      current = current.next_node
    end
    collection.flatten.slice(index, amount).join(" ")
  end





private
  # private cannot be called or tested outside the current method is referenced in
  # use these as helper methods to tidy up methods

  def head_does_not_exist
    @head.nil?
  end

  def no_next_node_exists(current_node)
    current_node.next_node.nil?
  end

  def find_tail(current_node)
    until no_next_node_exists(current_node)
      #is your next node nil? Yes or no? loop through reset current position to next node
      current_node = current_node.next_node
    end

    current_node
  end

end
