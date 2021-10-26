# Given an array of integers and target number,
# find the pair of number thats equal to the target number
# By using a hash store the diff numbers
#-----Time Complexity O(n) and Space Complexity O(n)
def two_num_sum_solu1(arr, target_sum)
    results = {}
    arr.each do |current_num|
        # Formula to calculat diff number
        diff_num = target_sum - current_num
        if results[current_num]
            return [diff_num, current_num]
        else
            results[diff_num] = true
        end
    end
    return false
end

p two_num_sum_solu1([6,2,3,4,5,5,-1,11,2,3],10)


def two_num_sum_solu2(arr, target_sum)
    arr = arr.sort
end