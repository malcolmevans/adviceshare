class SignupsController < ApplicationController
layout 'noheader_nofooter'

	def new
		@signup = Signup.new
	end

	def create
		@signup = Signup.new(params[:signup])
		@signup.request = request
			if @signup.deliver
			else
			  flash.now[:error] = 'Sign Up failed. Please check form below.'
			  render :new
			end
	end
end
