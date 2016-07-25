class Charlie < ActiveRecord::Base
   mount_uploader :image, ImageUploader

   validates :email, :description, :image, presence: true
   validates_format_of :email, :with => /@/
end
