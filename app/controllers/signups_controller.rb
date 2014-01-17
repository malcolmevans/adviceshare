class SignupsController < ApplicationController
layout 'landingPageHeader'

	def new
		@signup = Signup.new
	end

	def create
		@signup = Signup.new(params[:signup])
		@signup.request = request
			if @signup.deliver
			else
			  flash.now[:notice] = "Post can not be saved, please enter information."
			end
	end

	def this_test
		@signup = Signup.new
	end

	def show
  	end
end
