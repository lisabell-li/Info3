class Student < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
  attr_accessible :foto, :nachname, :vorname
end
