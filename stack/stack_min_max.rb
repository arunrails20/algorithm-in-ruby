class StackMinMax
  attr_accessor :minmax_stack, :stack
  def initialize
    # keep tracking of min and max values
    @minmax_stack = []
    @stack = []
  end

  def peek
    stack[stack.length - 1]
  end

  def pop
    minmax_stack.pop
    stack.pop
  end

  def push(num)
    new_min_max_val = {"min": num, "max": num}
    if !minmax_stack.empty?
      last_min_max = minmax_stack[minmax_stack.length - 1]
      new_min_max_val[:min] = min(new_min_max_val[:min], last_min_max[:min])
      new_min_max_val[:max] = max(new_min_max_val[:max], last_min_max[:max])
    end
    minmax_stack.push(new_min_max_val)
    stack.push(num)
  end

  def get_min
    p "--------------min-----------------"
    minmax_stack[minmax_stack.length - 1][:min]
  end

  def get_max
    p "-------------max-------------------"
    minmax_stack[minmax_stack.length - 1][:max]
  end

  private

  def min(a, b)
    a < b ? a : b
  end
  
  def max(a, b)
    a > b ? a : b
  end

end


a = StackMinMax.new
a.push(9)
p a.peek
p a.get_max
p a.get_min
a.push(7)
p a.peek
p a.get_max
p a.get_min
a.push(2)
p a.peek
p a.get_max
p a.get_min
p "-----------pop-------------"
a.pop
p a.peek
p a.get_max
p a.get_min
p "-----------pop-------------"
a.pop
p a.peek
p a.get_max
p a.get_min
