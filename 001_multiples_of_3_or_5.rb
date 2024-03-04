# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6, and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# i = 0
# sum = 0

# while i < 1000 do
#   if i % 3 == 0
#     sum += i
#   elsif i % 5 == 0
#     sum += i
#   end
#   i += 1
# end

# p sum
# 233168 passed
# https://projecteuler.net/thread=1;page=9#last

# This one seemed simple, but still took an hour. I even needed a refresher on how to write a simple while loop 


# OO refactor

class SumOfMultiples
  attr_reader :first_num, :second_num

  def initialize(first_num, second_num)
    @first_num = first_num
    @second_num = second_num
    @i = 0
    @sum = 0
  end

  def find_sum
    while @i < 1000 do
      if @i % first_num == 0
        @sum += @i
      elsif @i % second_num == 0
        @sum += @i
      end
      @i += 1
    end

    p @sum
  end
end

SumOfMultiples.new(3, 5).find_sum
