class Hotel < ActiveRecord::Base
   mount_uploader :photo, HotelphotoUploader
   has_one :address
   has_many :comments
   belongs_to :star
   belongs_to :user
   accepts_nested_attributes_for :comments,:address,:allow_destroy => true
   #accepts_nested_attributes_for :allow_destroy => true
   attr_accessible :comments_attributes, :title, :star_id, :breakfast, :roomdescription, :roomprice , :photo, :address_attributes,:address
   validates :title, :presence => true, :length => { :minimum => 5 }
   validates :star_id, :presence => true
   validates_associated :comments
   scope :tophotel, :limit => 5, :order => 'averagerate desc'
end
