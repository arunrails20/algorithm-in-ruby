# Time O(n^2*n!) | Space O(n*n!)
def permutation(array)
    curr_permutation, permutations = [], []
    permutation_helper(array, curr_permutation, permutations)
    return permutations
end

def permutation_helper(array, curr_permutation, permutations)
    if array.empty?
        permutations.append(curr_permutation)
    else
        for i in 0...array.length
            new_array = array[...i] + array[(i+1)...]
            new_perms = curr_permutation + [array[i]]
            permutation_helper(new_array, new_perms, permutations)
        end
    end
end

p permutation([1,2,3])

def permutation_soul2(arr)
    permutations = []
    perms_helper(0, arr, permutations)
    return permutations
end

def perms_helper(i, arr, permutations)
    if i == arr.length - 1
        permutations.append(arr[0...])
    end
    for j in i...arr.length
        swap(i,j,arr)
        perms_helper(i+1, arr, permutations)
        swap(i,j,arr) # backtrack
    end
end

def swap(i,j,arr)
    arr[i], arr[j] = arr[j], arr[i]
end

p permutation_soul2([1,2,3])
