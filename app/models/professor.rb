class Professor < ActiveRecord::Base
  attr_accessible :course, :currentScore, :emailAddress, :loginPassword
end
