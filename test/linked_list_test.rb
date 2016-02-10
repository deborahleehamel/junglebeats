require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/linked_list'

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

  def test_it_can_prepend_new_data_in_first_position
    list = LinkedList.new
    list.append("first")
    list.append("second")
    list.prepend("new_first")

    assert_equal "new_first", list.head.data
  end


  def test_if_it_can_pop_one_node_from_one_node_list
    list = LinkedList.new
    list.append("first")
    list.pop

    assert_equal nil, list.head
  end

  def test_if_it_can_pop_one_node_from_two_node_list
    list = LinkedList.new
    list.append("first")
    list.append("second")
    list.pop

    assert_equal nil, list.head.next_node
  end

  def test_if_count_is_0_on_empty_list
    list1 = LinkedList.new

    assert_equal 0, list1.count
  end

  def test_if_can_count_nodes_in_list
    list1 = LinkedList.new
    list1.append("first")

    assert_equal 1, list1.count
  end

  def test_if_can_count_nodes_in_list
    list1 = LinkedList.new
    list1.append("first")
    list1.append("second")

    assert_equal 2, list1.count
  end



end
