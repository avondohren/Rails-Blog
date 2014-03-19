class Comment < ActiveRecord::Base
  attr_accessible :comment, :poll_id, :post_id, :user_id
  belongs_to :user
  belongs_to :post
  belongs_to :poll
end
