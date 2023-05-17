# given array as an input,find longest peak in the given array
# First Find the Peak, if Peak left element shoud less than peak value and 
# right ele shoud greater
# Traverse through the peak left and right side
# calculate the length
# compare and update the max lenght value
def longest_peak(arr)
    longest_peak = 0
    # we need to compare with next element so i = 1
    i = 1
    while i < arr.length - 1
        is_peak = arr[i - 1] < arr[i] and arr[i] > arr[i+1]
        # iterate to next ele if peak is not there
        unless is_peak
            i += 1
            next
        end
        # Traverse to left side to find the length
        # 2 - because already knew that i - 1
        leftidx = i - 2
        while leftidx >= 0 and arr[leftidx] < arr[leftidx + 1]
            leftidx -= 1
        end

        rightidx = i + 2
        while rightidx < arr.length and arr[rightidx] < arr[rightidx - 1]
            rightidx += 1
        end
        current_longest_peak = rightidx - leftidx - 1
        longest_peak = [current_longest_peak, longest_peak].max

        # Find the next peak
        i = rightidx
    end
    return longest_peak
end


p longest_peak([1, 2, 3, 3, 4, 0, 10, 6, 5, -1, -3, 2, 3])