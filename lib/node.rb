class Node
  attr_accessor :data, :next_node

# nodes hold data
# node default value set to nil
# each node holds a single element of data
# and a link to next node in the list
# next_node default value set to nil

  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = next_node
  end

end
