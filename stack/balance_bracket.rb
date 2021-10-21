# time O(n) | space O(n)
# ")([])" -> invalid input
# "([])" -> valid input

def balance_brackets(str)
  opening_brackets = "([{"
  closing_brackets = ")]}"
  matching_brackets = {")": "(","]": "[","}": "{"}
  stack = []
  str.each_char do |char|
    # push the opening brackets to stack
    stack.push(char) if opening_brackets.include? char
    if closing_brackets.include? char
      # return false if the stack is empty
      # means that no matching brackets in the stack
      return false if stack.length == 0
      if stack[-1] == matching_brackets[char.to_sym]
      # match brackets present in the stack so pop that element
        stack.pop
      else
      # stack is not empty but matched bracket is not present in the tail(last element)
        return false
      end
    end
  end
  return stack.length == 0
end

p balance_brackets("[[()]]{}")
