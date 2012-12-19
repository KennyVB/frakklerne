class Postimage < ActiveRecord::Base
  belongs_to :post
  attr_accessible :image
  mount_uploader :image, PostUploader
end
