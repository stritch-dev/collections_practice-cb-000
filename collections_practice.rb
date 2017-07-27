def sort_array_asc array
  array.sort
end

def sort_array_desc array
  array.sort.reverse
end

def sort_array_char_count array
  array.sort_by do |word|
    word.length
  end
end

def swap_elements array
  temp = array[1]
  array[1] = array[2]
  array[2] = temp
  array
end

def reverse_array array
  array.reverse
end

def kesha_maker array
  result = []
  array.each do |word|
    result << word[0..1] + "$" + word[3..word.length]
  end
  result
end

def find_a array
  array.select do |word|
    word.start_with?('a')
  end
end

# help from https://apidock.com/ruby/Enumerable/inject
def sum_array array
  # array.reduce(:+)
  array.inject do |sum, n| sum + n end
end

def add_s array
  array.each_with_index do |word, index|
    array[index] = array[index] + "s" unless index == 1
  end
end
