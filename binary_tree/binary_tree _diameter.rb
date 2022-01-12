# Take Binary Tree as an input and return its diameter,
# Diameter of a BT is length of the longest path
# solve by breadth first search
# Time O(n)| space O(n), n is the no of nodes

def binary_tree_diameter(tree)
  get_tree_info(tree).diameter
end

def get_tree_info
  return TreeInfo.new(0,0) if tree.nil?

  left_tree_info = get_tree_info(tree.left)
  right_tree_info = get_tree_info(tree.right)

  longest_path = left_tree_info.height + right_tree_info.height
  max_diameter_so_far = max(left_tree_info.diameter, right_tree_info.diameter)
  current_diameter = max(longest_path, max_diameter_so_far)
  current_height = 1 + max(left_tree_info.height, right_tree_info.height)

  return TreeInfo(current_diameter, current_height)
end


class TreeInfo
  attr_accessor :diameter, :height

  def initilize(diameter, height)
    @diameter = diameter
    @height = height
  end
end
