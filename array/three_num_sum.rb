# current_sum = Current_num + Left + Right
# Arr sort
# if current_sum is less than Target_num move left_pointer
# if current_sum is greater than Target_num move right_pointer
# if we got the trget_num value. than move Left and right pointer both
# at same time
# once the pinter pass each other we done the iteration
# than we reset our left_p and right_p
# TC O(n2) | space O(n)


def three_num_sum(arr, target_num)
    arr.sort!
    left_ptr = 0
    right_ptr = arr.length - 1
    res = []
    # we need loop through arr.length - 2
    (0...(arr.length - 2)).each do |current_num|
        while left_ptr < right_ptr
            current_sum = arr[current_num] + arr[left_ptr] + arr[right_ptr]
            if current_sum == target_num
                res.push([arr[current_num] , arr[left_ptr] , arr[right_ptr]])
                left_ptr += 1
                right_ptr -= 1
            elsif current_sum < target_num
                left_ptr += 1 
            elsif current_sum > target_num
                right_ptr -= 1
            end
        end
    end
    p res
end

three_num_sum([4,2,6,-7,9,-2,1,8,7],0)