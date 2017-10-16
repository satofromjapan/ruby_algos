# Determine whether the givin string is a palindrome or not. If the string is a palindrome, return true, if not, return false.

# using built-in methods
def is_palindrome(str)
  fixed_str = str.downcase.gsub(/[^a-z0-9]/, '')
  reversed = fixed_str.reverse
  if reversed == fixed_str
    return true
  end
  return false
end


my_string = "A man, a plan, a canal: Panama"

puts is_palindrome(my_string)
