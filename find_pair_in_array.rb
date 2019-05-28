arr = [2,34,2,35,3,5,5,3,5,10,14,7,15,18]

def find_pair(arr, value)
    size = arr.size
    arr = arr.sort
    first = 0
    second = size - 1
    while first < second
        curr_val = arr[first] + arr[second]
        if value == curr_val
            puts "Pair #{arr[first]}, #{arr[second]}"
            return 1
        end
        if value < curr_val
            second -= 1
        else
            first += 1
        end
    end
    return 0
end
p find_pair(arr, 17)
