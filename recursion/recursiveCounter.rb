# Jon Wexler
# WDI PA 2015
# Recursive vs Iterative approach

# while loop version of counter method
# from 100->0
def while_count(num)
    while num >=0
        puts num
        num-=1
    end
end

# recursive version of counter method
# from 100->0
def count_down(num)

    if num >=0
        puts num
        count_down(num-=1)
    else
        puts "Complete!"
    end


end

while_count(100)
count_down(100)