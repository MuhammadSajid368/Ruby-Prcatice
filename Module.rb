module Greeting
    def Greeting
        "Hello World!"
    end
end
class Person
    include Greeting
end
person = Person.new
puts person.Greeting

module WarmUp
end

puts WarmUp.class      # Module
puts Class.superclass   # Module
puts Module.superclass  # Object

module RubyMonk
    module Parser
      class TextParser
        def self.parse(str)
          str.upcase.split("")
        end
      end
    end
  end
  puts RubyMonk::Parser