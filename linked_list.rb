require_relative("node.rb")

class LinkedList
  def initialize
    @head = nil
    @tail = nil
    @node = Node.new()
  end

  def append(value)
    until @node.tail.nil?
      @node = @node.tail
    end
    @node.tail = Node.new(value)
  end
end