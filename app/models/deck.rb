class Deck < ActiveRecord::Base
  attr_accessible :cycleTime, :decknumber, :course_id
  has_many :karteikartes
  
  belongs_to :course
end
