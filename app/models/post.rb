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

  before_save :destroy_image?
  def check_box(method, options = {}, checked_value = "1", unchecked_value = "0")
  end
  def image_delete
    @image_delete ||= "0"
  end

  def image_delete=(value)
    @image_delete = value
  end

private
  def destroy_image?
    self.image.clear if @image_delete == "1"
  end
   
end
