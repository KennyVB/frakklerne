class Asset < ActiveRecord::Base
  attr_accessible :asset_content_type, :asset_file_name, :asset_file_size, :asset_updated_at, :post_id, :asset
  belongs_to :post
  has_attached_file :asset, :styles => { :large => "640x480>", :medium => "300x300>", :thumb => "100x100>" }
end
