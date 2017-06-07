# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

class Fixnum
  define_method(:pingpong) do
    final_array = []
    (1..self).each do |int|
      if (((int % 3) == 0) || ((int % 5) == 0))
        final_array.push(int)
      end
    end
    final_array
  end
end

class Array
  define_method(:sum) do
    sum = 0
     self.each do |i|
      sum += i
    end
    sum
  end
end

# 1000.pingpong.sum.to_i
# => 234168
