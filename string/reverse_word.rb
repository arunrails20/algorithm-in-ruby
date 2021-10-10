# given input as string output as reverse the word string
# step 1 convert string into arr of chars
# step 2 reverse the arr of chars
# step 3 than agin reverse the chars by chars != whitespace, which means 
# reverse the word, by using start and end index values
# finally join the array
# time complexity O(n) and space complexity O(n)

def reverse_word(str)
    arr_of_chars = []
    # convert string into array of characters
    str.each_char{|char| arr_of_chars << char}
    # Reverse the arr of characters
    reverse_range(arr_of_chars, 0, arr_of_chars.length - 1)

    # consider first index value as start word
    start_word_idx = 0
    while start_word_idx < arr_of_chars.length
        p arr_of_chars
        # initial start idx equal to end idx for the word
        end_word_idx = start_word_idx
        # consider white space as a end of the word
        while end_word_idx < arr_of_chars.length && arr_of_chars[end_word_idx] != " "
            end_word_idx += 1
        end
        # end_word_idx - 1, because its in the whitespace index
        reverse_range(arr_of_chars, start_word_idx, end_word_idx - 1)
        start_word_idx = end_word_idx + 1
    end
    # finally join the array
    return arr_of_chars.join("")
end

def reverse_range(chars, start_idx, end_idx)
    while start_idx < end_idx
        chars[start_idx], chars[end_idx] = chars[end_idx], chars[start_idx]
        start_idx += 1
        end_idx -= 1
    end
end
# incase we are revers only the word whitesapce it be white space
# example start version: [" ", " ", " ", " ", "d", "l", "r", "o", "w", " ", "o", "l", "l", "e", "h"]
# end version [" ", " ", " ", " ", "w", "o", "r", "l", "d", " ", "o", "l", "l", "e", "h"]
p reverse_word("hello world    ")