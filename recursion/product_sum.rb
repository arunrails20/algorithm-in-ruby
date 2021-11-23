

def product_sum(arr, multiplayer = 1)
 # initialize with sum = 0
    sum = 0
    arr.each do |ele|
        if ele.instance_of? Array
            sum += product_sum(ele, multiplayer + 1)
        else
            sum += ele
        end
    end
    return sum * multiplayer
end

puts product_sum([5, 2, [7, -1], 3, [6, [-13, 8], 4]])
