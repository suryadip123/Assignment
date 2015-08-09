class StaticPagesController < ApplicationController
  def home
  	@newspost = current_user.newsposts.build if logged_in?
  end

  def help
  end

  def about
  end

end
