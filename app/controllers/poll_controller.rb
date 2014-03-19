class PollController < ApplicationController
  def list      #get
    @polls = Poll.order('created_at DESC')
  end
  
  def create    #get
    @users = User.all
  end
  
  def result    #get
    @poll = Poll.find(params[:id])
    @users = User.all
    @comments = @poll.comments
  end
  
  def id        #get
    @poll = Poll.find(params[:id])
    @users = User.all
    @comments = @poll.comments
  end
  
  def add       #post
    user_id = params[:user_id]
    question = params[:question]
    ans1 = params[:ans1]
    ans2 = params[:ans2]
    ans3 = params[:ans3]
    ans4 = params[:ans4]
    
    new_poll = Poll.create({:active => true, :question => question, :user_id => user_id, :ans1 => ans1, :ans2 => ans2, :ans3 => ans3, :ans4 => ans4, :count1 => 0, :count2 => 0, :count3 => 0, :count4 => 0})
    
    
    redirect_to("/poll/#{new_poll.id}")
  end
  
  def vote      #post
    poll = Poll.find(params[:id])
    ans = params[:ans].to_i
    
    if ans == 1
      updated = poll.count1 + 1
      poll.count1 = updated
      poll.save
    elsif ans == 2
      updated = poll.count2 + 1
      poll.count2 = updated
      poll.save
    elsif ans == 3
      updated = poll.count3 + 1
      poll.count3 = updated
      poll.save
    elsif ans == 4
      updated = poll.count4 + 1
      poll.count4 = updated
      poll.save
    end 
    
    redirect_to("/poll/#{poll.id}/result")
  end
end