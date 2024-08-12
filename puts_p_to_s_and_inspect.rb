# puts generally prints the result of applying to_s on an object while p prints the result of inspecting the object.

class Item
    def inspect
      "Result of inspect"
    end
  end
  
  puts Item.new
  puts Item.new.to_s
  p Item.new
  
  # inspect vs to_s
  class Item
    def initialize(item_name, qty)
      @item_name = item_name
      @qty = qty
    end
  end
  
  item = Item.new("a",1)
  
  puts item
  p item
  