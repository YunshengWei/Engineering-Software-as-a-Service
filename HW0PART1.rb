def sum(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  return sum
end

def max_2_sum(array)
  sum = 0
  array = array.sort().reverse()
  count = 0
  array.each do |num|
    sum += num
    count += 1
    break if count == 2
  end
  return sum
end

def sum_to_n?(array, n)
  return false if array.length < 2
  # Just use brute force
  for i in 0...array.length do
    for j in (i + 1)...array.length do
      return true if array[i] + array[j] == n
    end
  end
  return false
end

raise 'sum([]) != 0' unless sum([]) == 0
raise 'sum([1, 2, 3]) != 6' unless sum([1, 2, 3]) == 6
raise 'max_2_sum([]) != 0' unless max_2_sum([]) == 0
raise 'max_2_sum([1]) != 1' unless max_2_sum([1]) == 1
raise 'max_2_sum([1, 2]) != 3' unless max_2_sum([1, 2]) == 3
raise 'max_2_sum([3, 1, 3, 2]) != 6' unless max_2_sum([3, 1, 3, 2]) == 6
raise 'sum_to_n?([], 0) != false' unless sum_to_n?([], 0) == false
raise 'sum_to_n?([1], 1) != false' unless sum_to_n?([1], 1) == false
raise 'sum_to_n?([1, 2, 5], 6) != true' unless sum_to_n?([1, 2, 5], 6) == true
