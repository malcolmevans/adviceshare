class BlogsignupsController < ApplicationController
  layout 'blogheader'
	def new
		@blogsignup = Blogsignup.new
	end

	def create
		@blogsignup = Blogsignup.new(params[:blogsignup])
		@blogsignup.request = request
			if @blogsignup.deliver
				flash[:notice] = "Thanks for joining us! Please add malcolm@adviceshare.co to your address book."
				redirect_to new_blogsignup_path
			else
			  flash.now[:notice] = "Oops! Sign up failed. Please see below..."
			  render :new
			end
	end

	def test
		@blogsignup = Blogsignup.new
	end

	def show
		@blogsignup = Blogsignup.new
  	end

  	def index
    	@blogsignup = Blogsignup.new
  	end

end
