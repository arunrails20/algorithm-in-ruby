# Solve this soultion using index counter
# inc the index counter for each mactch
# once all iteration done on the main_arry
# compare the index_counter == sub_seq_arr length
#TC O(n)
def validate_sub_seq(array, sub_seq)
    seq_index = 0
    array.each do |ele|
        # return true if we found the seq
        break true if seq_index == sub_seq.length
        seq_index += 1 if ele == sub_seq[seq_index]
    end
    return seq_index == sub_seq.length
end

p validate_sub_seq([1,2,2,4,5,6,7], [1,2])