def smallest_difference(arr_one, arr_two)
    arr_one.sort!
    arr_two.sort!
    idxone = 0
    idxtwo = 0
    samllest_diff = Float::INFINITY
    current_diff = Float::INFINITY
    results = []
    while idxone < arr_one.length and idxtwo < arr_two.length
        first_num = arr_one[idxone]
        second_num = arr_two[idxtwo]
        if first_num < second_num
            current_diff = second_num - first_num
            idxone += 1
        elsif second_num < first_num
            current_diff = first_num - second_num
            idxtwo += 1
        else
            return [first_num, second_num]
        end
        if samllest_diff > current_diff
            samllest_diff = current_diff
            results = [first_num, second_num]
        end
    end
    return results

end

p smallest_difference([-1, 5, 10, 20, 28, 3], [26, 134, 135, 15, 17])