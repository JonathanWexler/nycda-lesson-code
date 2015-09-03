

def run(x)
    puts "My Text"
    if x < 0
        run(x+=1)
    else
        puts "x is #{x}"
    end
end

