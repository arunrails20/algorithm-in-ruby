# Refer BT diameter problem
# Given BT as inputs, find the BT height is balanced
# A BT is height balanced if for each node in the tree,
# the diff bw height of eft_sub_tree and right_sub_stree is <= 1
# Recursively iteration at left of node
# and calculate the hegiht

class TreeInfo
    attr_accessor :is_balanced, :height
end

def height_balanced_binary_tree(tree)
    tree_info = get_tree_info(tree)
    return tree.info.is_balanced
end

def getTreeInfro(node)
    # base case, where no child nodes
    if node.nil?
        # if no child nodes, which means it height is balanced
        # So by default we return True
        return TreeInfo(True, -1)
    end

    left_sub_tree_info = get_tree_info(node.left)
    right_sub_tree_info = get_tree_info(node.right)

    is_balanced = (left_sub_tree_info.is_balanced and 
                    right_sub_tree_info.is_balanced) and
                    (left_sub_tree_info.height - right_sub_tree_info.height).abs <= 1

    height = max(left_sub_tree_info.hegiht, right_sub_tree_info.hegiht) + 1
    return TreeInfo(is_balanced, hegiht)

end