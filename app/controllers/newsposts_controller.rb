class NewspostsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

  	def create
  		@newspost = current_user.newsposts.build(newspost_params)
    	if @newspost.save
      		flash[:success] = "News created!"
      		redirect_to root_url
    	else
      		render 'static_pages/home'
    	end
  	end

  	def destroy
  	end

  	private
  
  	def newspost_params
      params.require(:newspost).permit(:content)
  	end
	
end
