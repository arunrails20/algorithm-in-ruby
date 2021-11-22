# time O(2^n) | space O(n)
def fib(n)
    if n == 2
        return 1
    elsif n == 1
        return 0
    else
        return fib(n-1) + fib(n-2)
    end
end
# 0 1 1 2 3 5
p fib(9)


def fib_mem(n, memoize = {1 => 0, 2 => 1})
  if memoize[n]
    return memoize[n]
  else
    memoize[n] = fib_mem(n - 1, memoize) + fib_mem(n - 2, memoize)
    return memoize[n]
  end
end

p fib_mem(6)

# Time O(n) | space O(1)
def fib_iteration(n)
    last_two_num = [0,1]
    # initial counter value is 3 because  we started with default array value for 1 and 2
    counter = 3
    while counter <= n
        new_last = last_two_num[0] + last_two_num[1]
        last_two_num[0] = last_two_num[1]
        last_two_num[1] = new_last
        counter += 1
    end
    return n == 1 ? last_two_num[0] : last_two_num[1]
end

p fib_iteration(6)