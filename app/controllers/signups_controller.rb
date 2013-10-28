class SignupsController < ApplicationController
layout 'noheader_nofooter'

	def new
		@signup = Signup.new
	end

	def create
		@signup = Signup.new(params[:signup])
		@signup.request = request
			if @signup.deliver
			  flash.now[:error] = nil
			  flash.now[:notice] = 'Thank you for your message!'
			else
			  flash.now[:error] = 'Cannot send message.'
			  render :new
			end
	end
end
