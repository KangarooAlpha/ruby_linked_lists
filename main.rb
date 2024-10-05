require_relative("linked_list.rb")
require_relative("node.rb")

a = LinkedList.new()
a.append("apple")
a.append("banana")
a.prepend("cat")
p a.size()
p a.head
p a.tail
p a.at(3)
p a
a.pop
p a
p a.contains?("banana")