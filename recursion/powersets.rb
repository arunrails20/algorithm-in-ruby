# given an input as an array unique integer
# generate the sets from the given array
# ex: input is [1,2,3]
# results should be a subsets of [[],[1],[2],[3],[1,2],[1,3],[2,3],[1,2,3]]
def powersets(arr)
    subsets = [[]]
    arr.each do |ele|
        for i in 0...subsets.length
          # create new subset by append the current ele to current sub set
          curr_subset = subsets[i] + [ele]
          subsets.append(curr_subset)
        end
    end
    return subsets
end

def powersets_recursion(arr, idx=nil)
    if idx.nil?
        idx = arr.length - 1
    elsif idx < 0
        return [[]]
    end
    ele = arr[idx]
    subsets = powersets_recursion(arr, idx - 1)
    for i in 0...subsets.length
        curr_subset = subsets[i] + [ele]
        subsets.append(curr_subset)
    end
    return subsets
end

p powersets_recursion([1,2,3])