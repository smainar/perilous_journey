class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head
      @head.append(data)
    else
      @head = Node.new(data)
    end
  end

  def count
    @head.count
  end

  def to_string
    string = "The #{@head.surname} family"
    if @head
      @head.to_string(string)
    else
      string
    end
  end
end
