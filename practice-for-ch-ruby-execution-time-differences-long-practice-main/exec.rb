



# def my_min(list)

#     list.each do |ele|
#         if list.all? {|second_ele| ele <= second_ele}
#             return ele
#         end 
#     end 
# end 


# def my_min(list)
#     min = list.first 
#     (list[1..-1]).each do |ele|
#         if ele < min
#             min = ele  
#         end 
#     end 
# end 


# def largest_contiguous_subsum(list)
#     res = 0 
#     arr = []
#     list.each_with_index do |first,idx|
#         sub_arr = []
#         (list[idx..-1]).each do |sec|
#             sub_arr << sec
#             arr << sub_arr.dup
#         end 
#     end 
#     arr.each do |i|
#         sum = i.sum
#         if sum > res 
#             res = sum 
#         end 
#     end 
#     res 
# end 



# list = [5, 3, -7]
# p largest_contiguous_subsum(list)

def largest_contiguous_subsum(list)
    left_pointer = 0
    right_pointer = 0
    max = -1.0 / 0.0
    current_sum = 0

    while left_pointer < list.length
        current_sum += list[right_pointer]
        # current_sum = list[left_pointer..right_pointer].sum
        if current_sum > max
            max = current_sum
            right_pointer += 1
        else
            left_pointer = right_pointer + 1
            right_pointer += 1
            current_sum = 0
        end
    end

    max
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])


