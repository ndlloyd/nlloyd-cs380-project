class Contest < ActiveRecord::Base
  attr_accessible :bracket, :firstContestant, :firstScore, :secondContestant, :secondScore, :tournament_id
end
