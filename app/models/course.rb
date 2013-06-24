class Course < ActiveRecord::Base
  attr_accessible :coursename, :semester
  has_many :decks, :dependent => :destroy
  has_many :students
end
