class Planet
    @@planets_count =0
    def initialize(name)
        @name= name
        @@planets_count +=1
    end
    def self.planets_count
        @@planets_count
    end
end
Planet.new('earth')
Planet.new('sdjw')
p Planet.planets_count

# Class variables and inheritance
class ApplicationConfiguration
    @@configuration = {}
  
    def self.set(property, value)
      @@configuration[property] = value
    end
  
    def self.get(property)
      @@configuration[property]
    end
  end
  
  class ERPApplicationConfiguration < ApplicationConfiguration
  end
  
  class WebApplicationConfiguration < ApplicationConfiguration
  end
  
  ERPApplicationConfiguration.set("name", "ERP Application")
  WebApplicationConfiguration.set("name", "Web Application")
  
  p ERPApplicationConfiguration.get("name")
  p WebApplicationConfiguration.get("name")
  
  p ApplicationConfiguration.get("name")


  class Foo
    @foo_counter = 0
    def self.increment_counter
        @foo_counter +=1
    end
    def self.current_counter
        @foo_counter
    end
end
class Bar < Foo
    @foo_counter =100
end
p Foo.increment_counter
p Bar.increment_counter
p Foo.current_counter
p Bar.current_counter
