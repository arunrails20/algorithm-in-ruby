# Problem given an inputs of string and key(integer number)
# We need to shift the char as per the key value.
# For example string is "abc" and key is 2, so output should be "cde"
# iterate through the string, find the unicode value for the char and sum the value with key
# get the new_char_code, if new_char_code is greater than 122 than do % operation to get remainder

# Soultion two
# if we dont want to use the unicode values.
# than create an array of alphabet, index value it that char values
# ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
# a value is 0

def solution_one(str, key)
    results = []
    # modular operation incase of large key value greater than 26
    key = key % 26
    str.each_char do |char|
        # Calculate the new char code
        new_char_code = char.ord + key
        if new_char_code <= 122
            results << new_char_code.chr
        else
            results << (96 + (new_char_code % 122)).chr
        end
    end
    results.join("")
end

p solution_one("xyz",54)
