# Given an array of integers and target number,
# find the pair of number thats equal to the target number
# By using a hash store the diff numbers
#-----Time Complexity O(n) and Space Complexity O(n)
def two_num_sum_solu1(arr, target_sum)
    results = {}
    arr.each do |current_num|
        # Formula to calculate diff number
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

# TC O(nlog(n))
def two_num_sum_solu2(arr, target_sum)
    arr = arr.sort
    left = 0
    right = arr.length - 1
    while left < right
        sum_num = arr[left] + arr[right]
        if sum_num == target_sum
            return [arr[left], arr[right]]
        elsif sum_num < target_sum
            left += 1
        else
            right -= 1
        end
    end
    return false
end

p two_num_sum_solu2([6,2,3,4,5,5,-1,11,2,3],10)
