require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    node = head
    length = 0

    while node
      node = node.next_node
      length += 1
    end

    return nil if n < 1 || n > length
    get_node = head
    i = 1

    while i < length - n + 1
      get_node = get_node.next_node
      i += 1
    end
    get_node.value
  end

end
