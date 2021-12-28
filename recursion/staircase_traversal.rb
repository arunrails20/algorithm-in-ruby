
def min(a, b)
    a < b ? a : b
end

# time O(k^n) | space O(n)
def staircase_traversal_solu1(height, max_steps)
    return no_ways_go_to_top(height, max_steps)
end

def no_ways_go_to_top(height, max_steps)
    return 1 if height <= 1
    no_ways = 0
    # here iterate through the max_steps
    # if height less than max_steps than we need take the min value
    for step in 1..(min(max_steps, height))
        no_ways += no_ways_go_to_top(height - step, max_steps)
    end
    return no_ways
end

# time O(k*n) | space O(n)
def staircase_traversal_solu2(height, max_steps)
    return no_ways_go_to_top_solu2(height, max_steps, {0 => 1, 1 => 1})
end

def no_ways_go_to_top_solu2(height, max_steps, memoize)
    return memoize[height] if memoize[height]
    no_ways = 0
    # here iterate through the max_steps
    # if height less than max_steps than we need take the min value
    for step in 1..(min(max_steps, height))
        no_ways += no_ways_go_to_top_solu2(height - step, max_steps, memoize)
        memoize[height] = no_ways
    end
    return no_ways
end


#p staircase_traversal_solu2(4, 2)

# iterative solutions

def iterative_solution(height, max_steps)
     current_no_of_ways = 0
     #initial first step
     ways_to_top = [1]

    for current_height in 1..height
        start_of_window = current_height - max_steps - 1
        # we need to get the just privious element
        # Assume height = 4, max_steps = 2
        # [1,1,2,3,5], current height = 3, end_of_window_value = 2, start_of_window_vlaue = 0
        end_of_window = current_height - 1
        current_no_of_ways -=  ways_to_top[start_of_window] if start_of_window >= 0
        current_no_of_ways +=  ways_to_top[end_of_window]
        ways_to_top.append(current_no_of_ways)
    end
    return ways_to_top[current_height]

end

p iterative_solution(4,2)