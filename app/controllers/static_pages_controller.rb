class StaticPagesController < ApplicationController
layout 'noheader_nofooter'
  #before_filter :authenticate_user!

  def home
  end

  def howItWorks
  end

  def contact
    @blogsignup = Blogsignup.new
  end

  def about
  end
  
  def test
  end

end
