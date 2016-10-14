class Node
  attr_accessor :element
  attr_reader :next

  def initialize(element)
    @element = element
    @next = nil
  end

  def insert_after(node)
    self.next = node
  end

  def remove_after
    self.next = nil
  end

  private

  attr_writer :next
end
