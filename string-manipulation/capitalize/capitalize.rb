class Capitalize
  def cap(string)
    str_arr = string.split(' ')
    new_str = str_arr.map { |word| word.capitalize }
    new_str.join(' ')
  end
end

puts Capitalize.new.cap("breath in the air")
puts Capitalize.new.cap("hello fellow youths")
puts Capitalize.new.cap("music band")
puts Capitalize.new.cap("wHAT iS tHE dEAL?!")
