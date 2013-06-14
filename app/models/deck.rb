class Deck < ActiveRecord::Base
  attr_accessible :cycleTime, :decknumber

  has_many :karteikartes
end
