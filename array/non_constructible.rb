=begin
1. Given Array as an input to the. values are consider as coins
2. have to find the out the mininum change can't create
3. inputs -[5, 7, 1, 1, 2, 3, 22], output 20
=end


def non_constructible(coins)
    coins.sort!
    change = 0
    coins.each do |coin|
        # if coin is greater than change + 1 then return change + 1
        return change + 1 if coin > change + 1
        change = change + coin
    end
    change + 1
end

p non_constructible([5, 7, 1, 1, 2, 3, 22])