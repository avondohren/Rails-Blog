class CommentController < ApplicationController
  def add   #post
    post_id = params[:post_id] || nil
    poll_id = params[:poll_id] || nil
    user_id = params[:user_id]
    text = params[:comment]
    
    Comment.create({:comment => text, :user_id => user_id, :post_id => post_id, :poll_id => poll_id})
    
    if post_id
      redirect_to("/post/#{post_id}")
    elsif poll_id
      redirect_to("/poll/#{poll_id}/result")
    else
      redirect_to("/")
    end
  end
end