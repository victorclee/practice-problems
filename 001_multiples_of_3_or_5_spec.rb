require "rspec"
require_relative "001_multiples_of_3_or_5"

# What is require and require_relative
# https://medium.com/@ellishim/understanding-require-vs-require-relative-vs-require-all-80e3b26d89e6

RSpec.describe SumOfMultiples do
  subject { described_class.new }

  describe "#find_sum_of_multiples" do
    # missed the it block on the first run
    it "should return the correct sum" do
      expect(subject.find_sum_of_multiples(3, 5, 1000)).to eq(233168)
    end
    # eq checks for the value of the object
    # difference between eq, eql, equal in rspec
    # https://stackoverflow.com/questions/32926817/rspec-eq-vs-eql-in-expect-tests
    # https://blog.f5.works/rails-the-difference-of-be-and-eq-statement/
  end
end
