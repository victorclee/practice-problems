# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

smallest_multiple_one_through_ten = 2520
result = 2520

until (11..20).all? { |num| result % num == 0 }

  result += smallest_multiple_one_through_ten
end

# 232792560 passed
# Felt like brute force. Is there a better way to do this?
