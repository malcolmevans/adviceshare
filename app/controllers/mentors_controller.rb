class MentorsController < ApplicationController
layout 'noheader_nofooter'

	def new
		@mentor = Mentor.new
	end

	def create
		@mentor = Mentor.new(params[:signup])
		@mentor.request = request
			if @mentor.deliver
			else
			  flash.now[:error] = 'Sign Up failed. Please check form below.'
			  render :new
			end
	end
end
