require 'pry'

def begins_with_r(array)
  array.all? do |string|
    string.slice(0) == "r"
  end
end

def contain_a (array)
  array.select {|string| ((string.chars).any? {|letter| letter =="a"})}
end
    #return all elements that contain the letter 'a' (FAILED - 1)

def first_wa (array)
  array.find {|string| string.slice(0,2)=="wa"}
end

def remove_non_strings(array)
  array.select {|element| element.class== String}
end

def count_elements(array)
  hasharray= []
  array.each do |hash|
    hash.each do |key, element|
      hasharray.any? {|item| item[key]==element}
      item[element]+=1
      binding.pry
    else
      hasharray.push(hash.merge!(count: 1))
    end
  end
end
