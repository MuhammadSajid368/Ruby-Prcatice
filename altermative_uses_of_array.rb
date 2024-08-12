# ["xkcd", 9, Object.new, ["a", "clean", "array"], {:a => "hash"}].each do |e|
#     puts e.class
#   end



  CHARACTERS = ["Joey Jeremiah", "Snake Simpson", "Wheels", "Spike Nelson", "Arthur Kobalewscuy", "Caitlin Ryan", "Shane McKay", "Rick Munro", "Stephanie Kaye"]

def degrassi_couples
  all = CHARACTERS.product(CHARACTERS)
  all.reject { |c| c.first == c.last }
end

puts degrassi_couples