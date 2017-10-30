# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

s = 1000
multiples = 0
index = 1

while index < s
  if index%3 == 0 || index%5 == 0
    multiples += index
  end

  index += 1
end

puts multiples
