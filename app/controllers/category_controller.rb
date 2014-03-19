class CategoryController < ApplicationController
  def list    #get
    @cat = Category.all
  end
  
  def add     #post
    new_cat = params[:category]
    if !Category.exists?(:name => new_cat)
      Category.create({:name => new_cat})
      redirect_to("/category")
    else
      retval = "#{new_cat} already exists"
      redirect_to("/category?retval=#{retval}")
    end
  end
end