def begins_with_r(array)
  first = true
  new_array = Array.new
  new_array = array.select do |word|
    word.include?('r')
    end
    new_array.length < array.length ? first = false : first = true
    first
end
#
def contain_a(array)
  array.select do |word|
    word.include?('a')
  end
end
#
def first_wa(array)
  new_array = Array.new
  array = array.join(',')
  array = array.split(',')
  new_array = array.select do |word|
    word.include?('wa')
  end
  new_array[0]
end
#
def remove_non_strings(array)
    array.select! do |ele|
    if ele.class.to_s == 'String'
        ele
    end
  end
end
#
def count_elements(array)
array.uniq.collect do |ele|
  {:name => ele[:name], :count => array.count(ele)}
end
end

# keys =
# [
#         {
#             :first_name => "blake",
#                  :motto => "Have a koala-ty day!"
#         },
#         {
#             :first_name => "ashley",
#             :motto => "I dub thee, 'Lady Brett Ashley'."
#         }
# ]
#
# data =   [
#            {
#              "blake" => {
#                 :awesomeness => 10,
#                      :height => "74",
#                   :last_name => "johnson"
#             },
#             "ashley" => {
#                 :awesomeness => 9,
#                      :height => 60,
#                   :last_name => "dubs"
#             }
#         }
#     ]

# merge =     [
#         {
#              :first_name => "blake",
#             :awesomeness => 10,
#                  :height => "74",
#               :last_name => "johnson",
#                   :motto => "Have a koala-ty day!"
#
#         },
#         {
#              :first_name => "ashley",
#             :awesomeness => 9,
#                  :height => 60,
#               :last_name => "dubs",
#                   :motto => "I dub thee, 'Lady Brett Ashley'."
#
#         }
#     ]

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

# cool =   [
#           {
#                  :name => "ashley",
#           :temperature => "sort of cool"
#       },
#           {
#                  :name => "blake",
#           :temperature => "cool"
#       }
#   ]

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

schools =   {
    "flatiron school bk" => {
      :location => "NYC"
    },
    "flatiron school" => {
      :location => "NYC"
    },
    "dev boot camp" => {
      :location => "SF"
    },
    "dev boot camp chicago" => {
      :location => "Chicago"
    },
    "general assembly" => {
      :location => "NYC"
    },
    "Hack Reactor" => {
      :location => "SF"
    }
  }

  # let(:organized_schools) {
  #   {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
  #    "SF"=>["dev boot camp", "Hack Reactor"],
  #    "Chicago"=>["dev boot camp chicago"]}
  # }
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

p organize_schools(schools)
