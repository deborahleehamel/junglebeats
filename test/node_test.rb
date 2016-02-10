require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/node'

class NodeTest < Minitest::Test

  def test_it_can_create_a_new_node
    node = Node.new
    assert Node, node
  end

  def test_that_data_is_nil_for_new_node
    node = Node.new
    assert_equal nil, node.data
    assert_equal nil, node.next_node
  end

  def test_that_next_node_data_is_nil_for_new_node
    node = Node.new
    assert_equal nil, node.data
    assert_equal nil, node.next_node
  end

  def test_node_can_take_in_data
    node = Node.new("pizza")
    assert_equal "pizza", node.data
  end
  #just testing node and node attributes

  def test_node_can_take_in_data_and_next_node_data
    node = Node.new("pizza", "link" )
    assert_equal "pizza", node.data
    assert_equal "link", node.next_node
  end

end
