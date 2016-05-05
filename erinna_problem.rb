# you have a range of 1..n with numbers missing. Find the largest or smallest one?
# don't remember it completely

numbers = [1, 2, 4, 9, 6, 7]


def solve_it(numbers)
  sum = numbers.reduce(:+)
  true_sum = (numbers.min..numbers.max).to_a.reduce(:+)

  diff = true_sum - sum

  #??????????????????????????


end
