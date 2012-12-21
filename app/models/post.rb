class Post < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible :content, :name, :title, :tag_list, :assets_attributes
=======
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  attr_accessible :content, :name, :title, :tag_list, :image, :remove_image, :image_cache
>>>>>>> merge-with-paperclip-1
  acts_as_taggable
  
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
                    
  has_many :comments, :dependent => :destroy
<<<<<<< HEAD
  has_many :assets
  accepts_nested_attributes_for :assets, :allow_destroy => true
=======
  has_many :postimages, :dependent => :destroy
  
  mount_uploader :image, PostUploader

  
   
>>>>>>> merge-with-paperclip-1
end
