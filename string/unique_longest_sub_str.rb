# Given an input as an string. find the longest substring without duplicates
# TC O(n), Space O(n, a), n is length of the string and a is alphabet char
# present in the given string

def longest_substr(str)
    # key = char and val = index_value of the char
    lastest_str_index = {}
    # initial longest substring
    results = [0,1]
    start_idx = 0
    (0...str.length).each do |i|
        if lastest_str_index[str[i]]
            # Assume, current longest substr is "vik" results = [0, 3], start_idx = 0,
            # ex str="vikiram" current char = i and index = 3, lastest_str_index = {v: 0, i: 1, k: 2}
            # now we found duplicate char "i" so we need to update our start_idx by find max
            # start_idx = max(0, 2), start_idx = 2, so our next substr start from "k"
            start_idx = max(start_idx, lastest_str_index[str[i]] + 1)
        end
        # update new longest sub string
        if (results[1] - results[0]) < (i + 1 - start_idx)
            results = [start_idx, i + 1]
        end
    lastest_str_index[str[i]] = i
    end
    return str[results[0]...results[1]]
end

def max(a, b)
    a > b ? a : b
end

p longest_substr("arunkumar")