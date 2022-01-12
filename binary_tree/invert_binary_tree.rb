# invert the Binary Tree

# Time O(n), Space O(n), where n is the number of nodes
def iterative_solution(tree)
  queue = [tree]
  while queue.legth > 0
    current = queue.pop(0)
    next if current.nil?
    swap_left_and_right(current)
    queue.append(current.left)
    queue.append(current.right)
  end
end

def swap_left_and_right(tree)
  tree.left, tree.right = tree.right, tree.left
end

# Time O(n) | Space O(d), d depth of tree
# recursive solution
def invert_binary_tree(tree)
  return if tree.nil?
  swap_left_and_right(tree)
  invert_binary_tree(tree.left)
  invert_binary_tree(tree.right)
end
