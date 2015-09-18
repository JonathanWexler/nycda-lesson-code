# Jon Wexler
# 9/18/15
# Example Model Structure for User, Post, Address


class User < ActiveRecord::Base
    # User has many posts
    has_many :posts

    # User has many rows in the user-addresses join table
    has_many :user_addresses

    # User has many addresses associated with the user
    has_many :addresses, :through => :user_addresses

end

class Post < ActiveRecord::Base
    # each post has one user associated
    belongs_to :user

end

class Address < ActiveRecord
    # Address has many rows in the user-addresses join table
    has_many :user_addresses
    # Address has many users associated with it
    has_many :users, :through => :user_addresses
end

class UserAddresses < ActiveRecord::Base
    # Join table has info for a user and an address
    belongs_to :user
    belongs_to :address

end