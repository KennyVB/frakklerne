class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  attr_accessible :content, :name, :title, :tag_list, :image, :remove_image, :image_cache
  acts_as_taggable
  
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
                    
  has_many :comments, :dependent => :destroy
  has_many :postimages, :dependent => :destroy
  
  mount_uploader :image, PostUploader

  
   
end
