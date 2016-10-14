require_relative 'node'

class LinkedList
  class OutOfBoundsError < StandardError; end

  def initialize(head = nil)
    @head = head
  end

  def insert_first(element)
    node = Node.new(element)
    node.insert_after(head)
    self.head = node
  end

  def remove_first
    self.head = head.next if head
  end

  def insert_last(element)
    node = Node.new(element)

    if head
      last_node.insert_after(node)
    else
      self.head = node
    end
  end

  def remove_last
    self.head = nil if size < 2
    node_at(size - 2).remove_after
  end

  def get(index)
    raise OutOfBoundsError if index < 0 || empty?

    if index == 0
      head.element
    else
      tail.get(index - 1)
    end
  end

  def set(index, value)
    node_at(index).element = value
  end

  def insert(index, value)
    new_node = Node.new(value)

    if index == 0
      new_node.insert_after(head)
      self.head = new_node
    else
      new_node.insert_after(node_at(index))
      node_at(index - 1).insert_after(new_node)
    end
  end

  def size
    return 0 if empty?

    tail.size + 1
  end

  protected

  def node_at(index)
    raise OutOfBoundsError if empty?
    return head if index == 0

    tail.node_at(index - 1)
  end

  private

  attr_accessor :head

  def empty?
    head.nil?
  end

  def tail
    raise OutOfBoundsError if empty?

    self.class.new(head.next)
  end

  def last_node
    node_at(size - 1)
  end
end
