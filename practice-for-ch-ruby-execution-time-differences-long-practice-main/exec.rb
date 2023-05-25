



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


def largest_contiguous_subsum(list)
    res = 0 
    arr = []
    list.each_with_index do |first,idx|
        sub_arr = []
        (list[idx..-1]).each do |sec|
            sub_arr << sec
            arr << sub_arr.dup
        end 
    end 
    arr.each do |i|
        sum = i.sum
        if sum > res 
            res = sum 
        end 
    end 
    res 
end 



list = [5, 3, -7]
p largest_contiguous_subsum(list)



