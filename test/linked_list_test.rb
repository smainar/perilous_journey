require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'
require 'pry'

class LinkedListTest < Minitest::Test
  def setup
    @list = LinkedList.new
  end

  def test_it_exists
    assert_instance_of LinkedList, @list
  end

  def test_its_head_begins_nil
    assert_nil @list.head
  end

  def test_it_can_append_to_node
    @list.append("West")

    assert_instance_of Node, @list.head

    assert_equal "West", @list.head.surname

    assert_nil @list.head.next_node
  end

  def test_it_can_count_number_of_nodes
    @list.append("West")
    assert_equal 1, @list.count

    @list.append("Hardy")
    assert_equal 2, @list.count
  end

  def test_it_can_generate_a_string_of_families_in_the_list
    @list.append("West")
    assert_equal "The West family", @list.to_string

    @list.append("Hardy")
    assert_equal "The West family, followed by the Hardy family", @list.to_string
  end
end
