class Attachment < ActiveRecord::Base
  attr_accessible :attachment, :description, :file, :name
  validates_presence_of :attachment
  mount_uploader :attachment, AttachmentUploader
end
