class PostController < ApplicationController
  include ApplicationHelper
  
  def create  #get
    @users = User.all
    @categories = Category.all
  end
  
  def id      #get
    @post = Post.find(params[:id])
    @users = User.all
    @comments = @post.comments
  end
  
  def add     #post
    title = params[:title]
    user_id = params[:user_id]
    category_id = params[:category_id]
    content = params[:content]
    
    new_post = Post.create({:title => title, :user_id => user_id, :category_id => category_id, :content => content, :shares => 0})
    
    redirect_to("/post/#{new_post.id}")
  end
end