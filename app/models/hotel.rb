class Hotel < ActiveRecord::Base
   mount_uploader :photo, HotelphotoUploader
   has_one :address
   has_many :comments
   belongs_to :star
   belongs_to :user
   accepts_nested_attributes_for :comments,:allow_destroy => true
   attr_accessible :comments_attributes,:title, :star_id, :breakfast, :roomdescription, :roomprice
   validates :title, :presence => true, :length => { :minimum => 7 }
   validates :star_id, :presence => true
   validates_associated :comments
end
