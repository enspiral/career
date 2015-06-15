class Career < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader
  validates :full_name, :presence => { :message => " cannot be blank" }
  validates :email, :presence => { :message => " cannot be blank" }
  validates :phone_number, :presence => { :message => " cannot be blank" }

end
