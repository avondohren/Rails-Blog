class Poll < ActiveRecord::Base
  attr_accessible :active, :question, :user_id, :ans1, :ans2, :ans3, :ans4, :count1, :count2, :count3, :count4
  belongs_to :user
  has_many :comments
end
