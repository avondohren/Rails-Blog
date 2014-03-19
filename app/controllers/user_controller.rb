class UserController < ApplicationController
  def list  #get
    @users = User.all
  end
  
  def id    #get
    @user = User.find(params[:id])
  end
  
  def add   #post
    fname = params[:fname]
    lname = params[:lname]
    uid = params[:uid]
    pw = params[:pw]
    email = params[:email]
    
    new_user = User.create({:fname => fname, :lname => lname, :email => email, :username => uid, :password => pw})
    
    redirect_to("/user/#{new_user.id}")
  end
end