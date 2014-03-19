class Post < ActiveRecord::Base
  attr_accessible :category_id, :content, :shares, :title, :user_id
  belongs_to :user
  belongs_to :category
  has_many :comments
end
