class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :tag_list, :assets_attributes
  acts_as_taggable
  
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
                    
  has_many :comments, :dependent => :destroy
  has_many :assets
  accepts_nested_attributes_for :assets, :allow_destroy => true
end
