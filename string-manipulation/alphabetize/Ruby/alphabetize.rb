class Alphabetize
  def alpha(string)
    str_arr = string.gsub(' ', '').split('')
    str_arr.sort.join
  end
end

puts Alphabetize.new.alpha("wee let's go! woohoo")
puts Alphabetize.new.alpha("gfedcba")
