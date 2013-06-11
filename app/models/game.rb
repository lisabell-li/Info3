class Game < ActiveRecord::Base
  attr_accessible :course, :currentScore, :gameMode
end
