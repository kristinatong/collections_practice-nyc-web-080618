def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort{ |x,y| y <=> x }
end

def sort_array_char_count(array)
  array.sort{ |x,y| x.length <=> y.length}
end

def swap_elements(array)
  place_holder1 = array[1]
  place_holder2 = array[2]
  array[1] = place_holder2
  array[2] = place_holder1
  array
end

def swap_elements_from_to(array,index,destination_index)
  place_holder1 = array[index]
  place_holder2 = array[destination_index]
  array[index] = place_holder2
  array[destination_index] = place_holder1
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  new_array = []
  array.each do |string|
    string[2] = "$"
    new_array << string
  end
  new_array
end

def find_a(array)
  array.select do |string|
    string.start_with?("a")
  end
end

def sum_array(array)
  array.inject do |sum,n|
    sum + n
  end
end

def add_s(array)
  array.each_with_index.collect do |element,index|
    if index != 1
      element << "s"
    else
      element
    end
  end
end
