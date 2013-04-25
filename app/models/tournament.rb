class Tournament < ActiveRecord::Base
  attr_accessible :fullDescription, :owner, :shortDescription, :winnerHigh
end
