class Node

  attr_accessor :value, :other

  def initialize(element)
    @value = element
    @other = nil
  end

  # this node will point to other_node
  def insert_after(other_node)
    @other = other_node
  end

  # remove the connection pointing this node to the other node
  def remove_after
    @other = nil
  end

end
