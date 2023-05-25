
def windowed_max_range(arr,size)
    current_max_range = -999999999
    left = 0
    right = size - 1 

    while right < arr.length
        max =  arr[left..right].max
        min = arr[left..right].min
        res = max - min
        if res > current_max_range 
            current_max_range = res 
        end 
        right += 1 
        left += 1 
    end 
    return current_max_range
end 


class MyQueue

    def initialize
      @store = []
    end    
    def peek
        @store.first
    end 

    def enqueue(ele)
        @store.push(ele) 
    end 

    def dequeue
        @store.shift 
    end 

    def size
        @store.length 
    end 

    def empty?
        @store.empty?
    end 
  end
end 

class MyStack

    def initialize
      @store = []
    end

    def peek
        @store.last 
    end 

    def size
        @store.length 
    end 

    def empty?
        @store.empty?
    end

    def pop
        @store.pop
    end 

    def push(ele)
        @store.push(ele)
    end 

  end

 







end 








p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4# 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8