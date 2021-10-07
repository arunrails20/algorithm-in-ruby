# long length encoding https://en.wikipedia.org/wiki/Run-length_encoding
# We need to encode string based on the char counts.
# inputs given as a string
# ex input is "AAAAAAAAAAAAABBCC", output is "A9A4B2C2"

def long_run_encode(str)
    curr_length = 1
    results = []
    (1...str.length).each do |i|
         if str[i] != str[i-1] || curr_length == 9
            results.push(str[i-1])
            results.push(curr_length)
            curr_length = 0
         end
            curr_length += 1
    end
    # last char in the string will miss, so we need to add it explicitly
    results.push(str[str.length - 1])
    results.push(curr_length)

    results.join("")
end
p long_run_encode("AAAAAAAAAAAAABBCC")