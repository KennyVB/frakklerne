class Gallery < ActiveRecord::Base
  attr_accessible :name
  validates :name,  :presence => true
  has_many :pictures, :dependent => :destroy
end
