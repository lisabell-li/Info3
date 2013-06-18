class Deck < ActiveRecord::Base
  attr_accessible :cycleTime, :deck_id
  has_many :karteikartes
end
