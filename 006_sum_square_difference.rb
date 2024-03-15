# The sum of the squares of the first ten natural numbers is,
# $$1^2 + 2^2 + ... + 10^2 = 385.$$
# The square of the sum of the first ten natural numbers is,
# $$(1 + 2 + ... + 10)^2 = 55^2 = 3025.$$
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is $3025 - 385 = 2640$.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

first_one_hundred = (1..100).to_a

sum_of_squares = 0

first_one_hundred.each do |num|
  sum_of_squares += num**2
end

square_of_the_sum = first_one_hundred.sum**2

p square_of_the_sum - sum_of_squares

# passed
# 25164150
# Congratulations, the answer you gave to problem 6 is correct.

# You are the 509823rd person to have solved this problem.

# You have earned 1 new award:

# Baby Steps: Solve three problems
