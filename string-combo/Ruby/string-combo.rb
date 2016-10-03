# // Write a JavaScript function that generates all combinations of a string.
# // Example string : 'dog'
# // Expected Output : d,do,dog,o,og,g

class StringCombo

  def run(string)
    arr = string.split('')
    new_arr = []
    final_arr = []
    n = 0
    while n < arr.length
      new_arr.push(arr[n])
      final_arr.push(new_arr.join(''))
      n += 1
    end
    final_arr.join(', ')
  end
end
