# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
require 'prime'

eleven_through_twenty = (11..20).to_a
smallest_multiple_one_through_ten = 2520

product = smallest_multiple_one_through_ten

eleven_through_twenty.each do |num|
  if Prime.prime?(num)
    product = product * num
  end
end

p product

# 116396280 is incorrect. Need to rethink this one
