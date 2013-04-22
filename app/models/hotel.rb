class Hotel < ActiveRecord::Base
   mount_uploader :photo, HotelphotoUploader
   has_one :address
   has_many :comments
   belongs_to :star
   belongs_to :user
   validates :title, :presence => true, :length => { :minimum => 7 }
   validates :star_id, :presence => true
end
