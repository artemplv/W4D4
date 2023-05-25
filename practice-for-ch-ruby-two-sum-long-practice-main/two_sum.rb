def two_sum?(arr, target)
  arr[0..-2].each_with_index do |num, i|
    arr[i+1..-1].each do |num2|
      return true if num + num2 == target
    end
  end
  false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false