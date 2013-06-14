class Student < ActiveRecord::Base
  mount_uploader :foto, PictureUploader
  attr_accessible :foto, :nachname, :vorname
  validates :vorname, :presence => true
  validates :nachname, :presence => true
  validates :foto, :presence => true

 def name
    "#{vorname} #{nachname}"
  end

end
