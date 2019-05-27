#moores-voting-algorithm
arr = [2,34,2,35,35,35,35,35,35,35,4,67,35,35]
def max_element(arr)
    count = 1
    size = arr.length
    majorindex = 0
    i = 1
    while i < size
        if arr[majorindex] == arr[i]
            count += 1
        else
            count -= 1
        end
        if count == 0
            majorindex = i
            count = 1
        end
        i += 1
    end

    key = arr[majorindex]
    count = 0
    i = 1
    while i < size
        if arr[i] == key
            count += 1
        end
        i += 1
    end
    if count > size / 2
        return key
    else
        p "no major elements"
        return -1
    end

end
p max_element(arr)
