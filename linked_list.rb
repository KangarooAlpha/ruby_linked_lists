require_relative("node.rb")

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new(value)
    return @head = node if @head.nil?  
    if @tail.nil?
      @head.tail = node
      return @tail = node
    end
    #@tail.tail = node
    #@tail = node
  end

  def prepend(val)
    node = Node.new(val, @head)
    @head = node
  end

  def size(node = @head, counter = 1) 
    return counter if node.tail.nil?
    size(node.tail, counter+1)
  end
end