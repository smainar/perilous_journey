class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
  end

  def count
    @head.count
  end

  def to_string
    "The #{@head.surname} family"
  end
end
