
puts (Array.instance_methods - Object.methods).count

puts [4, 8, 15, 16, 23, 42].count  # 6
puts [4, 8, 15, 16, 23, 42].size  # 6
puts [4, 8, 15, 16, 23, 42].length  # 6


puts [42, 8, 15, 16, 23, 42].count(42) # 2
puts ["Jacob", "Alexandra", "Mikhail", "Karl", "Dogen", "Jacob"].count("Jacob") # 2
 
puts [4, 8, 15, 16, 23, 42].count { |e| e%2 == 0 } # 4

puts [4, 8, 15, 16, 23, 42].index(15) # 2
puts [5, 8, 15, 16, 23, 42].index { |e| e % 2 == 0 } # 1

# The flatten method returns a one-dimensional array representation of the array.

p [4, 8, 15, 16, 23, 42].flatten
p [4, [8], [15], [16, [23, 42]]].flatten

# The zip method expects variable number of arguments and returns an array of arrays that contain corresponding elements from each array
p [4, 8, 15, 16, 23, 42].zip([42, 23, 16, 15, 8])

p [4, 8, 15, 16, 23, 42].slice(2) # 15
p [4, 8, 15, 16, 23, 42].slice(2..5) # 15,16,23,42

# join is useful for joining all the array elements into a string

puts [4, 8, 15, 16, 23, 42].join(", ")


class Queue
    def initialize(size)
      @capacity = size
      @store = Array.new(size)
      @head = 0
      @tail = 0
      @count = 0
    end
  
    def enqueue(element)
      raise "Queue is full" if full?
      @store[@tail] = element
      @tail = (@tail + 1) % @capacity
      @count += 1
    end
  
    def dequeue
      raise "Queue is empty" if empty?
      element = @store[@head]
      @store[@head] = nil
      @head = (@head + 1) % @capacity
      @count -= 1
      element
    end
  
    def size
      @count
    end
  
    private
  
    def full?
      @count == @capacity
    end
  
    def empty?
      @count == 0
    end
  end
  