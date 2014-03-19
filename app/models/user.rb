class User < ActiveRecord::Base
  attr_accessible :email, :fname, :lname, :password, :username
  has_many :post
  has_many :poll
  has_many :comment
  
  def full_name
    fname + " " + lname
  end
end
