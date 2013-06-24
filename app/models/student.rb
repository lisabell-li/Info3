class Student < ActiveRecord::Base
  mount_uploader :foto, PictureUploader
  attr_accessible :foto, :nachname, :vorname, :course_id
  validates :vorname, :presence => true 
  validates :nachname, :presence => true
  validates :foto, :presence => true
  validates :course_id, :presence => true

  has_one :karteikarte
  belongs_to :course

 def name
    "#{vorname} #{nachname}"
  end

end
