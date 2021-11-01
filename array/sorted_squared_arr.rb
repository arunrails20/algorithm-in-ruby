# Question, given a sorted input array
# return the squared of all numbers in the array
# array may also contains negative number [-7,-5,1,2,3,4,5]
# so the square of -5 is 25.


# Solution 1 => iterate through the arr and square the element and push to
# results array. finally the sort the results
# TC nlog(n)

# Solution 2 => 
# the inputs is sorted order which indicates
# we can do it in O(n) times
# set with start and end position, 
def sorted_seq_arr_soul2(arr)
    results = [0] * arr.length
    start_position = 0
    end_position = arr.length - 1
    results_counter = results.length - 1
        while start_position <= end_position
            if arr[start_position].abs < arr[end_position].abs
                results[results_counter] = (arr[end_position].abs ** 2)
                end_position -= 1
            else
                results[results_counter] = (arr[start_position].abs ** 2)
                start_position += 1
            end
            results_counter -= 1
        end
        results
end

def sorted_seq_arr_reverse_search(arr)
    results = [0] * arr.length
    start_position = 0
    end_position = arr.length - 1
    (0...arr.length).reverse_each do |i|
        if arr[start_position].abs < arr[end_position].abs
            results[i] = (arr[end_position].abs ** 2)
            end_position -= 1
        else
            results[i] = (arr[start_position].abs ** 2)
            start_position += 1
        end
    end
    results
end


p sorted_seq_arr_soul2([-12,-4,1,2,3,4,5,6,8,9])
p sorted_seq_arr_reverse_search([-12,-4,1,2,3,4,5,6,8,9])