class Tournament < ActiveRecord::Base
  attr_accessible :fullDescription, :owner, :shortDescription, :winnerHigh
  belongs_to :owner, :class_name => "User", :foreign_key => "user_id"
  has_many :contests, dependent: :destroy
end
