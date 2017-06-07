# Sum square difference
# Problem 6
# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square
  sum = 0
  squares_arr = []
  for i in (1..100) do
    squares_arr.push(i**2)
  end
  squares_arr.each do |square|
    sum += square
  end
  return sum
end

def square_sum
  total = 0
  sum_arr = []
  for j in (1..100) do
    sum_arr.push(j)
  end
  sum_arr.each do |square|
    total += square
  end
  total = (total ** 2)
  return total
end

print " difference = #{square_sum - sum_square} "

# ANSWER?
# => 25164150
