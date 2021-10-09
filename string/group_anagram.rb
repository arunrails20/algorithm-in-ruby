#['act', 'lo', 'cat', 'yat', 'tca', 'ol', 'tay']
#[["act","cat","tca"],["lo","ol"],["yat","tay"]]
# no of words = w, length of the words array
# length of longest word = n,

# time complexity w * n log(n) 
# space complexity W * N

def group_anangram(words)
    results = {}
    words.each do |word|
        sorted_word = word.chars.sort.join
        results[sorted_word] ||= []
        results[sorted_word].push(word)
    end
    results.values
end
inputs = ['act', 'lo', 'cat', 'yat', 'tca', 'ol', 'tay']
p group_anangram(inputs)