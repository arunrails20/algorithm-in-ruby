# check array is 

def monotonic_array(arr)
    isDecreasing = true
    isIncreasing = true
    (1...arr.length).each do |i|
        isIncreasing = false if arr[i] < arr[i-1]
        isDecreasing = false if arr[i] > arr[i-1]
    end
    return (isDecreasing || isIncreasing)
end

p monotonic_array([22,33,67,88,89])