# Find the minimum amount if change that cant create in given array of coins.
# ex arr = [1,2,1,4] answer is 9

def minimum_amt_change_cant_create(coins)
    # sort the input array to find the results in O(n)
    coins.sort
    current_change = 0
    coins.each do |coin|
        # if current coin is greater than current_max_change
        # than the current_max_change + 1 amount we cant make it change.
        if coin > current_change + 1
            return current_change + 1
        end
        current_change += coin
    end
    # if all the coin are posible to make change in sequence(1,2,3,4)
    # than return current_max_change + 1
    return current_change + 1
end

p minimum_amt_change_cant_create [1,1,2,3,22]