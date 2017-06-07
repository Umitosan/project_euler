# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?


BIGNUM = 600851475143

def prime_factors(user_number)
  final_array = []
  working_floor = 2
  working_ceil = user_number
  working_big = user_number


  (working_floor...working_ceil).each do |num|
    if ((working_big % num) == 0)
      final_array.push(num)
      print "-- found divisor: #{num}\n"
      if (((working_big / num) == 0) || ((working_big / num) == 1))  ## this test to exit loop needs help!!
        return final_array
      end
      working_big = (working_big / num)
      working_ceil = working_big
    end
  end

  return final_array
end

prime_factors(BIGNUM)

# PRIME FACTORS OF 600851475143?
# => 71, 839, 1471, 6857
