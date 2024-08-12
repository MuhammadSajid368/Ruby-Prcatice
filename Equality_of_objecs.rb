# puts [1,4] == [1,4]
# puts "a" == "xyz"

# class Item
#     def initialize(item_name, qty)
#         @item_name = item_name
#         @qty = qty
#     end
# end

# puts Item.new("abcd",1)  == Item.new("abcd",1) #false

class Item
    attr_reader :item_name, :qty
    def initialize(item_name, qty)
        @item_name = item_name
        @qty = qty
    end
    def to_s
        "Item (#{@item_name}, #{@qty})"
    end
    def ==(other_item)
        self.item_name == other_item.item_name && self.qty == other_item.qty
    end
end

items = [Item.new("abcd", 1), Item.new("abcd", 1), Item.new("abcd", 1)]
p items.uniq

# print hash values of different objects

p 1.hash
p "Hello".hash
p "Hello!".hash
p [1,2,3].hash
p({:x => 1, :y => 2}.hash)

class Item
  def initialize(name)
    @name = name
  end
end

p Item.new("ruby").hash
    




