# Time O(4^n*n) | space O(4^n*n) 
INTEGER_LETTERS_MAP = {
    "0": ["0"],
    "1": ["1"],
    "2": ["a","b","c"],
    "3": ["d","e","f"],
    "4": ["g","h","i"],
    "5": ["j","k","l"],
    "6": ["m","n","o"],
    "7": ["p","q","r","s"],
    "8": ["t","u","v"],
    "9": ["w","x","y","z"]
}
# understand the Recursive tree for the phone number 
def phone_mnemonices(phone_number)
    curr_mnemonices = ["0"] * phone_number.length
    mnemonices_found = []
    phone_mnemonices_helper(0,phone_number, curr_mnemonices, mnemonices_found)
    return mnemonices_found
end

def phone_mnemonices_helper(idx,phone_number, curr_mnemonices, mnemonices_found)
    if idx == phone_number.length
        mnemonices_found.append(curr_mnemonices.join(""))
    else
        integer = phone_number[idx]
        letters = INTEGER_LETTERS_MAP[integer.to_sym]
        letters.each do |letter|
            curr_mnemonices[idx] = letter
            # recursively call
            phone_mnemonices_helper(idx + 1,phone_number, curr_mnemonices, mnemonices_found)
        end
    end
end

p phone_mnemonices("1905")