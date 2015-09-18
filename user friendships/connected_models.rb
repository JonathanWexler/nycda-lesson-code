# Jon Wexler
# 9/18/15
# Example Model Structure for User, Post, Friendship/Connections

class User < ActiveRecord::Base
    # User has many posts
    has_many :posts

    # User has many rows in the Connection join table
    has_many :connections

    # User has many ""friends"" associated with the user
    has_many :friends, :through => :connections

end

class Post < ActiveRecord::Base
    # each post has one user associated
    belongs_to :user

end

class Connection < ActiveRecord::Base
    # Join table has info for a user and a friend (which is also a type of user)
    belongs_to :user
    
    belongs_to :friend, :class_name => "User"

end