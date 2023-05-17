
def move_element_to_end(arr, to_move)
    i = 0
    j = arr.length - 1
    while i < j
        # inner while for every iteration to move the to_move ele to end
        # Assume to_move is 2
        # to_move ele may present in [3,4,5,2,2,2,2,26,2,2,2,2,]
        # i < j condition here system dont know the got solution and stop it
        # it will keep moving the element it break the algo
        # so this i < j condtion helps
        while i < j and arr[j] == to_move
            j -= 1
        end
        if arr[i] == to_move
        # swap i and j
            arr[i], arr[j] = arr[j], arr[i]
        end
        i += 1
    end
    return arr
end

p move_element_to_end([2, 1, 2, 2, 2, 3, 4, 2], 2)