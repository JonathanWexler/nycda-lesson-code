# print fibonacci sequence up to passed number
# 1 1 2 3 5 8...


def fib(num)
    if num == 1 || num == 2
        # puts "returning 1"
        return 1
    else
        # puts "Now retrieving #{fib(num-2)} and #{fib(num-1)}"
        return fib(num-2)+fib(num-1)
    end
end

puts fib(6)

