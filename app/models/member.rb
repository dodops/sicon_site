class Member < ActiveRecord::Base
  attr_accessible :bio, :name, :email, :avatar
  has_attached_file :avatar, :styles =>  {:medium => "300x300", :small => "150x150", :thumb => "100x100"}

  validates_presence_of :name, :bio, :email

  validates_length_of :name, :within => 3..20
  validates_format_of :email, :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i
end
