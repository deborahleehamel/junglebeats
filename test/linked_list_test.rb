require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require '../lib/linked_list'

class LinkedListTest < Minitest::Test

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
    list.append("first second")

    assert_equal Node, list.head.class
    assert_equal "first", list.head.data

    assert_equal Node, list.head.next_node.class
    assert_equal "second", list.head.next_node.data
  end

  def test_list_can_add_three_nodes
    list = LinkedList.new
    list.append("first second third")

    assert_equal Node, list.head.class
    assert_equal "first", list.head.data

    assert_equal Node, list.head.next_node.class
    assert_equal "second", list.head.next_node.data

    assert_equal Node, list.head.next_node.next_node.class
    assert_equal "third", list.head.next_node.next_node.data
  end

  def test_it_can_prepend_new_data_in_first_position
    list = LinkedList.new
    list.append("first second")
    list.prepend("new_first new_second")

    assert_equal "new_second", list.head.data
  end


  def test_if_it_can_pop_one_node_from_one_node_list
    list = LinkedList.new
    list.append("first")
    list.pop

    assert_equal nil, list.head
  end

  def test_if_it_can_pop_one_node_from_two_node_list
    list = LinkedList.new
    list.append("first second")
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
    list1.append("first second third")

    assert_equal 3, list1.count
  end

  def test_it_can_insert_in_position_two
    list = LinkedList.new
    list.append("A B C")
    list.insert(2, "D")

    assert_equal "D", list.head.next_node.next_node.data
  end

  def test_insert_returns_whole_list
    list = LinkedList.new
    list.append("A B C")

    assert_equal "A B D C", list.insert(2, "D")
  end


  def test_all
    list = LinkedList.new
    list.append("bip boo bop beg")

    assert_equal "bip boo bop beg", list.all
  end

  def test_if_can_find
   list = LinkedList.new
   list.append("bev box bam")

   assert_equal "box bam", list.find(1, 2)
  end

  def test_if_specific_data_included_in_list
    list = LinkedList.new
    list.append("boo bop bep")

    assert_equal true, list.include?("bop")
  end

  def test_if_specific_data_not_included_in_list
    list  = LinkedList.new
    list.append("boo bop bep")

    assert_equal false, list.include?("biz")
  end

end
