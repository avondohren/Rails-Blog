class PageController < ApplicationController
  include ApplicationHelper
  
  def home              #get
    @page = params[:page].to_i || 0
    offset = (@page * 5)
    @posts = Post.order('created_at DESC').offset(offset).first(5)
  end
  
  def blogroll          #get
    @page = params[:page].to_i || 0
    offset = (@page * 5)
    @category = Category.find_by_name(params[:category])
    @name = @category.name
    
    @count = Post.where("category_id = ?", @category.id).length
    @posts = Post.where("category_id = ?", @category.id).order('created_at DESC').offset(offset).first(5)
  end
  
  def create            #get
  end
  
  def static            #get
    title = expand(params[:title])
    @page = Page.where("title = ?", title).first
  end
  
  def contact           #get
  end
  
  def contact_submit    #post
    # sudo postfix start
    # message = "From: Private Person <me@fromdomain.com>
    # To: Andy von Dohren <avondohren@gmail.com>
    # MIME-Version: 1.0
    # Content-type: text/html
    # Subject: SMTP e-mail test
    # 
    # You have received the following communication from MyBlog:
    # Name: #{params[:name]}
    # Email: #{params[:email]}
    # Comment/Question: #{params[:body]}
    # 
    # Thanks!"
    # 
    # Net::SMTP.start('localhost') do |smtp|
    #   smtp.send_message message, 'contactus@myblog.com', 
    #                              'avondohren@gmail.com'
  end
  
  def add               #post
    title = params[:title]
    clean_title = underscore(title)
    text = params[:text]
    
    new_page = Page.create({:title => title, :content => text})
    
    redirect_to("/page/#{clean_title}")
  end
end