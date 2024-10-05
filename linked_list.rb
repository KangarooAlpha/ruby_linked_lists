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

  def head
    @head.head
  end

  def tail
    @tail.head
  end

  def at(index)
    if index > size - 1
      return "Does not exist."
    end
    for a in 0..index do
      if a == index
        return @head.head
      end
      @head = @head.tail
    end
  end

  def pop
    @tail.head = nil
  end

  def contains?(val)
    until @head.tail.nil?
      return true if @head.head == val
      @head = @head.tail
    end
    return false
  end
end