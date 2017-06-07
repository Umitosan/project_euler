# Largest palindrome product
# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def pal_num?(num)
  if (num.to_s == num.to_s.reverse)
    return true
  else
    return false
  end
end

def pal_three
  found_pal = 0
  ceil = 999
  pal_arr = []
  (500..999).reverse_each do |num1|
    (500..999).reverse_each do |num2|

      if (pal_num?(num1 * num2) == true)
        found_pal = (num1 * num2)
        used_num1 = num1
        used_num2 = num2
        print "\n factor 1 was: #{used_num1}"
        print "\n factor 2 was: #{used_num2}"
        print "\n Found a palindrome number! => #{found_pal}"
        pal_arr.push(found_pal)
      end

    end
  end
  pal_arr.sort.reverse.join(" - ")
end

# ANSWER = 906609
