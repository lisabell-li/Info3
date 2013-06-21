class Student < ActiveRecord::Base
  mount_uploader :foto, PictureUploader
  attr_accessible :foto, :nachname, :vorname, :course
  validates :vorname, :presence => true
  validates :nachname, :presence => true
  validates :foto, :presence => true

  has_one :karteikarte

 def name
    "#{vorname} #{nachname}"
  end

end
