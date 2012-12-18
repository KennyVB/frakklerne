class Gallery < ActiveRecord::Base
  attr_accessible :name
  validates :name,  :presence => true
  has_many :pictures, :dependent => :destroy
  
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
  def should_generate_new_friendly_id?
      new_record?
    end
end
