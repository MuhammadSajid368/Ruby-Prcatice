def demonstrate_block(number)
    yield(number)
  end
  
  puts demonstrate_block(4) { |number| number + 1 }

