class Picture < ActiveRecord::Base
  belongs_to :gallery
  attr_accessible :name, :image
  mount_uploader :image, ImageUploader
  
  validates :name,  :presence => true
end
