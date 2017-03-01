
class String
  def self.is_palindrome?(string)
    original = string.downcase.gsub(/\W/, "")
    original == original.reverse
  end
end

puts String.is_palindrome?("Tacocat")
puts String.is_palindrome?("i am hungry")
