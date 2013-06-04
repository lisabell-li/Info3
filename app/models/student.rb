class Student < ActiveRecord::Base
  mount_uploader :foto, PictureUploader
  attr_accessible :foto, :nachname, :vorname
end
