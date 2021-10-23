

def sunsets_views_solu_1(buildings, direction)
    results = []
    # for EAST it iterate from reverse side
    start_index = direction == "WEST" ? 0 : buildings.length - 1
    # increment or decrement the index
    step = direction == "WEST" ? 1 : -1

    current_max_height = 0
    idx = start_index
    while idx >= 0 and idx < buildings.length
        building_height = buildings[idx]
        if building_height > current_max_height
            results.push(idx)
        end
        current_max_height = max(current_max_height, building_height)
        idx += step
    end
    return results.reverse if direction == "EAST"
    return results
end

def max(a,b)
    a > b ? a : b
end

# solution 2 we are using stacks
def sunsets_views_solu_2(buildings, direction)
    stack = []
    # for East direction iterates from 0.
    start_idx = direction == "EAST" ? 0 : buildings.length - 1
    # increment variable step for EAST should increment the variable to view the next building
    # for WEST decrement the variable
    step = direction == "EAST" ? 1 : -1
    idx = start_idx

    while idx >= 0 and idx < buildings.length
        height = buildings[idx]
        # Removing mulitple building
        # if the current building height is less than the older building height
        while stack.length > 0 and buildings[stack[-1]] <= height
            stack.pop
        end
        stack.push idx
        idx += step
    end
    return stack.reverse if direction == "WEST"
    return stack
end

p sunsets_views_solu_1([3, 5, 4, 4, 3, 1, 3, 2], "EAST")
p sunsets_views_solu_1([3, 5, 4, 4, 3, 1, 3, 2], "WEST")
p sunsets_views_solu_2([3, 5, 4, 4, 3, 1, 3, 2], "EAST")
p sunsets_views_solu_2([3, 5, 4, 4, 3, 1, 3, 2], "WEST")
