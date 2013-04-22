class Comment < ActiveRecord::Base
     belongs_to :hotelrate
     belongs_to :hotel
     belongs_to :user
     validates :body, :presence => true, :length => { :maximum => 500 }
end
