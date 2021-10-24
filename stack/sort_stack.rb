# Given array of element use only stack operation pop or push to sort the stack


def sort_stack(stack)
    return stack if stack.length == 0
    top = stack.pop
    # make the stack empty by calling sort_stack method recursively
    sort_stack(stack)
    insert_ele_to_stack(stack, top)
    return stack
end

def insert_ele_to_stack(stack, value)
    # push value to the stack, when stack is empty. so we need add "OR" conition
    # current_val is less than the last element in the stack
    if stack.length == 0 or stack[stack.length - 1] <= value
        stack.push value
        return
    end
    # if current_value is greater than the stack last element
    # pop that element
    top = stack.pop
    # insert the current_value method recursively
    insert_ele_to_stack(stack, value)
    #finally the top is the largest value so we directly push to stack
    stack.push top
end

p sort_stack([-5,6,2,-9,4,1,8])