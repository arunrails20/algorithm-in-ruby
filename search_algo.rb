n = [3,4,52,51,3,67,4,34,21,23,35,23]

def binary_search(arr, key)
  arr = arr.sort
  low = 0
  high = arr.size - 1
  while low < high
    mid = low + (high - low) / 2
    return true if arr[mid] == key
    
      if key < arr[mid] 
        high = mid - 1
      else
        low = mid + 1
      end 
  end
  return false
end

p binary_search(n, 37)
