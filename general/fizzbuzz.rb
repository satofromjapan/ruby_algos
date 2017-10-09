# Write a program that prings the numbers from 1 to 100.
# For multiples of three print "Fizz" instead of the number
# and for multiples of five print "Buzz".
# For numbers which are multiples of both three and five
# print "FizzBuzz"

def FizzBuzz
  (0..100).each do |i|
    if i % 15 == 0
      puts "FizzBuzz"
    elsif i % 5 == 0
      puts "Buzz"
    elsif i % 3 == 0
      puts "Fizz"
    else
      puts i
    end
  end
end

puts FizzBuzz()
