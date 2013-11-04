class StaticPagesController < ApplicationController
layout 'noheader_nofooter'
  before_filter :authenticate_user!

  def home
  end

  def howItWorks
  end

  def contact
  end

  def about
  end

  def landingpage1
  end

  def pricingpage
  end

end
