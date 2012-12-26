class Role < ActiveRecord::Base
  has_and_belongs_to_many :users
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :role_ids, :name
end