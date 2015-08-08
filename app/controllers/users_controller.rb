class UsersController < ApplicationController
  def new
  	attr_accessor :name, :email 
  end
end
