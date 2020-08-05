require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
      return collection[i] if yield(collection[i])
    i += 1
  end
end

collection = (1..100).to_a
hello = my_find(collection) {|n| n % 3 == 0 && n % 5 == 0}
puts hello
