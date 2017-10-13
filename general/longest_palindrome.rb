# Find the longest palindromic substring

my_string = "lkljfvalkjeoijmadlkjfeal"

def longest_palindrome_recurr(str, size)
  str.length.times do |start|
    break if start + size > str.length

    reverse = str[start, size].reverse

    if str.include? reverse
      return reverse
    end
  end
  longest_palindrome_recurr(str, size - 1)
end


puts longest_palindrome_recurr(my_string, my_string.length)
