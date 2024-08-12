# # puts "Hello"

# # #  Ruby methods 
# # puts 1.next # Ans: 2

# # puts 1.method("next") # Ans: Integer

# # next_method_object = 1.method("next")
# # puts next_method_object.call # Ans: 2

# # # Reverse Sign

# # def reverse_sign(an_integer)
# #     return 0 - an_integer
# #   end
  
# #   puts reverse_sign(100)
# #   puts reverse_sign(-5)

# #  # Calling a Method
# #  def add(a, b)
# #     a + b
# #   end
  
# #   puts add(1, 2) # Ans: 3

# #   # passing three parameter
# #   def add(a, b, c)
# #     a + b + c
# #   end
  
# #   puts add(1, 2, 3)

# #   # by adding default value in parameters
# #   def multiply(a,b,c=2)
# #     a*b*c
# #   end
# #   puts multiply(3,4)

# #   def say_hello(name = "sajid")
# #     "Hello, #{name}."
# #   end
# #   puts say_hello

#   def multiply(*numbers)
#     numbers.inject(2) { |a , b | a*b}
#   end
#   def multiply_with_message(message,*numbers)
#     "#{message}: #{multiply(*numbers)}"
#   end
#  puts multiply_with_message("Multiply of numbers is",4,2) #Ans 16

#  ## Test Exercies

#  def add(*numbers)
#   numbers.inject(0) { |sum, number| sum + number }
# end

# def subtract(*numbers)
#   current_result = numbers.shift
#   numbers.inject(current_result) { |current_result, number| current_result - number }
# end

# def calculate(*arguments)
#   # If the last argument is a Hash, extract it
#   # Otherwise, create an empty Hash
#   options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
#   options[:add] = true if options.empty?
#   return add(*arguments) if options[:add]
#   return subtract(*arguments) if options[:subtract]
# end

# # Addition by Default
# result = calculate(1, 2, 3)
# puts "Result of default addition: #{result}" # Output: 6

# # Addition with Explicit Option
# result = calculate(1, 2, 3, add: true)
# puts "Result of explicit addition: #{result}" # Output: 6

# # Subtraction
# result = calculate(10, 3, 2, subtract: true)
# puts "Result of subtraction: #{result}" # Output: 5

# name = 'sajid'
#  resul = name.split("").rotate(3).join("")
#  puts resul

