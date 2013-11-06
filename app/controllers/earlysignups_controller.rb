class EarlysignupsController < ApplicationController
layout 'noheader_nofooter'

	def new
		@earlysignup = Earlysignup.new
	end

	def create
		@earlysignup = Earlysignup.new(params[:earlysignup])
		@earlysignup.request = request
			if @earlysignup.deliver
			else
			  flash.now[:error] = 'Sign Up failed. Please check form below.'
			  render :new
			end
	end
end
