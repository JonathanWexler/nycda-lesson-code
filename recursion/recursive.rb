# Jon Wexler
# WDI PA 2015
# Basic Recursion

# Simple Recursive Function to print integer value until it equals or exceeds
# 0

def run(x)
    puts "My Text"
    if x < 0
        run(x+=1)
    else
        puts "x is #{x}"
    end
end


# Function Call:
run(-100)

