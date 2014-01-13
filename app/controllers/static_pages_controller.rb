class StaticPagesController < ApplicationController
layout 'landingPageHeader'
  #before_filter :authenticate_user!

  def home
    @signup = Signup.new
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
