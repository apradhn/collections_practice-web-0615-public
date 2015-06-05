require_relative '../collections_practice.rb'

puts sort_array_asc([25, 7, 1]).inspect

puts sort_array_asc([25, 7, 14]).inspect

puts sort_array_asc([13, 53, 78, 2]).inspect

puts "swap_elements_from_to"
puts swap_elements_from_to(["a", "b", "c"],0,2).inspect #=> ["c", "b", "a"]
puts swap_elements_from_to(["a", "b", "c"],2,1).inspect #=> ["a", "c", "b"]