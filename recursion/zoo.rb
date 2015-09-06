# Jon Wexler
# WDI PA 2015
# Zoo example for Class creation and Inheritance

class Zoo
    # @exhibits is an array of animal "Objects"
    attr_accessor :exhibits

    # my_zoo = Zoo.new
    # my_zoo.exhibits = []
    # my_zoo.exhibits << elephant

    def animals
        if !exhibits.empty?
            puts "Well... We have an "
            exhibits.each do |our_animal|
                print "#{our_animal.class} named #{our_animal.name}, "
            end
        else
            puts "We have no animals currently :("

        end

        
    end

    def self.why
        puts "Because the Zoo is one of the only places you 
        can physically see many animals from other 
        countries"

    end


end

# Generic Animal class with name and origin attributes, name initialized with
# instantiation of Animal object
class Animal
    attr_accessor :name
    attr_accessor :origin

    def initialize(name)
        @name = name
    end

end

# Elephant extends Animal and has stomp method
class Elephant < Animal

    def stomp
        "Stompy stomp stomp"
    end
end

# Tiger extends Animal and has food attribute and attack instance method
class Tiger < Animal
    attr_accessor :food

    def attack
        puts "ROAAR! I will eat #{@food}"
    end
end

# Calls: 

z = Zoo.new

puts "ELEPHANT: "
e = Elephant.new("Greg")
puts e.stomp
puts "my name is #{e.name}"

puts "TIGER: "
t = Tiger.new("Tony")
puts t.name
t.food = "elephant"
t.attack

z.exhibits = []
z.animals
puts "ADDING ANIMALS: "
z.exhibits << e
z.exhibits << t
z.animals

# elephant = Elephant.new


# if !elephant.nil?
#     elephant.stomp
    
# end


