def two_sum?(arr, target)
  arr[0..-2].each_with_index do |num, i|
    arr[i+1..-1].each do |num2|
      return true if num + num2 == target
    end
  end
  false
end

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false


def two_sum_2?(arr, target)
  arr.sort
  left = 0
  right = arr.length - 1

  until left == right
    second_target = arr[left] + arr[right]
    
    if second_target == target
      return true
    end

    if second_target < target
      left += 1
    else
      right -= 1
    end
  end

  return false
end

def two_sum_3?(arr,target)
  hash = Hash.new
  arr.each do |i| 
    if hash[i] 
      return true
    end  
    hash[target - i] = true  
  end 
 return false
end




arr = [0, 1, 5, 7]
p two_sum_3?(arr, 6) # => should be true
p two_sum_3?(arr, 10) # => should be false

