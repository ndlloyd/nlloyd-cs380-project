class User < ActiveRecord::Base
  attr_accessible :firstName, :lastName, :userName
end
