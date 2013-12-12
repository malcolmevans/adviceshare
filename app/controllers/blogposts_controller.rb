class BlogpostsController < ApplicationController
  layout 'blogheader'
  def test
  	@blogsignup = Blogsignup.new
  end

  def index
  	@blogsignup = Blogsignup.new
  end

end
