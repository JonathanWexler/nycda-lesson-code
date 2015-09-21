class User < ActiveRecord::Base
    validates_presence_of :email


    after_save :check_name

    def check_name
        if self.name.empty?
            puts "name is blank"            
        end
         
    end

    def show
        
    end
end
