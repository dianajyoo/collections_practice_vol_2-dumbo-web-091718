def begins_with_r(array)
  value = true
  array.each do |element|
    arr = element.split("")
    if arr.first == 'r'
      value
    else
      value = false
    end
  end
  value
end

def contain_a(array)
  array.select do |element|
    arr = element.split("")
    arr.include?('a')
  end
end

def first_wa(array)
  array.find do |element|
    el_string = element.to_s
    arr = el_string.split("")
    arr[0] == 'w' && arr[1] == 'a'
  end
end

def remove_non_strings(array)
  array.reject do |element|
    element.class != String
  end
end

def count_elements(array)
  name_count = Hash.new(0)
  array.each_with_object(name_count) {|k, v| v[k[:name]] += 1}.collect {|name, count| {:name => name, :count => count}}
end

def merge_data(keys, data)
  keys.each do |hash1|
    data.each do |hash2|
      hash1.merge!(hash2[hash1[:first_name]])
    end
  end
end

def find_cool(array)
  cool_array = []

  array.each do |el|
    el.each do |name, temperature|
      if temperature == 'cool'
        cool_array << el
      end
    end
  end
  cool_array
end

def organize_schools(schools)
  hash = {}
  schools.each do |school_name, location_hash|
    hash.keys.include?(location_hash[:location])  ? hash[location_hash[:location]] << school_name : hash[location_hash[:location]] = [school_name]
  end
  hash
end
