require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

#test_can_find_the tail
  def test_initializes_with_head_equal_to_nil
    list = LinkedList.new

    assert_nil list.head
  end

  def test_list_can_add_a_head_node
    list = LinkedList.new
    list.append("first")

    assert_equal Node, list.head.class
    assert_equal "first", list.head.data
  end

  def test_list_can_add_two_nodes
    list = LinkedList.new
    list.append("first")
    list.append("second")

    assert_equal Node, list.head.class
    assert_equal "first", list.head.data

    assert_equal Node, list.head.next_node.class
    assert_equal "second", list.head.next_node.data
  end

  def test_list_can_add_three_nodes
    list = LinkedList.new
    list.append("first")
    list.append("second")
    list.append("third")

    assert_equal Node, list.head.class
    assert_equal "first", list.head.data

    assert_equal Node, list.head.next_node.class
    assert_equal "second", list.head.next_node.data

    assert_equal Node, list.head.next_node.next_node.class
    assert_equal "third", list.head.next_node.next_node.data
  end




  def test_can_find_the_tail
    skip
    list = LinkedList.new
    list.append("pizza")
    list.append("calzone")

    assert_equal true, list.tail?
  end

end
