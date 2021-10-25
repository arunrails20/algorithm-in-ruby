def next_greater_number(arr)
  results = [-1] * arr.length
  stack = []
  # iterate two times in the array
  # since this is circular array
  # iterate from right to left, reverse order
  (0...(arr.length * 2)).reverse_each do |i|
    idx = i % arr.length
    while stack.length > 0
      # stack top element is less than the current element
      # than we pop the element, because there is no next greater number
      if stack[-1] <= arr[idx]
        stack.pop
      else
        results[idx] = stack[-1]
        break
      end
    end
    stack.push(arr[idx])
  end
  return results
end

p next_greater_number([2,-8,9,10,12,2])
