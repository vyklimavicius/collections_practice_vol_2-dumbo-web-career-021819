def begins_with_r(array)
  first = true
  new_array = Array.new
  new_array = array.select do |word|
    word.include?('r')
    end
    new_array.length < array.length ? first = false : first = true
    first
end

def contain_a(array)
  array.select do |word|
    word.include?('a')
  end 
end 

def first_wa(array)
  new_array = Array.new
  array = array.join(',')
  array = array.split(',')
  new_array = array.select do |word|
    word.include?('wa')
  end
  new_array[0]
end

def remove_non_strings(array)
    array.select! do |ele|
    if ele.class.to_s == 'String'
        ele
    end
  end
end

def count_elements(array)
array.uniq.collect do |ele|
  {:name => ele[:name], :count => array.count(ele)}
end
end

def merge_data(keys, data)
  new_array = Array.new
  keys.each_with_index do |key, index|
    key.each do |key2, value|
      data.each do |ele|
        ele.each do |key3, value2|
          if key3 == value
            new_array << value2.merge!(key)
          end
        end
      end
    end
  end
new_array
end

def find_cool(array)
  new_array = Array.new
  array.each do |ele|
    ele.select do |key,value|
      if key == :temperature
        if value == "cool"
          new_array << ele
        end
      end
    end
  end
  new_array
end

def organize_schools(hash)
  new_hash = Hash.new
  new_array = Array.new
  new_array2 = Array.new
  new_array3 = Array.new
  hash.each do |key,value|
    value.select do |key2,value2|
    if value2 == "NYC"
      new_array << key
      new_hash[value2] = new_array
    end
    if value2 == "SF"
      new_array2 << key
      new_hash[value2] = new_array2
    end
    if value2 == "Chicago"
      new_array3 << key
      new_hash[value2] = new_array3
    end
    end
  end
  new_hash
end








