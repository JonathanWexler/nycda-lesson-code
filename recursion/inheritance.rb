class Robot
    # @material is a String
    # tell us what material this Robot is made of
    attr_accessor :material

    def walk
        puts "I am walking"
    end

end

class Assembly < Robot
    # @assembling is a boolean value
    # is the assembly robot assembling?
    attr_accessor :assembling

    def assemble_this(object)
        @assembling = true
        puts "I am assembling #{object}"
        @assembling = false
        
    end

end

class Parade < Robot
    # @horns is an Array
    # list the instruments our robot can play
    attr_accessor :horns
    def initialize (horns)
        @horns = horns
    end

    def play
        puts "I am playing an instrument TOOT"
    end

end


puts "OUR GENERIC ROBOT: "
r = Robot.new
r.walk
r.material = "metal"


puts "ASSEMBLY ROBOT: "
assembly_robot = Assembly.new
assembly_robot.walk
assembly_robot.assemble_this("car")
puts assembly_robot.assembling = true

puts "PARADE ROBOT: "
parade_robot = Parade.new(["trumpet", "trombone"])
puts parade_robot.horns.inspect
parade_robot.play
parade_robot.walk
