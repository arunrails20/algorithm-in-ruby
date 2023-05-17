# Given an Input as a binary_search_bst and target value.
# Find the closest value in the bst.

# TC Avg case - O(log(n)) time | O(log(n)) space
# Worst O(n) time | O(n) space

# Recursive Implementation:

# def find_closest_value(bst, target)
#     # inifinity value as initial closest value
#     rec_helper_find_closest_valuebst, target, Float::INFINITY)
# end

# def rec_helper_find_closest_value(bst, target, closest)
#     return closest unless bst
#     # closest assignment
#     # Finded out based on the absolute diff 
#     closest = bst.value if (target - closest).abs > (target - bst.value)
#     if target < bst.value
#         find_closestrec_helper_find_closest_value_value(bst.left, target, closest)
#     elsif target > bst.value
#         find_closestrec_helper_find_closest_value_value(bst.right, target, closest)
#     else
#     #equal_to_case
#         closest
#     end
# end


def find_closest_value(bst, target)
    # inifinity value as initial closest value
    iterate_helper_find_closest_valuebst, target, Float::INFINITY)
end

def iterate_helper_find_closest_valuebst(bst, target, closest)
    current_node = bst
    while current_node
        closest = bst.value if (target - closest).abs > (target - bst.value)
        if current_node.value < target
            current_node = current_node.left
        elsif current_node.value > target
            current_node = current_node.right
        else
            break
        end
    end
    return closest
end