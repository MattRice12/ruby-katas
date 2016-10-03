# // Write a JavaScript function that generates all combinations of a string.
# // Example string : 'dog'
# // Expected Output : d,do,dog,o,og,g

class StringCombo
  def run(string)
    arr = string.split('')
    new_arr = []
    final_arr = []
    arr.each_with_index do |val, index|
      n = index
      while n < arr.length
        new_arr.push(arr[n])
        final_arr.push(new_arr.join(''))
        n += 1
      end
      new_arr = []
    end
    final_arr.join(', ')
  end
end

class Algorithm
  def count(string)
    result = 0
    n = result
    while n <= string.length
      result += n
      n += 1
    end
    result
  end
end

puts
puts StringCombo.new.run("gigantic")
puts StringCombo.new.run("gigantic").split(', ').length
puts Algorithm.new.count("gigantic")
puts 
