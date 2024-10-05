require_relative("linked_list.rb")
require_relative("node.rb")

a = LinkedList.new()
a.append("apple")
a.append("banana")
a.prepend("cat")
p a.size()
p a