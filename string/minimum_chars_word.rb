# Given an inputs as array of words, Find the chars required to form a word.
# Time O(m * n), where n is the no of words in arr and m is the longest word length
# space O(u) u its the no of unique chars in all words

def minimum_char_word(arr)
    master_chars_count = {}
    arr.each do |word|
        char_counts = count_the_chars(word)
        update_the_master_count(master_chars_count, char_counts)
    end
    convert(master_chars_count)
end

def count_the_chars(word)
    counter = {}
    word.each_char do |char|
        counter[char] ||= 0
        counter[char] += 1
    end
    counter
end

def update_the_master_count(master_chars_count, char_counts)
    char_counts.each do |k,v|
        master_chars_count[k] ||= 0
        master_chars_count[k] = max(master_chars_count[k], v)
    end
end

def max(a, b)
    a > b ? a : b
end

# Refactor to inject
def convert(master_chars_count)
    results = []
    master_chars_count.each do |k,v|
        v.times { results << k }
    end
    results
end

p minimum_char_word(["viki", "ram", "tamil","varun"])