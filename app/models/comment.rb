class Comment < ActiveRecord::Base
     belongs_to :hotel_rate
     belongs_to :hotel
     belongs_to :user
     validates :body, :presence => true, :length => { :maximum => 500 }

    def self.publish_new_comment(hotel, comment, user)
      hotel = Hotel.find(hotel)
      comment = hotel.comments.build(comment)
      comment.user=user
      comment
    end

    def self.calculate_averagerate(current_comment)
        comments = current_comment.hotel.comments
        averagerate = comments.collect{|comment| comment.hotel_rate.rate}.sum.to_f/comments.length if comments.length > 0
        current_comment.hotel.averagerate = averagerate
        current_comment.hotel.save
    end
end
