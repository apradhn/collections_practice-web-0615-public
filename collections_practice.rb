def sort_array_asc(array)
  new_array = []
  array.each.with_index do |num, i| 
    if new_array.empty?
      new_array << num
    else
      if num > new_array.first
        new_array.insert(1, num)
      else
        new_array.unshift(num)
      end
    end
  end
  new_array
end

def sort_array_desc(array)
  new_array = []
  array.each.with_index do |num, i| 
    if new_array.empty?
      new_array << num
    else
      if num > new_array.first
        new_array.insert(1, num)
      else
        new_array.unshift(num)
      end
    end
  end
  new_array.reverse
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def swap_elements_from_to(array, index, destination_index)
  array[index], array[destination_index] = array[destination_index], array[index]
  array
end

def reverse_array(array)
  array.collect.with_index { |name, i| array[-(i+1)] }
end

def kesha_maker(array)
  array.collect { |name|  name.slice(0,2) + "$" + name.slice(3, name.length-3) }
end

def greater_and_less_than_10(array)
  array.each_with_object({"greater_than_10" => [], "less_than_10" => []}) { |num, hash| num > 10 ? hash["greater_than_10"] << num : hash["less_than_10"] << num}  
end

def find_winners(hash)
  hash.select {|key, value| value == "winner"}.keys
end

def find_a(array)
  array.select{ |string| string.start_with?("a") }
end

def sum_array(array)
  array.inject {|sum, num| sum + num }
end

def add_s(array)
  array.collect.with_index {|string, i| i != 1 ? string + "s" : string }
end

def count_words(string)
  words = string.split(" ").sort

  histogram = words.uniq.each_with_object({}) { |word, hash| hash[word] = 1 }

  words.each.with_index do |word, i|  
    if i > 0
      if word == words[i-1]
        histogram[word] += 1
      end
    end
  end

  histogram
end

def organize_songs_by_artist(array)
  array.each_with_object(Hash.new { |hash, key| hash[key] = [] }) do |string, hash|
    artist = string.split(" - ")[0]
    song = string.split(" - ")[1]
    hash[artist] << song    
  end  
end