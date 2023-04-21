require "benchmark"

# The solution with the most "best practises" votes.
def top_solution(num)
  num.to_s
end

# The solution that dmccraw gave.
NUMS = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

def dmccraw(num)

  string = ""
  sign = ""
  if num < 0
    num *= -1
    sign = "-"
  end

  while(num > 10)
    string += NUMS[num % 10]
    num /= 10
  end
  string += NUMS[num % 10]

  sign + string.reverse
end

# The 5 fixed tests.
to_test = [
  67,
  79585,
  79585,
  3,
  -1,
]

# This kata also runs 100 random numbers through your code.
100.times do
	to_test.push(rand(-1_000_000..1_000_000))
end

# Now we put both to the test!
puts "top_solution"
puts Benchmark.measure {
  to_test.each do |num|
  	top_solution(num)
  end
}

puts "dmccraw"
puts Benchmark.measure {
  to_test.each do |num|
    top_solution(num)
  end
}
