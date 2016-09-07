
class String
  def is_palindrome?(string)
    original = string.downcase.gsub(/\W/, "")
    original == original.reverse
  end
end

puts String.new.is_palindrome?("Tacocat")
