# Given a Binary tree and node as an inputs
# travese the Binary Tree as In-order Left-Visit-Right
# there we need to fine the Sccessor of the input
# Ex: Result_of_in_order_traverse is [6,4,3,2,5,1,3]
# given Input node as 5, Than successor of node 5 is 1.


# time O(h) where h is hegith of BT

class BinaryTree
    attr_accessor :left, :right, :parent
end
# successor will from right side
# Two given node has right node or not
def find_successor(tree, node)
    if node.right
        return get_left_most_child(node.right)
    end
    return get_right_most_Parent(node)
end

def get_left_most_child(node)
    current_node = node
    while current_node.left
        current_node = current_node.left
    end
    return current_node
end

def get_right_most_parent(node)
    current_node = node
    while current_node.parent and current_node.parent.right = current_node
        current_node = current_node.parent
    end
    return current_node.parent
end

# Solution 2 Iterate through In-Order_traversal and append node in array
# find successor inside the array