# Prb: sum the branches in the tree
# Given a Binary Tree, sum the branches in the BT
# Solution: By using PreOrderTraversal to solve the prb

# Sample BinaryTree class structure
class BinaryTree
    attr_accessor :value, :left_child, :right_child
    def initialize
        @value = value
        @left_child = left_child
        @right_child = right_child
    end
end

def branch_sum(root)
    sums = []
    calculate_branch_sum(root, 0, sums)
    return sums
end

def calculate_branch_sum(node, running_sum, sums)
    return unless node
    running_sum += node.value

    #if its reached leaf node append the running_sum value
    unless node.left_child and node.right_child
        sums.append(running_sum)
    end
    calculate_branch_sum(node.left_child, running_sum, sums)
    calculate_branch_sum(node.right_child, running_sum, sums)
end