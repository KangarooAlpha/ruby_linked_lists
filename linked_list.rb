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
    @tail.tail = node
    @tail = node
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
    return nil if @tail.tail == nil
  end

  def contains?(val, node = @head)
    unless node.tail.nil?
      return true if node.head == val
      contains?(val, node.tail)
    else
      return false
    end
  end

  def find(val, node = @head ,ind = 0)
    unless node.tail.nil?
      return ind if node.head == val
      ind +=1
      @head = @head.tail
    else
      return nil
    end
  end

  def to_s(node = @head, str = "")
    return str += "( #{node.head} ) -> nil" if node.tail.nil?
    str += "( #{node.head} ) -> "
    to_s(node.tail, str)
  end
end