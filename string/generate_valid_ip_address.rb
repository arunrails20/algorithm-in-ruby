# given string of numbers max of length 12
# form the given string we have generate valid IP address,
# IP address with three dots, four sections, ex 255.255.255.255
# each section have 8 bits of max 0-255 numbers
# by using 3 need loop to solve the algo.
def min(a,b)
    a > b ? a : b
end

def generate_valid_id(str)
    # collect all the results
    results_ip_addr = []
    # using 4 to avoid index error 1...4 its gives 1,2,3 index values.
    # in first section and three numbers traverse using above index values
    # min value finding, incase given str length is small less than 4
    (1...min(str.length, 4)).each do |i|
        # collect the results for single iteration
        current_results = ["","","",""]
        current_results[0] = str[0...i]
        next unless vaild_ip?(current_results[0])
        
        # range start at i+1 to i+()
        # second loop, range start and end range
        ((i+1)...(i + min(str.length, 4))).each do |j|
            current_results[1] = str[i...j]
            next unless vaild_ip?(current_results[1])

            ((j+1)...(j + min(str.length, 4))).each do |k|
                current_results[2] = str[j...k]
                current_results[3] = str[k...str.length]
                # if is invalid dont push backtrack and do it.
                if vaild_ip?(current_results[2]) && vaild_ip?(current_results[3])
                    results_ip_addr.push(current_results.join("."))
                end
            end
        end
    end
    return results_ip_addr
end

def vaild_ip?(str)
    return false if str.nil?
    str_int = str.to_i
    return false if str_int > 255
    # its check for prefix 0, 001 is not valid ip.
    str.length == (str_int.to_s).length
end

p generate_valid_id("1923452")