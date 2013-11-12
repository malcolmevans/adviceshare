class AdvisorsController < ApplicationController
layout 'noheader_nofooter'

	def new
		@advisor = Advisor.new
	end

	def create
		@advisor = Advisor.new(params[:advisor])
		@advisor.request = request
			if @advisor.deliver
			else
			  flash.now[:error] = 'Sign Up failed. Please check form below.'
			  render :new
			end
	end
end
