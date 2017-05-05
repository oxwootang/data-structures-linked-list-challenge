require_relative 'node'

class LinkedList

  attr_reader :size
  attr_accessor :first

  def initialize
    @first = nil
    @size = 0
  end

  def length
    @size
  end

  def insert_first(element)
    if @first
      new_first = Node.new(element)
      new_first.insert_after(@first)
      @first = new_first
    else
      @first = Node.new(element)
    end
    @size += 1
  end

  def remove_first
    if @first
      @first = @first.other
      @size -= 1
    else
      nil
    end
  end

  def insert_last(element)
  end

  def remove_last
  end

end
