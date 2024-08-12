# puts "A String".is_a?(String) # true
# puts 1.is_a?(String)          # false

# puts 4.0.class.superclass #Numerice
# puts Numeric.superclass #Object
# puts Object.superclass # BasicObject

# puts float_methods = Float.instance_methods(false).count
#  puts numeric_methods = Numeric.instance_methods(false).count
#  puts object_methods= Object.instance_methods(false).count

# total_methods = float_methods + numeric_methods + object_methods
# puts total_methods

# puts (Float.instance_methods - Object.instance_methods).count

class Animal
    def move
        "i can move"
    end
end
class Bird < Animal
    def move
        super + " by flying"
    end
end
puts Animal.new.move
puts Bird.new.move



class Animal
    def move
      "I can move"
    end
  end
  
  class Bird < Animal
    def move
      super + " by flying"
    end
  end
  
  # Your code here
  class Human < Animal
    def move
      super + " by walking"
    end
  end
  
  class Penguin < Bird
    def move
      "I can move by swimming"
    end
  end
  puts Animal.new.move
  puts Bird.new.move
  puts Human.new.move
  puts Penguin.new.move