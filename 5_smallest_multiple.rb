#
# EULER PROBLEM 5
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

@found_mults = []
def divis?(num)
  @found_mults = []
  result = false
  count = 1
  for i in (2..20)
    if ((num % i) == 0)
      count += 1;
      @found_mults.push(i)
    end
  end
  if (count >= 20)
    result = true
  end
  return result
end


def check(top)
  found = []
  for j in (10000000..1000000000)
    if (divis?(j) == true)
      found = j
        print "\n Numbers found that are divisible by 1 through 20:\n #{@found_mults.join(",")}\n "
        return "FOUND THIS! -> #{j}\n"
    end
    if ((j % 100000) == 0)
      print "100000 ----------\n"
      print "----------\n"
    end
  end
end

# WOOT! (but this is brute force)
# Numbers found that are divisible by 1 through 20:
# 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
# => "FOUND THIS! -> 232792560\n"
#
#
# FIRST ANSWER =>  (WRONG!)
# Numbers found that are divisible by 1 through 20:
# 2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,20
# => "FOUND THIS! -> 12252240\n"

## work in progress
## clearly there is a better way
