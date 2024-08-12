# Without Yeild

def calculation(a, b, operation)
    operation.call(a, b)
  end
  
  puts calculation(5, 6, lambda { |a, b| a + b }) # addition
  puts calculation(5, 6, lambda { |a, b| a - b }) # subtraction

  # By using yield same function
  def calculation(a, b)
    yield(a, b)
  end
  
  puts calculation(5, 6) { |a, b| a + b } # addition
  puts calculation(5, 6) { |a, b| a - b } # subtraction

  # Procs in Ruby

  short = proc { |a, b| a + b }
puts short.call(2, 3)

long = Proc.new { |a, b| a + b }
puts long.call(2, 3)
puts long.call(4,3)