class Tournament < ActiveRecord::Base
  attr_accessible :shortDescription, :fullDescription, :owner, :winnerHigh
  belongs_to :user
  has_many :contests
end
